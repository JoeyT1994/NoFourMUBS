"""Boundary covers of seed balls (C2, FORMAT.md §4): dyadic boxes on the sphere ||w|| = r, each with a target.

Targets are found by sampling the sphere: at each sample the class of H_+(theta(w)) is expanded into all its corner
seeds with orientation +1 (census over g in G4, 400 corners, 36 orderings), which are looked up in a spatial index of
the existing balls.  Descriptor (g, rows, cols) with rows, cols orderings of (0,1,2) and g in {id, conjT} is linear in
theta ("T0" for the identity, otherwise a linear T1); the others are general T1 (Taylor models of Q over the box).
Records (T2) are found by signed-permutation alignment (proof/atlas/atlas.align).
Everything here is binary64 and untrusted.
"""
import itertools, math, os, sys
import numpy as np
import seedgeom as SG
import tmb as M
from c1 import box_Q, E_IDX

TWO_PI = SG.TWO_PI
LIN_MARGIN = 1e-7        # relative margin for exact-linear (vertex) tests
NL_SLACK = 1.02          # Taylor-model tests: sup * NL_SLACK < radius
L0 = 2                   # first box level (side 1/2 in units of r)
MAX_LEVEL = 8
ID3 = (0, 1, 2)

# ------------------------------------------------------------------ fixed linear maps
EMB = np.zeros((36, 4)); EMB[E_IDX, range(4)] = 1.0                     # Q_E = theta
PH = np.eye(36) - np.kron(np.eye(6), np.ones((6, 6)) / 6) - np.kron(np.ones((6, 6)) / 6, np.eye(6)) + np.ones((36, 36)) / 36


def is_linear(g, rows, cols):
    return set(rows) == set(ID3) and set(cols) == set(ID3)


def lin_matrix(g, rows, cols):
    return SG.corner_seed_matrix(rows, cols) @ SG.g_matrix(g) @ EMB


def perm_matrix(rows, cols):
    """36 x 36: (Pm q)_{6a+b} = q_{6 rows[a] + cols[b]}."""
    Pm = np.zeros((36, 36))
    for a in range(6):
        for b in range(6): Pm[6 * a + b, 6 * rows[a] + cols[b]] = 1.0
    return Pm


# ------------------------------------------------------------------ spatial index of balls
class Index:
    """Balls registered in the cells of a grid on the torus [0, 2 pi)^4 met by their coordinate bounding boxes."""

    def __init__(self, theta0, Minv, Mth, r, ncell=32):
        self.th0 = np.asarray(theta0, float).reshape(-1, 4); self.Minv = np.asarray(Minv, float).reshape(-1, 4, 4)
        self.r = np.asarray(r, float).reshape(-1); self.n = len(self.r); self.nc = ncell; self.cell = TWO_PI / ncell
        Mth = np.asarray(Mth, float).reshape(-1, 4, 4)
        if self.n:
            hb = self.r[:, None] * np.sqrt((Mth ** 2).sum(2))
            lo = np.floor((self.th0 - hb) / self.cell).astype(int); hi = np.floor((self.th0 + hb) / self.cell).astype(int)
            span = np.minimum(hi - lo, ncell - 1)
            offs = np.array(list(itertools.product(range(int(span.max()) + 1), repeat=4)))
            valid = np.all(offs[None] <= span[:, None, :], axis=2)
            cc = (lo[:, None, :] + offs[None]) % ncell
            k = ((cc[..., 0] * ncell + cc[..., 1]) * ncell + cc[..., 2]) * ncell + cc[..., 3]
            ids = np.broadcast_to(np.arange(self.n)[:, None], k.shape)
            k, i = k[valid], ids[valid]
            o = np.argsort(k, kind='stable')
            self.K, self.B = k[o], i[o]
        else:
            self.K = self.B = np.zeros(0, int)

    def keys(self, th):
        c = np.floor(np.mod(th, TWO_PI) / self.cell).astype(int) % self.nc
        return ((c[:, 0] * self.nc + c[:, 1]) * self.nc + c[:, 2]) * self.nc + c[:, 3]

    def query(self, th, vmax=1.0):
        """Pairs (query i, ball l, N, value) with value = ||Minv_l (th_i + 2 pi N - theta0_l)|| / r_l < vmax."""
        th = np.asarray(th, float).reshape(-1, 4)
        if not len(self.K) or not len(th): return (np.zeros(0, int),) * 2 + (np.zeros((0, 4)), np.zeros(0))
        kq = self.keys(th)
        lo = np.searchsorted(self.K, kq, 'left'); hi = np.searchsorted(self.K, kq, 'right')
        cnt = hi - lo
        qi = np.repeat(np.arange(len(th)), cnt)
        if not len(qi): return (np.zeros(0, int),) * 2 + (np.zeros((0, 4)), np.zeros(0))
        start = np.repeat(lo - np.concatenate([[0], np.cumsum(cnt)[:-1]]), cnt)
        bl = self.B[start + np.arange(len(qi))]
        N = np.round((self.th0[bl] - th[qi]) / TWO_PI)
        x = np.einsum('bij,bj->bi', self.Minv[bl], th[qi] + TWO_PI * N - self.th0[bl])
        v = np.linalg.norm(x, axis=1) / self.r[bl]
        m = v < vmax
        return qi[m], bl[m], N[m], v[m]


