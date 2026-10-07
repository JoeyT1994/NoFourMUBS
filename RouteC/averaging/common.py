"""Shared numerics for the averaging lemma (RouteC/averaging).  Non-rigorous float code.

Conventions: H is 6x6 with unimodular entries; a dephased H is parametrised by
phi in R^25 (entries H[1:,1:] = exp(i phi)).  Corners c = (rows, cols), 400 of them.
"""
import itertools
import numpy as np
from scipy.optimize import least_squares

TRIPLES = list(itertools.combinations(range(6), 3))
CORNERS = [(r, c) for r in TRIPLES for c in TRIPLES]
COMP = {t: tuple(j for j in range(6) if j not in t) for t in TRIPLES}
RI = np.array([r for r, c in CORNERS]); CI = np.array([c for r, c in CORNERS])
CCI = np.array([COMP[c] for r, c in CORNERS])           # same rows, complementary columns
PERMS3 = list(itertools.permutations(range(3)))
SGN3 = np.array([1, -1, -1, 1, 1, -1])                 # signs of PERMS3 in itertools order


def dephase(M):
    M = M / M[:, :1]
    return M / M[:1, :]


def R_inv(E):
    """R(E) from NOTATION.md for a single 3x3 unimodular E (any phases)."""
    E = dephase(E)
    s, t, r = -(E[1] * E[0].conj()).sum(), -(E[2] * E[0].conj()).sum(), -(E[2] * E[1].conj()).sum()
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    p = X + Y + Z; J = 2 * (s * r * t.conjugate()).real
    g = 27 - 3 * p + J; eta = 9 - p + J
    chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi


def blocks(H, cols=None):
    """All 400 3x3 submatrices H[rows, cols] (cols=None) or same-row complements (cols='comp')."""
    C = CCI if cols == 'comp' else CI
    return H[RI[:, :, None], C[:, None, :]]


def qval(B):
    """q(B) = perm(B) det(B)^2 / prod(B), vectorised over leading axis."""
    perm = np.zeros(B.shape[0], complex); det = np.zeros(B.shape[0], complex)
    for s, p in zip(SGN3, PERMS3):
        m = B[:, 0, p[0]] * B[:, 1, p[1]] * B[:, 2, p[2]]
        perm += m; det += s * m
    return perm * det ** 2 / B.reshape(B.shape[0], 9).prod(axis=1)


def R_all(H):
    """All 400 corner values R_c(H) via R(A) = 4 (Im q(B))^2, B = same-row complement (H Hadamard!)."""
    return 4 * qval(blocks(H, 'comp')).imag ** 2


def R_all_direct(H):
    """All 400 corner values from the defining formula (valid for any unimodular H)."""
    B = blocks(H)
    E = B / B[:, :, :1]; E = E / E[:, :1, :]
    s = -(E[:, 1] * E[:, 0].conj()).sum(1); t = -(E[:, 2] * E[:, 0].conj()).sum(1); r = -(E[:, 2] * E[:, 1].conj()).sum(1)
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    p = X + Y + Z; J = 2 * (s * r * t.conj()).real
    g = 27 - 3 * p + J; eta = 9 - p + J
    chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi


def Hmat(phi):
    H = np.ones((6, 6), complex); H[1:, 1:] = np.exp(1j * np.asarray(phi).reshape(5, 5)); return H


def hres(phi):
    H = Hmat(phi); G = H @ H.conj().T; iu = np.triu_indices(6, 1)
    return np.concatenate([G[iu].real, G[iu].imag])


def hjac(phi):
    """Jacobian of hres w.r.t. phi (30 x 25)."""
    H = Hmat(phi); iu = np.triu_indices(6, 1); Jc = np.zeros((15, 25), complex)
    for k, (a, b) in enumerate(zip(*iu)):
        # G_ab = sum_j H_aj conj(H_bj); dH_ij/dphi = i H_ij
        for j in range(1, 6):
            if a >= 1: Jc[k, (a - 1) * 5 + j - 1] += 1j * H[a, j] * np.conj(H[b, j])
            if b >= 1: Jc[k, (b - 1) * 5 + j - 1] += -1j * H[a, j] * np.conj(H[b, j])
    return np.vstack([Jc.real, Jc.imag])


def project(phi, tol=1e-13, maxit=60):
    """Gauss-Newton (min-norm steps) projection of phi onto the Hadamard variety."""
    x = np.array(phi, float)
    for _ in range(maxit):
        f = hres(x)
        if np.abs(f).max() < tol: return x, True
        x = x - np.linalg.lstsq(hjac(x), f, rcond=1e-10)[0]
    return x, np.abs(hres(x)).max() < 1e-10


