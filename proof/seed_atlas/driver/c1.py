"""Seed balls and the C1 enclosure by second-order Taylor models, batched over boxes (untrusted binary64).

Port of proof/seed_atlas/prototype/tmball2.py to a general parametrisation theta = theta0 + Mth w and w-boxes
(SPEC §2): on a box with centre wc and half-widths hw, theta = theta_c + Mth u, u in prod [-hw, hw];
  E, G_h, G_v as TMs; each side by a parametric Krawczyk tube around a quadratic predictor; D by residual correction
  of a quadratic predictor; arg D on the branch nearest P + U wc.
Q is the 36-vector TM of the phases (FORMAT.md §3 representative).  The certifier redoes this in Arb.
"""
import itertools
import numpy as np
import tmb as M
import seedgeom as SG

E_IDX = [7, 8, 13, 14]                    # flattened positions of theta_1..4 in Q


def hor36(X):
    """Horizontal projection along a trailing-or-leading 36 axis: X (..., 36, *rest) with the 36 axis at position -1
    if `axis` is None.  Subtracts row and column means and adds the grand mean of the 6 x 6 matrix."""
    X = np.asarray(X)
    Y = X.reshape(X.shape[:-1] + (6, 6))
    return (Y - Y.mean(-1, keepdims=True) - Y.mean(-2, keepdims=True) + Y.mean((-1, -2), keepdims=True)).reshape(X.shape)


def hor_axis(X, axis):
    return np.moveaxis(hor36(np.moveaxis(X, axis, -1)), -1, axis)


class Ball:
    """A seed ball's centre data (float).  theta0 is wrapped to (-pi, pi]; P = Q(theta0) with every phase in
    (-pi, pi] and P_E = theta0 exactly; T = DQ(theta0) (E rows exact); Mth = V S^-1, U = T Mth."""

    def __init__(self, theta0, phih0, phiv0, o=1):
        th = SG.wrap(np.asarray(theta0, float))
        Q, ph, pv, ok, flat = SG.complete(th, np.asarray(phih0, float), np.asarray(phiv0, float))
        if not (ok and flat < 1e-10): raise ValueError('completion failed at the centre (flat %.1e)' % flat)
        Q = SG.wrap(Q); Q[1, 1], Q[1, 2], Q[2, 1], Q[2, 2] = th
        self.theta0 = th; self.o = o
        self.phih0 = np.concatenate([Q[1, 3:], Q[2, 3:]]); self.phiv0 = np.concatenate([Q[3:, 1], Q[3:, 2]])
        self.P = Q.reshape(36).copy()
        self.T = self._dQ()
        Th = hor_axis(self.T, 0)                                   # horizontal part: what class space sees
        U, S, Vt = np.linalg.svd(Th, full_matrices=False)
        self.S = S
        self.Mth = Vt.T / S[None, :]                               # the image is a round 4-disc in HORIZONTAL phases
        self.Minv = np.linalg.inv(self.Mth)
        self.U = self.T @ self.Mth                                  # gauge frame (references, branch choice)
        self.U[E_IDX] = self.Mth
        self.Ph = hor36(self.P)                                     # Stage C / certificate centre and frame
        self.Uh = Th @ self.Mth
        self.edge = float(SG.edge_dist(th)); self.R = float(SG.R_seed(th))
        self.r = self.n = self.k = self.label = None
        self.info = {}

    def _dQ(self, h=1e-6):
        T = np.zeros((36, 4))
        ths = np.array([self.theta0 + s * h * e for e in np.eye(4) for s in (1, -1)])
        ph, okh = SG.newton(np.broadcast_to(self.phih0, (8, 6)), SG.gram(ths, 'h'))
        pv, okv = SG.newton(np.broadcast_to(self.phiv0, (8, 6)), SG.gram(ths, 'v'))
        D = SG.forced_D(ths, ph, pv)
        Q = SG.assemble_Q(ths, ph, pv, SG.near(np.angle(D), self.P.reshape(6, 6)[3:, 3:])).reshape(8, 36)
        for k in range(4): T[:, k] = (Q[2 * k] - Q[2 * k + 1]) / (2 * h)
        T[E_IDX] = np.eye(4)
        return T

    def theta(self, w): return self.theta0 + np.asarray(w) @ self.Mth.T

    def Q_at(self, ws, step=0.004):
        """Phases at theta(w) (N x 36, FORMAT.md representative), sides, ok mask."""
        ws = np.atleast_2d(ws)
        ref = (self.P[None, :] + ws @ self.U.T).reshape(-1, 6, 6)
        Q, ph, pv, ok = SG.continue_to(self.theta0, self.phih0, self.phiv0, self.theta(ws), step=step, ref=ref)
        return Q.reshape(-1, 36), ph, pv, ok

    def data(self):
        """The index view of the ball (what other processes need for transfers)."""
        return dict(theta0=self.theta0, Mth=self.Mth, Minv=self.Minv, r=self.r, o=self.o)


