"""Assemble the triple results from the raw run rows into results/.

Usage: python assemble.py RAW_DIR OUT_DIR
RAW_DIR holds the rows of the three runs: nothird_*.jsonl (nothird.py, one row per seed ball), refine25.jsonl
(refine.py: level-4 and level-5 children of the failed level-3 cells of the refined balls) and census_*.jsonl
(census.py, one row per seed ball); optionally tc_*.jsonl (the whole-ball certifier's run.py rows, one per seed ball)
and split_*.jsonl with split_*.json.gz (split.py: the certifier on the sub-balls of a split ball, and the sub-atlas
holding the cover; a sub-ball may itself be split, its sub-atlas naming the parent sub-atlas by hash), and
fixed_*.jsonl (nothird.py rows from the code with exact cell geometry; only these count as cell-test exclusions in the
final status, the earlier rows being kept as the cell-test columns).  Writes
  balls.tsv              one line per seed ball: its final status, the certifier's and the cell test's results, the
                         split if any, and the census at its centre;
  certifier.jsonl.gz     one compact row per ball from the whole-ball certifier (status, reason, pattern counts);
  census.jsonl.gz        the census rows, sorted by ball;
  summary.json           the counts in README.md, and the CPU time of the runs.
A row of refine.py is written only when its whole level is done, so a ball with level-5 rows finished level 5, and a
ball with failed level-4 cells but no level-5 rows was stopped before level 5 (its failed level-4 cells remain).
"""
import collections, glob, gzip, hashlib, json, os, sys

N_SEEDS = 2775
ORIGINAL_ATLAS = '33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf'


