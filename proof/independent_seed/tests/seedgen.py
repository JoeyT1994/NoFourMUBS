"""Test-input generator: seed balls in the SPEC §8 format, built with the float prototype in
proof/seed_atlas/prototype (untrusted; it only produces inputs for the checker's tests).

ball(H, I, J, r, k): the seed ball of the Hadamard H at its corner (I, J), radius r, k boxes per axis.  Mth = V S^-1
and U = T Mth from T = DQ(theta0) = U S V^T (SPEC §2); P = the phases of the completion at theta0; o = sign Im Psi(B);
n = the prototype's second-order Taylor-model bound (tmball2.tm2_n, binary64, not rigorous) times a factor."""
import gzip, json, os, sys
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..', '..'))
sys.path.insert(0, os.path.join(ROOT, 'proof', 'seed_atlas', 'prototype'))
sys.path.insert(0, os.path.join(ROOT, 'proof', 'atlas'))
from seedball import SeedBall, best_corner_split, R_of      # noqa: E402
from tmball2 import tm2_n                                    # noqa: E402

hx = lambda x: float(x).hex()


def atlas_records():
    return json.load(gzip.open(os.path.join(ROOT, 'proof', 'seed_atlas', 'cert', 'tests', 'data', 'atlas_records.json.gz')))['records']


def record_H(rec):
    phi = np.array([float.fromhex(x) for x in rec['phi']])
    return np.exp(1j * phi.reshape(6, 6))


def corner_split(H, I, J):
    Ic = [k for k in range(6) if k not in I]; Jc = [k for k in range(6) if k not in J]
    M = H[np.ix_(list(I) + Ic, list(J) + Jc)]
    M = M / M[:, :1]; M = M / M[:1, :]
    th = np.angle([M[1, 1], M[1, 2], M[2, 1], M[2, 2]])
    ph = np.angle(np.concatenate([M[1, 3:], M[2, 3:]])); pv = np.angle(np.concatenate([M[3:, 1], M[3:, 2]]))
    return th, ph, pv


def psi(S):
    import itertools
    perm = sum(S[0, p[0]] * S[1, p[1]] * S[2, p[2]] for p in itertools.permutations(range(3)))
    det = np.linalg.det(S)
    return perm * det ** 2 / np.prod(S)


def ball(H, I=None, J=None, r=0.04, k=3, nfac=1.05, label_radius=0.03, n=None):
    if I is None:
        th, ph, pv, _, _ = best_corner_split(H)
    else:
        th, ph, pv = corner_split(H, I, J)
    sb = SeedBall(th, ph, pv)
    U, S, Vt = np.linalg.svd(sb.T, full_matrices=False)
    Mth = Vt.T / S[None, :]
    Uf = sb.T @ Mth
    B = np.vstack([np.ones(3), np.exp(1j * sb.phih[:3]), np.exp(1j * sb.phih[3:])])
    V = np.vstack([np.ones(3), np.exp(1j * sb.phiv[:3]), np.exp(1j * sb.phiv[3:])])
    o = int(np.sign(psi(B).imag))
    assert np.sign(psi(V).imag) == -o
    if n is None:
        n = tm2_n(sb, r, k_per_axis=k) * nfac
    d = dict(theta0=[hx(x) for x in sb.theta0], Mth=[hx(x) for x in Mth.reshape(16)], r=hx(r), o=o, k=k,
             P=[hx(x) for x in sb.P.reshape(36)], U=[hx(x) for x in Uf.reshape(144)], n=hx(n),
             label_radius=hx(label_radius), transfers=[])
    return d, sb


def hor(X):
    """Horizontal projection of a row-major 36-vector (or of each column of a 36 x m matrix)."""
    X = np.asarray(X, float)
    if X.ndim == 2:
        return np.column_stack([hor(X[:, k]) for k in range(X.shape[1])])
    M = X.reshape(6, 6)
    return (M - M.mean(1, keepdims=True) - M.mean(0, keepdims=True) + M.mean()).reshape(36)


def ball_hor(H, I=None, J=None, r=0.125, k=4, nfac=1.25, label_radius=0.03, nsamp=300, seed=0, n=None):
    """A seed ball in the horizontal gauge (SPEC §11): Mth from the SVD of hor(T), U = hor(T) Mth (orthonormal),
    P = hor(P_g); n = nfac x the sampled max of ||hor(Q_g) - P - U w|| over the sphere and the half sphere."""
    if I is None:
        th, ph, pv, _, _ = best_corner_split(H)
    else:
        th, ph, pv = corner_split(H, I, J)
    sb = SeedBall(th, ph, pv)
    hT = hor(sb.T)
    U, S, Vt = np.linalg.svd(hT, full_matrices=False)
    Mth = Vt.T / S[None, :]
    Uh = hT @ Mth
    Pg = sb.P.reshape(36)
    P = hor(Pg)
    B = np.vstack([np.ones(3), np.exp(1j * sb.phih[:3]), np.exp(1j * sb.phih[3:])])
    o = int(np.sign(psi(B).imag))
    if n is None:
        rng = np.random.default_rng(seed)
        worst = 0.0
        for s in (r, r / 2):
            for v in rng.normal(size=(nsamp, 4)):
                w = s * v / np.linalg.norm(v)
                out = sb.Q(sb.theta0 + Mth @ w)
                if out is None:
                    raise RuntimeError('continuation failed')
                Qg = out[0]
                Ug = hT @ Mth   # (U_g only fixes the representative; the prototype's Q is already near P_g)
                worst = max(worst, np.linalg.norm(hor(Qg) - P - Uh @ w))
        n = nfac * worst
    d = dict(gauge='hor', theta0=[hx(x) for x in sb.theta0], Mth=[hx(x) for x in Mth.reshape(16)], r=hx(r), o=o, k=k,
             P=[hx(x) for x in P], U=[hx(x) for x in Uh.reshape(144)], n=hx(n), label_radius=hx(label_radius), transfers=[])
    return d, sb