# ------------------------------------------------------------------ Taylor-model pieces
def E_tm(th):
    ent = []
    for i in range(3):
        for j in range(3):
            ent.append(M.exp_i(th[SG.POS.index((i, j))]) if (i, j) in SG.POS else 1.0)
    return M.assemble(ent, (3, 3), th.h)


def side_tm(phi):
    return M.assemble([1.0, 1.0, 1.0] + [M.exp_i(phi[k]) for k in range(6)], (3, 3), phi.h)


def F_tm(phi, G):
    S = side_tm(phi); Mm = S @ S.H()
    v = [Mm[a, b] - G[a, b] for (a, b) in SG.PAIRS]
    return M.assemble([M.re(x) for x in v] + [M.im(x) for x in v], (6,), phi.h)


def J_tm(phi):
    b = [M.exp_i(phi[k]) for k in range(6)]; b1, b2 = b[:3], b[3:]
    Jc = [[0.0] * 6 for _ in range(3)]
    for k in range(3):
        Jc[0][k] = b1[k].conj().scale(-1j)
        Jc[1][3 + k] = b2[k].conj().scale(-1j)
        p = b1[k].mul(b2[k].conj())
        Jc[2][k] = p.scale(1j); Jc[2][3 + k] = p.scale(-1j)
    rows = []
    for part in (M.re, M.im):
        for i in range(3):
            rows += [part(x) if isinstance(x, M.TM) else 0.0 for x in Jc[i]]
    return M.assemble(rows, (6, 6), phi.h)


def side_tube(phic, thc, Mth, G, which, hw, tries=8, eps=1e-5):
    """Parametric Krawczyk tube around a quadratic predictor.  Returns (TM (B, 6), ok (B,))."""
    B = len(phic)
    Dc = SG.dphi(phic, thc, which) @ Mth                                      # (B, 6, 4)
    H2 = np.zeros((B, 6, 4, 4))
    ej = eps / np.linalg.norm(Mth, axis=0)
    for j in range(4):
        out = []
        for sgn in (1, -1):
            t = thc + sgn * ej[j] * Mth[:, j]
            p, _ = SG.newton(phic, SG.gram(t, which))
            out.append(SG.dphi(p, t, which) @ Mth)
        H2[:, :, j, :] = (out[0] - out[1]) / (2 * ej[j])
    H2 = 0.5 * (H2 + np.swapaxes(H2, -1, -2))
    pred = M.TM(phic.astype(complex), Dc.astype(complex), (0.5 * H2).astype(complex), np.zeros((B, 6)), hw)
    F = F_tm(pred, G)
    Y = np.linalg.inv(SG.gram_jac(phic))
    b = F.lmul(Y).bound()                                                     # (B, 6)
    rho = b.max(1) * 1.5 + 1e-15
    res = np.full((B, 6), np.nan); done = np.zeros(B, bool); fail = np.zeros(B, bool)
    I6 = M.const(np.eye(6), hw)
    for _ in range(tries):
        act = ~done & ~fail
        if not act.any(): break
        tot = M.TM(pred.C, pred.G, pred.Hq, pred.Rho + rho[:, None], hw)
        A = (I6 - J_tm(tot).lmul(Y)).bound()
        q = A.sum(-1)
        need = b + q * rho[:, None]
        good = act & np.all(need < rho[:, None], axis=1)
        res[good] = need[good]; done |= good
        bad = act & ~good & (np.any(q >= 1, axis=1))
        fail |= bad
        act = ~done & ~fail
        rho = np.where(act, (b / np.maximum(1 - q, 1e-300)).max(1) * 1.2 + 1e-15, rho)
        fail |= act & (rho > 0.3)
    ok = done & ~fail
    res[~ok] = 1.0
    return M.TM(pred.C, pred.G, pred.Hq, res, hw), ok


