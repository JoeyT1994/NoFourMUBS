"""Exact-integer mirror of the Lean kernel tangent-test checker (kernel_atlas/lean/KernelAtlas/Tangent.lean).

Bit-for-bit the same Nat computation as `tangB`; used for pre-flight counts and for generating the per-Record
constants (`TCfg`, `TParQ`).  Nothing here is trusted: every constant enters Lean through a kernel-checked condition.

The test (STAGEC.md C2(b), multiplier y = c):  for a bin with column sums s_i (Gaussian integers at scale Z, offset
C = 6 B) and node values w~_ji (offset B), put
    Y_i  = N_i - 6 Z^2  (N_i = |s_i|^2;  y_i = Y_i is proportional to c_i),
    J~_ij = Im(conj(s_i) w~_ji) = sr_i wi_ji - si_i wr_ji,
    V_j  = sum_i Y_i J~_ij                (~ -6 Z^2 (J^T y)_j),
    B~_k = sum_i Y_i sum_j T^_kji J~_ij   (~ -6 Z^2 DT (B^T y)_k),  T^ = DT T the exact integer frame,
and accept the rejection if
    kV SV6 + kU sqrt(X1) + kQ sqrt(X2) + min(kA Yinf, kB Y1) + k1 Y1 < YY 2^g,
SV6 = 6 sum_{j>0} |V_j|, X1 = ||B~||^2, X2 = sum Y_i^2 N_i + ke YY, YY = sum Y_i^2, Y1 = sum |Y_i|,
Yinf = max |Y_i|.  The square roots are removed exactly: with L0 the sqrt-free part, C = YY 2^g - L0,
a = kU sqrt(X1), b = kQ sqrt(X2), the test is  L0 < YY 2^g, b^2 < C^2, a^2 < C^2 + b^2, 4 C^2 b^2 < (C^2 + b^2 - a^2)^2.
(Nat.log2 is not accelerated by the kernel, so no integer square roots are taken.)

Lane packing.  Lanes m = 0..9 of radix R: lanes 0..5 are the rows j, lanes 6..9 the frame directions k.  Per row j
and column i the constant TP_ji = R^j + sum_k T'_kji R^(6+k) (T' = T^ + OT >= 0) turns a node value into its packed
field; the bin's packed sums pk_i = (sum_j WR_ji TP_ji, sum_j WI_ji TP_ji) are accumulated along the traversal like
the column sums.  Then X_i = sr_i pkI_i - si_i pkR_i + OX has lanes J~_ij + b_i + ox (j) and
B~_ik + 6 OT b_i + ox (k), b_i = B (sr_i - si_i), and G = sum_i Y_i X_i + OG has lanes V_j + Lam and
B~_k + 6 OT Lam - (6 OT - 1)(ox sum Y + og), which the checker reads off with / and %.
"""
from fractions import Fraction as Fr
import math


def idx_rows():
    return list(range(6))


def sqd(C, a):
    return a - C if C <= a else C - a


def nsq(C, a, b):
    return sqd(C, a) * sqd(C, a) + sqd(C, b) * sqd(C, b)


