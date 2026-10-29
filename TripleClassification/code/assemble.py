"""Assemble the triple results from the raw run rows into results/.

Usage: python assemble.py RAW_DIR OUT_DIR --tc-tree T --atlas A --split-version SPLIT_PY... [--sidecar S...]
Every certifier and split row is validated by receipts.Validator before it counts (audit findings F1-F3): expected
binding, record hash, radius and pattern accounting per row; only a split file's current binding; a re-validated
cover per split; and, for each closed split sub-ball, a Stage C precondition pass (in the row, or in a stagec_guard.py
sidecar).  The cell test is reported but no longer counts towards the final status (its rows are not bound).
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


def tree_col(x):
    if not x: return ''
    if x['status'] == 'closed':
        return 'closed depth %d (%s; %s leaves)' % (x['depth'], x['route'], x['leaves'])
    return x['status'][:80]


def clean_l2(src, work):
    """The raw level-2 receipts with unparsable (truncated) lines dropped and, for a sub-ball run twice, its closed row
    kept (each row is a separate receipt of the same pinned run on the same seed; the auditor checks every one)."""
    import json as J
    best = {}
    for line in open(src):
        try:
            x = J.loads(line)
        except ValueError:
            continue
        i = x.get('index')
        if i not in best or (best[i]['status'] == 'NOT ESTABLISHED' and x['status'] != 'NOT ESTABLISHED'): best[i] = x
    raw = src[:-len('.jsonl')] + '.json.gz'
    clean = sum(1 for _ in open(src)) == len(best)          # every line parsed, one row per sub-ball: use as is
    if clean: return raw
    base = os.path.join(work, os.path.basename(src)[:-len('.jsonl')])
    if not os.path.exists(base + '.json.gz'): os.symlink(os.path.abspath(raw), base + '.json.gz')
    with open(base + '.jsonl', 'w') as f:
        for i in sorted(best): f.write(J.dumps(best[i]) + '\n')
    return base + '.json.gz'


def trees(a, V, side, RC):
    """Every dyadic tree we hold for each ball, tried cheapest first; the first that the pinned auditor verifies, with
    the Stage C preconditions on every closed sub-ball, closes the ball.  Candidates: the level-2 split alone (open
    cells only tangent); the level-2 split plus a reviewed level-3 layer; a selective chain l2..lK."""
    import subprocess, concurrent.futures
    if RC.sha_file(a.tree_auditor) != a.tree_auditor_sha: raise ValueError('tree auditor changed')
    os.makedirs(a.work, exist_ok=True)
    l2s = ','.join(a.split_version)
    cands = collections.defaultdict(list)
    for p in sorted(glob.glob(os.path.join(a.split_dir, 'b*_l2.jsonl'))):
        name = os.path.basename(p)
        if '_s' in name: continue                            # nested splits in their own frames: not part of the tree
        i = int(name[1:].split('_')[0])
        raw = p[:-len('.jsonl')] + '.json.gz'
        cands[i].append(('level 2', [clean_l2(p, a.work)], [l2s]))
        for d in a.l3_dir:
            q = os.path.join(d, 'b%d_l3.json.gz' % i)
            if os.path.exists(q) and os.path.exists(q[:-len('.json.gz')] + '.jsonl'):
                cands[i].append(('level 2 + collaborator level 3', [raw, q], [l2s, a.l3_script]))
    for d in a.chain_dir:
        for p in sorted(glob.glob(os.path.join(d, 'parents', 'b*_l2.json.gz'))):
            i = int(os.path.basename(p)[1:].split('_')[0])
            layers = [p]
            while True:
                k = len(layers) + 2
                q = os.path.join(d, 'children' if k == 3 else 'l%d' % k, 'b%d_l%d.json.gz' % (i, k))
                if not (os.path.exists(q) and os.path.exists(q[:-len('.json.gz')] + '.jsonl')): break
                layers.append(q)
            if len(layers) > 1:
                cands[i].append(('selective chain', layers, [l2s, a.l3_script + ',' + a.deep_script] + [a.deep_script] * (len(layers) - 2)))

    def audit(i, route, layers, scripts):
        extra = (['--gamma'] + a.gamma + ['--gamma-sha', a.gamma_sha, '--gamma-rules', a.gamma_rules]) if a.gamma_rules else []
        cp = subprocess.run([sys.executable, a.tree_auditor, '--root', a.tc_tree, '--index', str(i), '--layers'] + layers
                            + ['--scripts'] + scripts + extra, capture_output=True, text=True)
        try:
            v = json.loads((cp.stdout.strip().splitlines() or ['{}'])[-1])
        except ValueError:
            v = {}
        if cp.returncode != 0 or v.get('status') != 'GEOMETRY_AND_RECEIPTS_VERIFIED':
            err = (cp.stderr.strip().splitlines() or [''])[-1]
            return dict(status=('open below level %d' % (len(layers) + 1) if 'unresolved cell at the last level' in err
                                else 'audit failed: ' + err[:100]), route=route)
        missing = 0                                          # Stage C preconditions (audit F2)
        for f in layers:
            seeds_f, _, sha_f = RC.load_split(f)
            for r in RC.read_jsonl(f[:-len('.json.gz')] + '.jsonl'):
                if r.get('status') in RC.CLOSED and side.get((sha_f, r['index'])) != RC.record_sha(seeds_f[r['index']]) \
                        and (r.get('stage_c_preconditions') or {}).get('guard_sha256') not in V.guards:
                    missing += 1
        if missing: return dict(status='%d closed sub-balls without Stage C preconditions' % missing, route=route)
        g = v.get('gamma') or {}
        rule = 'ordering' if g.get('ordering') else ('fourier' if g.get('fourier') else 'certifier')
        return dict(status='closed', route=route, depth=len(layers) + 1, layers=v['layers'], rule=rule, gamma=g,
                    leaves=sum(x['closed'] for x in v['layers']), tangent_cells=v['tangent_cells'])

    rank = {'certifier': 0, 'fourier': 1, 'ordering': 2}

    def first(i):
        """The tree that closes the ball with the fewest added ingredients: the certifier alone, then the Fourier rule,
        then the ordering rule; cheapest tree first."""
        seen = best = None
        for route, layers, scripts in cands[i]:
            x = audit(i, route, layers, scripts)
            if x['status'] == 'closed':
                if x['rule'] == 'certifier': return i, x
                if best is None or rank[x['rule']] < rank[best['rule']]: best = x
                continue
            if seen is None or route == 'selective chain': seen = x
        return i, best or seen
    with concurrent.futures.ThreadPoolExecutor(max_workers=a.workers) as pool:
        return dict(pool.map(first, sorted(cands)))


def main():
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('raw'); ap.add_argument('out')
    ap.add_argument('--tc-tree', required=True); ap.add_argument('--atlas', required=True)
    ap.add_argument('--split-version', nargs='+', required=True); ap.add_argument('--sidecar', nargs='*', default=[])
    ap.add_argument('--tree-auditor', required=True); ap.add_argument('--tree-auditor-sha', required=True)
    ap.add_argument('--l3-script', required=True, help='the reviewed level-3 builder (split_mixed.py)')
    ap.add_argument('--deep-script', required=True, help='the level >= 4 builder (split_select.py)')
    ap.add_argument('--chain-dir', nargs='*', default=[], help='selective chains: parents/b<i>_l2, children/b<i>_l3, l<k>/b<i>_l<k>')
    ap.add_argument('--l3-dir', nargs='*', default=[], help="the collaborator's level-3 layers b<i>_l3 over the raw level-2 splits")
    ap.add_argument('--split-dir', required=True, help='the raw level-2 splits b<i>_l2')
    ap.add_argument('--work', required=True, help='scratch directory for cleaned level-2 receipts')
    ap.add_argument('--workers', type=int, default=4)
    ap.add_argument('--gamma', nargs='*', default=[], help='gamma_test.py receipts (labelled Fourier score discharges)')
    ap.add_argument('--gamma-sha'); ap.add_argument('--gamma-rules', default='', help="'fourier', 'ordering' or both")
    a = ap.parse_args()
    raw, out = a.raw, a.out
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    import receipts as RC
    V = RC.Validator(a.tc_tree, a.atlas, a.split_version)
    side = {}
    for x in (r for p in a.sidecar for r in RC.read_jsonl(p)):
        if x.get('status') == 'PASS' and x.get('guard_sha256') in V.guards:
            side[(x['atlas_sha256'], x['index'])] = x['seed_sha256']
    os.makedirs(out, exist_ok=True)
    nt = {r['idx']: r for r in rows(os.path.join(raw, 'nothird_*.jsonl'))}
    cen = {r['idx']: r for r in rows(os.path.join(raw, 'census_*.jsonl'))}
    ref = collections.defaultdict(lambda: {4: [], 5: []})
    ref_s = 0.0
    for x in rows(os.path.join(raw, 'refine25.jsonl')):
        ref[x['idx']][x['m']].append(x); ref_s += x.get('s', 0)
    tc = V.native_rows(rows(os.path.join(raw, 'tc_*.jsonl')))
    tree = trees(a, V, side, RC)                             # ball -> dict(status, depth, layers, route) or failure
    split = {}
    files = {}
    split_s = 0.0
    seeds_of = {}
    for p in sorted(glob.glob(os.path.join(raw, 'split_*.json.gz'))):
        sub_seeds, info, sha = RC.load_split(p)
        if info is None: continue                            # not a split sub-atlas: no cover to account
        sel, _ = V.select(RC.read_jsonl(p[:-len('.json.gz')] + '.jsonl'), sub_seeds, V.split_bindings(sha))
        res = {}
        for i, x in sel.items():
            split_s += x.get('seconds', 0)
            st = x['status']
            if st in RC.CLOSED:
                pre = x.get('stage_c_preconditions')
                passed = (pre is not None and pre.get('guard_sha256') in V.guards) or \
                    side.get((sha, i)) == RC.record_sha(sub_seeds[i])
                if not passed: st = 'NO STAGE C PRECONDITION'
            res[i] = st
        files[sha] = (p, info, res); seeds_of[sha] = sub_seeds
    children = collections.defaultdict(dict)                 # (sub-atlas sha, sub-ball) -> its own split
    for sha, (p, info, res) in files.items():
        children[info['atlas_sha256']][info['parent']] = sha

    def closed(sha, depth=1):
        """(closed, counts, depth) for one split: every cell built, and every sub-ball certified by the run or closed
        by its own split (a sub-atlas whose atlas_sha256 is this file's hash)."""
        p, info, res = files[sha]
        sts, deepest = collections.Counter(), depth
        parent = (V.seeds[info['parent']] if info['atlas_sha256'] == V.atlas_sha else
                  seeds_of[info['atlas_sha256']][info['parent']] if info['atlas_sha256'] in seeds_of else None)
        why = 'no parent record' if parent is None else V.cover_ok(info, parent, seeds_of[sha])
        if why is not None:
            return False, collections.Counter({'COVER INVALID: ' + why: 1}), deepest
        closed_cells = [tuple(c['cell']) for c in info['cover'] if 'sub' in c and res.get(c['sub']) in RC.CLOSED]
        for c in info['cover']:
            t = RC.tangent_point(c['cell'], info['level'])
            if t is not None and (('sub' not in c) or res.get(c['sub']) not in RC.CLOSED) and \
                    any(RC.cell_contains(o, info['level'], t) for o in closed_cells if o != tuple(c['cell'])):
                sts['TANGENT COVERED'] += 1; continue          # touches the ball at one point, inside a closed cell
            if 'sub' not in c: sts['BUILD FAILED'] += 1; continue
            st = res.get(c['sub'], 'MISSING')
            if st not in ('CERTIFIED', 'CERTIFIED EMPTY') and c['sub'] in children[sha]:
                ok, _, d = closed(children[sha][c['sub']], depth + 1)
                deepest = max(deepest, d)
                if ok: st = 'SPLIT CLOSED'
            sts[st] += 1
        ok = set(sts) <= {'CERTIFIED', 'CERTIFIED EMPTY', 'SPLIT CLOSED', 'TANGENT COVERED'}
        return ok, sts, deepest

    for sha, (p, info, res) in files.items():
        if info['atlas_sha256'] != V.atlas_sha: continue
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
        elif tree.get(j, {}).get('status') == 'closed':
            final[j] = {'certifier': 'tree', 'fourier': 'tree_fourier', 'ordering': 'tree_ordering'}[tree[j]['rule']]
        else: final[j] = 'open'

    with open(os.path.join(out, 'balls.tsv'), 'w') as f:
        f.write('\t'.join(['ball', 'r', 'final', 'certifier', 'certifier_patterns', 'split', 'status', 'level',
                           'cells_remaining', 'level3_failed_fraction', 'tree',
                           'census_unbiased', 'census_triples', 'continuous', 'isolated_fourier', 'unexplained',
                           'nearest_triple_dist']) + '\n')
        for j in range(N_SEEDS):
            s, m, k = status[j]
            r = nt.get(j)
            frac = ''
            if r is not None and r['failed_cells'] and r['failed_cells'][0][0] == 3:
                f3 = len(r['failed_cells']); frac = '%.3f' % (f3 / (f3 + r['certified_cells'].get('3', 0)))
            rr = '' if r is None else r['r']
            f.write('\t'.join(map(str, [j, rr, final[j], tcs(j), tcp(j), spl(j), s, '' if m is None else m, k, frac, tree_col(tree.get(j))]
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
        tree={str(j): tree[j] for j in sorted(tree)},
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
