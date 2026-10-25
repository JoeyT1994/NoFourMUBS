"""Edge phase (SPEC §10, FORMAT §8): replace F6's 25-dim record by the four-dimensional edge ball at F6.

Runs on a built atlas state (after the breadth-first growth):
  1. the edge ball: chart at F6's corner (rows, cols 0,1,2), p = (u1, u2, u3, y) = Mth w, ||w|| <= r, radius ladder
     0.125, 0.1 with Stage C, n = 2 x the sampled remainder (the certifier's C1e decides; untrusted float);
  2. every seed-ball box group targeting the F6 record (kind T2) is re-targeted to T3 (into the edge ball), box by
     box, subdividing where one corner does not work on the whole box;
  3. the edge ball's sphere ||w|| = r is covered by dyadic boxes with T1 targets into seed balls.
Float checks use the 16 vertices and the centre of each box, with margins.  Usage:
  edge_phase.py RUN_DIR [--workers N]       (reads RUN_DIR/atlas_state.pkl, writes RUN_DIR/atlas_state_edge.pkl)
"""
import argparse, itertools, math, os, pickle, sys, time, warnings
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE); sys.path.insert(0, os.path.join(HERE, '../../atlas'))
os.environ.setdefault('OMP_NUM_THREADS', '1')
warnings.filterwarnings('ignore')
import seedgeom as SG
import cover as CV

TWO_PI = 2 * math.pi
TH0 = np.array([1, 2, 2, 4]) * math.pi / 3
PH0 = np.array([3, 4, 5, 0, 2, 4]) * math.pi / 3
VMAX = 0.95            # margin: every sampled point at most 0.95 r inside the target
MAXLEV = 9

# ------------------------------------------------------------------ the chart
def gamma(phi):
    x, y = np.exp(1j * phi[:3]), np.exp(1j * phi[3:])
    s, t, r = x.sum(), y.sum(), (np.conj(x) * y).sum()
    return np.array([s.real, s.imag, t.real, t.imag, r.real, r.imag])


def Gamma(th):
    E = SG.seed_E(th); G = 6 * np.eye(3) - E @ E.conj().T
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    return np.array([s.real, s.imag, t.real, t.imag, r.real, r.imag])


def Hsys(p, x):
    th = TH0 + np.array([p[0], p[1], p[2], x[0]]); phi = PH0 + x[1:]
    return np.concatenate([gamma(phi) - Gamma(th), [SG.psi(SG.side(phi)).imag / 24 + p[3] / 48]])


def _solve(p, x, tol=1e-13):
    for _ in range(40):
        F = Hsys(p, x)
        if np.abs(F).max() < tol: return x, True
        J = np.zeros((7, 7)); h = 1e-7
        for k in range(7):
            e = np.zeros(7); e[k] = h; J[:, k] = (Hsys(p, x + e) - Hsys(p, x - e)) / (2 * h)
        x = x - np.linalg.solve(J, F)
    return x, np.abs(Hsys(p, x)).max() < 1e-10


def chart(p, step=0.05, x0=None):
    """H(p) by continuation from 0, or by Newton from a nearby solution x0 = (xh, xv, p0): (H, xh, xv, ok)."""
    p = np.asarray(p, float)
    if x0 is not None:
        xh, xv, p0 = x0; base = np.asarray(p0, float)
    else:
        xh = np.zeros(7); xv = np.zeros(7); base = np.zeros(4)
    m = max(1, int(np.ceil(np.abs(p - base).max() / step)))
    for k in range(1, m + 1):
        q = base + (p - base) * k / m
        xh, a = _solve(q, xh); xv, b = _solve(np.array([q[0], q[2], q[1], -q[3]]), xv)
        if not (a and b): return None, xh, xv, False
    th = TH0 + np.array([p[0], p[1], p[2], xh[0]])
    E = SG.seed_E(th); B = SG.side(PH0 + xh[1:]); C = SG.side(PH0 + xv[1:]).T
    D = -C @ E.conj().T @ np.linalg.inv(B.conj().T)
    H = np.block([[E, B], [C, D]])
    ok = abs(xh[0] - xv[0]) < 1e-9 and np.allclose(np.abs(H), 1, atol=1e-9)
    return H, xh, xv, ok


