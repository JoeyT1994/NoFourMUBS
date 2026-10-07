"""Band certificate (approach A): complete side enumeration with coarse labels.

For a seed box Theta, prove that every order-6 complex Hadamard completion H = [[E,B],[C,D]] of
E(theta), theta in Theta, has a corner c with R_c(H) > M, where M >= sup_Theta R(E) is an
outward Arb bound (or any other target c0).

Unknowns (after dephasing H and using two WLOG column/row swaps, see REPORT.md):
    B = [[1,1,1],[x1,x2,x3],[y1,y2,y3]],  C = [[1,p1,q1],[1,p2,q2],[1,p3,q3]]
    x1 = e^{i phi}, y1 = e^{i psi}, p1 = e^{i pi_}, q1 = e^{i kappa}  (label coordinates)
    {x2,x3}: two unit numbers with sum m = s - x1  ->  x2 = u(|m|/2 + i k), x3 = u(|m|/2 - i k)
             (u = m/|m|, k = sqrt(1-|m|^2/4)); WLOG this order (swap columns 4,5 of H)
    {y2,y3}: same with n = t - y1, order given by the branch sigma in {+1,-1}
    C rows: same construction for E^T (WLOG order of p2,p3; branch tau for q2,q3)
    D = -C W B / g,  W = E^dagger adj(G),  g = det G,  G = 6I - E E^dagger   (valid for every H)
Tests on an 8-dim box (4 label coordinates + 4 seed coordinates) and branch (sigma, tau):
    T1  sum_j y_j conj(x_j) - r     excludes 0  -> no completion (B side identity)
    T2  sum_i q_i conj(p_i) - r_v   excludes 0  -> no completion (C side identity)
    T3  |D_ij|^2 - 1                excludes 0  -> no completion (flatness)
    ACC |Q_blk| > q0 for some 3x3 block blk of H, so the complementary corner has
        R = 64 Q^2 > 64 q0^2 >= M  (complementary-corner square identity)
Every box is either excluded (T1-T3), accepted (ACC), or bisected; the run is accepted only
if the queue empties within the budget.
"""
import itertools, time, json, math
import numpy as np
from fractions import Fraction as Q_
from aff import Aff

K = 8  # symbols: 0 phi, 1 psi, 2 p1-phase, 3 q1-phase, 4..7 theta
T3 = list(itertools.combinations(range(6), 3))


def parity(v):
    return (-1) ** sum(v[i] > v[j] for i in range(len(v)) for j in range(i + 1, len(v)))


TERMS = []
for i in range(3):
    for j in range(3):
        if i == j:
            continue
        a, b = [k for k in range(3) if k != i]
        c, d = [k for k in range(3) if k != j]
        TERMS.append((i, j, a, b, c, d, parity([2 * a, 2 * b, 2 * c + 1, 2 * d + 1, 2 * i, 2 * j + 1])))

BLOCKS = [(r, c) for r in T3 for c in T3]   # 400 blocks; Q(block)^2*64 = R(complementary corner)