class TCfg:
    """Per-Record constants of the tangent checker (mirror of Lean `TCfg`)."""

    def __init__(self, par, That, DT, g=64):
        """par: kbins.Params; That[k][j][i]: exact integer frame DT*T (k < 4, rows j, columns i)."""
        B = par.BOFF
        self.B = B
        self.DT = DT
        self.OT = max(1, max(abs(That[k][j][i]) for k in range(4) for j in range(6) for i in range(6)))
        OT = self.OT
        self.Tp = [[[That[k][j][i] + OT for i in range(6)] for j in range(6)] for k in range(4)]
        for k in range(4):
            for i in range(6):
                assert sum(That[k][j][i] for j in range(6)) == 0, 'frame column sums must vanish'
        self.ox = 288 * OT * B * B
        self.Ymax = 72 * B * B
        self.og = 12 * self.Ymax * self.ox
        self.L = (2 * self.og).bit_length() + 1
        self.R = 1 << self.L
        R = self.R
        self.OXp = sum(self.ox * R ** m for m in range(10))
        self.OGp = sum(self.og * R ** m for m in range(10))
        self.c1 = (6 * OT - 1) * self.ox
        assert self.og >= 6 * self.ox * par.SIX_Z2
        self.c0 = (6 * OT - 1) * (self.og - 6 * self.ox * par.SIX_Z2)
        self.g = g
        self.TP = [[R ** j + sum(self.Tp[k][j][i] * R ** (6 + k) for k in range(4)) for i in range(6)] for j in range(6)]

    def pk_node(self, j, v):
        """Packed field of a node value v (12 naturals re0, im0, ...) in row j."""
        return [v[2 * i + t] * self.TP[j][i] for i in range(6) for t in range(2)]


class TPar:
    """Rational side conditions and the per-depth integer coefficients (mirror of Lean `TParQ`, `TThr`)."""

    def __init__(self, par, tc, rHbar, nbar, tcol, KS):
        """rHbar, nbar: cycles; tcol >= max_{k,i} sum_j |T_kji|; KS: kbins constants module (S6/I6/X29 bounds)."""
        self.rHbar, self.nbar, self.tcol = rHbar, nbar, tcol
        Z = par.Z
        pihi = par.pihi
        E, e1 = par.E, par.eps1
        self.eW = (6 + E) * e1 + E
        self.eN = E * (12 + E)
        self.ke = math.ceil(self.eN * Z * Z)
        g = tc.g
        G2 = Fr(2 ** g)
        self.lv = []
        for d in range(4):
            a = Fr(2 ** d, 192)
            Xb = KS.X29HI * a
            I = Fr(3, 2) * a
            c3 = par.Kbar * I * Xb + 2 * KS.I6HI * Xb * par.rFbar + KS.I6HI * par.rFbar ** 2
            kV = Fr(2, 3) * pihi * a * G2
            kU = 4 * pihi * rHbar * G2 / tc.DT
            kQ = 24 * pihi * Z * KS.I6HI * (nbar + pihi * c3) * G2
            Aq = (par.Kbar * Xb + par.rFbar) ** 2
            Bq = (par.Kbar * Xb + par.rbar) ** 2
            kA = 24 * pihi ** 2 * Z * Z * Aq * G2
            kB = 24 * pihi ** 2 * Z * Z * Bq * G2
            k1 = (20 * pihi * a * self.eW + 8 * pihi * rHbar * self.eW * tcol + self.eN) * Z * Z * G2
            self.lv.append(tuple(KS.ceil_fr(x) for x in (kV, kU, kQ, kA, kB, k1)))


