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
"""
import argparse, gzip, itertools, json, sys, time
from pathlib import Path


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('root'); ap.add_argument('entry', type=Path); ap.add_argument('--out', type=Path, required=True)
    ap.add_argument('--depth', type=int, default=6)
    a = ap.parse_args(); root = Path(a.root).resolve(); sys.path.insert(0, str(root / 'TripleClassification/code'))
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
        def witness(clique):
            for c in clique:
                if c in proved and not proved[c][1]: return [c]
            for x, y in itertools.combinations(clique, 2):
                if x not in proved or y not in proved: continue
                if (x, y) not in pair_cache: pair_cache[(x, y)] = Whole.pair_excluded(proved[x][1], proved[y][1])
                if pair_cache[(x, y)]: return [x, y]
            return None
        for clique in cliques:
            chosen = witness(clique)
            for c in sorted(clique, key=lambda c: float(columns[c]['phase_radius'])):
                if chosen is not None: break
                if c in attempted: continue
                attempted.add(c)
                try: proved[c] = prove_column(model, columns[c], C, depth=depth)
                except ArithmeticError: continue
                chosen = witness(clique)
            if chosen is None:
                available = sorted((c for c in clique if c in proved), key=lambda c: (len(proved[c][1]), c))
                try:
                    joint = Joint.exclude(model, {c: proved[c][1] for c in available}, available,
                                          pair_cache=root_pairs, scalar_cache=scalars, allow_known=True)
                except (ValueError, ArithmeticError):
                    raise ArithmeticError('complete-cover pattern remains: ' + str(clique))
                witnesses.append(dict(colours=clique, columns=available, joint=joint))
            else: witnesses.append(dict(colours=clique, columns=chosen))
        used = {c for w in witnesses for c in w['columns']}
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
