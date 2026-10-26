"""Float seed geometry for the driver (untrusted; nothing here decides acceptance).

Conventions (SPEC §1, FORMAT.md): seed theta = (E11, E12, E21, E22) phases of the dephased corner
E = [[1,1,1],[1,a,b],[1,c,d]]; the horizontal side B (rows 0..2, columns 3..5) has first row 1 and rows 1, 2 equal to
e^{i phih[0:3]}, e^{i phih[3:6]}; the vertical side V = C^T likewise with phiv; D = -C E^* (B^*)^-1.
Phase matrix Q (6x6): Q[0,:] = Q[:,0] = 0, Q[1:3,1:3] = theta, Q[1,3:] = phih[:3], Q[2,3:] = phih[3:],
Q[3:,1] = phiv[:3], Q[3:,2] = phiv[3:], Q[3:,3:] = arg D.
Everything is vectorised over leading axes.
"""
import itertools
import numpy as np

TWO_PI = 2 * np.pi
POS = [(1, 1), (1, 2), (2, 1), (2, 2)]
PAIRS = [(0, 1), (0, 2), (1, 2)]
TRI = np.array(list(itertools.combinations(range(6), 3)))                 # 20 x 3, increasing
TRIC = np.array([[k for k in range(6) if k not in t] for t in TRI])       # complements, increasing
P3 = np.array(list(itertools.permutations(range(3))))                      # 6 x 3
G4 = ('id', 'conj', 'T', 'conjT')


def wrap(x):
    """To (-pi, pi]."""
    return x - TWO_PI * np.round(x / TWO_PI)


def near(x, ref):
    """The representative of x mod 2 pi nearest ref (entrywise)."""
    return x + TWO_PI * np.round((ref - x) / TWO_PI)


def gphase(g, Q):
    """Phases of g.K for K = e^{iQ} (Q (..., 6, 6)): id Q, conj -Q, T Q^T, conjT -Q^T."""
    if g in ('T', 'conjT'): Q = np.swapaxes(Q, -1, -2)
    if g in ('conj', 'conjT'): Q = -Q
    return Q


def seed_E(theta):
    a, b, c, d = np.moveaxis(np.exp(1j * np.asarray(theta, float)), -1, 0)
    o = np.ones_like(a)
    return np.stack([np.stack([o, o, o], -1), np.stack([o, a, b], -1), np.stack([o, c, d], -1)], -2)