class EdgeBall:
    def __init__(self, p0=None):
        """The edge ball p = p0 + Mth w, |w| <= r, in the chart F6-012 (p0 = 0: centred at F6; return W certifies the
        chart on the whole ellipsoid of its §2)."""
        self.p0 = np.zeros(4) if p0 is None else np.asarray(p0, float)
        H00, _, _, ok = chart(np.zeros(4)); assert ok
        PF = np.angle(H00).reshape(36)
        H0, xh, xv, ok = chart(self.p0); assert ok, 'edge ball: chart failed at its centre'
        self.xc = (xh, xv, self.p0.copy())
        self.P = PF + np.angle(H0.reshape(36) * np.exp(-1j * PF))           # the branch continued from F6
        h = 1e-5
        T = np.array([(self.Qp(self.p0 + h * e, x0=self.xc) - self.Qp(self.p0 - h * e, x0=self.xc)) / (2 * h)
                      for e in np.eye(4)]).T
        U, S, Vt = np.linalg.svd(T, full_matrices=False)
        self.T = T
        self.S = S; self.Mth = Vt.T / S[None, :]; self.Minv = np.linalg.inv(self.Mth); self.U = T @ self.Mth
        self.r = self.n = self.label = None; self.k = None; self.chart_name = 'F6-012'; self.exclusion = 'stagec'

    def Qp(self, p, ref=None, x0=None, want_x=False):
        H, xh, xv, ok = chart(p, x0=x0)
        if not ok: return (None, None) if want_x else None
        ref = self.P if ref is None else ref
        Q = ref + np.angle(H.reshape(36) * np.exp(-1j * ref))
        return (Q, (xh, xv, np.asarray(p, float))) if want_x else Q

    def Qw(self, w, x0=None, want_x=False):
        w = np.asarray(w, float)
        return self.Qp(self.p0 + self.Mth @ w, self.P + self.U @ w, x0=self.xc if x0 is None else x0, want_x=want_x)

    def make(self, ladder=(0.125, 0.1, 0.08), labels=(0.03, 0.02), nsamp=200, seed=0):
        import stagec as SC
        rng = np.random.default_rng(seed)
        for r in ladder:
            worst = 0.0
            for s in (r, r / 2):
                for _ in range(nsamp):
                    w = rng.normal(size=4); w *= s / np.linalg.norm(w)
                    q = self.Qw(w)
                    if q is None: worst = np.inf; break
                    worst = max(worst, np.linalg.norm(q - self.P - self.U @ w))
            n = 2.0 * worst
            if not np.isfinite(n): continue
            tcol = max(np.linalg.norm(self.U.reshape(6, 6, 4)[:, i, :], 2) for i in range(6))
            rcol = tcol * r + n; rF = np.linalg.norm(self.U, 2) * r + n
            for lab in labels:
                o = SC.stage_c(self.P.reshape(6, 6) / SC.TWO_PI, rcol / SC.TWO_PI, tang=(self.U, r / SC.TWO_PI, n / SC.TWO_PI),
                               radius=lab, rF=rF / SC.TWO_PI)
                if o.get('ok'):
                    self.r, self.n, self.label = r, n, lab
                    self.k = [8, 8, 8, 16]          # the Arb certifier's n at r = 0.125 is 1.12e-2 with this k
                    return True
        return False

    @classmethod
    def xball(cls, t=0.13, nsamp=400, seed=0):
        """The X-ball (returns W and X): centred at F6, frame from W's tangent metric q^T W q (q = (u1, u2, u3, y/24)),
        so that ||w|| = t is (numerically) the sphere at phase distance t from F6.  Quartet-free by X once its image is
        certified within distance 3/20; no Stage C."""
        eb = cls()
        Wm = np.array([[1, -.5, -.5, 0], [-.5, 1.75, .25, 0], [-.5, .25, 1.75, 0], [0, 0, 0, 1.]])
        ev, V = np.linalg.eigh(Wm)
        eb.Mth = np.diag([1, 1, 1, 24.]) @ (V @ np.diag(ev ** -0.5) @ V.T)
        eb.Minv = np.linalg.inv(eb.Mth); eb.U = eb.T @ eb.Mth; eb.S = np.linalg.svd(eb.U, compute_uv=False)
        rng = np.random.default_rng(seed); worst = 0.0
        for s_ in (t, t / 2):
            for _ in range(nsamp):
                w = rng.normal(size=4); w *= s_ / np.linalg.norm(w)
                q = eb.Qw(w); worst = max(worst, np.linalg.norm(q - eb.P - eb.U @ w))
        # n plays no part in the exclusion (X does): generous, so C1e's certified remainder stays below it.  16 boxes
        # per axis keep the certified image within phase distance 3/20 (boundary boxes overhang the sphere by ~2 h)
        eb.r, eb.n, eb.label, eb.k, eb.exclusion = t, max(4.0 * worst, 0.06), 0.03, [16, 16, 16, 16], 'X'
        return eb

    def wvalue(self, p):
        return np.linalg.norm(self.Minv @ (p - getattr(self, 'p0', np.zeros(4)))) / self.r


