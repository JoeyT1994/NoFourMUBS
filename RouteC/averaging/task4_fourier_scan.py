"""Task 4b.  Exact-family scan: F6^(2)(a,b) = F6 o exp(i(a t1 + b t2)) on a fine (a,b) grid
(the transposed family gives identical values since R is transpose invariant).  For each point:
M = max_c R_c, S, d (gauge-reduced 2-norm distance to the F6 orbit), d_F.  Then the lower envelope
min{M : d_F >= rho}.  The first-order analysis (task2) says the worst tangent direction at F6 is
a = -b inside this family, with M ~ 216 d^2 ~ 5184 d_F^2.
"""
import os, sys, json
import numpy as np
from multiprocessing import Pool
from common import F6, R_all, dist_F6, dF

here = os.path.dirname(os.path.abspath(__file__))


def tpat(a, b):
    M = np.zeros((6, 6))
    for j in (1, 3, 5): M[j, [1, 4]] = a; M[j, [2, 5]] = b
    return M


def one(ab):
    a, b = ab
    H = F6 * np.exp(1j * tpat(a, b)); R = R_all(H); d2, dinf, _ = dist_F6(H)
    return (a, b, R.max(), R.sum(), d2[0], dinf[0], dF(H))


if __name__ == '__main__':
    n = int(sys.argv[1]) if len(sys.argv) > 1 else 121
    g = np.linspace(-np.pi, np.pi, n)
    pts = [(a, b) for a in g for b in g]
    # dense line a=-b and a=b near 0
    s = np.linspace(-0.6, 0.6, 241)
    pts += [(x, -x) for x in s] + [(x, x) for x in s] + [(x, 0.0) for x in s]
    with Pool(10) as p: res = np.array(p.map(one, pts, chunksize=16))
    np.save(os.path.join(here, 'results_task4_fourier.npy'), res)
    print('rho_F   min M   at (a,b)            dF      d')
    for rho in [0.01, 0.02, 1 / 30, 0.04, 0.05, 0.075, 0.1, 0.15, 0.2, 0.25]:
        sel = res[:, 6] >= rho; k = np.argmin(np.where(sel, res[:, 2], np.inf))
        print('%-7.4f %-8.4f (%+.4f,%+.4f)  %.4f  %.4f   M/dF^2=%.0f' % (rho, res[k, 2], res[k, 0], res[k, 1], res[k, 6], res[k, 4], res[k, 2] / res[k, 6] ** 2))
    line = res[-3 * 241:-2 * 241]
    print('\nline a=-b:  a, M, dF, d, M/dF^2, M/d^2')
    for r in line[::12]: print('%+.3f %.5f %.5f %.5f %.1f %.1f' % (r[0], r[2], r[6], r[4], r[2] / max(r[6], 1e-12) ** 2, r[2] / max(r[4], 1e-12) ** 2))