# ------------------------------------------------------------------ dyadic boxes
def box_lohi(m, I):
    """u-box [lo, hi] for level m (array) and indices I (B, 4)."""
    s = 2.0 ** (1 - np.asarray(m, float))[..., None]
    lo = -1 + I * s
    return lo, lo + s


def meets_sphere(lo, hi):
    mn = (np.maximum(0, np.maximum(lo, -hi)) ** 2).sum(-1)
    mx = (np.maximum(lo ** 2, hi ** 2)).sum(-1)
    return (mn <= 1) & (mx >= 1)


def level_boxes(m):
    k = 2 ** m
    I = np.array(list(itertools.product(range(k), repeat=4)))
    lo, hi = box_lohi(np.full(len(I), m), I)
    return I[meets_sphere(lo, hi)]


def children(I):
    off = np.array(list(itertools.product((0, 1), repeat=4)))
    return (2 * I[:, None, :] + off[None]).reshape(-1, 4)


SG_VERT = np.array(list(itertools.product((0, 1), repeat=4)), float)     # 16 x 4 selector of lo/hi


def sphere_point(lo, hi):
    """A point of the box near the unit sphere: the radial projection of the centre, clipped into the box, then
    pushed along its own ray to the sphere when that stays in the box.  Used to judge whether an uncovered box is a
    gap (its sphere part lies in no target) or only needs subdividing."""
    c = (lo + hi) / 2
    p = np.clip(c / np.linalg.norm(c, axis=1)[:, None], lo, hi)
    q = p / np.linalg.norm(p, axis=1)[:, None]
    inside = np.all((q >= lo - 1e-12) & (q <= hi + 1e-12), axis=1)
    return np.where(inside[:, None], q, p)


# ------------------------------------------------------------------ candidates
def discover(ball, j, index, rec_targets=(), nrand=96, seed=0, vmax=1.0, extra_dirs=None, level_dirs=True, eb=None):
    """Targets containing some sampled sphere point.  Returns dict desc -> best value, desc = (kind, target, g, rows, cols)
    (T2: rows, cols of length 6)."""
    parts = []
    if level_dirs:
        I = level_boxes(L0)
        lo, hi = box_lohi(np.full(len(I), L0), I)
        parts.append((lo + hi) / 2)
    rng = np.random.default_rng(seed)
    if nrand: parts.append(rng.normal(size=(nrand, 4)))
    if extra_dirs is not None: parts.append(extra_dirs)
    d = np.vstack(parts)
    d /= np.linalg.norm(d, axis=1)[:, None]
    ws = ball.r * d
    Q, _, _, ok = ball.Q_at(ws)
    found = {}
    near_f6 = []
    for s in np.where(ok)[0]:
        c = SG.census(Q[s].reshape(6, 6))
        qi, bl, N, v = index.query(c['seed'], vmax=vmax)
        for q, l, val in zip(qi, bl, v):
            desc = ('T1', int(l), SG.G4[c['g'][q]], tuple(int(x) for x in c['rows'][q]), tuple(int(x) for x in c['cols'][q]))
            if desc[2] == 'id' and desc[3] == ID3 and desc[4] == ID3:
                if l == j: continue
                desc = ('T0',) + desc[1:]
            if val < found.get(desc, 9.0): found[desc] = float(val)
        if (rec_targets or eb is not None) and c['edge'].max() < (getattr(eb, 'gate', 0.3) if eb is not None else 0.3): near_f6.append(s)
    if eb is not None:                       # T3: the edge ball (SPEC §10), in place of F6's record
        import edge_phase as EP
        for s in near_f6:
            for (v, g, rows, cols, wind) in EP.edge_candidates(Q[s], eb)[:6]:
                desc = ('T3', 0, g, tuple(rows), tuple(cols), tuple(wind))
                if v < found.get(desc, 9.0): found[desc] = float(v)
        t3 = sorted((v, d) for d, v in found.items() if d[0] == 'T3')
        for v, d in t3[8:]: found.pop(d)             # the best 8 edge-ball corners suffice
    for (t, rec) in rec_targets:
        for s in near_f6[:: max(1, len(near_f6) // 8)][:8]:
            for (g, rows, cols, dist) in align_record(Q[s].reshape(6, 6), rec):
                desc = ('T2', int(t), g, tuple(int(x) for x in rows), tuple(int(x) for x in cols))
                val = dist / rec['R']
                if val < found.get(desc, 9.0): found[desc] = float(val)
    return found


def align_record(Qm, rec, dmax=None):
    """Signed-permutation alignments (g, rows, cols, dist) of e^{iQm} with a record centre, dist = ||hor(...)||."""
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '../../atlas'))
    import atlas as AT
    from geometry import corner_census
    dmax = rec['R'] if dmax is None else dmax
    Rq = {g: corner_census(np.exp(1j * AT.gmap(g, Qm)))[0] for g in AT.GAMMA}
    out = []
    gname = {'id': 'id', 'conj': 'conj', 'tr': 'T', 'conjtr': 'conjT'}
    for (g, r, c, D, dist) in AT.align(Qm, Rq, rec['phi'], rec['R400'], dmax, 150.0 * rec['R'], top=1):
        out.append((gname[g], list(r), list(c), float(dist)))
    out.sort(key=lambda z: z[3])
    return out[:4]