# ------------------------------------------------------------------ seed-dependent forms
def seed_forms(cen, rad):
    """cen, rad: (N,4) float arrays (theta box per item). Returns dict of Aff forms."""
    N = cen.shape[0]
    a, b, c, d = [Aff.expi(cen[:, k], rad[:, k], 4 + k, K) for k in range(4)]
    one = Aff.const(1, N, K)
    E = [[one, one, one], [one, a, b], [one, c, d]]
    s = -(a + b + 1); t = -(c + d + 1); r = -(c * a.conj() + d * b.conj() + 1)
    sv = -(a + c + 1); tv = -(b + d + 1); rv = -(b * a.conj() + d * c.conj() + 1)
    # G = [[3, s*, t*],[s, 3, r*],[t, r, 3]]  (diagonal exactly 3 for unimodular entries)
    three = Aff.const(3, N, K)
    G = [[three, s.conj(), t.conj()], [s, three, r.conj()], [t, r, three]]
    def m2(i, j, k, l): return G[i][j] * G[k][l] - G[i][l] * G[k][j]
    # adj(G)[j][i] = cofactor C_ij
    adj = [[None] * 3 for _ in range(3)]
    for i in range(3):
        for j in range(3):
            rr = [x for x in range(3) if x != i]; cc = [x for x in range(3) if x != j]
            cof = m2(rr[0], cc[0], rr[1], cc[1])
            adj[j][i] = cof if (i + j) % 2 == 0 else -cof
    g = (G[0][0] * adj[0][0] + G[0][1] * adj[1][0] + G[0][2] * adj[2][0]).re()
    ginv = g.recip_pos()
    Ed = [[E[j][i].conj() for j in range(3)] for i in range(3)]
    Wm = [[Ed[i][0] * adj[0][j] + Ed[i][1] * adj[1][j] + Ed[i][2] * adj[2][j] for j in range(3)] for i in range(3)]
    return dict(E=E, s=s, t=t, r=r, sv=sv, tv=tv, rv=rv, g=g, ginv=ginv, W=Wm)


def side_from_label(z1c, z1r, w1c, w1r, kz, kw, S, T, Rr, sigma):
    """Column (1,z1,w1) with z-sum S, w-sum T; returns z[3], w[3], residual sum w conj z - Rr."""
    z1 = Aff.expi(z1c, z1r, kz, K); w1 = Aff.expi(w1c, w1r, kw, K)
    def pair(m, sg):
        mm = m.abs2(); nm = mm.sqrt_pos(); u = m * nm.recip_pos()
        kk = (1 - mm * 0.25).sqrt_pos()
        h = nm * 0.5
        ik = kk * 1j
        return u * (h + ik), u * (h - ik)
    zp, zm = pair(S - z1, 1)
    wp, wm = pair(T - w1, 1)
    # sigma: per-item +1/-1 selects order of (w2, w3)
    sel = (sigma > 0)
    w2 = _where(sel, wp, wm); w3 = _where(sel, wm, wp)
    z = [z1, zp, zm]; w = [w1, w2, w3]
    res = w[0] * z[0].conj() + w[1] * z[1].conj() + w[2] * z[2].conj() - Rr
    return z, w, res


def _where(sel, A, B):
    return Aff(np.where(sel, A.c, B.c), np.where(sel[:, None], A.a, B.a), np.where(sel, A.e, B.e))


# ------------------------------------------------------------------ Q (complementary corner)
def Q_float(Hc):
    """Hc: (N,6,6) complex. Returns (N,400) Q values (float, exploration/selection only)."""
    out = np.zeros((Hc.shape[0], len(BLOCKS)))
    cj = np.conj
    for bi, (rw, cl) in enumerate(BLOCKS):
        n = Hc[:, rw][:, :, cl]
        v = 0
        for i, j, a, b, c, d, sg in TERMS:
            v = v + sg * (n[:, 1, b] * cj(n[:, 0, b]) * cj(n[:, 1, a]) * n[:, 0, a]).imag \
                * (n[:, 2, d] * cj(n[:, 0, d]) * cj(n[:, 2, c]) * n[:, 0, c]).imag \
                * (n[:, 2, i] * cj(n[:, 1, i]) * cj(n[:, 2, j]) * n[:, 1, j]).imag
        out[:, bi] = v
    return out


def Q_aff(n):
    """n: 3x3 list of Aff (entries of the block, unimodular for actual completions)."""
    v = None
    for i, j, a, b, c, d, sg in TERMS:
        f1 = (n[1][b] * n[0][b].conj() * (n[1][a].conj() * n[0][a])).im()
        f2 = (n[2][d] * n[0][d].conj() * (n[2][c].conj() * n[0][c])).im()
        f3 = (n[2][i] * n[1][i].conj() * (n[2][j].conj() * n[1][j])).im()
        term = f1 * f2 * f3 * sg
        v = term if v is None else v + term
    return v


