"""Kernel-faithful (Nat-only) model of the v2 tangent checker, with per-bin hints.

`ktangent2.py` states the v2 test in plain integers.  This module computes it the way the Lean kernel checker will:
natural numbers only (signed quantities sign-split or offset), lane packing as in v1 (`ktangent.py`), and a per-bin
**hint** that names the test and, for the linear test, the multiplier y (|y_i| <= 511).  The hint is untrusted: the
checker decides the test for whatever hint it is given, so the hints need no proof.

Hint (one natural per tangent-eligible bin, in traversal order): tag = h % 4,
  0: no test (the bin is not rejected here);
  1: scalar test (6.12) on column i = (h >> 2) % 8;
  2: linear test with y_i = ((h >> (2 + 10 i)) % 1024) - 512.

Packing (radix R = 2^L, lanes 0..5 rows j, 6..9 frame directions k; pk as in v1 with this module's own R):
  X_i  = sr_i pkI_i - si_i pkR_i + OX   lanes: Jt_ij + b_i + ox,           6 OT b_i + Bt_ik + ox
  XR_i = sr_i pkR_i + si_i pkI_i + OX   lanes: Rt_ij + B (sr_i + si_i) + ox  (frame lanes unused)
  G  = sum_i y_i X_i + OG,  GR = sum_i y_i XR_i + OG  (sign split: 2 P + OG - M).
With H = sum_{j<6} lane_j(G) = 6 Lambda (sum_j Jt_ij = 0):  6 |sum_i y_i Jt_ij| = sqd(H, 6 lane_j(G)),
|sum_i y_i Bt_ik| = sqd(OT H, lane_{6+k}(G) + (6 OT - 1)(ox sum y + og)); with HR (sum_j Rt_ij = N_i):
6 |sum_i y_i Rt_ij| = sqd(HR + NN, 6 lane_j(GR) + PN), PN - NN = sum_i y_i N_i.
"""
from fractions import Fraction as Fr

import kbins as KB
import ktangent2 as KT2

YB = 512            # y_i = field - YB, field in [0, 1024)
NEWTON = 10         # Newton steps of the untrusted square root


# ---------------------------------------------------------------- Nat helpers (mirrored in Lean)
def sqd(C, a):
    return a - C if C <= a else C - a


def nsq(C, a, b):
    return sqd(C, a) ** 2 + sqd(C, b) ** 2


