#!/usr/bin/env python3
"""Prototype (not used by the certifier): a witness-only plane-leaf proof. The column proof trees are dropped from the
proposal and regenerated at check time by the deterministic column search, then the unchanged leaf check runs.

  python witness_only.py ROOT STATUS_DIR OUT.json [--top 8] [--per-ball 30] [--workers 120]

The sample: --per-ball random plane leaves (seed 0) of each of the --top largest best certificates named by STATUS_DIR
(an onetree_status.py output). For every leaf this measures (1) the gzip size of the proposal
and of its witness-only form, (2) the time of the leaf check on the stored proposal, (3) the time to regenerate the
column trees from the witness-only form plus the leaf check on the result, and (4) whether the regenerated trees are
byte-identical to the stored ones. The witness-only form keeps the witnesses (joint, projector, secant and gamma data
unchanged), the list of columns whose proofs the witnesses use, and the search parameters; it drops each column's
weak/roots/root_modes/tree, which the regeneration recomputes from the record. Soundness is unchanged: whatever the
regeneration produces is verified by the same check, so a bad regeneration can only fail.
"""
import argparse, gzip, itertools, json, os, sys, time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, os.environ.get('ONETREE_DIR', str(HERE)))   # the folder of onetree.py and the extended check
import onetree as O


def depth_of(t, level=0):
    return max((depth_of(c, level + 1) for c in t['children']), default=level) if 'children' in t else level


def strip(p):
    cols = p.get('columns', {})
    return dict(schema='tc-plane-cell-proposal-witness-only-v0', snapshot_sha256=p['snapshot_sha256'], record_sha256=p['record_sha256'],
                columns=sorted(cols, key=int), column_depth=max((depth_of(v['tree']) for v in cols.values()), default=0),
                witnesses=p['witnesses'])


def prove_column(P, np, arb, model, supplied, C, depth, node_cap=10 ** 7, epsilon_target=.004):
    """fast_search.prove_column (the search's own column proof), unchanged but for the node budget."""
    col = P.Column(model, supplied); roots = []; root_modes = []; count = 0
    def visit(level, index):
        nonlocal count
        count += 1
        if count > node_cap: raise ArithmeticError('column node budget exhausted')
        proposal = col.propose_slab(level, index)
        try: result = col.check_slab(level, index, proposal)
        except ArithmeticError: result = dict(status='UNKNOWN')
        if result['status'] in ('EXCLUDED', 'OUTSIDE'): return dict(proposal, kind=result['status'].lower())
        if result['status'] == 'CAPTURED':
            root_ = col.root_proposal(result['center']); mode = 'constant'
            try:
                native, native_error = P.tube(C, model, root_, result, 'native')
                if native['Tnorm'] * model['r'] < arb('.1') and native_error < result['radius']: mode = 'native'
            except (ArithmeticError, ZeroDivisionError): pass
            if mode == 'constant': root_ = np.array([float(x.mid()) for x in result['center']])
            match = next((i for i, x in enumerate(roots) if root_modes[i] == mode and np.linalg.norm(root_ - x) < 1e-7), None)
            candidate = root_ if match is None else roots[match]
            p, epsilon = P.tube(C, model, candidate, result, mode)
            if epsilon < arb(epsilon_target) or level >= depth:
                if match is None: match = len(roots); roots.append(root_); root_modes.append(mode)
                return dict(proposal, kind='captured', root=match)
        if level >= depth: raise ArithmeticError('column depth budget exhausted')
        return dict(children=[visit(level + 1, (2 * index[0] + i, 2 * index[1] + j)) for i, j in itertools.product(range(2), repeat=2)])
    tree = visit(0, (0, 0))
    return dict(weak=P.encode(col.weak), roots=[P.encode(x) for x in roots], root_modes=root_modes, tree=tree)


