"""Floating-point helpers for exploration (NOT used for acceptance)."""
import json, itertools, numpy as np
from fractions import Fraction as Q
from scipy.optimize import least_squares
HB = '/Users/jtindall/Files/NoFourMUBS/RouteC/band/data/hard_boxes.jsonl'
FREE = [(i, j) for i in range(1, 6) for j in range(1, 6) if not (i < 3 and j < 3)]
PAIRS = [(p, q) for p in range(6) for q in range(p + 1, 6)]
T3 = list(itertools.combinations(range(6), 3))
def boxes():
    out = []
    for l in open(HB):
        r = json.loads(l); r['c'] = np.array([float(Q(x)) for x in r['centers']]); r['r'] = np.array([float(Q(x)) for x in r['radii']]); out.append(r)
    return out
def Emat(th):
    E = np.ones((3, 3), complex); E[1:, 1:] = np.exp(1j * np.asarray(th).reshape(2, 2)); return E
def Hf(x, th):
    H = np.ones((6, 6), complex); H[:3, :3] = Emat(th)
    for k, (i, j) in enumerate(FREE): H[i, j] = np.exp(1j * x[k])
    return H
def Ff(x, th):
    H = Hf(x, th); G = H @ H.conj().T
    return np.array([G[p, q].real for p, q in PAIRS] + [G[p, q].imag for p, q in PAIRS])
def dephase(M): M = M / M[:, :1]; return M / M[:1, :]
def Rraw(M):
    G = 6 * np.eye(3) - M @ M.conj().T; s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2; p = X + Y + Z; J = 2 * (s * r * np.conj(t)).real
    g = 27 - 3 * p + J; eta = 9 - p + J; chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi, g
def Rc(M): return Rraw(dephase(M))[0]
def corners(H): return {(a, b): Rc(H[np.ix_(a, b)]) for a in T3 for b in T3}
def complete(th, rng, starts=200, x0=None, tol=1e-11):
    sols = []
    for k in range(starts):
        st = rng.uniform(-np.pi, np.pi, 21) if x0 is None else x0 + 1e-2 * rng.normal(size=21)
        r = least_squares(lambda x: Ff(x, th), st, xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=4000, method='lm')
        if np.abs(r.fun).max() < tol: sols.append(np.angle(np.exp(1j * r.x)))
    return sols
