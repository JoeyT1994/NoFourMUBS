"""Torus-root counts (all 252 roots via HomotopyContinuation) at sample points of a Record ball: do folds cross it?
Usage: fold_check.py rho nsamp id ...  (exploration)"""
import sys, numpy as np
from centres import load
from roots import hc_roots, frame, chart
phi, _, _ = load(); rho = float(sys.argv[1]); ns = int(sys.argv[2]); rng = np.random.default_rng(3)
for i in map(int, sys.argv[3:]):
    P = phi[i].reshape(6, 6); T = frame(P); Hs = []; tags = []
    for s in range(ns):
        e = rng.normal(size=4); e *= rho / np.linalg.norm(e) * (1 if s % 2 == 0 else rng.uniform() ** 0.25)
        Hs.append(np.exp(1j * chart(P, T, e)[0])); tags.append(f'{i}_fold_{rho}_{s}')
    r = hc_roots(Hs, tags)
    cnt = [int((np.max(abs(r[t].real), axis=1) < 1e-8).sum()) for t in tags]
    near = [float(np.sort(np.max(abs(r[t].real), axis=1))[sum(1 for x in [0] if 0) + c]) if c < 252 else 0 for t, c in zip(tags, cnt)]
    print(i, 'torus counts', sorted(set(cnt)), 'hist', {c: cnt.count(c) for c in sorted(set(cnt))}, 'min off-torus |Re u|', round(min(near), 4), flush=True)