# precomputed gather indices for fast float Q of all 400 blocks
def _q_index():
    idx = np.zeros((len(BLOCKS), 3, 3), int)
    for bi, (rw, cl) in enumerate(BLOCKS):
        for x in range(3):
            for y in range(3):
                idx[bi, x, y] = 6 * rw[x] + cl[y]
    return idx
QIDX = _q_index()


def Q_float_fast(Hc):
    """Hc (N,36) complex -> (N,400) float Q."""
    n = Hc[:, QIDX]  # (N,400,3,3)
    cj = np.conj
    v = 0
    for i, j, a, b, c, d, sg in TERMS:
        v = v + sg * (n[..., 1, b] * cj(n[..., 0, b]) * cj(n[..., 1, a]) * n[..., 0, a]).imag \
            * (n[..., 2, d] * cj(n[..., 0, d]) * cj(n[..., 2, c]) * n[..., 0, c]).imag \
            * (n[..., 2, i] * cj(n[..., 1, i]) * cj(n[..., 2, j]) * n[..., 1, j]).imag
    return v


# ------------------------------------------------------------------ box evaluation
def evaluate(cen, rad, sig, tau, q0, nblk=2, want_detail=False, acc_r=np.inf):
    """cen, rad: (N,8); sig, tau: (N,) in {+1,-1}.
    Returns status array: 0 undecided, 1 excluded(T1), 2 excluded(T2), 3 excluded(T3), 4 accepted,
    plus split-score (N,8) and the accepting block index."""
    N = cen.shape[0]
    S = seed_forms(cen[:, 4:], rad[:, 4:])
    one = Aff.const(1, N, K)
    xs, ys, res1 = side_from_label(cen[:, 0], rad[:, 0], cen[:, 1], rad[:, 1], 0, 1, S['s'], S['t'], S['r'], sig)
    ps, qs, res2 = side_from_label(cen[:, 2], rad[:, 2], cen[:, 3], rad[:, 3], 2, 3, S['sv'], S['tv'], S['rv'], tau)
    status = np.zeros(N, int)
    ex1 = res1.excludes_zero(); status[ex1] = 1
    ex2 = res2.excludes_zero() & (status == 0); status[ex2] = 2
    B = [[one, one, one], xs, ys]
    C = [[one, ps[i], qs[i]] for i in range(3)]
    W = S['W']
    CW = [[C[i][0] * W[0][j] + C[i][1] * W[1][j] + C[i][2] * W[2][j] for j in range(3)] for i in range(3)]
    mg = -S['ginv']
    D = [[(CW[i][0] * B[0][j] + CW[i][1] * B[1][j] + CW[i][2] * B[2][j]) * mg for j in range(3)] for i in range(3)]
    flat = [[(D[i][j].abs2() - 1) for j in range(3)] for i in range(3)]
    ex3 = np.zeros(N, bool); best_ratio = np.zeros(N); best_flat_coef = np.zeros((N, K))
    for i in range(3):
        for j in range(3):
            f = flat[i][j]
            ex3 |= f.excludes_zero()
            ratio = np.abs(f.c) / (f.rad() + 1e-300)
            upd = ratio > best_ratio
            best_ratio = np.where(upd, ratio, best_ratio)
            best_flat_coef = np.where(upd[:, None], np.abs(f.a) / (np.abs(f.c)[:, None] + 1e-300), best_flat_coef)
    ex3 &= (status == 0); status[ex3] = 3
    # full H as forms
    E = S['E']
    H = [[None] * 6 for _ in range(6)]
    for i in range(3):
        for j in range(3):
            H[i][j] = E[i][j]; H[i][j + 3] = B[i][j]; H[i + 3][j] = C[i][j]; H[i + 3][j + 3] = D[i][j]
    blk_used = -np.ones(N, int)
    score = np.zeros((N, K))
    for res in (res1, res2):
        score += np.abs(res.a) / (np.abs(res.c)[:, None] + 1e-3)
    score += best_flat_coef
    live = np.nonzero((status == 0) & (rad[:, :4].max(1) <= acc_r))[0]
    if len(live):
        Hc = np.stack([np.stack([H[i][j].c[live] for j in range(6)], -1) for i in range(6)], 1).reshape(len(live), 36)
        Qf = Q_float_fast(Hc)
        order = np.argsort(-np.abs(Qf), axis=1)[:, :nblk]
        bestQcoef = np.full((len(live), K), np.inf); bestQratio = np.zeros(len(live))
        acc = np.zeros(len(live), bool)
        Hcat_c = np.stack([np.stack([H[i][j].c[live] for j in range(6)], -1) for i in range(6)], 1)
        Hcat_a = np.stack([np.stack([H[i][j].a[live] for j in range(6)], 1) for i in range(6)], 1)
        Hcat_e = np.stack([np.stack([H[i][j].e[live] for j in range(6)], -1) for i in range(6)], 1)
        ar = np.arange(len(live))
        for col in range(nblk):
            bsel = order[:, col]
            rw = np.array([BLOCKS[b][0] for b in bsel]); cl = np.array([BLOCKS[b][1] for b in bsel])
            n = [[Aff(Hcat_c[ar, rw[:, x], cl[:, y]], Hcat_a[ar, rw[:, x], cl[:, y]], Hcat_e[ar, rw[:, x], cl[:, y]])
                  for y in range(3)] for x in range(3)]
            q = Q_aff(n)
            lo = np.abs(q.c.real) - q.rad() * (1 + 1e-12)
            ok = (lo > q0 * (1 + 1e-12)) & ~acc
            blk_used[live[ok]] = bsel[ok]
            acc |= ok
            ratio = (np.abs(q.c.real) - q0) / (q.rad() + 1e-300)
            upd = ratio > bestQratio
            bestQratio = np.where(upd, ratio, bestQratio)
            bestQcoef = np.where(upd[:, None], np.abs(q.a) / (np.abs(q.c.real)[:, None] + 1e-300), bestQcoef)
        status[live[acc]] = 4
        und = ~acc
        # split score: normalised coefficient magnitudes of the closest-to-deciding tests
        score[live] += np.where(np.isfinite(bestQcoef), bestQcoef, 0)
    detail = None
    if want_detail:
        detail = dict(res1=res1, res2=res2, flat=flat)
    return status, score, blk_used, detail


