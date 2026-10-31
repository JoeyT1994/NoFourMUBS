#!/usr/bin/env python3
"""The whole-cell search of PR #4's plane_frontier_certificate.py, without its redundant verification (no proof role:
it only writes the input and the proposal, which the pinned checker then replays in a separate process).

  python fast_search.py ROOT ENTRY --out FRONTIER [--depth D]

Writes exactly what the pinned search writes (FRONTIER.input.json.gz with the cell's H record, and
FRONTIER.proposal.json.gz), and FRONTIER itself: status PROPOSED, or NOT_ESTABLISHED with the reason. Two passes of the
pinned search are skipped, and nothing else changes:
- after proving a column, the pinned search replays the column's whole tree (verify_tree) only to get its tubes; here
  prove_column keeps the tube of each accepted captured leaf as it accepts it: the same leaf, encoded proposal, root
  and mode, in the same order, so the same tubes;
- after proposing, the pinned search replays the whole cell (Whole.check) in the same process; here the separate
  replay is the only one.
--depth (column tree depth, up to 10; the replay only bounds the tree's geometry at level 12) and --column-nodes raise
the column search's budgets, which the replay does not apply either. --scalar-cap raises the joint search's budget of scalar tests (600). Only the search counts it: a replay re-checks
the scalar witnesses the proposal supplies and never applies the budget, so a larger one can only close more cells.
--gamma tries the gamma witness (ext_cell_certificate.gamma_bound: the pinned gamma_test bounds over the pattern's six
phase balls, no column proof) on every pattern before any column is proved; --gamma-only fails at once on a pattern it
does not classify. Both need the extended replay (ext_replay.py).
"""
import argparse, gzip, itertools, json, sys, time
from pathlib import Path


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('root'); ap.add_argument('entry', type=Path); ap.add_argument('--out', type=Path, required=True)
    ap.add_argument('--depth', type=int, default=6, choices=range(0, 11), metavar='0..10')
    ap.add_argument('--column-nodes', type=int, default=6000, help="each column tree's node budget (6000: the pinned search's; "
                    'the replay has none)')
    ap.add_argument('--projector', action='store_true', help='when the joint search fails on a pattern whose six columns are '
                    'proved, try the separable projector witness (ext_cell_certificate.py replays it)')
    ap.add_argument('--scalar-cap', type=int, default=600, help="the joint search's scalar budget (600: the pinned search's); "
                    'the replay never applies it (it only re-checks the scalar witnesses supplied), so raising it is free')
    ap.add_argument('--gamma', action='store_true', help='try the gamma witness on each pattern first (extended replay)')
    ap.add_argument('--gamma-only', action='store_true', help='the gamma witness only: fail on a pattern it does not classify')
    a = ap.parse_args(); root = Path(a.root).resolve(); sys.path.insert(0, str(root / 'TripleClassification/code'))
    if a.gamma or a.gamma_only:              # by file, so the pinned tree stays first on sys.path
        import importlib.util, os as _os; from fractions import Fraction
        _os.environ['TC_ROOT'] = str(root)
        _spec = importlib.util.spec_from_file_location('ext_cell_certificate', Path(__file__).resolve().parent / 'ext_cell_certificate.py')
        Ext = importlib.util.module_from_spec(_spec); _spec.loader.exec_module(Ext)
    import numpy as np
    import plane_frontier_certificate as F
    import plane_cell_certificate as Whole
    import plane_column_certificate as P
    import plane_joint_certificate as Joint
    from plane_column_certificate import arb

    def prove_column(model, supplied, C, depth=6, node_cap=6000, epsilon_target=.004):
        """P.prove_column, also returning the tubes verify_tree would rebuild from its proposal."""
        col = P.Column(model, supplied); roots = []; root_modes = []; count = 0; tubes = {}
        def visit(level, index):
            nonlocal count
            count += 1
            if count > node_cap: raise ArithmeticError('column node budget exhausted')
            proposal = col.propose_slab(level, index)
            try: result = col.check_slab(level, index, proposal)
            except ArithmeticError: result = dict(status='UNKNOWN')
            if result['status'] in ('EXCLUDED', 'OUTSIDE'):
                return dict(proposal, kind=result['status'].lower())
            if result['status'] == 'CAPTURED':
                root_ = col.root_proposal(result['center'])
                mode = 'constant'
                try:
                    native, native_error = P.tube(C, model, root_, result, 'native')
                    if native['Tnorm'] * model['r'] < arb('.1') and native_error < result['radius']:
                        mode = 'native'
                except (ArithmeticError, ZeroDivisionError): pass
                if mode == 'constant':
                    root_ = np.array([float(x.mid()) for x in result['center']])
                match = next((i for i, x in enumerate(roots) if root_modes[i] == mode and np.linalg.norm(root_ - x) < 1e-7), None)
                candidate = root_ if match is None else roots[match]
                p, epsilon = P.tube(C, model, candidate, result, mode)
                if epsilon < arb(epsilon_target) or level >= depth:
                    if match is None: match = len(roots); roots.append(root_); root_modes.append(mode)
                    # verify_tree's tube for this leaf: same root values (hex encoding is exact), capture and mode
                    if match in tubes: epsilon = max(tubes[match][1], epsilon).upper()
                    tubes[match] = (p, epsilon)
                    return dict(proposal, kind='captured', root=match)
            if level >= depth: raise ArithmeticError('column depth budget exhausted')
            return dict(children=[visit(level + 1, (2 * index[0] + i, 2 * index[1] + j)) for i, j in itertools.product(range(2), repeat=2)])
        tree = visit(0, (0, 0))
        return dict(weak=P.encode(col.weak), roots=[P.encode(x) for x in roots], root_modes=root_modes, tree=tree), tubes

    def propose(path, depth=6):
        """Whole.propose without the checkpoint and without replaying each proved column's tree."""
        s, model, C, binding, columns, cliques = Whole.complete_cover(path)
        proved = {}; attempted = set(); pair_cache = {}; witnesses = []; root_pairs = {}; scalars = {}
        gs = dict(ctx=None, cache={}, last={})
        def gamma(clique):
            """A gamma witness the extended check accepts, or None: mode L, then K; the last alignment that worked, then
            the best alignment of the centre phases."""
            if gs['ctx'] is None: gs['ctx'] = Ext.gamma_context(model)
            for mode in ('L', 'K'):
                tried = []
                for k in range(2):
                    if k == 0: ab = gs['last'].get(mode, (list(range(6)), list(range(6))))
                    else:
                        key = 'PL' if mode == 'L' else 'v0'
                        mid = np.array([[float(gs['cache'][c][key][r].mid()) for c in clique] for r in range(6)])
                        ab = tuple(list(x) for x in Ext.GT.best_alignment(mid))
                    if ab in tried: continue
                    tried.append(ab); g = dict(mode=mode, a=ab[0], b=ab[1])
                    try: up = Ext.gamma_bound(gs['ctx'], columns, clique, g, gs['cache'])
                    except (ValueError, ArithmeticError, ZeroDivisionError): break
                    if Fraction(up) <= Fraction(19, 50) or Fraction(up) < gs['ctx']['g_h']:
                        gs['last'][mode] = ab; return dict(g, g_up_hex=up.hex())
            return None
        def witness(clique):
            for c in clique:
                if c in proved and not proved[c][1]: return [c]
            for x, y in itertools.combinations(clique, 2):
                if x not in proved or y not in proved: continue
                if (x, y) not in pair_cache: pair_cache[(x, y)] = Whole.pair_excluded(proved[x][1], proved[y][1])
                if pair_cache[(x, y)]: return [x, y]
            return None
        for clique in cliques:
            if a.gamma or a.gamma_only:
                g = gamma(clique)
                if g is not None: witnesses.append(dict(colours=clique, columns=list(clique), gamma=g)); continue
                if a.gamma_only: raise ArithmeticError('gamma does not classify pattern: ' + str(clique))
            chosen = witness(clique)
            for c in sorted(clique, key=lambda c: float(columns[c]['phase_radius'])):
                if chosen is not None: break
                if c in attempted: continue
                attempted.add(c)
                try: proved[c] = prove_column(model, columns[c], C, depth=depth, node_cap=a.column_nodes)
                except ArithmeticError: continue
                chosen = witness(clique)
            if chosen is None:
                available = sorted((c for c in clique if c in proved), key=lambda c: (len(proved[c][1]), c))
                try:
                    joint = Joint.exclude(model, {c: proved[c][1] for c in available}, available,
                                          pair_cache=root_pairs, scalar_cache=scalars, allow_known=True, scalar_cap=a.scalar_cap)
                except (ValueError, ArithmeticError):
                    if not a.projector: raise ArithmeticError('complete-cover pattern remains: ' + str(clique))
                    import os as _os; _os.environ.setdefault('TC_ROOT', str(root))
                    d_ = str(Path(__file__).resolve().parent / 'projector')
                    if d_ not in sys.path: sys.path.append(d_)        # after the pinned tree
                    import projector_union_hook as Hook, moving_secant_certificate as Secant
                    from flint import arb as _arb
                    found = None
                    if len(available) == 6 and all(proved[c][1] for c in clique):   # the separable projector
                        try: found = Hook.search(model, {c: proved[c][1] for c in clique}, list(clique))
                        except (ValueError, ArithmeticError, ZeroDivisionError): found = None
                    if found is not None:
                        witnesses.append(dict(colours=clique, columns=list(clique), projector=found[0])); continue
                    cols = [dict(v0=list(columns[c]['v0']), radius=_arb(columns[c]['phase_radius']), colour=c) for c in clique]
                    anchors = sorted(range(6), key=lambda j: float(columns[clique[j]]['phase_radius']))[:2]
                    for col in [j for j in range(6) if j not in anchors]:                       # the moving-frame secant
                        try:
                            prop = Secant.propose_columns(model, cols, col, anchors); Secant.check_columns(model, cols, prop)
                            found = prop; break
                        except (ValueError, ArithmeticError, ZeroDivisionError, np.linalg.LinAlgError): continue
                    if found is None: raise ArithmeticError('complete-cover pattern remains: ' + str(clique))
                    witnesses.append(dict(colours=clique, columns=[clique[i] for i in [found['column'], *found['anchors']]],
                                          secant=found)); continue
                witnesses.append(dict(colours=clique, columns=available, joint=joint))
            else: witnesses.append(dict(colours=clique, columns=chosen))
        used = {c for w in witnesses if 'secant' not in w and 'gamma' not in w for c in w['columns']}   # no column proof
        return dict(schema='tc-plane-cell-proposal-v1', snapshot_sha256=binding['snapshot_sha256'],
                    record_sha256=s['record_sha256'], columns={str(c): proved[c][0] for c in sorted(used)}, witnesses=witnesses)

    t0 = time.monotonic(); entry = F.read_json(a.entry)
    try:
        original = F.original_record(root, entry['ball']); F.ctx.prec = 224
        record = F.build_record(original, entry['level'], entry['cell'], root)
        data = dict(schema='tc-h-cell-input-v1', record=record, record_sha256=F.jsonsha(record), ball=entry['ball'],
                    level=entry['level'], cell=entry['cell'], subatlas=entry['subatlas'], sub=entry['sub'],
                    legacy_record_sha256=entry['record_sha256'])
        inp = a.out.with_suffix('.input.json.gz'); inp.write_bytes(gzip.compress(json.dumps(data).encode(), mtime=0))
        proposal = propose(inp, a.depth)
        a.out.with_suffix('.proposal.json.gz').write_bytes(gzip.compress(json.dumps(proposal).encode(), mtime=0))
        result = dict(status='PROPOSED')
    except (ValueError, ArithmeticError, ZeroDivisionError, KeyError, TypeError) as exc:
        result = dict(status='NOT_ESTABLISHED', reason=str(exc))
    result.update(ball=entry['ball'], level=entry['level'], cell=entry['cell'], search='fast_search.py', seconds=time.monotonic() - t0)
    a.out.write_text(json.dumps(result, indent=1) + '\n'); print(json.dumps(result))


if __name__ == '__main__': main()