# ------------------------------------------------------------------ corners of a matrix, into the edge chart
ORD = np.array(list(itertools.permutations(range(6), 3)))       # 120 ordered triples


def edge_candidates(Q, eb):
    """All (g, rows, cols) with the corner seed and y of g.e^{iQ} mapping into the edge ball: list sorted by value."""
    out = []
    for g in SG.G4:
        Kq = SG.gphase(g, Q.reshape(6, 6)); K = np.exp(1j * Kq)
        # Psi of K[I, Jc] for unordered I, J (Psi is order invariant)
        I = SG.TRI[:, None, :]; Jc = SG.TRIC[None, :, :]
        yv = -2 * SG.psi(K[I[..., :, None], Jc[..., None, :]]).imag       # (20 I, 20 J): y of the corner (I, J)
        idx = {tuple(t): k for k, t in enumerate(SG.TRI)}
        r_ = ORD[:, None, :]; c_ = ORD[None, :, :]
        th = np.stack([Kq[r_[..., a], c_[..., b]] - Kq[r_[..., a], c_[..., 0]] - Kq[r_[..., 0], c_[..., b]] + Kq[r_[..., 0], c_[..., 0]]
                       for (a, b) in SG.POS], -1)                       # (120, 120, 4)
        ri = np.array([idx[tuple(sorted(t))] for t in ORD]); ci = np.array([idx[tuple(sorted(t))] for t in ORD])
        y = yv[ri[:, None], ci[None, :]]
        d = th[..., :3] - TH0[:3]; N3 = np.round(-d / TWO_PI); d = d + TWO_PI * N3
        p = np.concatenate([d, y[..., None]], -1)
        v = np.linalg.norm((p - getattr(eb, 'p0', np.zeros(4))) @ eb.Minv.T, axis=-1) / eb.r
        for a, b in zip(*np.where(v < 1.0)):
            N4 = np.round((TH0[3] - th[a, b, 3]) / TWO_PI)
            out.append((float(v[a, b]), g, tuple(int(x) for x in ORD[a]), tuple(int(x) for x in ORD[b]),
                        [int(x) for x in N3[a, b]] + [int(N4)]))
    out.sort(key=lambda t: t[0])
    return out


def side_orders(Kq, rows, cols, ref_h=None, ref_v=None):
    """hcols, vrows and windings so that the corner's side angles are nearest the references: by default F6's phi0;
    away from F6, pass the chart's own side angles at the point (t3_side_refs), as the T3 check compares with those."""
    PHh = PH0 if ref_h is None else np.asarray(ref_h); PHv = PH0 if ref_v is None else np.asarray(ref_v)
    Jc = [c for c in range(6) if c not in cols]; Ic = [r for r in range(6) if r not in rows]
    i0, j0 = rows[0], cols[0]
    best_h = None
    for hc in itertools.permutations(Jc):
        ph = np.array([Kq[rows[a], hc[b]] - Kq[rows[a], j0] - Kq[i0, hc[b]] + Kq[i0, j0] for a in (1, 2) for b in range(3)])
        N = np.round((PHh - ph) / TWO_PI); dev = np.abs(ph + TWO_PI * N - PHh).max()
        if best_h is None or dev < best_h[0]: best_h = (dev, list(hc), [int(x) for x in N])
    best_v = None
    for vr in itertools.permutations(Ic):
        pv = np.array([Kq[vr[a], cols[b]] - Kq[vr[a], j0] - Kq[i0, cols[b]] + Kq[i0, j0] for b in (1, 2) for a in range(3)])
        N = np.round((PHv - pv) / TWO_PI); dev = np.abs(pv + TWO_PI * N - PHv).max()
        if best_v is None or dev < best_v[0]: best_v = (dev, list(vr), [int(x) for x in N])
    return best_h, best_v