# ------------------------------------------------------------------ driver
def children(cen, rad, dims):
    """Bisect boxes (rows of cen/rad) along dims. The child radius is padded so that the two
    closed children cover the closed parent even though the child centres are rounded."""
    n = cen.shape[0]; ar = np.arange(n)
    c1 = cen.copy(); c2 = cen.copy(); r1 = rad.copy()
    h = rad[ar, dims] * 0.5
    c1[ar, dims] -= h; c2[ar, dims] += h
    hr = h + 4.5e-16 * np.maximum(np.abs(c1[ar, dims]), np.abs(c2[ar, dims]))
    hr = np.nextafter(np.nextafter(hr, np.inf), np.inf)
    r1[ar, dims] = hr
    return np.concatenate([c1, c2]), np.concatenate([r1, r1])


def split(cen, rad, sig, tau, dims):
    c, r = children(cen, rad, dims)
    return c, r, np.concatenate([sig, sig]), np.concatenate([tau, tau])


ARC = 1.125   # half-length (radians, exact binary64) of the WLOG arc for the first label phase


def arc_ok(theta_c, theta_r):
    """Check of the hypothesis of the arc lemma (REPORT.md): sup_Theta |s| and sup_Theta |s_v|
    are < 1 - 2 cos(ARC); then every gap between the three x's (resp. p's) is < 2*ARC, so some
    column of B (row of C) has its x (p) phase in [-ARC, ARC]. (verify.py re-checks in Arb.)"""
    from flint import arb
    Sd = seed_forms(theta_c[None, :], theta_r[None, :])
    bound = float((1 - 2 * arb(ARC).cos()).lower())
    sups = [float(np.abs(f.c[0]) + f.rad()[0]) * (1 + 1e-12) for f in (Sd['s'], Sd['sv'])]
    return all(x < bound for x in sups), sups, bound