def forced_block(thc, Mth, hw, E, Btm, Ctm, phch, phcv, Pref, eps=1e-4):
    """D = -C E^* (B^*)^-1: quadratic predictor Xp from numerical derivatives, corrected by
    D - Xp = -(C E^* + Xp B^*) (B^*)^-1 (entrywise bound: residual bound times |(B^*)^-1| bound)."""
    B = len(thc)
    ej = eps / np.linalg.norm(Mth, axis=0)                              # steps of size eps in theta
    offs = [np.zeros(4)]
    for j in range(4):
        offs += [ej[j] * Mth[:, j], -ej[j] * Mth[:, j]]
    pairs = [(j, l) for j in range(4) for l in range(j + 1, 4)]
    for (j, l) in pairs:
        vj, vl = ej[j] * Mth[:, j], ej[l] * Mth[:, l]
        offs += [vj + vl, vj - vl, -vj + vl, -vj - vl]
    offs = np.array(offs); K = len(offs)
    th = (thc[:, None, :] + offs[None]).reshape(-1, 4)
    ph, _ = SG.newton(np.repeat(phch, K, 0), SG.gram(th, 'h'))
    pv, _ = SG.newton(np.repeat(phcv, K, 0), SG.gram(th, 'v'))
    Dn = SG.forced_D(th, ph, pv).reshape(B, K, 3, 3)
    D0 = Dn[:, 0]
    g = np.zeros((B, 3, 3, 4), complex); Hq = np.zeros((B, 3, 3, 4, 4), complex)
    for j in range(4):
        Dp, Dm = Dn[:, 1 + 2 * j], Dn[:, 2 + 2 * j]
        g[..., j] = (Dp - Dm) / (2 * ej[j])
        Hq[..., j, j] = 0.5 * (Dp - 2 * D0 + Dm) / ej[j] ** 2
    for p, (j, l) in enumerate(pairs):
        a, b_, c, d = (Dn[:, 9 + 4 * p + s] for s in range(4))
        Hq[..., j, l] = Hq[..., l, j] = 0.5 * (a - b_ - c + d) / (4 * ej[j] * ej[l])
    Xp = M.TM(D0, g, Hq, np.zeros((B, 3, 3)), hw)
    Rs = Ctm @ E.H() + Xp @ Btm.H()                                    # = 0 for the true D
    Bh = Btm.H()
    A0 = np.linalg.inv(Bh.C); aA = np.abs(A0)
    dB = Bh.var()
    q = (aA @ dB).sum(-1).max(-1)
    ok = q < 1
    qq = np.where(ok, q, 0.5)
    Minv = aA + (qq / (1 - qq) * aA.sum(-1).max(-1))[:, None, None]
    extra = Rs.bound() @ Minv
    D = M.TM(Xp.C, Xp.G, Xp.Hq, (Xp.Rho + extra) * (1 + 1e-9) + 1e-15, hw)
    return D, ok