def t3_side_refs(Q, g, rows, cols, wind, x0=None):
    """The chart's side angles at the point p_K of the matrix with phases Q (36) at the corner (g, rows, cols): the
    references for side_orders.  Returns (ref_h, ref_v, x) or None."""
    Kq = SG.gphase(g, Q.reshape(6, 6)); K = np.exp(1j * Kq)
    th = np.array([Kq[rows[a], cols[b]] - Kq[rows[a], cols[0]] - Kq[rows[0], cols[b]] + Kq[rows[0], cols[0]] for (a, b) in SG.POS])
    Jc = [c for c in range(6) if c not in cols]
    y = -2 * SG.psi(K[np.ix_(list(rows), Jc)]).imag
    p = np.concatenate([th[:3] + TWO_PI * np.array(wind[:3]) - TH0[:3], [y]])
    H, xh, xv, ok = chart(p, x0=x0)
    if not ok: return None
    return PH0 + xh[1:], PH0 + xv[1:], (xh, xv, p)


def t3_value(Q, eb, g, rows, cols, wind):
    """Value ||Minv p'||/r for the fixed corner at the matrix with phases Q (36), or inf."""
    Kq = SG.gphase(g, Q.reshape(6, 6)); K = np.exp(1j * Kq)
    th = np.array([Kq[rows[a], cols[b]] - Kq[rows[a], cols[0]] - Kq[rows[0], cols[b]] + Kq[rows[0], cols[0]] for (a, b) in SG.POS])
    Jc = [c for c in range(6) if c not in cols]
    y = -2 * SG.psi(K[np.ix_(list(rows), Jc)]).imag
    p = np.concatenate([th[:3] + TWO_PI * np.array(wind[:3]) - TH0[:3], [y]])
    return eb.wvalue(p)


# ------------------------------------------------------------------ 2. seed T2 -> T3
def box_points(lo, hi):
    V = lo + CV.SG_VERT * (hi - lo)
    return np.vstack([V, (lo + hi) / 2])


def retarget_ball(args):
    j, ball, boxes, eb = args
    out, failed = [], []
    todo = [list(b) for b in boxes]
    while todo:
        m, *I = todo.pop()
        lo, hi = CV.box_lohi(np.array([m]), np.array([I]))
        pts = box_points(lo[0], hi[0]) * ball.r
        Q, _, _, ok = ball.Q_at(pts)
        done = False
        if ok.all():
            cands = edge_candidates(Q[-1], eb)
            for (v, g, rows, cols, wind) in cands[:12]:
                if all(t3_value(Q[i], eb, g, rows, cols, wind) < VMAX for i in range(len(Q))):
                    Kq = SG.gphase(g, Q[-1].reshape(6, 6))
                    (dh, hc, wh), (dv, vr, wv) = side_orders(Kq, rows, cols)
                    out.append(dict(desc=('T3', 0, g, rows, cols), wind=wind, hcols=hc, vrows=vr, wind_h=wh, wind_v=wv,
                                    boxes=[[m] + I], info=dict(v=v, dev=(dh, dv))))
                    done = True; break
        if not done:
            if m >= MAXLEV: failed.append([m] + I); continue
            for c in CV.children(np.array([I])):
                l2, h2 = CV.box_lohi(np.array([m + 1]), c[None])
                if CV.meets_sphere(l2, h2)[0]: todo.append([m + 1] + [int(x) for x in c])
    return j, out, failed