def expand(inp, wo):
    """The full proposal from a witness-only one: the column trees regenerated from the record."""
    import numpy as np, plane_cell_certificate as Whole, plane_column_certificate as P
    from plane_column_certificate import arb
    s, model, C, binding, columns, cliques = Whole.complete_cover(inp)
    cols = {c: prove_column(P, np, arb, model, columns[int(c)], C, max(6, wo['column_depth'])) for c in wo['columns']}
    return dict(schema='tc-plane-cell-proposal-v1', snapshot_sha256=wo['snapshot_sha256'], record_sha256=wo['record_sha256'],
                columns=cols, witnesses=wo['witnesses'])


def one(job):
    d, ball, n = job; inp = Path(d) / 'leaves' / (n + '.input.json.gz'); pf = Path(d) / 'leaves' / (n + '.proposal.json.gz')
    level, cell = int(n.split('_')[0]), [int(x) for x in n.split('_')[1:]]
    raw = pf.read_bytes(); p = json.loads(gzip.decompress(raw)); wo = strip(p)
    r = dict(ball=ball, leaf=n, level=level, proposal_gz=len(raw), input_gz=inp.stat().st_size, columns=len(wo['columns']),
             witness_only_gz=len(gzip.compress(json.dumps(wo).encode(), mtime=0)), patterns=len(p['witnesses']))
    try:
        t = time.time(); O.leaf_check(ball, level, cell, str(inp), str(pf)); r['check_s'] = round(time.time() - t, 2)
        t = time.time(); full = expand(inp, wo); r['regen_s'] = round(time.time() - t, 2)
        r['identical'] = json.dumps(full['columns'], sort_keys=True) == json.dumps(p['columns'], sort_keys=True)
        tmp = Path(os.environ.get('TMPDIR', '/tmp')) / ('wo.%d.%s.proposal.json.gz' % (os.getpid(), n))
        tmp.write_bytes(gzip.compress(json.dumps(full).encode(), mtime=0))
        try: t = time.time(); O.leaf_check(ball, level, cell, str(inp), str(tmp)); r['check_regen_s'] = round(time.time() - t, 2); r['regen_ok'] = True
        finally: tmp.unlink()
    except Exception as e: r['error'] = str(e)[:200]
    return r


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('root'); ap.add_argument('status'); ap.add_argument('out')
    ap.add_argument('--top', type=int, default=8); ap.add_argument('--per-ball', type=int, default=30); ap.add_argument('--workers', type=int, default=120)
    a = ap.parse_args()
    import random, multiprocessing
    s = json.load(open(Path(a.status) / 'summary.json')); rng = random.Random(0); jobs = []
    for r in s['hardest'][:a.top]:
        d = Path(s['cert_base']) / ('' if r['source'] == '.' else r['source']) / ('b%s' % r['ball'])
        plane = []
        def walk(t):
            if 'children' in t: [walk(c) for c in t['children']]
            elif 'leaf' in t: plane.append(t['leaf'])
        walk(json.load(open(d / 'tree.json'))['tree'])
        jobs += [(str(d), int(r['ball']), n) for n in rng.sample(sorted(plane), min(a.per_ball, len(plane)))]
    O.setup(str(Path(a.root).resolve()))
    for b in sorted({j[1] for j in jobs}): O.W['original'][b] = O.W['F'].original_record(O.W['root'], b)   # once, before the fork
    with ProcessPoolExecutor(a.workers, mp_context=multiprocessing.get_context('fork')) as pool:
        rows = list(pool.map(one, jobs, chunksize=1))
    json.dump(rows, open(a.out, 'w'), indent=1)
    ok = [r for r in rows if r.get('regen_ok')]
    tot = lambda k, rs: sum(r[k] for r in rs)
    print(json.dumps(dict(cells=len(rows), ok=len(ok), identical=sum(1 for r in rows if r.get('identical')),
                          proposal_gz=tot('proposal_gz', rows), witness_only_gz=tot('witness_only_gz', rows), input_gz=tot('input_gz', rows),
                          check_s=round(tot('check_s', ok), 1), regen_s=round(tot('regen_s', ok), 1), check_regen_s=round(tot('check_regen_s', ok), 1))))


if __name__ == '__main__': main()
