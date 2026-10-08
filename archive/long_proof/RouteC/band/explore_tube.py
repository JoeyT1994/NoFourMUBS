"""Exploration for approach B: how far from the curve-point continuum do completions of E(theta),
theta in the hard box, lie?  (non-rigorous)"""
import json, sys, numpy as np, warnings
warnings.filterwarnings('ignore')
from numlib import *
bi = int(sys.argv[1]) if len(sys.argv) > 1 else 0
b = boxes()[bi]
d = json.load(open('explore/cont_%d.json' % b['id'])); P = np.array([p['x'] for p in d['path']])
rng = np.random.default_rng(0)
dist = []; nsol = []
for trial in range(12):
    th = b['c'] + b['r'] * rng.uniform(-1, 1, 4)
    R, _ = Rraw(Emat(th))
    sols = []
    for k in rng.choice(len(P), 40, replace=False):
        r = least_squares(lambda x: Ff(x, th), P[k], xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=4000, method='lm')
        if np.abs(r.fun).max() < 1e-11:
            x = r.x
            dd = np.linalg.norm(np.angle(np.exp(1j * (P - x))), axis=1)
            sols.append((x, dd.min(), dd.argmin()))
    uniq = []
    for x, dm, am in sols:
        if all(np.linalg.norm(np.angle(np.exp(1j * (x - y)))) > 1e-6 for y, _, _ in uniq):
            uniq.append((x, dm, am))
    print('theta R=%.2e  converged %d distinct %d  dist-to-loop %s  loop index %s' % (R, len(sols), len(uniq), np.round([u[1] for u in uniq], 4), [u[2] for u in uniq]), flush=True)