class Cand:
    """A transfer candidate with its precomputed linear maps."""

    def __init__(self, desc, tgt, recs):
        self.desc = desc; kind, t, g, rows, cols = desc[:5]
        self.kind = kind; self.t = t
        if kind == 'T3':
            self.linear = False; self.eb = recs; self.wind = desc[5]
        elif kind in ('T0', 'T1'):
            self.th0, self.Minv, self.r = tgt['theta0'], tgt['Minv'], tgt['r']
            self.linear = is_linear(g, rows, cols) and g in ('id', 'conjT')
            if self.linear: self.A = lin_matrix(g, rows, cols)
            else: self.Lg = SG.corner_seed_matrix(rows, cols) @ SG.g_matrix(g)
        else:
            self.linear = False
            rec = recs[t]
            self.Pt = rec['phi'].reshape(36); self.R = rec['R']
            self.PG = perm_matrix(rows, cols) @ SG.g_matrix(g)
        self.g, self.rows, self.cols = g, rows, cols

    def radius(self): return self.r if self.kind != 'T2' else self.R


def lin_test(ball, cand, m, I, N=None):
    """(pass mask, centre value, N) for the exact vertex test of a linear candidate on boxes (m, I).
    N: the windings (B, 4); default: the nearest at the box centres."""
    lo, hi = box_lohi(np.full(len(I), m), I)
    U = lo[:, None, :] + SG_VERT[None] * (hi - lo)[:, None, :]           # (B, 16, 4)
    th = ball.theta0 + (ball.r * U) @ ball.Mth.T
    thp = th @ cand.A.T
    thc = (ball.theta0 + (ball.r * (lo + hi) / 2) @ ball.Mth.T) @ cand.A.T
    if N is None: N = np.round((cand.th0 - thc) / TWO_PI)
    x = (thp + TWO_PI * N[:, None, :] - cand.th0) @ cand.Minv.T
    vmax = np.linalg.norm(x, axis=2).max(1)
    ths = (ball.theta0 + (ball.r * sphere_point(lo, hi)) @ ball.Mth.T) @ cand.A.T
    vs = np.linalg.norm((ths + TWO_PI * N - cand.th0) @ cand.Minv.T, axis=1)
    return vmax < cand.r * (1 - LIN_MARGIN), vs / cand.r, N


def orient_ok(Qc, g, rows, cols):
    """Orientation +1 and matched at the corner (rows, cols) of g.e^{iQc} (Qc (B, 36)), at the box centres."""
    K = np.exp(1j * SG.gphase(g, Qc.reshape(-1, 6, 6)))
    rc = [k for k in range(6) if k not in rows]; cc = [k for k in range(6) if k not in cols]
    Bs = K[:, list(rows)][:, :, cc]; Vs = np.swapaxes(K[:, rc][:, :, list(cols)], -1, -2)
    return (np.sign(SG.psi(Bs).imag) > 0) & (np.sign(SG.psi(Vs).imag) < 0)