# ------------------------------------------------------------------ 3. edge sphere -> seed balls (T1)
def edge_cover_box(args):
    m, I, eb, snap = args
    idx = CV.Index(snap['theta0'], snap['Minv'], snap['Mth'], snap['r'])
    out, failed, todo = [], [], [(m, list(I))]
    while todo:
        m, I = todo.pop()
        lo, hi = CV.box_lohi(np.array([m]), np.array([I]))
        pts = box_points(lo[0], hi[0]) * eb.r
        Qs = [eb.Qw(w) for w in pts]
        done = False
        gap = None
        if all(q is not None for q in Qs):
            common = None
            for q in Qs:
                c = SG.census(q.reshape(6, 6))
                qi, bl, N, v = idx.query(c['seed'], VMAX)
                if not len(qi): gap = q; break                # no seed ball reaches this point: a genuine gap
                keys = set((SG.G4[c['g'][a]], tuple(c['rows'][a]), tuple(c['cols'][a]), int(l), tuple(int(x) for x in n))
                           for a, l, n in zip(qi, bl, N))
                common = keys if common is None else common & keys
                if not common: break
            if common:
                g, rows, cols, l, n = sorted(common)[0]
                out.append(dict(desc=('T1', l, g, rows, cols), wind=list(n), boxes=[[m] + I]))
                done = True
        if not done:
            if gap is not None or m >= MAXLEV:
                failed.append(([m] + I, gap if gap is not None else Qs[-1])); continue
            for c in CV.children(np.array([I])):
                l2, h2 = CV.box_lohi(np.array([m + 1]), c[None])
                if CV.meets_sphere(l2, h2)[0]: todo.append((m + 1, [int(x) for x in c]))
    return out, failed


def edge_cover_box2(args):
    """The edge sphere's cover from one start box: per box one chart solve at the centre and four for the derivative,
    the affine model checked at the 16 vertices (exact max of a convex function) with a curvature margin, one corner
    census per box.  A box whose centre reaches no seed ball is a gap at once; others split down to EDGE_MAXLEV."""
    m, I, eb, snap = args
    idx = CV.Index(snap['theta0'], snap['Minv'], snap['Mth'], snap['r'])
    out, failed, todo = [], [], [(m, list(I), None)]
    curv = 4.0 * eb.n / eb.r ** 2                     # |Q - affine| <~ curv h^2 (the ball's own remainder scale)
    while todo:
        m, I, x0 = todo.pop()
        lo, hi = CV.box_lohi(np.array([m]), np.array([I]))
        wc = (lo[0] + hi[0]) / 2 * eb.r; hw = (hi[0] - lo[0]) / 2 * eb.r
        Qc, xc = eb.Qw(wc, x0=x0, want_x=True)
        if Qc is None and x0 is not None: Qc, xc = eb.Qw(wc, want_x=True)
        if Qc is None:
            failed.append(([m] + I, None)); continue
        d = 1e-4
        Js = [eb.Qw(wc + d * e, x0=xc) for e in np.eye(4)]
        if any(q is None for q in Js):
            failed.append(([m] + I, Qc)); continue
        J = np.stack([SG.wrap(q - Qc) / d for q in Js], 1)                 # (36, 4)
        V = CV.SG_VERT * 2 - 1                                              # signs (16, 4)
        Qv = Qc[None] + (V * hw[None]) @ J.T                                # (16, 36)
        err = curv * float((hw ** 2).sum())
        c = SG.census(Qc.reshape(6, 6))
        qi, bl, N, v = idx.query(c['seed'], 1.0)
        if not len(qi):
            failed.append(([m] + I, Qc)); continue                         # a genuine gap: seed a ball here
        done = False
        for k in np.argsort(v):
            a, l, n = qi[k], bl[k], N[k]
            g, rows, cols = SG.G4[c['g'][a]], tuple(c['rows'][a]), tuple(c['cols'][a])
            Lg = SG.corner_seed_matrix(rows, cols) @ SG.g_matrix(g)
            Mi = idx.Minv[l]
            x = (Qv @ Lg.T + TWO_PI * n - idx.th0[l]) @ Mi.T
            val = np.linalg.norm(x, axis=1).max() + np.linalg.norm(Mi @ Lg, 2) * err
            if val < VMAX * snap['r'][l] and CV.orient_ok(Qc[None], g, rows, cols)[0]:
                out.append(dict(desc=('T1', int(l), g, rows, cols), wind=[int(x) for x in n], boxes=[[m] + I]))
                done = True; break
        if not done:
            if m >= EDGE_MAXLEV: failed.append(([m] + I, Qc)); continue
            for ch in CV.children(np.array([I])):
                l2, h2 = CV.box_lohi(np.array([m + 1]), ch[None])
                if CV.meets_sphere(l2, h2)[0]: todo.append((m + 1, [int(x) for x in ch], xc))
    return out, failed