def label_roots(arc):
    L = 3.25
    n0 = 13
    g = (np.arange(n0) + 0.5) * (2 * L / n0) - L
    if arc:   # first phase restricted to [-ARC, ARC] (9 cells of width 0.25)
        g1 = (np.arange(9) + 0.5) * 0.25 - ARC
        cc = np.array([(u, v) for u in g1 for v in g]); rr = np.array([(0.125, L / n0) for u in g1 for v in g])
    else:
        cc = np.array([(u, v) for u in g for v in g]); rr = np.full_like(cc, L / n0)
    return cc, rr


def label_stage(theta_c, theta_r, which, wmin, budget=2_000_000, batch=200000, arc=False, record=None):
    """2-D cover of one side's first column (which=0: B labels, which=1: C labels).
    Returns arrays of surviving 2-D boxes (centre, radius, branch) with width <= wmin."""
    cc, rr = label_roots(arc)
    keep_c, keep_r, keep_b = [], [], []
    queue = [(cc, rr, np.ones(len(cc), int)), (cc, rr, -np.ones(len(cc), int))]
    nodes = 0
    while queue:
        c2, r2, br = queue.pop()
        nodes += len(c2)
        if nodes > budget:
            raise RuntimeError('label budget exceeded')
        N = len(c2)
        cen = np.zeros((N, 8)); rad = np.zeros((N, 8)); cen[:, 4:] = theta_c; rad[:, 4:] = theta_r
        o = 2 * which
        cen[:, o:o + 2] = c2; rad[:, o:o + 2] = r2
        Sd = seed_forms(cen[:, 4:], rad[:, 4:])
        if which == 0:
            _, _, res = side_from_label(cen[:, 0], rad[:, 0], cen[:, 1], rad[:, 1], 0, 1, Sd['s'], Sd['t'], Sd['r'], br)
        else:
            _, _, res = side_from_label(cen[:, 2], rad[:, 2], cen[:, 3], rad[:, 3], 2, 3, Sd['sv'], Sd['tv'], Sd['rv'], br)
        ex = res.excludes_zero()
        live = ~ex
        small = live & (r2.max(1) <= wmin / 2)
        keep_c.append(c2[small]); keep_r.append(r2[small]); keep_b.append(br[small])
        big = np.nonzero(live & ~small)[0]
        if record is not None:
            act = np.where(ex, 0, np.where(small, 1, 2 + np.argmax(r2, axis=1)))
            record.append((c2.copy(), r2.copy(), br.copy(), act))
        if len(big):
            dims = np.argmax(r2[big], axis=1)
            cn, rn = children(c2[big], r2[big], dims)
            queue.append((cn, rn, np.concatenate([br[big], br[big]])))
    return np.concatenate(keep_c), np.concatenate(keep_r), np.concatenate(keep_b), nodes


# ------------------------------------------------------------------ R(E) cap with Arb
def R_cap_arb(centers_q, radii_q):
    """Outward Arb upper bound for R(E) on the closed seed box (16-child Taylor bound of
    ProvenResults/CornerBounds/SideColumnPrune, section 4). Returns (float upper bound, arb)."""
    import sys
    sys.path.insert(0, '/Users/jtindall/Files/NoFourMUBS/ProvenResults/CornerBounds/SideColumnPrune')
    from prune import R_upper_bound
    from flint import arb, fmpq, ctx
    ctx.prec = 96
    cen = [arb(fmpq(x.numerator, x.denominator)) for x in centers_q]
    half = [arb(fmpq(x.numerator, x.denominator)) / 2 for x in radii_q]
    up = -np.inf
    for signs in itertools.product((-1, 1), repeat=4):
        ub = R_upper_bound([c + sg * h for c, sg, h in zip(cen, signs, half)], half)
        u = float(ub.upper())
        u = np.nextafter(u, np.inf)
        assert arb(u) >= ub.upper()
        up = max(up, u)
    return up, None


