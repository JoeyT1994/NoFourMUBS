"""Task 3 (careful numerical estimate, NOT rigorous).  The Hadamard variety V near F6 is
(numerically) a smooth 4-manifold, the graph over the tangent space T of a map T -> N
(N = orthogonal complement of T in the dephased 25-phase space).  We use that graph chart

    chart(w) = phi0 + w + n(w),   w in T,  n(w) in N,  f(chart(w)) = 0  (Gauss-Newton in n)

and measure, on spheres in the chart, the true gauge-reduced distance d = |u_perp| to the whole
F6 orbit (common.dist_F6), d_F (projector distance), S = sum_c R_c and M = max_c R_c.
For each chart radius we report min over sampled directions (then refined by Nelder-Mead) of
S/d^2, M/d^2 and M/d_F^2.
"""
import json, os, sys
import numpy as np
from scipy.optimize import minimize
from common import F6, Hmat, hres, hjac, R_all, dist_F6, dF

here = os.path.dirname(os.path.abspath(__file__))
x0 = np.angle(F6[1:, 1:]).reshape(-1)
U_, s_, Vt_ = np.linalg.svd(hjac(x0)); Tb = Vt_[21:].T; Nb = Vt_[:21].T


def chart(w, z0=None):
    z = np.zeros(21) if z0 is None else z0.copy()
    for _ in range(50):
        x = x0 + Tb @ w + Nb @ z; f = hres(x)
        if np.abs(f).max() < 1e-13: return x, z, True
        z = z - np.linalg.lstsq(hjac(x) @ Nb, f, rcond=None)[0]
    return x, z, np.abs(hres(x)).max() < 1e-10


def measure(x, want_dF=False):
    H = Hmat(x); R = R_all(H); d2, dinf, _ = dist_F6(H)
    out = dict(S=R.sum(), M=R.max(), d=d2[0], dinf=dinf[0])
    if want_dF: out['dF'] = dF(H)
    return out


def run(radii=(0.005, 0.01, 0.02, 0.03, 0.04, 0.06, 0.08, 0.1, 0.12, 0.15, 0.2, 0.25, 0.3, 0.4), ndir=400, seed=0):
    rng = np.random.default_rng(seed)
    Y = rng.normal(size=(ndir, 4)); Y /= np.linalg.norm(Y, axis=1)[:, None]
    table = []
    for r in radii:
        rows = []
        for y in Y:
            x, z, ok = chart(r * y)
            if not ok: continue
            m = measure(x); rows.append((m['S'] / m['d'] ** 2, m['M'] / m['d'] ** 2, m['d'], m['S'], m['M'], *y))
        rows = np.array(rows)
        # refine the worst direction for M/d^2
        def obj(y):
            y = y / np.linalg.norm(y); x, z, ok = chart(r * y)
            if not ok: return 1e9
            m = measure(x); return m['M'] / m['d'] ** 2
        k = np.argsort(rows[:, 1])[:3]
        ref = min((minimize(obj, rows[i, 5:], method='Nelder-Mead', options=dict(maxiter=300, xatol=1e-6, fatol=1e-8)) for i in k), key=lambda q: q.fun)
        yb = ref.x / np.linalg.norm(ref.x); xb, _, _ = chart(r * yb); mb = measure(xb, want_dF=True)
        k2 = np.argmin(rows[:, 0])
        row = dict(r=r, n=len(rows), d_range=[rows[:, 2].min(), rows[:, 2].max()],
                   min_S_over_d2=rows[:, 0].min(), max_S_over_d2=rows[:, 0].max(),
                   min_M_over_d2_sampled=rows[:, 1].min(), min_M_over_d2_refined=ref.fun,
                   worst=dict(d=mb['d'], dinf=mb['dinf'], dF=mb['dF'], M=mb['M'], S=mb['S'], M_over_dF2=mb['M'] / mb['dF'] ** 2, y=list(yb)))
        table.append(row)
        print(f"r={r:.3f} d in [{row['d_range'][0]:.4f},{row['d_range'][1]:.4f}]  S/d^2 in [{row['min_S_over_d2']:.0f},{row['max_S_over_d2']:.0f}]"
              f"  min M/d^2 {row['min_M_over_d2_sampled']:.2f} -> {ref.fun:.2f}  (worst: d={mb['d']:.4f} dF={mb['dF']:.4f} M={mb['M']:.4f} M/dF^2={mb['M']/mb['dF']**2:.1f})", flush=True)
    return table


if __name__ == '__main__':
    t = run()
    json.dump(t, open(os.path.join(here, 'results_task3_numeric.json'), 'w'), indent=1, default=float)