EDGE_MAXLEV = 8


def gap_proposals(Qs, sep=0.15, cap=20000, seed=0):
    """Well-separated proposal points among the gap phase matrices: greedy over at most `cap` random gaps."""
    Qs = np.asarray(Qs)
    if len(Qs) > cap: Qs = Qs[np.random.default_rng(seed).choice(len(Qs), cap, replace=False)]
    out = np.zeros((0, Qs.shape[1]))
    for q in Qs:
        if not len(out) or np.linalg.norm(SG.wrap(out - q[None]), axis=1).min() > sep: out = np.vstack([out, q])
    return list(out)


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('run'); ap.add_argument('--workers', type=int, default=os.cpu_count())
    ap.add_argument('--start-level', type=int, default=3)
    a = ap.parse_args()
    import driver as DRV
    A = pickle.load(open(os.path.join(a.run, 'atlas_state.pkl'), 'rb'))
    t0 = time.time()
    eb = EdgeBall()
    assert eb.make(), 'edge ball: Stage C failed on the ladder'
    print('edge ball r %.3f n %.2e label %.2f k %s (%.0fs)' % (eb.r, eb.n, eb.label, eb.k, time.time() - t0), flush=True)
    from multiprocessing import Pool
    jobs = []
    for j, gl in A.groups.items():
        bx = [b for gr in gl if gr['desc'][0] == 'T2' for b in np.asarray(gr['boxes']).tolist()]
        for c in range(0, len(bx), 40):                     # chunks, so a few large balls still fill the pool
            jobs.append((j, A.balls[j], bx[c:c + 40], eb))
    print('seed balls with T2 groups: %d, boxes %d, chunks %d' % (
        len({x[0] for x in jobs}), sum(len(x[2]) for x in jobs), len(jobs)), flush=True)
    nfail = 0; outs, fails = {}, {}
    with Pool(a.workers) as pool:
        for j, out, failed in pool.imap_unordered(retarget_ball, jobs):
            outs.setdefault(j, []).extend(out); fails.setdefault(j, []).extend(failed)
        for j in outs:
            A.groups[j] = [gr for gr in A.groups[j] if gr['desc'][0] != 'T2'] + outs[j]
            if fails[j]: nfail += len(fails[j]); A.log_fail[j] = ('T3 failed boxes', fails[j])
        print('T2 -> T3 done: %d failed boxes (%.0fs)' % (nfail, time.time() - t0), flush=True)
        snap = A.snap(); snap.pop('tries', None)
        I0 = CV.level_boxes(a.start_level)
        ejobs = [(a.start_level, list(map(int, I)), eb, snap) for I in I0]
        eg, ef = [], []
        for k, (out, failed) in enumerate(pool.imap_unordered(edge_cover_box2, ejobs)):
            eg += out; ef += failed
            if (k + 1) % 100 == 0:
                print('  edge sphere: %d / %d start boxes, %d leaves, %d gaps (%.0fs)' % (
                    k + 1, len(ejobs), len(eg), len(ef), time.time() - t0), flush=True)
    print('edge sphere: %d boxes, %d failed (%.0fs)' % (len(eg), len(ef), time.time() - t0), flush=True)
    if ef:                                 # seed proposals at the gaps (driver.py --gaps), well separated
        qs = gap_proposals([q for _, q in ef if q is not None])
        with open(os.path.join(a.run, 'edge_gaps.pkl'), 'wb') as f: pickle.dump(qs, f)
        print('edge sphere gaps: %d proposals -> %s; rerun driver.py --edge --gaps, then this' % (
            len(qs), os.path.join(a.run, 'edge_gaps.pkl')), flush=True)
        sys.exit(3)
    ef = []
    A.edge = dict(ball=eb, groups=eg, failed=ef)
    A.record = None
    with open(os.path.join(a.run, 'atlas_state_edge.pkl'), 'wb') as f: pickle.dump(A, f, protocol=4)
    print('wrote atlas_state_edge.pkl', flush=True)


if __name__ == '__main__':
    main()