def med(v):
    v = sorted(v)
    return round(v[len(v) // 2], 3) if v else None


def rows(pattern):
    out = []
    for f in sorted(glob.glob(pattern)):
        for line in open(f):
            try:
                out.append(json.loads(line))
            except ValueError:                      # the last line of a cancelled run may be cut
                pass
    return out


def main():
    raw, out = sys.argv[1:3]
    os.makedirs(out, exist_ok=True)
    nt = {r['idx']: r for r in rows(os.path.join(raw, 'nothird_*.jsonl'))}
    cen = {r['idx']: r for r in rows(os.path.join(raw, 'census_*.jsonl'))}
    ref = collections.defaultdict(lambda: {4: [], 5: []})
    ref_s = 0.0
    for x in rows(os.path.join(raw, 'refine25.jsonl')):
        ref[x['idx']][x['m']].append(x); ref_s += x.get('s', 0)
    tc = {}
    for x in rows(os.path.join(raw, 'tc_*.jsonl')):
        if x['index'] in tc and tc[x['index']]['status'] != x['status']: raise ValueError('conflicting tc rows')
        tc[x['index']] = x
    split = {}
    files = {}
    split_s = 0.0
    for p in sorted(glob.glob(os.path.join(raw, 'split_*.json.gz'))):
        info = json.load(gzip.open(p, 'rt'))['info']['split']
        res = {}
        for x in rows(p[:-len('.json.gz')] + '.jsonl'):
            if x['index'] not in res: split_s += x.get('seconds', 0)
            res[x['index']] = x['status']
        files[hashlib.sha256(open(p, 'rb').read()).hexdigest()] = (p, info, res)
    children = collections.defaultdict(dict)                 # (sub-atlas sha, sub-ball) -> its own split
    for sha, (p, info, res) in files.items():
        children[info['atlas_sha256']][info['parent']] = sha

    def closed(sha, depth=1):
        """(closed, counts, depth) for one split: every cell built, and every sub-ball certified by the run or closed
        by its own split (a sub-atlas whose atlas_sha256 is this file's hash)."""
        p, info, res = files[sha]
        sts, deepest = collections.Counter(), depth
        for c in info['cover']:
            if 'sub' not in c: sts['BUILD FAILED'] += 1; continue
            st = res.get(c['sub'], 'MISSING')
            if st not in ('CERTIFIED', 'CERTIFIED EMPTY') and c['sub'] in children[sha]:
                ok, _, d = closed(children[sha][c['sub']], depth + 1)
                deepest = max(deepest, d)
                if ok: st = 'SPLIT CLOSED'
            sts[st] += 1
        ok = set(sts) <= {'CERTIFIED', 'CERTIFIED EMPTY', 'SPLIT CLOSED'}
        return ok, sts, deepest

    for sha, (p, info, res) in files.items():
        if info['atlas_sha256'] != ORIGINAL_ATLAS: continue
        ok, sts, d = closed(sha)
        split[info['parent']] = dict(level=info['level'], depth=d, closed=ok, counts=dict(sts))
    status, remaining = {}, {}
    for j in range(N_SEEDS):
        r = nt.get(j)
        if r is None:
            status[j] = ('not_finished', None, 0); continue
        if r['ok']:
            status[j] = ('whole_ball' if r['whole'] else 'cells', None, 0); continue
        lv = {c[0] for c in r['failed_cells']}
        assert len(lv) == 1
        m = lv.pop()
        cells = [c[1:] for c in r['failed_cells']]
        if j in ref:
            f4 = [x['c'] for x in ref[j][4] if x.get('ok') is False]
            f5 = [x['c'] for x in ref[j][5] if x.get('ok') is False]
            assert not any('error' in x for x in ref[j][4] + ref[j][5])
            if not f4:
                status[j] = ('refined_4', None, 0); continue
            if ref[j][5]:
                if not f5:
                    status[j] = ('refined_5', None, 0); continue
                m, cells = 5, f5
            else:
                m, cells = 4, f4
        kind = 'remaining_fine' if m >= 4 else 'remaining_coarse'
        status[j] = (kind, m, len(cells))
        remaining[j] = dict(idx=j, level=m, cells=cells)

    def cen_cols(j):
        c = cen.get(j)
        if c is None: return ['', '', '', '', '', '']
        k = collections.Counter(t['class'] for t in c['triples'])
        return [c['n_unbiased'], len(c['triples']), k['continuous'], k['isolated_fourier'], k['unexplained'],
                '' if c['min_dist'] is None else '%.4f' % c['min_dist']]

    def tcs(j): return tc[j]['status'] if j in tc else ''

    def tcp(j):
        if j not in tc or 'patterns' not in tc[j]: return ''
        k = collections.Counter(p['status'] for p in tc[j]['patterns'])
        return '%d/%d/%d' % (k['CERTIFIED'], k['EXCLUDED'], sum(v for x, v in k.items() if x not in ('CERTIFIED', 'EXCLUDED')))

    def spl(j):
        if j not in split: return ''
        x = split[j]
        return 'L%d depth %d %s %s' % (x['level'], x['depth'], 'closed' if x['closed'] else 'open',
                              ','.join('%s:%d' % (k.replace(' ', '_'), v) for k, v in sorted(x['counts'].items())))

    fixed = {}                                               # the cell test rerun with the fixed code (exact cells)
    for x in rows(os.path.join(raw, 'fixed_*.jsonl')):
        fixed[x['idx']] = fixed.get(x['idx'], False) or bool(x.get('ok'))
    final = {}
    for j in range(N_SEEDS):
        t = tc.get(j, {}).get('status')
        if t == 'CERTIFIED': final[j] = 'classified'
        elif t == 'CERTIFIED EMPTY': final[j] = 'empty'
        elif fixed.get(j): final[j] = 'empty_cell_test'
        elif j in split and split[j]['closed']:
            final[j] = 'split'
        elif j in split and split[j]['counts'].get('MISSING'):
            final[j] = 'split_running'
        else: final[j] = 'unresolved'

    with open(os.path.join(out, 'balls.tsv'), 'w') as f:
        f.write('\t'.join(['ball', 'r', 'final', 'certifier', 'certifier_patterns', 'split', 'status', 'level',
                           'cells_remaining', 'level3_failed_fraction',
                           'census_unbiased', 'census_triples', 'continuous', 'isolated_fourier', 'unexplained',
                           'nearest_triple_dist']) + '\n')
        for j in range(N_SEEDS):
            s, m, k = status[j]
            r = nt.get(j)
            frac = ''
            if r is not None and r['failed_cells'] and r['failed_cells'][0][0] == 3:
                f3 = len(r['failed_cells']); frac = '%.3f' % (f3 / (f3 + r['certified_cells'].get('3', 0)))
            rr = '' if r is None else r['r']
            f.write('\t'.join(map(str, [j, rr, final[j], tcs(j), tcp(j), spl(j), s, '' if m is None else m, k, frac]
                                   + cen_cols(j))) + '\n')
    with gzip.open(os.path.join(out, 'certifier.jsonl.gz'), 'wt') as f:   # one compact row per ball
        for j in sorted(tc):
            x = tc[j]
            k = collections.Counter(p['status'] for p in x.get('patterns', []))
            f.write(json.dumps(dict(index=j, status=x['status'], reason=x.get('reason', ''), binding=x.get('binding'),
                                    radius_hex=x.get('radius_hex'), seed_sha256=x.get('seed_sha256'),
                                    patterns=dict(k), seconds=round(x.get('seconds', 0), 1)),
                               separators=(',', ':')) + '\n')
    with gzip.open(os.path.join(out, 'census.jsonl.gz'), 'wt') as f:
        for j in sorted(cen): f.write(json.dumps(cen[j], separators=(',', ':')) + '\n')
    cnt = collections.Counter(s for s, _, _ in status.values())
    cls = collections.Counter(t['class'] for c in cen.values() for t in c['triples'])
    summary = dict(
        seed_balls=N_SEEDS, final=dict(collections.Counter(final.values())),
        nearest_triple_median={k: med([cen[j]['min_dist'] for j in final if final[j] == k
                                       and j in cen and cen[j]['min_dist'] is not None])
                               for k in set(final.values())},
        certifier=dict(collections.Counter(x['status'] for x in tc.values())),
        split={str(j): split[j] for j in sorted(split)}, cell_test=dict(cnt),
        census=dict(balls=len(cen), triples=sum(cls.values()), classes=dict(cls)),
        cpu_hours=dict(nothird=round(sum(r.get('wall_s', 0) for r in nt.values()) / 3600, 1),
                       census=round(sum(c.get('wall_s', 0) for c in cen.values()) / 3600, 1),
                       refine=round(ref_s / 3600, 1),
                       certifier=round(sum(x.get('seconds', 0) for x in tc.values()) / 3600, 1),
                       split=round(split_s / 3600, 1)))
    json.dump(summary, open(os.path.join(out, 'summary.json'), 'w'), indent=1)
    print(json.dumps(summary, indent=1))


if __name__ == '__main__':
    main()
