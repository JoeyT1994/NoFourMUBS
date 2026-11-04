"""The F6 record and its boundary cover (FORMAT.md §6), untrusted floats.

Record: centre F6 (phases 2 pi jk/6), radius R, ball {e^{i(P + delta)} : delta horizontal, ||delta|| <= R}; every
Hadamard in it has delta = T eta + nu, nu in N (horizontal complement of span T), ||nu|| <= n (ballrecord.py).
Boundary: eta-boxes (dyadic, units eta_scale) covering the shell R^2 - n^2 <= ||T eta||^2 <= R^2, ||eta|| <= r_H.
Each box gets a T1prime target: a seed ball l and (g, rows, cols, N) such that the corner seed of g.K lies in int E_l,
for the Hadamards K of the record with eta in the box.  The driver evaluates this at the actual Hadamard points
(nu(eta) solved by Gauss-Newton in N) on a grid of each box, with a margin; the certified test is piece A's.
"""
import itertools, math, os, sys
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE); sys.path.insert(0, os.path.join(HERE, '../../atlas'))
import seedgeom as SG
import cover as CV

TWO_PI = SG.TWO_PI
PAIRS15 = list(itertools.combinations(range(6), 2))
REC_MARGIN = 0.03          # relative margin of the float T1prime test (sampled, not a bound)
F6PHI = np.array([[2 * math.pi * ((j * k) % 6) / 6 for k in range(6)] for j in range(6)])


def phi_res(Q):
    """Off-diagonal entries of H H^* (H = e^{iQ}) as 30 reals (15 real parts, then 15 imaginary parts), and the
    30 x 36 Jacobian in Q."""
    H = np.exp(1j * np.asarray(Q).reshape(6, 6))
    rr, ri = [], []; Jr = np.zeros((15, 36)); Ji = np.zeros((15, 36))
    for p, (a, b) in enumerate(PAIRS15):
        z = H[a] * np.conj(H[b]); s = z.sum(); rr.append(s.real); ri.append(s.imag)
        d = 1j * z
        Jr[p, 6 * a:6 * a + 6] += d.real; Jr[p, 6 * b:6 * b + 6] -= d.real
        Ji[p, 6 * a:6 * a + 6] += d.imag; Ji[p, 6 * b:6 * b + 6] -= d.imag
    return np.array(rr + ri), np.vstack([Jr, Ji])


class F6Record:
    def __init__(self, R=0.125, label=0.03):
        from ballrecord import BallRecord
        from flint import arb
        self.phi = F6PHI.copy(); self.R = R; self.label_radius = label
        B = BallRecord(self.phi.reshape(36))
        self.B = B
        rH, n0 = B.normal_bound(R)
        Tb, Tbn = B.rec.Tb, B.rec.Tbn
        dT = float(np.abs(np.array([[float(abs(Tb[e, k] - arb(float(Tbn[e, k]))).upper()) for k in range(4)] for e in range(36)])).sum())
        self.rH = rH; self.n = n0 + dT * rH
        self.T = np.array(Tbn, float); self.Tint = np.asarray(B.rec.Tint, np.int64)
        u, s, vt = np.linalg.svd(B.rec.PNn)
        self.Nb = u[:, s > 0.5]                                         # 36 x 21, orthonormal basis of N
        self.eta_scale = float(rH * (1 + 1e-6))
        from geometry import corner_census
        self.R400 = corner_census(np.exp(1j * self.phi))[0]

    def as_target(self):
        return dict(phi=self.phi, R=self.R, R400=self.R400, label_radius=self.label_radius)

    def hadamard(self, eta, it=30):
        """Phases P + T eta + nu(eta), nu in N, of the record's Hadamard over eta (Gauss-Newton in N)."""
        q0 = self.phi.reshape(36) + self.T @ eta
        x = np.zeros(self.Nb.shape[1])
        for _ in range(it):
            r, J = phi_res(q0 + self.Nb @ x)
            if np.abs(r).max() < 1e-13: break
            x -= np.linalg.lstsq(J @ self.Nb, r, rcond=None)[0]
        r, _ = phi_res(q0 + self.Nb @ x)
        return q0 + self.Nb @ x, np.abs(r).max() < 1e-10, np.linalg.norm(self.Nb @ x)


def shell_meets(rec, m, I):
    """Boxes (u units) that may meet the shell R^2 - n^2 <= ||T eta||^2 <= R^2 (float, with slack)."""
    lo, hi = CV.box_lohi(np.full(len(I), m), I)
    c = (lo + hi) / 2 * rec.eta_scale; hd = (hi - lo)[:, 0] / 2 * rec.eta_scale * 2   # half-diagonal (4 dims)
    nT = np.linalg.norm(rec.T, 2)
    v = np.linalg.norm(c @ rec.T.T, axis=1)
    emin = np.linalg.norm(np.maximum(np.abs(c) - (hi - lo) / 2 * rec.eta_scale, 0), axis=1)
    return (v - nT * hd <= rec.R + 1e-9) & (v + nT * hd >= math.sqrt(rec.R ** 2 - rec.n ** 2) - 1e-9) & (emin <= rec.rH + 1e-9)


def sample_points(rec, m, I, k=3):
    """eta points on a k^4 grid of each box (including the vertices)."""
    lo, hi = CV.box_lohi(np.full(len(I), m), I)
    t = np.linspace(0, 1, k)
    G = np.array(list(itertools.product(t, repeat=4)))
    return (lo[:, None, :] + G[None] * (hi - lo)[:, None, :]) * rec.eta_scale     # (B, k^4, 4)