def tangent(par, tc, tp, d, acc, pk, stats=None):
    """Mirror of `tangB`: True iff the tangent test rejects the bin.  acc, pk: 12 naturals each (re0, im0, ...)."""
    C = 6 * par.BOFF
    six = par.SIX_Z2
    R = tc.R
    G = 0
    Mall = 0
    Pp = 0
    SN = 0
    YY = Y1 = Yinf = Q = 0
    for i in range(6):
        AR, AI = acc[2 * i], acc[2 * i + 1]
        N = nsq(C, AR, AI)
        ar, ai = sqd(C, AR), sqd(C, AI)
        pr, pi_ = C <= AR, C <= AI
        t1 = ar * pk[2 * i + 1]
        t2 = ai * pk[2 * i]
        if pr:
            X = t1 + tc.OXp - t2 if pi_ else t1 + t2 + tc.OXp
        else:
            X = tc.OXp - t1 - t2 if pi_ else t2 + tc.OXp - t1
        assert X >= 0
        y = sqd(six, N)
        m = y * X
        if six <= N:
            Pp += m
        Mall += m
        SN += N
        y2 = y * y
        YY += y2
        Y1 += y
        Yinf = max(Yinf, y)
        Q += y2 * N
    G = Pp + Pp + tc.OGp - Mall
    assert G >= 0
    lanes = [(G // R ** m) % R for m in range(10)]
    H = sum(lanes[:6])
    SV6 = sum(sqd(H, 6 * lanes[j]) for j in range(1, 6))
    OTH = tc.OT * H
    X1 = 0
    for k in range(4):
        b = sqd(OTH, lanes[6 + k] + tc.c1 * SN + tc.c0)
        X1 += b * b
    X2 = Q + tp.ke * YY
    kV, kU, kQ, kA, kB, k1 = tp.lv[d]
    L0 = kV * SV6 + min(kA * Yinf, kB * Y1) + k1 * Y1
    W = YY << tc.g
    C2 = (W - L0) * (W - L0) if L0 <= W else 0
    QX = kQ * kQ * X2
    UX = kU * kU * X1
    D = C2 + QX - UX if UX <= C2 + QX else 0
    res = L0 < W and QX < C2 and UX < C2 + QX and 4 * C2 * QX < D * D
    if stats is not None:
        stats.append((d, L0, W))
    return res


def run(par, tc, tp, W0, R5, use_tangent=True, leaf_cb=None, stats=None, only=None):
    """Mirror of the Lean traversal `binT` (direct test, then tangent test, then children).
    only: optional (b1, b2) restricting to one sub-slab (first two level-12 roots)."""
    import kbins as KB
    stats = stats if stats is not None else {}

    def add(a, v):
        return [x + y for x, y in zip(a, v)]

    def inc(key):
        stats[key] = stats.get(key, 0) + 1

    def binok(d, acc, pk, ts):
        inc(('tested', d))
        if KB.reject(par, d, acc):
            inc(('rejected', d))
            return True
        inc(('tangent', d))
        tr = tangent(par, tc, tp, d, acc, pk)
        if tr:
            inc(('trej', d))
            if use_tangent:
                return True
        if d == 0:
            inc(('survivor', 0))
            return leaf_cb(acc, ts) if leaf_cb else True
        ok = True
        for c1 in (ts[0][2], ts[0][3]):
            a1 = add(W0, c1[1]); p1 = add(P0, tc.pk_node(1, c1[1]))
            for c2 in (ts[1][2], ts[1][3]):
                a2 = add(a1, c2[1]); p2 = add(p1, tc.pk_node(2, c2[1]))
                for c3 in (ts[2][2], ts[2][3]):
                    a3 = add(a2, c3[1]); p3 = add(p2, tc.pk_node(3, c3[1]))
                    for c4 in (ts[3][2], ts[3][3]):
                        a4 = add(a3, c4[1]); p4 = add(p3, tc.pk_node(4, c4[1]))
                        for c5 in (ts[4][2], ts[4][3]):
                            ok = binok(d - 1, add(a4, c5[1]), add(p4, tc.pk_node(5, c5[1])),
                                       (c1, c2, c3, c4, c5)) and ok
        return ok

    P0 = tc.pk_node(0, W0)
    ok = True
    for b1, c1 in enumerate(R5[0]):
        if only is not None and b1 != only[0]:
            continue
        a1 = add(W0, c1[1]); p1 = add(P0, tc.pk_node(1, c1[1]))
        for b2, c2 in enumerate(R5[1]):
            if only is not None and b2 != only[1]:
                continue
            a2 = add(a1, c2[1]); p2 = add(p1, tc.pk_node(2, c2[1]))
            for c3 in R5[2]:
                a3 = add(a2, c3[1]); p3 = add(p2, tc.pk_node(3, c3[1]))
                for c4 in R5[3]:
                    a4 = add(a3, c4[1]); p4 = add(p3, tc.pk_node(4, c4[1]))
                    for c5 in R5[4]:
                        ok = binok(3, add(a4, c5[1]), add(p4, tc.pk_node(5, c5[1])), (c1, c2, c3, c4, c5)) and ok
    return ok, stats