def theta_box(row):
    cq = [Q_(x) for x in row['centers']]; rq = [Q_(x) for x in row['radii']]
    c = np.array([float(x) for x in cq])
    assert all(Q_(float(x)) == x for x in cq), 'centre not a binary64'
    r = np.array([float(x) for x in rq])
    r = np.where([Q_(float(a)) >= b for a, b in zip(r, rq)], r, np.nextafter(r, np.inf))
    assert all(Q_(float(a)) >= b for a, b in zip(r, rq))
    return cq, rq, c, r


def certify(row, w0=0.4, batch=40000, budget=50_000_000, acc_r=0.06, nblk=2, min_rad=1e-6,
            c0=None, log=print, sample=0, seed=0, arc=False, tape=None):
    """Run the band certificate on one seed box. Returns a dict (accepted flag and statistics)."""
    t0 = time.time()
    cq, rq, thc, thr = theta_box(row)
    if c0 is None:
        M, Marb = R_cap_arb(cq, rq)
    else:
        M = float(c0)
    q0 = np.nextafter(math.sqrt(M / 64.0) * (1 + 1e-15), np.inf) if M > 0 else 0.0
    log('box %s: target M=%.6g (R(E) cap if c0 None), q0=%.6g' % (row['id'], M, q0))
    if arc:
        ok, sups, bound = arc_ok(thc, thr)
        log('  arc lemma: sup|s|=%.4g sup|s_v|=%.4g bound %.4g -> %s' % (sups[0], sups[1], bound, ok))
        arc = bool(ok)
    recB, recC, rec3 = ([], [], []) if tape else (None, None, None)
    labB = label_stage(thc, thr, 0, w0, arc=arc, record=recB); labC = label_stage(thc, thr, 1, w0, arc=arc, record=recC)
    log('  coarse labels B %d C %d (w0=%.2f)' % (len(labB[0]), len(labC[0]), w0))
    nb, nc = len(labB[0]), len(labC[0])
    I, J = np.meshgrid(np.arange(nb), np.arange(nc), indexing='ij'); I = I.ravel(); J = J.ravel()
    cen = np.zeros((len(I), 8)); rad = np.zeros((len(I), 8))
    cen[:, 0:2] = labB[0][I]; rad[:, 0:2] = labB[1][I]
    cen[:, 2:4] = labC[0][J]; rad[:, 2:4] = labC[1][J]
    cen[:, 4:] = thc; rad[:, 4:] = thr
    sig = labB[2][I]; tau = labC[2][J]
    stack = [(cen, rad, sig, tau)]
    stats = dict(nodes=0, ex1=0, ex2=0, ex3=0, acc=0, split=0, maxdepth_minrad=1.0)
    acc_blocks = {}
    labsB, labsC = set(), set(); thsplit_acc = [0]; minr_acc = [1.0]
    rng = np.random.default_rng(seed); samples = {1: [], 2: [], 3: [], 4: []}; seen = {1: 0, 2: 0, 3: 0, 4: 0}
    last = time.time()
    while stack:
        cen, rad, sig, tau = stack.pop()
        if len(cen) > batch:
            stack.append((cen[batch:], rad[batch:], sig[batch:], tau[batch:]))
            cen, rad, sig, tau = cen[:batch], rad[:batch], sig[:batch], tau[:batch]
        stats['nodes'] += len(cen)
        if stats['nodes'] > budget:
            stats.update(ok=False, reason='budget', time=time.time() - t0); return stats
        st, sc, blk, _ = evaluate(cen, rad, sig, tau, q0, nblk=nblk, acc_r=acc_r)
        for code, key in ((1, 'ex1'), (2, 'ex2'), (3, 'ex3'), (4, 'acc')):
            stats[key] += int((st == code).sum())
        for b in blk[st == 4]:
            acc_blocks[int(b)] = acc_blocks.get(int(b), 0) + 1
        if sample:
            for code in (1, 2, 3, 4):
                idx = np.nonzero(st == code)[0]
                for i in idx:   # reservoir sampling
                    seen[code] += 1
                    rec = (cen[i].tolist(), rad[i].tolist(), int(sig[i]), int(tau[i]), int(blk[i]))
                    if len(samples[code]) < sample:
                        samples[code].append(rec)
                    else:
                        j = rng.integers(seen[code])
                        if j < sample:
                            samples[code][j] = rec
        am = st == 4
        if am.any():
            for k in range(len(cen[am])):
                pass
            labsB.update(map(tuple, np.concatenate([cen[am][:, :2], rad[am][:, :2], sig[am][:, None]], 1).tolist()))
            labsC.update(map(tuple, np.concatenate([cen[am][:, 2:4], rad[am][:, 2:4], tau[am][:, None]], 1).tolist()))
            thsplit_acc[0] += int((rad[am][:, 4:] < thr * 0.75).any(1).sum())
            minr_acc[0] = min(minr_acc[0], float(rad[am][:, :4].max(1).min()))
        und = np.nonzero(st == 0)[0]
        if tape:
            act = st.copy()
        if len(und):
            # relative scores: split the symbol carrying most of the undecided tests' radius
            dims = np.argmax(sc[und], axis=1)
            # labels too coarse for the accept test: split the widest label coordinate
            coarse = rad[und, :4].max(1) > acc_r
            dims = np.where(coarse & (dims >= 4), np.argmax(rad[und, :4], 1), dims)
            mr = rad[und, dims].min()
            stats['maxdepth_minrad'] = min(stats['maxdepth_minrad'], float(mr))
            if mr < min_rad:
                stats.update(ok=False, reason='min_rad', time=time.time() - t0); return stats
            stats['split'] += len(und)
            if tape:
                act[und] = 10 + dims
            stats['theta_splits'] = stats.get('theta_splits', 0) + int((dims >= 4).sum())
            stack.append(split(cen[und], rad[und], sig[und], tau[und], dims))
        if tape:
            rec3.append((cen.copy(), rad.copy(), sig.copy(), tau.copy(), act, blk.copy()))
        if time.time() - last > 30:
            last = time.time()
            log('  ... nodes %d acc %d ex %d/%d/%d stack %d  %.0fs' % (stats['nodes'], stats['acc'], stats['ex1'], stats['ex2'], stats['ex3'], sum(len(s[0]) for s in stack), time.time() - t0))
    stats.update(ok=True, reason='queue_exhausted', time=time.time() - t0, M=M, q0=q0,
                 labels_coarse=(nb, nc), acc_blocks=len(acc_blocks),
                 acc_labels_B=len(labsB), acc_labels_C=len(labsC), acc_leaves_with_theta_split=thsplit_acc[0],
                 acc_min_label_halfwidth=minr_acc[0])
    if sample:
        stats['samples'] = samples
    if tape:
        cat = lambda L, k: np.concatenate([x[k] for x in L])
        np.savez_compressed(tape, arc=arc, w0=w0, q0=q0, M=M,
                            lB_c=cat(recB, 0), lB_r=cat(recB, 1), lB_b=cat(recB, 2), lB_a=cat(recB, 3),
                            lC_c=cat(recC, 0), lC_r=cat(recC, 1), lC_b=cat(recC, 2), lC_a=cat(recC, 3),
                            n_c=cat(rec3, 0), n_r=cat(rec3, 1), n_s=cat(rec3, 2), n_t=cat(rec3, 3), n_a=cat(rec3, 4), n_k=cat(rec3, 5))
        stats['tape'] = tape
    return stats
