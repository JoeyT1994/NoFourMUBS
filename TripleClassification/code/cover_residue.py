#!/usr/bin/env python3
"""The residue of a ball: the part of its chart that no closed ball covers, directly or through a certified Hadamard
equivalence.

  python cover_residue.py ROOT BALL TARGETS OUT [--max-level L] [--cell L:c0,c1,c2,c3] [--workers N]

Coarse first, from the whole chart box (or --cell): a dyadic cell that misses the closed ball is outside; a cell whose
whole solid box maps, by a T0/T1 transfer certified in Arb (ext_transfer.find: patches.Transfer.check with
use_sphere=False, the atlas's own check), strictly inside a ball listed in TARGETS (closed balls) is covered; any other
cell is split into its 16 children, down to --max-level, where it is residue. Writes OUT/residue.b<BALL>.json: per level
the cells covered, outside, split and residue; the residue cells; each covered cell with its transfer (target, group);
and the residue's share of the volume of all cells meeting the ball (covered + residue, by dyadic volume).
"""
import argparse, json, os, sys, time
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path

HERE = Path(__file__).resolve().parent
W = {}


def setup(root, targets):
    for v in ('OMP_NUM_THREADS', 'OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS'): os.environ[v] = '1'
    sys.path[:0] = [str(Path(root) / 'TripleClassification/code')]
    import importlib.util, plane_tree_certificate as T
    sp = importlib.util.spec_from_file_location('ext_transfer', HERE / 'ext_transfer.py')
    X = importlib.util.module_from_spec(sp); sp.loader.exec_module(X)
    W.update(root=Path(root), T=T, X=X, targets=targets)


def one(job):
    ball, level, cell = job; t = time.time()
    if W['T'].misses_ball(level, cell): return job, 'outside', None, 0.0
    try: spec = W['X'].find(W['root'], ball, level, list(cell), W['targets'])
    except Exception: spec = None
    return job, ('covered' if spec else 'split'), spec, time.time() - t


def children(level, cell):
    return [(level + 1, [2 * c + ((i >> (3 - k)) & 1) for k, c in enumerate(cell)]) for i in range(16)]


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('root'); ap.add_argument('ball', type=int); ap.add_argument('targets'); ap.add_argument('out')
    ap.add_argument('--max-level', type=int, default=6); ap.add_argument('--cell'); ap.add_argument('--workers', type=int, default=8)
    a = ap.parse_args(); root = Path(a.root).resolve(); t0 = time.time()
    targets = sorted({int(x) for x in open(a.targets).read().split()} - {a.ball})
    l0, c0 = (int(a.cell.split(':')[0]), [int(x) for x in a.cell.split(':')[1].split(',')]) if a.cell else (0, [0, 0, 0, 0])
    per = {}; residue = []; covered = []; core = 0.0
    with ProcessPoolExecutor(a.workers, initializer=setup, initargs=(str(root), targets)) as pool:
        live = {pool.submit(one, (a.ball, l0, c0))}
        while live:
            f = next(as_completed(live)); live.remove(f)
            (ball, level, cell), st, spec, sec = f.result(); core += sec
            if st == 'split' and level >= a.max_level: st = 'residue'
            p = per.setdefault(level, dict(covered=0, outside=0, split=0, residue=0)); p[st] += 1
            if st == 'split':
                for k in children(level, cell): live.add(pool.submit(one, (a.ball, k[0], k[1])))
            elif st == 'residue': residue.append([level, list(cell)])
            elif st == 'covered': covered.append([level, list(cell), spec])
            n = sum(sum(v.values()) for v in per.values())
            if n % 2000 == 0: print('%.0fs %s' % (time.time() - t0, {k: v for k, v in sorted(per.items())}), flush=True)
    vol = lambda cells: sum(16.0 ** -l for l, *_ in cells)   # dyadic volume (cells meeting the ball count whole)
    share = lambda cells: vol(cells) / max(vol(residue) + vol(covered), 1e-300)
    res = dict(ball=a.ball, root=[l0, c0], max_level=a.max_level, targets=len(targets), per_level={str(k): v for k, v in sorted(per.items())},
               residue_cells=len(residue), residue_share=round(share(residue), 6), covered_cells=len(covered),
               covered_share=round(share(covered), 6), core_seconds=round(core), wall_seconds=round(time.time() - t0),
               residue=sorted(residue), covered=covered)
    Path(a.out).mkdir(parents=True, exist_ok=True)
    json.dump(res, open(Path(a.out) / ('residue.b%d.json' % a.ball), 'w'))
    print(json.dumps({k: v for k, v in res.items() if k not in ('residue', 'covered')}))


if __name__ == '__main__': main()