def random_hadamard(rng, tries=50):
    for _ in range(tries):
        r = least_squares(hres, rng.uniform(-np.pi, np.pi, 25), jac=hjac, xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=3000)
        if np.abs(r.fun).max() < 1e-9:
            x, ok = project(r.x)
            if ok: return x
    return None


def phases_of(H):
    return np.angle(dephase(H)[1:, 1:]).reshape(-1)


# ---------------------------------------------------------------- F6 orbit and distances
W6 = np.exp(2j * np.pi / 6)
F6 = W6 ** np.outer(np.arange(6), np.arange(6))


def _orbit():
    """All dephased matrices equivalent to F6 (or conj(F6) = column permutation of F6), as Z/6 exponent arrays."""
    start = np.outer(np.arange(6), np.arange(6)) % 6
    seen = {start.tobytes()}; todo = [start]; out = [start]
    gens = []
    for i in range(6):
        for j in range(i + 1, 6):
            p = list(range(6)); p[i], p[j] = p[j], p[i]; gens.append(p)
    while todo:
        K = todo.pop()
        for p in gens:
            for M in (K[p, :], K[:, p]):
                M = (M - M[:, :1] - M[:1, :] + M[0, 0]) % 6
                b = M.tobytes()
                if b not in seen:
                    seen.add(b); todo.append(M); out.append(M)
    return np.array(out)


_ORB = None


def orbit():
    global _ORB
    if _ORB is None: _ORB = _orbit()
    return _ORB


def gauge_ls(res):
    """Least-squares gauge: residual matrix res (6x6, small) minus best alpha_i + beta_j."""
    a = res.mean(1, keepdims=True); b = res.mean(0, keepdims=True); m = res.mean()
    return res - a - b + m


def wrap(x): return (x + np.pi) % (2 * np.pi) - np.pi


def dist_F6(H, top=1):
    """Phase distance to the F6 orbit.  Returns (d2, dinf, K-index) using wrapped residuals of the
    dephased phases against every orbit element, gauge fixed by least squares (2-norm over the 36
    entries, after removing row/column shifts).  dinf is the max entry of that LS-gauge residual."""
    Ph = np.angle(dephase(H))
    O = orbit() * (np.pi / 3)
    res = wrap(Ph[None] - O)
    # iterate gauge LS with rewrapping (residuals can straddle +-pi only far from the orbit)
    for _ in range(3):
        res = wrap(res - res.mean(2, keepdims=True) - res.mean(1, keepdims=True) + res.mean((1, 2), keepdims=True))
    d2 = np.sqrt((res ** 2).sum((1, 2)))
    k = np.argsort(d2)[:top]
    return d2[k], np.abs(res[k]).max((1, 2)), k


def dF_proj(H, K, iters=200):
    """Projector distance d_F (ClusterTube definition) of U=H/sqrt6 to the given F6-equivalent K
    (column order already matched), minimised over row phases by a smooth minimax.  Upper bound on
    true d_F for this matching; with K nearest it is the d_F value (numerically)."""
    from scipy.optimize import minimize
    U = H / np.sqrt(6); V = K / np.sqrt(6)

    def colerr(a):
        D = np.exp(1j * np.concatenate([[0.0], a]))
        ov = np.abs((U.conj() * (D[:, None] * V)).sum(0)) ** 2
        return np.sqrt(np.maximum(0, 1 - ov))

    r = wrap(np.angle(H) - np.angle(K))
    a0 = (r - r.mean(0, keepdims=True)).mean(1); a0 = -(a0[1:] - a0[0])
    best = min(colerr(a0).max(), colerr(-a0).max())
    a0 = a0 if colerr(a0).max() <= colerr(-a0).max() else -a0
    x0 = np.r_[a0, best]
    res = minimize(lambda x: x[5], x0, method='SLSQP',
                   constraints=[dict(type='ineq', fun=lambda x: x[5] - colerr(x[:5]))],
                   options=dict(ftol=1e-15, maxiter=500))
    return min(best, colerr(res.x[:5]).max())


def dF(H):
    """d_F(H/sqrt6) to the F6 orbit, numerically: best LS-aligned orbit element, then minimax over row phases."""
    d2, dinf, k = dist_F6(H, top=3)
    O = orbit()
    Hd = dephase(H)
    return min(dF_proj(Hd, W6 ** O[i]) for i in k)