def nl_test(Q, hw, cand, N=None, du=None):
    """(pass mask, value at the sphere point, N) for a general T1 or T2 candidate, from the box TMs Q (B, 36).
    du (B, 4): the sphere point minus the box centre, in w (default 0: the centre)."""
    C = Q.C.real; G = Q.G.real; Hq = Q.Hq.real; rho = Q.Rho
    if du is None: du = np.zeros((len(C), 4))
    if cand.kind == 'T1':
        L = cand.Lg
        tc = C @ L.T
        if N is None: N = np.round((cand.th0 - tc) / TWO_PI)
        a = (tc + TWO_PI * N - cand.th0) @ cand.Minv.T
        Mi = cand.Minv @ L
        b = np.einsum('kn,bnj->bkj', Mi, G); H = np.einsum('kn,bnjl->bkjl', Mi, Hq)
        rr = rho @ (np.abs(cand.Minv) @ np.abs(L)).T
        sup = M.sup_norm(a, b, H, rr, hw)
        ok = (sup * NL_SLACK < cand.r) & orient_ok(C, cand.g, cand.rows, cand.cols)
        return ok, np.linalg.norm(a + np.einsum('bkj,bj->bk', b, du), axis=1) / cand.r, N
    W = C @ cand.PG.T - cand.Pt
    W6 = W.reshape(-1, 6, 6)
    dep = W6 - W6[:, :1, :] - W6[:, :, :1] + W6[:, :1, :1]
    if N is None: N = np.round((SG.wrap(dep) - dep) / TWO_PI).reshape(-1, 36)
    a = (W + TWO_PI * N) @ PH.T
    Mi = PH @ cand.PG
    b = np.einsum('kn,bnj->bkj', Mi, G); H = np.einsum('kn,bnjl->bkjl', Mi, Hq)
    rr = rho @ np.abs(cand.PG).T
    sup = M.sup_norm(a, b, H, rr, hw)
    return sup * NL_SLACK < cand.R, np.linalg.norm(a + np.einsum('bkj,bj->bk', b, du), axis=1) / cand.R, N


T3_VMAX = 0.90         # T3 screen: sampled points within 0.90 r of the edge ball (Arb encloses the whole box)


def t3_points(ball, lo, hi):
    """Q at the 17 sample points (16 vertices, centre) of each box: (B, 17, 36) and the ok mask (B,)."""
    pts = lo[:, None, :] + SG_VERT[None] * (hi - lo)[:, None, :]
    pts = np.concatenate([pts, ((lo + hi) / 2)[:, None, :]], 1)
    Q, _, _, ok = ball.Q_at(pts.reshape(-1, 4) * ball.r)
    return Q.reshape(len(lo), 17, 36), ok.reshape(len(lo), 17).all(1)


def t3_test(cand, QP, okp):
    """(pass mask, centre value, N) for a T3 candidate on boxes with sample-point phases QP (B, 17, 36): every sampled
    point at most VMAX inside the edge ball (the certifiers check it); N carries the side orders and windings."""
    import edge_phase as EP
    rows, cols = list(cand.rows), list(cand.cols)
    Kq = SG.gphase(cand.g, QP.reshape(-1, 6, 6))
    th = np.stack([Kq[:, rows[a], cols[b]] - Kq[:, rows[a], cols[0]] - Kq[:, rows[0], cols[b]] + Kq[:, rows[0], cols[0]]
                   for (a, b) in SG.POS], -1)
    Jc = [c for c in range(6) if c not in cols]
    y = -2 * SG.psi(np.exp(1j * Kq[:, rows][:, :, Jc])).imag
    p = np.concatenate([th[:, :3] + 2 * np.pi * np.array(cand.wind[:3]) - EP.TH0[:3], y[:, None]], 1)
    v = (np.linalg.norm(p @ cand.eb.Minv.T, axis=1) / cand.eb.r).reshape(len(QP), 17)
    v = np.where(np.isfinite(v), v, 9.0)
    ok = okp & (v.max(1) < T3_VMAX)
    vc = np.where(okp, v[:, -1], 9.0)
    Ns = [None] * len(QP)
    x0 = None
    for b in np.where(ok)[0]:
        refs = EP.t3_side_refs(QP[b, -1], cand.g, cand.rows, cand.cols, cand.wind, x0)     # warm-started chart solve
        if refs is None and x0 is not None: refs = EP.t3_side_refs(QP[b, -1], cand.g, cand.rows, cand.cols, cand.wind)
        if refs is not None: x0 = refs[2]
        rh, rv = (refs[0], refs[1]) if refs else (None, None)
        (_, hc, wh), (_, vr, wv) = EP.side_orders(SG.gphase(cand.g, QP[b, -1].reshape(6, 6)), cand.rows, cand.cols, rh, rv)
        Ns[b] = tuple(hc) + tuple(vr) + tuple(wh) + tuple(wv)
    return ok, vc, Ns