def box_Q(ball, wc, hw):
    """Q as a (B, 36) TM over the boxes {wc + u : |u_j| <= hw_j}; ok mask (B,); and the reason of the first failure."""
    wc = np.atleast_2d(wc); hw = np.atleast_2d(hw); B = len(wc)
    thc = ball.theta(wc)
    ref = (ball.P[None, :] + wc @ ball.U.T).reshape(B, 6, 6)
    Qc, ph, pv, okc = SG.continue_to(ball.theta0, ball.phih0, ball.phiv0, thc, ref=ref)
    ok = okc.copy(); why = None if ok.all() else 'continuation'
    ph = np.where(ok[:, None], ph, ball.phih0); pv = np.where(ok[:, None], pv, ball.phiv0)
    # orientation at the centres (the tube keeps it: Im Psi != 0 along it)
    Bs = SG.side(ph); Vs = SG.side(pv)
    orient = (np.sign(SG.psi(Bs).imag) == ball.o) & (np.sign(SG.psi(Vs).imag) == -ball.o)
    if not orient.all() and why is None: why = 'orientation'
    ok &= orient
    th = M.TM(thc.astype(complex), np.broadcast_to(ball.Mth, (B, 4, 4)).astype(complex), np.zeros((B, 4, 4, 4)),
              np.zeros((B, 4)), hw)
    E = E_tm(th)
    I3 = M.const(6 * np.eye(3), hw)
    Gh = I3 - E @ E.H(); Gv = I3 - E.T() @ E.conj()
    tph, okh = side_tube(ph, thc, ball.Mth, Gh, 'h', hw)
    tpv, okv = side_tube(pv, thc, ball.Mth, Gv, 'v', hw)
    if not (okh & okv).all() and why is None: why = 'tube'
    ok &= okh & okv
    Btm = side_tm(tph); Ctm = side_tm(tpv).T()
    D, okd = forced_block(thc, ball.Mth, hw, E, Btm, Ctm, ph, pv, ref[:, 3:, 3:])
    if not okd.all() and why is None: why = 'forced block'
    ok &= okd
    argD, oka = M.arg_near(D, ref[:, 3:, 3:])
    if not oka.all() and why is None: why = 'arg'
    ok &= oka
    ent = []
    for j in range(6):
        for k in range(6):
            if j < 3 and k < 3: ent.append(M.re(th[SG.POS.index((j, k))]) if (j, k) in SG.POS else 0.0)
            elif j < 3: ent.append(tph[3 * (j - 1) + (k - 3)] if j > 0 else 0.0)
            elif k < 3: ent.append(tpv[3 * (k - 1) + (j - 3)] if k > 0 else 0.0)
            else: ent.append(argD[j - 3, k - 3])
    Q = M.assemble(ent, (36,), hw)
    Q = M.TM(Q.C.real.astype(complex), Q.G.real.astype(complex), Q.Hq.real.astype(complex), Q.Rho, hw)
    return Q, ok, why


def c1_boxes(r, k):
    """Centres (B, 4) and half-widths (B, 4) of the k_0 x k_1 x k_2 x k_3 boxes partitioning [-r, r]^4 that meet the
    ball ||w|| <= r.  k is an int (all axes) or a sequence of 4 ints (per axis)."""
    ks = [int(k)] * 4 if np.ndim(k) == 0 else [int(x) for x in k]
    hw = np.array([r / kk for kk in ks])
    axes = [-r + (2 * np.arange(kk) + 1) * (r / kk) for kk in ks]
    W = np.array(list(itertools.product(*axes)))
    near_ = np.maximum(np.abs(W) - hw[None, :], 0)
    keep = (near_ ** 2).sum(1) < r * r * (1 - 1e-12)          # meets the open ball (as the Arb certifier, 5f6ff02b)
    W = W[keep]
    return W, np.broadcast_to(hw, W.shape).copy()


def c1_boxes_refined(r, k, depth):
    """The k-grid boxes meeting the open ball; every box that is not inside the closed ball is bisected (16 children,
    keeping those meeting the open ball) up to `depth` times.  The union still contains the closed ball."""
    W, H = c1_boxes(r, k)
    outW, outH = [], []
    for d in range(depth + 1):
        far = np.linalg.norm(np.abs(W) + H, axis=1)
        inside = far <= r
        if d == depth:
            outW.append(W); outH.append(H); break
        outW.append(W[inside]); outH.append(H[inside])
        Wb, Hb = W[~inside], H[~inside] / 2
        if not len(Wb): break
        sg = np.array(list(itertools.product((-1.0, 1.0), repeat=4)))
        W = (Wb[:, None, :] + sg[None] * Hb[:, None, :]).reshape(-1, 4); H = np.repeat(Hb, 16, axis=0)
        near_ = np.maximum(np.abs(W) - H, 0)
        keep = (near_ ** 2).sum(1) < r * r * (1 - 1e-12)
        W, H = W[keep], H[keep]
    return np.vstack(outW), np.vstack(outH)