def R_seed(theta):
    E = seed_E(theta)
    G = 6 * np.eye(3) - E @ np.conj(np.swapaxes(E, -1, -2))
    s, t, r = G[..., 1, 0], G[..., 2, 0], G[..., 2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    p = X + Y + Z; J = 2 * (s * r * np.conj(t)).real; W = X * Y + X * Z + Y * Z - X * Y * Z
    g = 27 - 3 * p + J; eta = 9 - p + J; chi = W - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi


def edge_dist(theta, eps=1e-6):
    """First-order distance R / |grad R| from the seed to the edge of Omega (0 where R <= 0)."""
    theta = np.asarray(theta, float)
    R = R_seed(theta)
    g = np.stack([(R_seed(theta + eps * e) - R_seed(theta - eps * e)) / (2 * eps) for e in np.eye(4)], -1)
    return np.where(R > 0, R / np.maximum(np.linalg.norm(g, axis=-1), 1e-300), 0.0)


def perm3(B):
    return (B[..., 0, 0] * (B[..., 1, 1] * B[..., 2, 2] + B[..., 1, 2] * B[..., 2, 1])
            + B[..., 0, 1] * (B[..., 1, 0] * B[..., 2, 2] + B[..., 1, 2] * B[..., 2, 0])
            + B[..., 0, 2] * (B[..., 1, 0] * B[..., 2, 1] + B[..., 1, 1] * B[..., 2, 0]))


def psi(S):
    """Side signature perm(S) det(S)^2 / prod S_ab (invariant under row/column permutations and unimodular scalings)."""
    d = np.linalg.det(S)
    return perm3(S) * d * d / np.prod(S.reshape(S.shape[:-2] + (9,)), -1)


# ------------------------------------------------------------------ sides and completion
def side(phi):
    phi = np.asarray(phi, float)
    o = np.ones(phi.shape[:-1] + (3,), complex)
    return np.stack([o, np.exp(1j * phi[..., :3]), np.exp(1j * phi[..., 3:])], -2)


def gram(theta, which):
    E = seed_E(theta)
    if which == 'h': return 6 * np.eye(3) - E @ np.conj(np.swapaxes(E, -1, -2))
    return 6 * np.eye(3) - np.swapaxes(E, -1, -2) @ np.conj(E)


def gram_res(phi, Gm):
    S = side(phi); M = S @ np.conj(np.swapaxes(S, -1, -2))
    v = np.stack([M[..., a, b] - Gm[..., a, b] for a, b in PAIRS], -1)
    return np.concatenate([v.real, v.imag], -1)


def gram_jac(phi):
    """d gram_res / d phi, (..., 6, 6)."""
    phi = np.asarray(phi, float)
    b1, b2 = np.exp(1j * phi[..., :3]), np.exp(1j * phi[..., 3:])
    Jc = np.zeros(phi.shape[:-1] + (3, 6), complex)
    Jc[..., 0, :3] = -1j * np.conj(b1)
    Jc[..., 1, 3:] = -1j * np.conj(b2)
    Jc[..., 2, :3] = 1j * b1 * np.conj(b2); Jc[..., 2, 3:] = -1j * b1 * np.conj(b2)
    return np.concatenate([Jc.real, Jc.imag], -2)


def dgram(theta, which):
    """d (Gram entries (real, imag) of PAIRS) / d theta, (..., 6, 4)."""
    E = seed_E(theta)
    out = []
    for (i, j) in POS:
        dE = np.zeros_like(E); dE[..., i, j] = 1j * E[..., i, j]
        EH = np.conj(np.swapaxes(E, -1, -2)); dEH = np.conj(np.swapaxes(dE, -1, -2))
        if which == 'h': dG = -(dE @ EH + E @ dEH)
        else: dG = -(np.swapaxes(dE, -1, -2) @ np.conj(E) + np.swapaxes(E, -1, -2) @ np.conj(dE))
        v = np.stack([dG[..., a, b] for a, b in PAIRS], -1)
        out.append(np.concatenate([v.real, v.imag], -1))
    return np.stack(out, -1)


def dphi(phi, theta, which):
    """d phi / d theta on the side solution (implicit function theorem): J dphi = dG."""
    return np.linalg.solve(gram_jac(phi), dgram(theta, which))


def newton(phi, Gm, tol=1e-14, it=30):
    """Batched Newton on the Gram system.  Returns (phi, ok)."""
    phi = np.array(phi, float)
    ok = np.zeros(phi.shape[:-1], bool)
    for _ in range(it):
        f = gram_res(phi, Gm)
        err = np.abs(f).max(-1)
        ok = err < tol
        if ok.all(): break
        J = gram_jac(phi)
        try:
            step = np.linalg.solve(J, f[..., None])[..., 0]
        except np.linalg.LinAlgError:
            step = np.stack([np.linalg.lstsq(Jk, fk, rcond=None)[0] for Jk, fk in zip(J.reshape(-1, 6, 6), f.reshape(-1, 6))]).reshape(f.shape)
        step = np.where(ok[..., None], 0.0, step)
        phi = phi - step
    err = np.abs(gram_res(phi, Gm)).max(-1)
    return phi, err < 1e-11


def forced_D(theta, phih, phiv):
    E = seed_E(theta); B = side(phih); C = np.swapaxes(side(phiv), -1, -2)
    Gh = gram(theta, 'h')
    return -C @ np.conj(np.swapaxes(E, -1, -2)) @ np.linalg.solve(Gh, B)


def assemble_Q(theta, phih, phiv, argD):
    sh = np.shape(theta)[:-1]
    Q = np.zeros(sh + (6, 6))
    Q[..., 1, 1], Q[..., 1, 2], Q[..., 2, 1], Q[..., 2, 2] = np.moveaxis(np.asarray(theta), -1, 0)
    Q[..., 1, 3:] = phih[..., :3]; Q[..., 2, 3:] = phih[..., 3:]
    Q[..., 3:, 1] = phiv[..., :3]; Q[..., 3:, 2] = phiv[..., 3:]
    Q[..., 3:, 3:] = argD
    return Q


def complete(theta, phih, phiv, ref=None):
    """Matched completion at theta from side guesses (batched).  Returns (Q, phih, phiv, ok, flat):
    Q the phase matrix, side and D phases taken nearest ref (6x6, default: the guesses / 0)."""
    theta = np.asarray(theta, float)
    ph, okh = newton(phih, gram(theta, 'h')); pv, okv = newton(phiv, gram(theta, 'v'))
    D = forced_D(theta, ph, pv)
    if ref is None:
        ref = assemble_Q(theta, phih, phiv, np.zeros(theta.shape[:-1] + (3, 3)))
    argD = near(np.angle(D), ref[..., 3:, 3:])
    Q = assemble_Q(theta, ph, pv, argD)
    # side entries: nearest the reference too (Newton keeps them continuous with the guesses anyway)
    Q[..., 1:3, 3:] = near(Q[..., 1:3, 3:], ref[..., 1:3, 3:]); Q[..., 3:, 1:3] = near(Q[..., 3:, 1:3], ref[..., 3:, 1:3])
    ph = np.concatenate([Q[..., 1, 3:], Q[..., 2, 3:]], -1); pv = np.concatenate([Q[..., 3:, 1], Q[..., 3:, 2]], -1)
    flat = np.abs(np.abs(D) - 1).reshape(D.shape[:-2] + (9,)).max(-1)
    return Q, ph, pv, okh & okv, flat


def continue_to(theta0, phih0, phiv0, thetas, step=0.004, ref=None):
    """Continue the sides from theta0 to each of thetas (N, 4) along segments (batched, common step count).
    Returns (Q (N,6,6), phih, phiv, ok)."""
    thetas = np.atleast_2d(np.asarray(thetas, float)); N = len(thetas)
    dist = np.linalg.norm(thetas - theta0, axis=1)
    m = max(1, int(np.ceil(dist.max() / step)))
    ph = np.broadcast_to(phih0, (N, 6)).copy(); pv = np.broadcast_to(phiv0, (N, 6)).copy()
    ok = np.ones(N, bool)
    for k in range(1, m + 1):
        th = theta0 + (thetas - theta0) * (k / m)
        ph2, okh = newton(ph, gram(th, 'h')); pv2, okv = newton(pv, gram(th, 'v'))
        jump = (np.abs(ph2 - ph).max(1) > 0.5) | (np.abs(pv2 - pv).max(1) > 0.5)
        ok &= okh & okv & ~jump
        ph, pv = np.where(ok[:, None], ph2, ph), np.where(ok[:, None], pv2, pv)
    D = forced_D(thetas, ph, pv)
    refD = ref[..., 3:, 3:] if ref is not None else np.zeros((N, 3, 3))
    Q = assemble_Q(thetas, ph, pv, near(np.angle(D), refD))
    if ref is not None:
        Q[..., 1:3, 3:] = near(Q[..., 1:3, 3:], ref[..., 1:3, 3:]); Q[..., 3:, 1:3] = near(Q[..., 3:, 1:3], ref[..., 3:, 1:3])
    flat = np.abs(np.abs(D) - 1).reshape(N, 9).max(1)
    ok &= flat < 1e-9
    return Q, ph, pv, ok


# ------------------------------------------------------------------ corner census
def corner_seed_matrix(rows, cols):
    """L (4 x 36): theta' = L q for q = phases (row-major) of a matrix, corner (rows, cols) ordered triples."""
    L = np.zeros((4, 36))
    for k, (a, b) in enumerate(POS):
        for (aa, bb, sg) in ((a, b, 1), (a, 0, -1), (0, b, -1), (0, 0, 1)):
            L[k, 6 * rows[aa] + cols[bb]] += sg
    return L


def g_matrix(g):
    """36 x 36 signed permutation with (g.Q) flattened = Gm @ Q flattened."""
    idx = np.arange(36).reshape(6, 6)
    if g in ('T', 'conjT'): idx = idx.T
    s = -1.0 if g in ('conj', 'conjT') else 1.0
    M = np.zeros((36, 36)); M[np.arange(36), idx.reshape(36)] = s
    return M


def census(Q, orderings=True):
    """All corner seeds of the classes g.[e^{iQ}] (g in G4) with orientation +1 and matched.
    Q: (6, 6) phases (any representative).  Returns a dict of arrays over the kept (g, corner[, ordering]):
      g (int index into G4), rows (k,3), cols (k,3), seed (k,4) unwrapped from Q, edge (k,) [identity-ordering edge
      distance of that corner].  With orderings, all 36 (rows, cols) orderings of each kept corner are listed."""
    out = dict(g=[], rows=[], cols=[], seed=[], edge=[])
    I = TRI[:, None, :]; J = TRI[None, :, :]; Ic = TRIC[:, None, :]; Jc = TRIC[None, :, :]
    for gi, g in enumerate(G4):
        Kq = gphase(g, np.asarray(Q, float)); K = np.exp(1j * Kq)
        Bs = K[I[..., :, None], Jc[..., None, :]]                       # (20, 20, 3, 3): rows I, cols Jc
        Vs = np.swapaxes(K[Ic[..., :, None], J[..., None, :]], -1, -2)  # (K[Ic, J])^T
        oh = np.sign(psi(Bs).imag); ov = np.sign(psi(Vs).imag)
        keep = np.argwhere((oh > 0) & (ov < 0))
        if not len(keep): continue
        ri = TRI[keep[:, 0]]; ci = TRI[keep[:, 1]]
        if orderings:
            rows =np.stack([ri[:, s] for s in P3], 1)                 # (k, 6, 3)
            cols = np.stack([ci[:, t] for t in P3], 1)
            rows = np.broadcast_to(rows[:, :, None, :], (len(ri), 6, 6, 3)).reshape(-1, 3)
            cols = np.broadcast_to(cols[:, None, :, :], (len(ci), 6, 6, 3)).reshape(-1, 3)
            e_rep = 36
        else:
            rows, cols, e_rep = ri, ci, 1
        th = np.stack([Kq[rows[:, a], cols[:, b]] - Kq[rows[:, a], cols[:, 0]] - Kq[rows[:, 0], cols[:, b]]
                       + Kq[rows[:, 0], cols[:, 0]] for (a, b) in POS], -1)
        th0 = np.stack([Kq[ri[:, a], ci[:, b]] - Kq[ri[:, a], ci[:, 0]] - Kq[ri[:, 0], ci[:, b]] + Kq[ri[:, 0], ci[:, 0]]
                        for (a, b) in POS], -1)
        ed = np.repeat(edge_dist(wrap(th0)), e_rep)
        out['g'].append(np.full(len(rows), gi)); out['rows'].append(rows); out['cols'].append(cols)
        out['seed'].append(th); out['edge'].append(ed)
    return {k: (np.concatenate(v) if v else np.zeros((0,) + ((3,) if k in ('rows', 'cols') else (4,) if k == 'seed' else ())))
            for k, v in out.items()}


def corner_split(Q, g, rows, cols):
    """The dephased matrix of g.e^{iQ} with corner (rows, cols) moved to the top-left (complements in increasing
    order): returns (theta, phih, phiv) of that matrix in the gauge of SPEC §1, theta wrapped to (-pi, pi]."""
    Kq = gphase(G4[g] if isinstance(g, (int, np.integer)) else g, np.asarray(Q, float))
    rc = [k for k in range(6) if k not in rows]; cc = [k for k in range(6) if k not in cols]
    R = list(rows) + rc; Cc = list(cols) + cc
    M = Kq[np.ix_(R, Cc)]
    M = M - M[:, :1] - M[:1, :] + M[0, 0]
    M = wrap(M)
    theta = np.array([M[1, 1], M[1, 2], M[2, 1], M[2, 2]])
    return theta, np.concatenate([M[1, 3:], M[2, 3:]]), np.concatenate([M[3:, 1], M[3:, 2]])


def hor(X):
    """Horizontal projection of (..., 6, 6)."""
    return X - X.mean(-1, keepdims=True) - X.mean(-2, keepdims=True) + X.mean((-1, -2), keepdims=True)