def cover(ball, cands, max_level=MAX_LEVEL, chunk=128):
    """Adaptive dyadic cover of the sphere.  cands: list of Cand, in priority order.
    Returns (leaves, failed): leaves = list of (m, I (4,), cand index, N tuple); failed = list of (m, I, best centre value)."""
    lin = [i for i, c in enumerate(cands) if c.linear]
    nl = [i for i, c in enumerate(cands) if not c.linear]
    m = L0; I = level_boxes(L0)
    leaves, failed = [], []
    while len(I):
        who = -np.ones(len(I), int); Ns = [None] * len(I); best = np.full(len(I), 9.0)
        for ci in lin:
            ok, vc, N = lin_test(ball, cands[ci], m, I)
            best = np.minimum(best, vc)
            new = ok & (who < 0)
            for b in np.where(new)[0]: Ns[b] = tuple(int(x) for x in N[b])
            who[new] = ci
        rest = np.where(who < 0)[0]
        if len(rest) and nl:
            lo, hi = box_lohi(np.full(len(rest), m), I[rest])
            wc = ball.r * (lo + hi) / 2; hw = ball.r * (hi - lo) / 2
            du = ball.r * sphere_point(lo, hi) - wc
            for s in range(0, len(rest), chunk):
                sl = rest[s:s + chunk]
                Q, okq, _ = box_Q(ball, wc[s:s + chunk], hw[s:s + chunk])
                QP = None; QPi = {}          # T3 sample points, computed once per box, only for boxes still open
                for ci in nl:
                    op = np.where(who[sl] < 0)[0]             # each candidate is tested on the open boxes only
                    if not len(op): break
                    if cands[ci].kind == 'T3':
                        need = [b for b in op if b not in QPi]
                        if need:
                            qp, okp_ = t3_points(ball, lo[s:s + chunk][need], hi[s:s + chunk][need])
                            for k, b in enumerate(need): QPi[b] = (qp[k], okp_[k])
                        QP = np.stack([QPi[b][0] for b in op]); okp = np.array([QPi[b][1] for b in op])
                        ok, vc, N3 = t3_test(cands[ci], QP, okp)
                        best[sl[op]] = np.minimum(best[sl[op]], vc)
                        for k in np.where(ok)[0]: Ns[sl[op[k]]] = N3[k]
                        who[sl[op[ok]]] = ci
                        continue
                    ok, vc, N = nl_test(Q.take(op), hw[s:s + chunk][op], cands[ci], du=du[s:s + chunk][op])
                    ok &= okq[op]
                    best[sl[op]] = np.minimum(best[sl[op]], np.where(np.isfinite(vc), vc, 9.0))
                    for k in np.where(ok)[0]: Ns[sl[op[k]]] = tuple(int(x) for x in N[k])
                    who[sl[op[ok]]] = ci
        for b in np.where(who >= 0)[0]: leaves.append((m, I[b].copy(), int(who[b]), Ns[b]))
        open_ = who < 0
        near = open_ & (best < 1.0)
        bad = open_ & ~near
        if m >= max_level: bad = open_
        if bad.any():
            # a genuine gap: report it (and stop; deeper subdivision is wasted until a ball is added there)
            for b in np.where(bad)[0]: failed.append((m, I[b].copy(), float(best[b])))
            break
        sub = np.where(open_)[0]
        if not len(sub): break
        I = children(I[sub]); m += 1
        lo, hi = box_lohi(np.full(len(I), m), I)
        I = I[meets_sphere(lo, hi)]
    return leaves, failed


def check_coverage(leaves, max_level=MAX_LEVEL):
    """Exact traversal (FORMAT.md §4): the listed boxes cover the unit sphere."""
    S = set((int(m),) + tuple(int(x) for x in I) for (m, I, *_r) in leaves)
    from fractions import Fraction as Fr

    def meets(m, I):
        s = Fr(2) ** (1 - m)
        lo = [Fr(-1) + i * s for i in I]; hi = [l + s for l in lo]
        mn = sum(max(Fr(0), l, -h) ** 2 for l, h in zip(lo, hi)); mx = sum(max(l * l, h * h) for l, h in zip(lo, hi))
        return mn <= 1 <= mx

    stack = [(0, (0, 0, 0, 0))]
    while stack:
        m, I = stack.pop()
        if (m,) + I in S or not meets(m, I): continue
        if m >= max_level: return False, (m, I)
        for off in itertools.product((0, 1), repeat=4):
            stack.append((m + 1, tuple(2 * i + o for i, o in zip(I, off))))
    return True, None
