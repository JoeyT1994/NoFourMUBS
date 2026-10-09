"""Numerical (NOT rigorous): local maxima of the corner invariant R on T^4, their orbit under the 144 seed maps, and the
completion classes there.  python3 maxima.py [NSTARTS]"""
import itertools, sys
import numpy as np
from scipy.optimize import minimize
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'proof', 'atlas', 'lib'))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'proof', 'atlas', 'lib'))
import chart_np as K
import common as C

def R(th): return float(K.R_seed(np.asarray(th))[0])
def gR(th, h=1e-6): return np.array([(R(th + e) - R(th - e)) / (2 * h) for e in np.eye(4) * h])
def wrap(t): return (np.asarray(t) + np.pi) % (2 * np.pi) - np.pi
def same(p, q, tol=1e-5): return np.abs(wrap(np.asarray(p) - np.asarray(q))).max() < tol

def seeds_of(E):
    E = E * E[0, 0] / np.outer(E[:, 0], E[0, :]); return np.angle([E[1, 1], E[1, 2], E[2, 1], E[2, 2]])

SEED_MAPS = list(itertools.product(itertools.permutations(range(3)), itertools.permutations(range(3)), (0, 1), (0, 1)))

def apply_map(m, th):
    pr, pc, tr, cj = m; a, b, c, d = np.exp(1j * np.asarray(th))
    E = np.array([[1, 1, 1], [1, a, b], [1, c, d]])[np.ix_(pr, pc)]
    if tr: E = E.T
    if cj: E = E.conj()
    return seeds_of(E)

if __name__ == '__main__':
    n = int(sys.argv[1]) if len(sys.argv) > 1 else 3000
    rng = np.random.default_rng(1); pts = []; vals = []
    for _ in range(n):
        th0 = rng.uniform(-np.pi, np.pi, 4)
        if R(th0) <= 0: continue
        r = minimize(lambda t: -R(t), th0, jac=lambda t: -gR(t), method='BFGS', options=dict(gtol=1e-11, maxiter=3000))
        th = wrap(r.x); vals.append(round(-r.fun, 6))
        if not any(same(th, p) for p in pts): pts.append(th)
    print('ascents', len(vals), 'distinct maximum values', sorted(set(vals)), 'distinct points', len(pts))
    orbit = []
    for m in SEED_MAPS:
        th = apply_map(m, pts[0])
        if not any(same(th, p, 1e-6) for p in orbit): orbit.append(th)
    print('orbit of the first maximum under the 144 seed maps:', len(orbit), '; maxima in it:', sum(any(same(p, q) for q in orbit) for p in pts))
    th = pts[0]; h = 1e-4
    Hs = np.array([[(R(th + a + b) - R(th + a - b) - R(th - a + b) + R(th - a - b)) / (4 * h * h) for b in np.eye(4) * h] for a in np.eye(4) * h])
    print('theta* =', np.round(th, 10).tolist(), ' R =', R(th), ' Hessian eigenvalues', np.round(np.linalg.eigvalsh((Hs + Hs.T) / 2), 2))
    S = []
    for p in pts:
        for sh in (1, -1):
            Hm = K.hadamard(p, sh)
            if Hm is not None: S.append(np.sort(C.R_all(Hm)))
    S = np.array(S)
    print('completions H+- at all maxima: max spread of sorted 400-corner R signatures %.2e (same class expected)' % np.abs(S - S[0]).max())
