"""Feasibility (numerical, not a proof) of a multi-reference F6 tube.
For a reference Hadamard K near F6, compute the 48 rays unbiased to (I, K) and the ClusterTube compatibility graph at
label radius rho:  orth edge if p <= 4 rho^2 (1 - rho^2);  UB edge if A <= 0 or A^2 <= 5 p (1 - p),
A = 3 (1 - 2 rho^2)^2 - 5/2 + 2 p  (ClusterTube EXPANDED.md), p = |<x,y>|^2 for unit rays.
Exclusion holds at rho if no two disjoint orthogonal 6-cliques C, D have every cross pair an UB edge.
Reports the largest rho (on a grid) at which the exclusion still holds."""
import numpy as np, itertools, networkx as nx, sys
from scipy.optimize import least_squares
F = np.array([[np.exp(2j * np.pi * j * k / 6) for k in range(6)] for j in range(6)])
t1 = np.zeros((6, 6)); t2 = np.zeros((6, 6))
for j in (1, 3, 5):
    t1[j, 1] = t1[j, 4] = 1; t2[j, 2] = t2[j, 5] = 1

def project_hadamard(U0):
    """Nearest Hadamard to the phase matrix U0 (least squares on all 36 phases, gauge-free)."""
    def res(ph):
        H = np.exp(1j * ph.reshape(6, 6)); G = H @ H.conj().T - 6 * np.eye(6); iu = np.triu_indices(6, 1)
        return np.concatenate([G[iu].real, G[iu].imag])
    r = least_squares(res, U0.ravel(), xtol=1e-15, ftol=1e-15, gtol=1e-15)
    H = np.exp(1j * r.x.reshape(6, 6)); assert np.abs(H @ H.conj().T - 6 * np.eye(6)).max() < 1e-9
    return H

def dF(H):
    """max-column projector distance to the F6 orbit, minimized over column permutations of a dephased F6 member
    (heuristic upper bound: dephased orbit members, columns matched in order)."""
    perms6 = [(0,) + q for q in itertools.permutations(range(1, 6))]
    Hd = H / H[0:1, :]; Hd = Hd / Hd[:, 0:1]
    best = 1.0
    w6 = np.exp(1j * np.pi / 3)
    for a in perms6:
        Ga = np.array([[w6 ** ((a[i] * k) % 6) for k in range(6)] for i in range(6)])   # rows permuted F, cols natural
        ov = np.abs(Hd.conj().T @ Ga) ** 2 / 36                                           # (6,6) column overlaps
        # best column assignment
        from scipy.optimize import linear_sum_assignment
        r, c = linear_sum_assignment(-ov)
        best = min(best, np.sqrt(1 - ov[r, c].min()))
    return best

def rays(K, starts=2500, seed=0):
    rng = np.random.default_rng(seed); found = []
    def res(ph):
        x = np.exp(1j * np.r_[0, ph]) / np.sqrt(6); return (np.abs(K.conj().T @ x) ** 2 - 1)[:5]
    for s in range(starts):
        r = least_squares(res, rng.uniform(-np.pi, np.pi, 5), xtol=1e-14, ftol=1e-14)
        x = np.exp(1j * np.r_[0, r.x]) / np.sqrt(6)
        if np.abs(np.abs(K.conj().T @ x) ** 2 - 1).max() < 1e-9 and all(abs(abs(np.vdot(x, y)) - 1) > 1e-6 for y in found):
            found.append(x)
    return found

def excluded(P, rho):
    n = len(P); O = nx.Graph(); O.add_nodes_from(range(n))
    UB = np.zeros((n, n), bool)
    for i in range(n):
        for j in range(i + 1, n):
            p = P[i, j]
            if p <= 4 * rho ** 2 * (1 - rho ** 2): O.add_edge(i, j)
            A = 3 * (1 - 2 * rho ** 2) ** 2 - 2.5 + 2 * p
            UB[i, j] = UB[j, i] = (A <= 0) or (A * A <= 5 * p * (1 - p))
    six = set()
    for c in nx.find_cliques(O):
        if len(c) >= 6:
            for s in itertools.combinations(sorted(c), 6): six.add(s)
            if len(six) > 200000: return None, len(six)
    six = list(six)
    for a in range(len(six)):
        A_ = six[a]
        for b in range(a + 1, len(six)):
            B_ = six[b]
            if set(A_) & set(B_): continue
            if UB[np.ix_(A_, B_)].all(): return False, len(six)
    return True, len(six)

if __name__ == '__main__':
    rng = np.random.default_rng(1)
    cases = [('F6', F)]
    for a, b in ((0.06, -0.06), (0.12, -0.12), (0.10, 0.03)):
        cases.append(('Fourier(%.2f,%.2f)' % (a, b), F * np.exp(1j * (a * t1 + b * t2))))
    for k in range(3):   # off-family: random tangent direction, projected to the Hadamard set
        v = rng.normal(size=4); v *= 0.12 / np.linalg.norm(v)
        U0 = np.angle(F) + v[0] * t1 + v[1] * t2 + v[2] * t1.T + v[3] * t2.T
        cases.append(('generic%d' % k, project_hadamard(U0)))
    for name, K in cases:
        X = rays(K); P = np.array([[abs(np.vdot(x, y)) ** 2 for y in X] for x in X])
        best = 0.0
        for rho in np.arange(0.10, 0.31, 0.01):
            ok, nsix = excluded(P, rho)
            if ok: best = rho
            else: break
        print('%-22s d_F~%.4f  rays %d  exclusion holds up to label radius %.2f' % (name, dF(K), len(X), best), flush=True)
