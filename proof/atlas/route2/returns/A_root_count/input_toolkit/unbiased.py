"""U(H): vectors unbiased to the standard basis and to H/sqrt6 (floating point, numpy). Standalone.

Convention: x in T^6 with x_0 = 1 (phases phi in R^5); x is unbiased to H/sqrt6 iff |<h_i, x>|^2 = 6
for every column h_i of H, i.e. |(H^* x)_i|^2 = 6.  Unnormalised inner products: |x|^2 = 6, so x, y
are orthogonal iff <x, y> = 0 and unbiased iff |<x, y>|^2 = 6.

  torus_solutions(H, starts)     all solutions on the torus found by damped Newton from random starts
  complex_solutions(H, starts)   solutions of the complexified system (conj x_k -> 1/x_k) in (C*)^5
  gram(X)                        |<x_a, x_b>| for the rows of X
  triple_defect(X)               min over 6-subsets of max pairwise |<x,y>|  (0 iff a third MUB exists)

  python3 unbiased.py            demo on a few atlas centres
"""
import numpy as np


def residual(phi, Hs):
    x = np.exp(1j * np.concatenate([[0.0], phi]))
    return np.abs(Hs @ x) ** 2 - 6.0


def jac(phi, Hs):
    x = np.exp(1j * np.concatenate([[0.0], phi]))
    v = Hs @ x
    return 2 * np.real(np.conj(v)[:, None] * Hs[:, 1:] * 1j * x[None, 1:])


def torus_solutions(H, starts=3000, seed=0):
    Hs = H.conj().T
    rng = np.random.default_rng(seed); sols = []
    for _ in range(starts):
        phi = rng.uniform(0, 2 * np.pi, 5)
        for _ in range(60):
            step, *_ = np.linalg.lstsq(jac(phi, Hs), -residual(phi, Hs), rcond=None)
            phi = phi + step
            if np.linalg.norm(step) < 1e-13: break
        if np.max(abs(residual(phi, Hs))) < 1e-9:
            phi = np.mod(phi, 2 * np.pi)
            if not any(np.max(abs(np.angle(np.exp(1j * (phi - s))))) < 1e-6 for s in sols):
                sols.append(phi)
    return np.array([np.exp(1j * np.concatenate([[0.0], s])) for s in sols])


def _F(z, Hs):
    x = np.concatenate([[1.0], z]); a = Hs @ x; b = Hs.conj() @ (1.0 / x)
    return (a * b - 6.0)[:5]


def _J(z, Hs):
    x = np.concatenate([[1.0], z]); a = Hs @ x; b = Hs.conj() @ (1.0 / x)
    return (Hs[:, 1:] * b[:, None] + a[:, None] * (-Hs.conj()[:, 1:] / x[1:] ** 2))[:5]


def complex_solutions(H, starts=20000, seed=0):
    """Newton from random starts; finds most but possibly not all roots (an honest root count needs
    homotopy continuation / monodromy -- that is part of the task)."""
    Hs = H.conj().T; rng = np.random.default_rng(seed); sols = []
    for _ in range(starts):
        z = np.exp(rng.normal(0, 0.7, 5) + 1j * rng.uniform(0, 2 * np.pi, 5))
        for _ in range(80):
            try: step = np.linalg.solve(_J(z, Hs), -_F(z, Hs))
            except np.linalg.LinAlgError: break
            z = z + step
            if np.linalg.norm(step) < 1e-13 * (1 + np.linalg.norm(z)): break
        if np.all(np.isfinite(z)) and np.max(abs(_F(z, Hs))) < 1e-9 and 1e-8 < np.min(abs(z)) and np.max(abs(z)) < 1e8:
            if not any(np.max(abs(z - s) / (1 + abs(s))) < 1e-6 for s in sols): sols.append(z)
    return np.array(sols)


def gram(X):
    return np.abs(X.conj() @ X.T)


def triple_defect(X):
    import networkx as nx
    n = len(X); G = gram(X)
    vals = sorted(G[a, b] for a in range(n) for b in range(a + 1, n))
    lo, hi = 0, len(vals) - 1
    def has6(t):
        g = nx.Graph(); g.add_edges_from((a, b) for a in range(n) for b in range(a + 1, n) if G[a, b] <= t)
        return any(len(c) >= 6 for c in nx.find_cliques(g))
    while lo < hi:
        mid = (lo + hi) // 2
        if has6(vals[mid]): hi = mid
        else: lo = mid + 1
    return vals[lo]


if __name__ == '__main__':
    import hadamards
    C, _ = hadamards.centres()
    for idx in (100, 2471, 5305):
        X = torus_solutions(C[idx], starts=2000, seed=idx)
        G = gram(X); n = len(X); iu = np.triu_indices(n, 1)
        print(f'centre {idx}: |U(H)| = {n}, min |<x,y>| = {G[iu].min():.4f}, triple defect = {triple_defect(X):.4f}')
