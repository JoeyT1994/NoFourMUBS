"""Explicit fundamental domain for the 72-element seed symmetry group (seed_symmetry.py).
Row orders of the corner permute the pair moduli of Gh = 6I - E E^dag; column orders permute those of
Gv = 6I - E^T conj(E); the corner adjoint swaps Gh and Gv.  Fundamental domain:
    Xh >= Yh >= Zh,  Xv >= Yv >= Zv,  (Xh,Yh,Zh) >=_lex (Xv,Yv,Zv).
Check: the fraction of T^4 satisfying it is 1/72, and each orbit meets it exactly once."""
import numpy as np, itertools
def mods(th):
    a, b, c, d = np.exp(1j*np.asarray(th)); E = np.array([[1, 1, 1], [1, a, b], [1, c, d]])
    Gh = 6*np.eye(3) - E @ E.conj().T; Gv = 6*np.eye(3) - E.T @ E.conj()
    m = lambda G: (abs(G[1, 0])**2, abs(G[2, 0])**2, abs(G[2, 1])**2)
    return m(Gh), m(Gv)
def inside(th):
    h, v = mods(th)
    return h[0] >= h[1] >= h[2] and v[0] >= v[1] >= v[2] and h >= v
def seeds_of(E):
    E = E * E[0, 0] / np.outer(E[:, 0], E[0, :]); return np.angle([E[1, 1], E[1, 2], E[2, 1], E[2, 2]])
rng = np.random.default_rng(5); N = 200000
print("fraction inside:", np.mean([inside(rng.uniform(-np.pi, np.pi, 4)) for _ in range(N)]), " (1/72 =", 1/72, ")")
bad = 0
for _ in range(2000):
    th = rng.uniform(-np.pi, np.pi, 4); a, b, c, d = np.exp(1j*th); E = np.array([[1, 1, 1], [1, a, b], [1, c, d]])
    orbit = []
    for pr in itertools.permutations(range(3)):
        for pc in itertools.permutations(range(3)):
            for adj in (0, 1):
                E2 = E[np.ix_(pr, pc)]; E2 = E2.conj().T if adj else E2
                orbit.append(inside(seeds_of(E2)))
    bad += (sum(orbit) != 1)
print("orbits meeting the domain other than exactly once:", bad, "/ 2000")
