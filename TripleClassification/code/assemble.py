"""Assemble the triple results from the raw run rows into results/.

Usage: python assemble.py RAW_DIR OUT_DIR
RAW_DIR holds the rows of the three runs: nothird_*.jsonl (nothird.py, one row per seed ball), refine25.jsonl
(refine.py: level-4 and level-5 children of the failed level-3 cells of the refined balls) and census_*.jsonl
(census.py, one row per seed ball); optionally tc_*.jsonl (the whole-ball certifier's run.py rows, one per seed ball)
and split_*.jsonl with split_*.json.gz (split.py: the certifier on the sub-balls of a split ball, and the sub-atlas
holding the cover).  Writes
  balls.tsv              one line per seed ball: its final status, the certifier's and the cell test's results, the
                         split if any, and the census at its centre;
  remaining_cells.jsonl.gz  per unresolved ball: the level and the dyadic indices of every cell not certified;
  census.jsonl.gz        the census rows, sorted by ball;
  summary.json           the counts in README.md, and the CPU time of the runs.
A row of refine.py is written only when its whole level is done, so a ball with level-5 rows finished level 5, and a
ball with failed level-4 cells but no level-5 rows was stopped before level 5 (its failed level-4 cells remain).
"""
import collections, glob, gzip, json, os, sys

N_SEEDS = 2775


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
    for p in sorted(glob.glob(os.path.join(raw, 'split_*.json.gz'))):
        info = json.load(gzip.open(p, 'rt'))['info']['split']
        res = {x['index']: x['status'] for x in rows(p[:-len('.json.gz')] + '.jsonl')}
        built = [c for c in info['cover'] if 'sub' in c]
        sts = collections.Counter(res.get(c['sub'], 'MISSING') for c in built)
        sts['BUILD FAILED'] = len(info['cover']) - len(built)
        closed = set(sts) - {'BUILD FAILED'} <= {'CERTIFIED', 'CERTIFIED EMPTY'} and not sts['BUILD FAILED']
        split[info['parent']] = dict(level=info['level'], closed=closed, counts={k: v for k, v in sts.items() if v})
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
        return 'L%d %s %s' % (x['level'], 'closed' if x['closed'] else 'open',
                              ','.join('%s:%d' % (k.replace(' ', '_'), v) for k, v in sorted(x['counts'].items())))

    final = {}
    for j in range(N_SEEDS):
        t = tc.get(j, {}).get('status')
        if t == 'CERTIFIED': final[j] = 'classified'
        elif t == 'CERTIFIED EMPTY': final[j] = 'empty'
        elif j in split and split[j]['closed']:
            final[j] = 'split_classified' if split[j]['counts'].get('CERTIFIED') else 'split_empty'
        elif status[j][0] in ('whole_ball', 'cells', 'refined_4', 'refined_5'): final[j] = 'empty_cell_test'
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
    with gzip.open(os.path.join(out, 'remaining_cells.jsonl.gz'), 'wt') as f:
        for j in sorted(remaining): f.write(json.dumps(remaining[j], separators=(',', ':')) + '\n')
    with gzip.open(os.path.join(out, 'census.jsonl.gz'), 'wt') as f:
        for j in sorted(cen): f.write(json.dumps(cen[j], separators=(',', ':')) + '\n')
    cnt = collections.Counter(s for s, _, _ in status.values())
    cls = collections.Counter(t['class'] for c in cen.values() for t in c['triples'])
    summary = dict(
        seed_balls=N_SEEDS, final=dict(collections.Counter(final.values())),
        certifier=dict(collections.Counter(x['status'] for x in tc.values())),
        split={str(j): split[j] for j in sorted(split)}, cell_test=dict(cnt),
        remaining_cells={k: sum(status[j][2] for j in remaining if status[j][0] == k)
                         for k in ('remaining_fine', 'remaining_coarse')},
        census=dict(balls=len(cen), triples=sum(cls.values()), classes=dict(cls)),
        cpu_hours=dict(nothird=round(sum(r.get('wall_s', 0) for r in nt.values()) / 3600, 1),
                       census=round(sum(c.get('wall_s', 0) for c in cen.values()) / 3600, 1),
                       refine=round(ref_s / 3600, 1),
                       certifier=round(sum(x.get('seconds', 0) for x in tc.values()) / 3600, 1)))
    json.dump(summary, open(os.path.join(out, 'summary.json'), 'w'), indent=1)
    print(json.dumps(summary, indent=1))


if __name__ == '__main__':
    main()
