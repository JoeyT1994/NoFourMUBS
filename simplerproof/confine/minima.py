"""Numerical survey (NOT rigorous) of local minima of M(H) = max_c R_c(H) on the order-6 Hadamard set.

Confinement (M < 26 => nu <= 0.55) is equivalent to: M has no local minimum with M < 26 and nu > 0.55
(simplerproof/README.md, Step 3).  This script looks for such minima.

Method: dephased phases phi in R^25.  At each iterate, take the near-active corners A = {c : R_c >= M - delta},
their gradients projected onto the tangent space of the Hadamard set (null space of the constraint Jacobian),
and the LP  min_d max_{c in A} <grad R_c, d>,  |d|_inf <= 1.  If the LP value is < 0, step along d with backtracking
and Gauss-Newton retraction; otherwise shrink delta, and stop when delta is tiny (Clarke-stationary point).
Usage: python3 minima.py NSTARTS SEED OUT.jsonl
"""
import json, os, sys
import numpy as np
from multiprocessing import Pool
from scipy.optimize import linprog
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'RouteC', 'averaging'))
import common as C


def grads(phi, idx, h=1e-7):
    base = C.R_all(C.Hmat(phi))[idx]
    G = np.zeros((len(idx), 25))
    for k in range(25):
        e = np.zeros(25); e[k] = h
        G[:, k] = (C.R_all(C.Hmat(phi + e))[idx] - base) / h
    return G


def tangent(phi):
    J = C.hjac(phi); U, s, Vt = np.linalg.svd(J)
    rank = int((s > 1e-7 * s[0]).sum())
    return Vt[rank:].T                      # 25 x k


def descend(phi, maxit=600):
    R = C.R_all(C.Hmat(phi)); m = R.max(); delta = max(0.2 * m, 1.0)
    for it in range(maxit):
        N = tangent(phi); k = N.shape[1]
        idx = np.where(R >= m - delta)[0]
        A = grads(phi, idx) @ N                     # |A| x k
        # LP: min z  s.t. A d - z <= 0, -1 <= d <= 1
        res = linprog(np.r_[np.zeros(k), 1.0], A_ub=np.c_[A, -np.ones(len(idx))], b_ub=np.zeros(len(idx)),
                      bounds=[(-1, 1)] * k + [(None, None)], method='highs')
        val = res.fun if res.status == 0 else 0.0
        if val > -1e-6 * max(m, 1):
            if delta < 1e-6 * max(m, 1e-3): break
            delta *= 0.3; continue
        d = N @ res.x[:k]; s = min(0.2, delta / max(-val, 1e-12))
        moved = False
        for _ in range(30):
            phi2, ok = C.project(phi + s * d)
            if ok:
                R2 = C.R_all(C.Hmat(phi2)); m2 = R2.max()
                if m2 < m - 1e-12:
                    phi, R, m, moved = phi2, R2, m2, True; break
            s *= 0.5
        if not moved:
            delta *= 0.3
            if delta < 1e-6 * max(m, 1e-3): break
    nact = int((R >= m - 1e-6 * max(m, 1)).sum())
    return phi, m, nact, it


def run(seed):
    rng = np.random.default_rng(seed)
    phi0 = C.random_hadamard(rng)
    if phi0 is None: return None
    H0 = C.Hmat(phi0); m0 = C.R_all(H0).max()
    phi, m, nact, it = descend(phi0)
    H = C.Hmat(phi)
    d2 = float(C.dist_F6(H)[0][0])
    return dict(seed=seed, M0=float(m0), M=float(m), nu=d2, nact=nact, iters=it, phi=list(map(float, phi)))


if __name__ == '__main__':
    n, s0, out = int(sys.argv[1]), int(sys.argv[2]), sys.argv[3]
    with Pool(int(os.environ.get('NPROC', '8'))) as P, open(out, 'a') as f:
        for r in P.imap_unordered(run, range(s0, s0 + n)):
            if r: f.write(json.dumps(r) + '\n'); f.flush()
