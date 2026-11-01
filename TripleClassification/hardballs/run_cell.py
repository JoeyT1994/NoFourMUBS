#!/usr/bin/env python3
"""Run the two-step witness on every pattern of one cell (or ball): rebuild C1, the normal form and the complete
cover with the frozen native code, then EXCLUDED / CLASSIFIED / OPEN per pattern. Writes one JSON line per pattern.

    python run_cell.py CELL.input.json.gz OUT.jsonl [--workers 8] [--patterns 0:20]
"""
import argparse, gzip, json, os, sys, time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path

for v in ('OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS', 'VECLIB_MAXIMUM_THREADS', 'OMP_NUM_THREADS'): os.environ[v] = '1'
ROOT = Path(__file__).resolve().parents[2]
os.environ['TC_ROOT'] = str(ROOT)
for d in ('proof/seed_atlas/driver', 'proof/seed_atlas/cert', 'proof/theorems/TC_triple_classification/family_neighbourhoods'):
    sys.path.insert(0, str(ROOT / d))
sys.path.insert(0, str(Path(__file__).resolve().parent))
import numpy as np
from flint import ctx
import native_cover as NC, moving_symmetry as MS, fine_patterns as FP, patches as P, seedcert as SC
import witness as W

STATE = {}


def setup(path):
    ctx.prec = 160
    rec = json.load(gzip.open(path))['record']
    ball = SC.Ball(rec)
    c1 = SC.certify_c1(ball, max_boxes=4096)
    if not c1['ok']: raise ArithmeticError('C1 failed')
    model = P.normal_form(ball, prec=160)
    roots = NC.propose_roots(np.exp(1j * MS.numeric(model['Q0']).reshape(6, 6)))
    cover = NC.complete_cover(ball, model, roots)
    prepared, bounds, cliques, _ = NC.contract_patterns(model, roots, cover)
    STATE.update(ball=ball, model=model, cover=cover, prepared=prepared, bounds=bounds, cliques=cliques)
    return len(cliques)


def one(args):
    path, i = args
    if not STATE: setup(path)
    t = time.monotonic(); model, clique = STATE['model'], STATE['cliques'][i]
    centres = [STATE['prepared'][c]['v0'] for c in clique]
    try:
        refined, receipt = FP.refine(STATE['ball'], model, STATE['cover'], clique)
        if refined is None:
            row = dict(status='EXCLUDED' if receipt['status'] == 'EXCLUDED' else 'OPEN', route='native fine bins', reason=receipt.get('reason'))
        else:
            columns = [refined['bin_indices'][c] for c in clique]
            prop = W.propose(MS.numeric(model['Q0'])[:, 0], [MS.numeric(v)[:, 0] for v in centres])
            cache = STATE.setdefault('cache', {}); key, perm = W.match(prop['y'], cache)
            if key is None: key, perm = len(cache), list(range(6)); cache[key] = W.prepare(model, prop)
            order = sorted(range(6), key=lambda j: perm[j])
            row = W.pattern(cache[key], [columns[j] for j in order], STATE['cover']['bin_radius'])
            row.update(completion=key, residual=round(prop['residual'], 6))
    except (ArithmeticError, ValueError, ZeroDivisionError, np.linalg.LinAlgError) as exc:
        row = dict(status='OPEN', reason=repr(exc)[:300])
    return dict(pattern=i, colours=clique, seconds=round(time.monotonic() - t, 1), **row)


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('cell'); ap.add_argument('out')
    ap.add_argument('--workers', type=int, default=1); ap.add_argument('--patterns', default=':')
    a = ap.parse_args()
    t = time.monotonic(); n = setup(a.cell)
    print(json.dumps(dict(cell=a.cell, patterns=n, setup_seconds=round(time.monotonic() - t, 1))), flush=True)
    lo, hi = (a.patterns.split(':') + [''])[:2]
    todo = list(range(n))[int(lo or 0):int(hi or n)]
    with open(a.out, 'a') as out, ProcessPoolExecutor(a.workers) as pool:
        for row in pool.map(one, [(a.cell, i) for i in todo], chunksize=max(1, len(todo) // a.workers)):
            out.write(json.dumps(row) + '\n'); out.flush()
            print(json.dumps({k: row.get(k) for k in ('pattern', 'status', 'step', 'target', 'q', 'seconds')}), flush=True)


if __name__ == '__main__': main()