def phi_res_b(Q):
    """Batched phi_res: Q (B, 36) -> residuals (B, 30), Jacobians (B, 30, 36)."""
    H = np.exp(1j * np.asarray(Q).reshape(-1, 6, 6)); B = len(H)
    r = np.zeros((B, 30)); J = np.zeros((B, 30, 36))
    for p, (a, b) in enumerate(PAIRS15):
        z = H[:, a] * np.conj(H[:, b]); s = z.sum(1)
        r[:, p] = s.real; r[:, 15 + p] = s.imag
        d = 1j * z
        J[:, p, 6 * a:6 * a + 6] += d.real; J[:, p, 6 * b:6 * b + 6] -= d.real
        J[:, 15 + p, 6 * a:6 * a + 6] += d.imag; J[:, 15 + p, 6 * b:6 * b + 6] -= d.imag
    return r, J


def hadamard_b(rec, etas, it=12):
    """Batched rec.hadamard: etas (B, 4) -> phases (B, 36), ok (B,), ||nu|| (B,)."""
    etas = np.atleast_2d(etas)
    q0 = rec.phi.reshape(36)[None] + etas @ rec.T.T
    x = np.zeros((len(etas), rec.Nb.shape[1]))
    for _ in range(it):
        r, J = phi_res_b(q0 + x @ rec.Nb.T)
        if np.abs(r).max() < 1e-13: break
        A = J @ rec.Nb                                                     # (B, 30, 21)
        AtA = np.swapaxes(A, 1, 2) @ A
        x -= np.linalg.solve(AtA, np.einsum('bij,bi->bj', A, r)[..., None])[..., 0]
    q = q0 + x @ rec.Nb.T
    r, _ = phi_res_b(q)
    return q, np.abs(r).max(1) < 1e-10, np.linalg.norm(x, axis=1)


def discover_rec(rec, index, nsamp=1500, seed=0, vmax=1.0):
    """Seed balls containing corner seeds of sampled record boundary points.  desc = ('T1prime', l, g, rows, cols)."""
    rng = np.random.default_rng(seed)
    d = rng.normal(size=(nsamp, 4))
    v = d @ rec.T.T
    etas = d * (rec.R / np.linalg.norm(v, axis=1))[:, None]
    Q, ok, nu = hadamard_b(rec, etas)
    found = {}
    for s in np.where(ok)[0]:
        c = SG.census(Q[s].reshape(6, 6))
        qi, bl, N, val = index.query(c['seed'], vmax=vmax)
        for q, l, vv in zip(qi, bl, val):
            desc = ('T1prime', int(l), SG.G4[c['g'][q]], tuple(int(x) for x in c['rows'][q]), tuple(int(x) for x in c['cols'][q]))
            if vv < found.get(desc, 9.0): found[desc] = float(vv)
    return found, etas[ok], Q[ok]


def rec_test(rec, cand, m, I, k=3, N=None):
    """Float T1prime test at a k^4 grid of the actual Hadamard points of each box (not a bound).
    Returns (pass, centre value, N)."""
    pts = sample_points(rec, m, I, k)                                     # (B, k^4, 4)
    B, K, _ = pts.shape
    Q, ok, _ = hadamard_b(rec, pts.reshape(-1, 4))
    Q = Q.reshape(B, K, 36); ok = ok.reshape(B, K).all(1)
    L = cand.Lg
    th = Q @ L.T                                                          # (B, K, 4)
    ctr = th[:, K // 2]                                                   # centre of the k^4 grid (k odd)
    if N is None: N = np.round((cand.th0 - ctr) / TWO_PI)
    x = (th + TWO_PI * N[:, None, :] - cand.th0) @ cand.Minv.T
    v = np.linalg.norm(x, axis=2) / cand.r
    good = ok & (v.max(1) < 1 - REC_MARGIN) & CV.orient_ok(Q[:, K // 2], cand.g, cand.rows, cand.cols)
    return good, v[:, K // 2], N


def shell_boxes(rec, L0r=3):
    k = 2 ** L0r
    I = np.array(list(itertools.product(range(k), repeat=4)))
    return I[shell_meets(rec, L0r, I)]


def cover_rec(rec, cands, I=None, L0r=3, max_level=7):
    """Dyadic cover of the record shell (units eta_scale), from the level-L0r boxes I (default: all that meet the
    shell).  Returns (leaves, failed) as in cover.cover."""
    m = L0r
    if I is None: I = shell_boxes(rec, L0r)
    leaves, failed = [], []
    while len(I):
        who = -np.ones(len(I), int); Ns = [None] * len(I); best = np.full(len(I), 9.0)
        for ci, cand in enumerate(cands):
            rest = np.where(who < 0)[0]
            if not len(rest): break
            ok, vc, N = rec_test(rec, cand, m, I[rest])
            best[rest] = np.minimum(best[rest], vc)
            for b in np.where(ok)[0]:
                Ns[rest[b]] = tuple(int(x) for x in N[b]); who[rest[b]] = ci
        for b in np.where(who >= 0)[0]: leaves.append((m, I[b].copy(), int(who[b]), Ns[b]))
        open_ = who < 0
        bad = open_ & ~(best < 1.0)
        if m >= max_level: bad = open_
        if bad.any():
            for b in np.where(bad)[0]: failed.append((m, I[b].copy(), float(best[b])))
            break
        sub = np.where(open_)[0]
        if not len(sub): break
        I = CV.children(I[sub]); m += 1
        I = I[shell_meets(rec, m, I)]
    return leaves, failed


class RecCand:
    """A T1prime candidate: seed ball target l and corner (g, rows, cols)."""

    def __init__(self, desc, tgt):
        self.desc = desc; _, self.t, self.g, self.rows, self.cols = desc
        self.th0, self.Minv, self.r = tgt['theta0'], tgt['Minv'], tgt['r']
        self.Lg = SG.corner_seed_matrix(self.rows, self.cols) @ SG.g_matrix(self.g)
