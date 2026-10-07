"""Numerical survey: maximal corner R, M(H) = max_c R_c(H), over random order-6 Hadamards (non-rigorous)."""
import numpy as np, itertools, sys, json
from scipy.optimize import least_squares
from multiprocessing import Pool
def inv(E):
    s, t, r = -(E[1] * E[0].conj()).sum(), -(E[2] * E[0].conj()).sum(), -(E[2] * E[1].conj()).sum()
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2; p = X + Y + Z; J = 2 * (s * r * t.conjugate()).real
    g = 27 - 3 * p + J; eta = 9 - p + J; chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi
def hres(x):
    H = np.ones((6, 6), complex); H[1:, 1:] = np.exp(1j * x.reshape(5, 5))
    G = H @ H.conj().T - 6 * np.eye(6); iu = np.triu_indices(6, 1)
    return np.concatenate([G[iu].real, G[iu].imag])
def dephase(M): M = M / M[:, :1]; return M / M[:1, :]
C = [(r, c) for r in itertools.combinations(range(6), 3) for c in itertools.combinations(range(6), 3)]
def one(seed):
    rng = np.random.default_rng(seed)
    while True:
        r = least_squares(hres, rng.uniform(-np.pi, np.pi, 25), xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=5000)
        if np.abs(r.fun).max() < 1e-11: break
    H = np.ones((6, 6), complex); H[1:, 1:] = np.exp(1j * r.x.reshape(5, 5))
    Rs = np.array([inv(dephase(H[np.ix_(a, b)])) for a, b in C])
    ph = np.angle(H) / (2 * np.pi)
    cube = float(np.abs(((ph * 3) - np.round(ph * 3))).max())     # 0 iff all entries are cube roots of unity
    sixth = float(np.abs(((ph * 6) - np.round(ph * 6))).max())    # 0 iff all entries are 6th roots of unity
    return dict(seed=seed, M=float(Rs.max()), n_pos=int((Rs > 1e-9).sum()), n_zero=int((abs(Rs) < 1e-6).sum()),
                cube_dev=cube, sixth_dev=sixth, H=[[float(x) for x in row] for row in ph])
if __name__ == '__main__':
    a, b = int(sys.argv[1]), int(sys.argv[2])
    with Pool(120) as p:
        for d in p.imap_unordered(one, range(a, b), chunksize=4):
            print(json.dumps(d), flush=True)