def k_axes(ball, k0):
    """Per-axis box counts proportional to the seed extent of each w axis (the column norms of Mth)."""
    e = np.linalg.norm(ball.Mth, axis=0)
    return [max(2, int(np.ceil(k0 * x / e.max()))) for x in e]


def c1_bound(ball, r, k, chunk=96, depth=0):
    """n >= sup ||Q - P - U w|| over the ball (float estimate of the certified bound), or (None, reason).
    depth > 0 refines the boxes that cross the sphere (c1_boxes_refined)."""
    W, H = c1_boxes_refined(r, k, depth) if depth else c1_boxes(r, k)
    worst = 0.0
    for s in range(0, len(W), chunk):
        wc, hw = W[s:s + chunk], H[s:s + chunk]
        Q, ok, why = box_Q(ball, wc, hw)
        if not ok.all(): return None, why
        a = hor_axis(Q.C.real - ball.P[None, :] - wc @ ball.U.T, 1)          # residual of the horizontal representative
        b = hor_axis(Q.G.real - ball.U[None], 1)
        val = M.sup_norm(a, b, hor_axis(Q.Hq.real, 1), Q.Rho, hw)      # ||hor e|| <= ||e||: Rho unchanged
        worst = max(worst, float(val.max()))
    return worst * (1 + 1e-9), None


def _box_vals(ball, W, H, chunk=256):
    vals = np.empty(len(W))
    for s in range(0, len(W), chunk):
        wc, hw = W[s:s + chunk], H[s:s + chunk]
        Q, ok, why = box_Q(ball, wc, hw)
        a = hor_axis(Q.C.real - ball.P[None, :] - wc @ ball.U.T, 1)
        b = hor_axis(Q.G.real - ball.U[None], 1)
        v = M.sup_norm(a, b, hor_axis(Q.Hq.real, 1), Q.Rho, hw)
        vals[s:s + chunk] = np.where(ok & np.isfinite(v), v, np.inf)       # a failed tube: split the box
    return vals, None


def c1_bound_adaptive(ball, r, target, k0=4, max_depth=4, max_boxes=200_000):
    """Adaptive version of c1_bound: start from the k0 grid; split (16 children meeting the open ball) every box whose
    bound exceeds `target`, up to max_depth levels.  Returns (n, None) with n = the max over the final boxes (a valid
    float bound for any partition covering the ball), or (None, reason).  n <= target means the target was reached."""
    W, H = c1_boxes(r, k0)
    sg = np.array(list(itertools.product((-1.0, 1.0), repeat=4)))
    worst, nbox = 0.0, 0
    for d in range(max_depth + 1):
        vals, why = _box_vals(ball, W, H)
        if vals is None: return None, why
        nbox += len(W)
        big = vals > target
        if d == max_depth or not big.any() or nbox + 16 * big.sum() > max_boxes:
            m = max(worst, float(vals.max()))
            return (m * (1 + 1e-9), None) if np.isfinite(m) else (None, 'tube')
        worst = max(worst, float(vals[~big].max()) if (~big).any() else 0.0)
        Wb, Hb = W[big], H[big] / 2
        W = (Wb[:, None, :] + sg[None] * Hb[:, None, :]).reshape(-1, 4); H = np.repeat(Hb, 16, axis=0)
        keep = ((np.maximum(np.abs(W) - H, 0)) ** 2).sum(1) < r * r * (1 - 1e-12)
        W, H = W[keep], H[keep]


def sampled_n(ball, r, nsamp=48, seed=0):
    """Sampled max ||Q - P - U w|| over ||w|| = r and r/2 (a lower estimate of n, used to screen radii)."""
    rng = np.random.default_rng(seed)
    d = rng.normal(size=(nsamp, 4)); d /= np.linalg.norm(d, axis=1)[:, None]
    d = np.vstack([d, np.eye(4), -np.eye(4)])
    ws = np.vstack([r * d, 0.5 * r * d])
    Q, _, _, ok = ball.Q_at(ws)
    if not ok.all(): return None
    return float(np.linalg.norm(hor36(Q - ball.P[None] - ws @ ball.U.T), axis=1).max())