def lane(R, G, m):
    return (G // R ** m) % R


def blen(X, lo=0, hi=1024):
    """Least b in [lo, hi] with X >> b == 0 (bit length), by bisection (untrusted)."""
    while lo < hi:
        mid = (lo + hi) // 2
        if X >> mid == 0:
            hi = mid
        else:
            lo = mid + 1
    return lo


def isqrt_up(X):
    """An integer s with s*s >= X, close to sqrt(X) (untrusted start 2^ceil(b/2), Newton, then +1 if short)."""
    if X == 0:
        return 0
    s = 1 << ((blen(X) + 1) // 2)
    for _ in range(NEWTON):
        s = (s + X // s) // 2
    return s if s * s >= X else s + 1


def geo10(R):
    return sum(R ** m for m in range(10))


# ---------------------------------------------------------------- per-Record constants
class TCfg2:
    """Packing constants of the v2 checker (mirror of Lean `T2Cfg`)."""

    def __init__(self, par, That):
        B = par.BOFF
        self.OT = OT = max(1, max(abs(That[k][j][i]) for k in range(4) for j in range(6) for i in range(6)))
        self.Tp = [[[That[k][j][i] + OT for i in range(6)] for j in range(6)] for k in range(4)]
        for k in range(4):
            for i in range(6):
                assert sum(That[k][j][i] for j in range(6)) == 0
        self.ox = 1000 * OT * B * B
        self.og = 12 * YB * self.ox
        self.L = (4 * self.og).bit_length() + 1
        self.R = R = 1 << self.L
        self.OX = self.ox * geo10(R)
        self.OG = self.og * geo10(R)
        self.TP = [[R ** j + sum(self.Tp[k][j][i] * R ** (6 + k) for k in range(4)) for i in range(6)] for j in range(6)]

    def pk_node(self, j, v):
        return [v[2 * i + t] * self.TP[j][i] for i in range(6) for t in range(2)]


class T2Thr:
    """Integer coefficients per depth (from ktangent2.TPar2, adjusted to the 6x-scaled SJ6 and Gb6)."""

    def __init__(self, t2):
        self.ke, self.eZ, self.G2 = t2.ke, t2.eZ, t2.G2
        self.lv = []
        for c in t2.lv:
            c = dict(c)
            c['kV6'] = -(-c['kV'] // 6)
            c['kG6'] = -(-c['kG'] // 6)
            self.lv.append(c)
        self.sc = t2.sc


# ---------------------------------------------------------------- the column quantities
def colX(OX, C, AR, AI, pR, pI):
    """sr pI - si pR + OX (v1 `colX`)."""
    if C <= AR:
        return sqd(C, AR) * pI + OX - sqd(C, AI) * pR if C <= AI else sqd(C, AR) * pI + sqd(C, AI) * pR + OX
    return OX - sqd(C, AR) * pI - sqd(C, AI) * pR if C <= AI else sqd(C, AI) * pR + OX - sqd(C, AR) * pI


def colXR(OX, C, AR, AI, pR, pI):
    """sr pR + si pI + OX."""
    a, b = sqd(C, AR) * pR, sqd(C, AI) * pI
    if C <= AR:
        return a + b + OX if C <= AI else a + OX - b
    return b + OX - a if C <= AI else OX - a - b


def decode(h):
    tag = h % 4
    if tag == 1:
        return 'scalar', (h >> 2) % 8
    if tag == 2:
        f = [(h >> (2 + 10 * i)) % 1024 for i in range(6)]
        return 'linear', f
    return 'none', None


def encode_linear(y):
    assert all(-YB < v < YB for v in y)
    return 2 + sum((v + YB) << (2 + 10 * i) for i, v in enumerate(y))


def encode_scalar(i):
    return 1 + (i << 2)


# ---------------------------------------------------------------- the checker
def k_linear(par, tc, th, d, acc, pk, f, dbg=None):
    """The linear test for the multiplier fields f (y_i = f_i - YB), Nat-only.  True iff the bin is rejected."""
    C, B, six, R = par.C, par.BOFF, par.SIX_Z2, tc.R
    pos = [fi >= YB for fi in f]
    ym = [sqd(YB, fi) for fi in f]
    AR = [acc[2 * i] for i in range(6)]
    AI = [acc[2 * i + 1] for i in range(6)]
    N = [nsq(C, AR[i], AI[i]) for i in range(6)]
    X = [colX(tc.OX, C, AR[i], AI[i], pk[2 * i], pk[2 * i + 1]) for i in range(6)]
    XR = [colXR(tc.OX, C, AR[i], AI[i], pk[2 * i], pk[2 * i + 1]) for i in range(6)]
    P = sum(ym[i] * X[i] for i in range(6) if pos[i]); M = sum(ym[i] * X[i] for i in range(6))
    PR = sum(ym[i] * XR[i] for i in range(6) if pos[i]); MR = sum(ym[i] * XR[i] for i in range(6))
    G = 2 * P + tc.OG - M
    GR = 2 * PR + tc.OG - MR
    g = [lane(R, G, m) for m in range(10)]
    gr = [lane(R, GR, m) for m in range(6)]
    H, HR = sum(g[:6]), sum(gr)
    aJ = [sqd(H, 6 * g[j]) for j in range(6)]
    SJ6 = sum(aJ[1:])
    Syp = sum(ym[i] for i in range(6) if pos[i]); Syn = sum(ym[i] for i in range(6) if not pos[i])
    Y1, Yinf = Syp + Syn, max(ym)
    cS = (6 * tc.OT - 1) * (tc.ox * Syp + tc.og - tc.ox * Syn)
    bk = [sqd(tc.OT * H, g[6 + k] + cS) for k in range(4)]
    UX = sum(b * b for b in bk)
    PN = sum(ym[i] * N[i] for i in range(6) if pos[i]); NN = sum(ym[i] * N[i] for i in range(6) if not pos[i])
    aR = [sqd(HR + NN, 6 * gr[j] + PN) for j in range(6)]
    GX36 = max(aR[j] ** 2 + aJ[j] ** 2 for j in range(6))
    bo = [B * AR[i] + tc.ox - B * AI[i] for i in range(6)]
    Q = [sum(sqd(bo[i], lane(R, X[i], j)) ** 2 for j in range(6)) for i in range(6)]
    NX = sum(ym[i] ** 2 * Q[i] for i in range(6))
    Sq = [KB.newt(N[i], KB.newt(N[i], par.S6Z)) for i in range(6)]
    if any(Sq[i] * Sq[i] < N[i] for i in range(6)):
        return False
    Sp = [x + th.eZ for x in Sq]
    SX = sum(ym[i] ** 2 * Sp[i] ** 2 for i in range(6))
    SY1 = sum(ym[i] * Sp[i] for i in range(6))
    SYinf = max(ym[i] * Sp[i] for i in range(6))
    sg = [six <= N[i] for i in range(6)]
    aY = [sqd(six, N[i]) for i in range(6)]
    CP = sum(ym[i] * aY[i] for i in range(6) if pos[i] == sg[i])
    CN = sum(ym[i] * aY[i] for i in range(6) if pos[i] != sg[i])
    Ct = sqd(CN, CP)
    if dbg is not None:
        dbg.update(SJ6=SJ6, UX=UX, GX36=GX36, Q=Q, NX=NX, Ct=Ct, Y1=Y1, Yinf=Yinf, SX=SX, SY1=SY1, SYinf=SYinf)
    Ub, NJ, Gb6, SY2 = isqrt_up(UX), isqrt_up(NX), isqrt_up(GX36), isqrt_up(SX)
    if UX > Ub * Ub or NX > NJ * NJ or GX36 > Gb6 * Gb6 or SX > SY2 * SY2:
        return False
    c = th.lv[d]
    if Ct <= th.ke * Y1:
        return False
    rhs = (c['kV6'] * SJ6 + c['kU'] * Ub + c['kN'] * NJ + min(c['kA'] * Yinf, c['kB'] * Y1) +
           min(c['kG6'] * Gb6, c['kP'] * SY2) + min(c['kC1'] * SY2, c['kC2'] * SY1) +
           min(c['kD1'] * SYinf, c['kD2'] * SY1) + c['k1'] * Y1)
    return rhs < (Ct - th.ke * Y1) * th.G2


def k_scalar(par, tc, th, d, acc, pk, i):
    """The scalar test (6.12) on column i, Nat-only.  True iff the bin is rejected."""
    C, B, six, R = par.C, par.BOFF, par.SIX_Z2, tc.R
    AR, AI = acc[2 * i], acc[2 * i + 1]
    N = nsq(C, AR, AI)
    X = colX(tc.OX, C, AR, AI, pk[2 * i], pk[2 * i + 1])
    bo = B * AR + tc.ox - B * AI
    Ja = [sqd(bo, lane(R, X, j)) for j in range(6)]
    SJ = sum(Ja[1:])
    QX = sum(a * a for a in Ja)
    NJ = isqrt_up(QX)
    Sq = KB.newt(N, KB.newt(N, par.S6Z))
    if NJ * NJ < QX or Sq * Sq < N:
        return False
    Sp = Sq + th.eZ
    Ct = sqd(six, N)
    if Ct <= th.ke:
        return False
    c = th.sc[d]
    rhs = c['sV'] * SJ + c['sR'] * NJ + min(c['sA1'] + c['sB1'] * Sp, c['sA2'] + c['sB2'] * Sp) + c['s1']
    return rhs < (Ct - th.ke) * th.G2


def k_check(par, tc, th, d, acc, pk, h):
    """Mirror of Lean `tang2B`: decide the test the hint names."""
    kind, x = decode(h)
    if kind == 'scalar':
        return x < 6 and k_scalar(par, tc, th, d, acc, pk, x)
    if kind == 'linear':
        return k_linear(par, tc, th, d, acc, pk, x)
    return False


# ---------------------------------------------------------------- hint generation (untrusted, Python only)
def make_hint(par, tc, th, t2, d, acc, pk, rows):
    """The cheapest hint that the kernel checker accepts for this bin, or 0."""
    N, Yt, Jt, Rt, Bt = KT2.bin_data(par, tc, rows)
    for i in sorted(range(6), key=lambda i: -abs(Yt[i])):
        if k_scalar(par, tc, th, d, acc, pk, i):
            return encode_scalar(i)
    y = KT2.ls_direction(t2, d, Yt, Jt, Bt)
    cands = []
    if y is not None:
        m = max(abs(v) for v in y)
        cands.append([(2 * (YB - 1) * v + m) // (2 * m) for v in y])
    m = max(abs(v) for v in Yt)
    if m:
        cands.append([(2 * (YB - 1) * v + m) // (2 * m) for v in Yt])
    for yy in cands:
        h = encode_linear(yy)
        if k_linear(par, tc, th, d, acc, pk, decode(h)[1]):
            return h
    return 0


# ---------------------------------------------------------------- the traversal with hints
def run(par, tc, th, t2, W0, R5, leaf_cb=None, stats=None, hints=None):
    """Mirror of the Lean traversal `binH`: direct test, then (if not rejected) the hinted v2 test, then children.
    hints=None: generate them (returned per sub-slab (b1, b2) as lists); otherwise consume the given lists."""
    stats = stats if stats is not None else {}
    gen = hints is None
    out = {}

    def add(a, v):
        return [x + y for x, y in zip(a, v)]

    def inc(key):
        stats[key] = stats.get(key, 0) + 1

    def binok(d, acc, pk, ts, hs):
        inc(('tested', d))
        if KB.reject(par, d, acc):
            inc(('rejected', d))
            return True
        inc(('tangent', d))
        if gen:
            h = make_hint(par, tc, th, t2, d, acc, pk, [W0] + [t[1] for t in ts])
            hs.append(h)
        else:
            h = hs.pop(0) if hs else 0
        if h and k_check(par, tc, th, d, acc, pk, h):
            inc(('trej', d))
            return True
        if d == 0:
            inc(('survivor', 0))
            return leaf_cb(acc, ts) if leaf_cb else True
        ok = True
        for c1 in (ts[0][2], ts[0][3]):
            a1, p1 = add(W0, c1[1]), add(tc.pk_node(0, W0), tc.pk_node(1, c1[1]))
            for c2 in (ts[1][2], ts[1][3]):
                a2, p2 = add(a1, c2[1]), add(p1, tc.pk_node(2, c2[1]))
                for c3 in (ts[2][2], ts[2][3]):
                    a3, p3 = add(a2, c3[1]), add(p2, tc.pk_node(3, c3[1]))
                    for c4 in (ts[3][2], ts[3][3]):
                        a4, p4 = add(a3, c4[1]), add(p3, tc.pk_node(4, c4[1]))
                        for c5 in (ts[4][2], ts[4][3]):
                            ok = binok(d - 1, add(a4, c5[1]), add(p4, tc.pk_node(5, c5[1])),
                                       (c1, c2, c3, c4, c5), hs) and ok
        return ok

    ok = True
    P0 = tc.pk_node(0, W0)
    for b1, c1 in enumerate(R5[0]):
        a1, p1 = add(W0, c1[1]), add(P0, tc.pk_node(1, c1[1]))
        for b2, c2 in enumerate(R5[1]):
            a2, p2 = add(a1, c2[1]), add(p1, tc.pk_node(2, c2[1]))
            hs = [] if gen else list(hints.get((b1, b2), []))
            for c3 in R5[2]:
                a3, p3 = add(a2, c3[1]), add(p2, tc.pk_node(3, c3[1]))
                for c4 in R5[3]:
                    a4, p4 = add(a3, c4[1]), add(p3, tc.pk_node(4, c4[1]))
                    for c5 in R5[4]:
                        ok = binok(3, add(a4, c5[1]), add(p4, tc.pk_node(5, c5[1])), (c1, c2, c3, c4, c5), hs) and ok
            if gen:
                out[(b1, b2)] = hs
    return ok, stats, out
