"""Monte Carlo for the size of the seed domain that a certified cover must actually cover.

Every non-F6, non-Tao Hadamard class is H_+(theta) (or conj H_+(conj theta)) at *each* of its strict
positional 3x3 corners.  So it suffices to cover the canonical domain
    D0 = { theta : R>0 and corner (012|012) of H_+(theta) has the largest R of all 400 corners }.
Estimates: P(R>0) on T^4, number of strict corners per class, and vol(D0)/vol(T^4).
"""
import sys, numpy as np, itertools, mpmath as mp
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
from model import Model
mp.mp.dps = 20
def R_of(M):
    E = M * M[0, 0] / np.outer(M[:, 0], M[0, :])
    G = 6 * np.eye(3) - E @ E.conj().T
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = abs(s)**2, abs(t)**2, abs(r)**2
    p = X + Y + Z; J = 2 * (s * r * np.conj(t)).real; W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3*p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    return 4*g*g*eta - chi*chi, g
subsets = list(itertools.combinations(range(6), 3))
rng = np.random.default_rng(int(sys.argv[1]) if len(sys.argv) > 1 else 0)
N = int(sys.argv[2]) if len(sys.argv) > 2 else 2000
nR = 0; nmax = 0; nstrict = []; ratios = []
for k in range(N):
    th = rng.uniform(-np.pi, np.pi, 4)
    try:
        H = np.array(Model([mp.exp(1j*mp.mpf(float(x))) for x in th]).hadamard().tolist(), dtype=complex)
    except ValueError:
        continue
    nR += 1
    Rs = np.array([[R_of(H[np.ix_(r, c)])[0] for c in subsets] for r in subsets])
    R0 = Rs[0, 0]
    nstrict.append(int((Rs > 1e-9).sum()))
    if R0 >= Rs.max() - 1e-9: nmax += 1
    ratios.append(R0 / Rs.max())
print(f"samples {N}: P(R>0) = {nR/N:.4f};  strict corners per class: median {np.median(nstrict)}, min {min(nstrict)}, max {max(nstrict)}")
print(f"P(corner 0 has max R | R>0) = {nmax/nR:.5f}  ->  vol(D0)/vol(T^4) ~ {nmax/N:.2e}")
print("quantiles of R0/Rmax:", np.quantile(ratios, [0.5, 0.9, 0.99, 0.999]).round(4))
