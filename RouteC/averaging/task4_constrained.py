"""Task 4c (numerical, NOT rigorous).  Constrained minimisation near F6:
    minimise M(H)/d_F(H)^2 over H in V on chart spheres |w| = t   (point() below solves d_F = rho
    instead, but is too slow for Nelder-Mead and is kept only as a utility),
using the graph chart of V over T (task3_numeric.chart).  For a unit direction y in T we find t>0
with d_F(chart(t y)) = rho (bisection; d_F to the base point F6, checked against the full orbit at
the end) and minimise M over y by Nelder-Mead from many starts (random + the first-order worst
direction t1 - t2 and its images).  Compares with the exact curve value 144 sin^2(6 arcsin rho).
"""
import os, sys, json
import numpy as np
from multiprocessing import Pool
from scipy.optimize import minimize
from common import F6, Hmat, R_all, dF_proj, dF, dist_F6, dephase
from task3_numeric import chart, x0, Tb
from task2_hessian_exact import tangent_basis

here = os.path.dirname(os.path.abspath(__file__))
Tex = np.array([np.array(t, float)[1:, 1:].reshape(-1) for t in tangent_basis()]).T      # 25 x 4 (t1..t4)
U_, s_, _ = np.linalg.svd(Tex, full_matrices=False)


def point(y, rho):
    y = np.asarray(y, float); y = y / np.linalg.norm(y)
    w = lambda t: Tb.T @ (Tex @ (t * y))
    lo, hi = 0.0, 0.05
    f = lambda t: dF_proj(Hmat(chart(w(t))[0]), F6) - rho
    while f(hi) < 0 and hi < 3: lo, hi = hi, hi * 1.6
    if hi >= 3: return None
    for _ in range(30):
        mid = 0.5 * (lo + hi)
        if f(mid) < 0: lo = mid
        else: hi = mid
        if hi - lo < 1e-7: break
    x, _, ok = chart(w(hi))
    return x if ok else None


def obj(y, t):
    """M / d_F^2 at chart radius t in direction y (d_F to the base point F6)."""
    y = np.asarray(y, float); y = y / np.linalg.norm(y)
    x, _, ok = chart(Tb.T @ (Tex @ (t * y)))
    if not ok: return 1e9
    H = Hmat(x); return R_all(H).max() / dF_proj(H, F6) ** 2


def job(args):
    y0, t = args
    r = minimize(obj, y0, args=(t,), method='Nelder-Mead', options=dict(maxiter=300, xatol=1e-4, fatol=1e-4))
    y = r.x / np.linalg.norm(r.x); x, _, ok = chart(Tb.T @ (Tex @ (t * y))); H = Hmat(x)
    dfull = float(dF(H)); M = float(R_all(H).max())
    return dict(t=t, M=M, S=float(R_all(H).sum()), y=list(y), dF_full=dfull, ratio=M / dfull ** 2,
                d=float(dist_F6(H)[0][0]), y0=list(y0))


if __name__ == '__main__':
    ts = [0.02, 0.05, 0.1, 0.15, 0.2, 0.3]
    rng = np.random.default_rng(5)
    starts = [np.array(v, float) for v in ([1, -1, 0, 0], [0, 0, 1, -1], [1, 2, 0, 0], [1, -1, 0.3, -0.3])]
    starts += [rng.normal(size=4) for _ in range(4)]
    jobs = [(y, t) for t in ts for y in starts]
    with Pool(10) as p: res = p.map(job, jobs, chunksize=1)
    json.dump(res, open(os.path.join(here, 'results_task4_constrained.json'), 'w'), indent=1)
    for t in ts:
        rr = sorted([r for r in res if r['t'] == t], key=lambda r: r['ratio'])
        b = rr[0]; a = 2 * np.arcsin(b['dF_full'])
        print('t=%.3f  min M/dF^2 = %.1f at dF=%.5f (M=%.4f, d=%.4f); exact curve at same dF: 144 sin^2(3a)/dF^2 = %.1f ; y*=%s ; other starts: %s' % (
            t, b['ratio'], b['dF_full'], b['M'], b['d'], 144 * np.sin(3 * a) ** 2 / b['dF_full'] ** 2, np.round(b['y'], 3), np.round([r['ratio'] for r in rr[1:5]], 1)))
