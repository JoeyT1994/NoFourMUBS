"""Exact-integer mirror of the sharper kernel tangent test (v2) and the scalar test (6.12).

v1 (`ktangent.py`, Lean `tangB`) uses the fixed multiplier y = c and one branch of each remainder term.  v2 implements
`StageC.leafRej_of_linear` in full:

* the direction y is a least-squares solution (as in stagec.tangent_tests), computed by fraction-free Gauss-Jordan
  elimination in exact integers and rounded to |y_i| <= 256.  It is *untrusted*: the test is sound for every integer
  y, so nothing about the solve is proved.  The rule y = c (v1's direction) is tried as well;
* every norm of `leafRej_of_linear` is bounded by an integer computed from the bin's row values; square roots are
  integer upper bounds s with s^2 >= X (`squ`, Newton from a power of two), checked by one multiplication;
* the scalar test (6.12) (`StageC.leafRej_of_scalar`) is applied per column first.

Integer data of a bin (all exact): w_ji = row j's node value (Gaussian integer at scale Z = 2^p, ~ Z e(u_j - P_ji)),
s_i = sum_j w_ji (~ Z sqrt6 S_i), N_i = |s_i|^2, Yt_i = N_i - 6 Z^2 (~ 24 pi Z^2 c_i),
Jt_ij = Im(conj(s_i) w_ji) (~ -6 Z^2 Jm_ij), Rt_ij = Re(conj(s_i) w_ji), Bt_ik = sum_j Th_kji Jt_ij (Th = DT T).

The test (multiply `leafRej_of_linear` by 24 pi Z^2; constants per depth in `TPar2`):
    (|Ct| - ke Y1) G2 > kV SJ + kU Ub + kN NJ + min(kA Yinf, kB Y1) + min(kG Gb, kP SY2) + min(kC1 SY2, kC2 SY1)
                        + min(kD1 SYinf, kD2 SY1) + k1 Y1,
Ct = sum y_i Yt_i, SJ = sum_{j>0} |sum_i y_i Jt_ij|, Ub >= ||(sum_i y_i Bt_ik)_k||, NJ >= (sum_i y_i^2 sum_j Jt_ij^2)^1/2,
Gb >= max_j |sum_i y_i (Rt_ij + i Jt_ij)|, Sp_i = Sq_i + eZ with Sq_i >= sqrt(N_i), SY2 >= (sum y_i^2 Sp_i^2)^1/2,
SY1 = sum |y_i| Sp_i, SYinf = max |y_i| Sp_i, Y1 = sum |y_i|, Yinf = max |y_i|.
"""
from fractions import Fraction as Fr
import math

YMAX = 256          # |y_i| <= YMAX for the least-squares direction
G2BITS = 64


# ---------------------------------------------------------------- integer helpers (mirrored in Lean)
def fdiv(a, b):
    """Floor division (Python //, Lean Int.fdiv)."""
    return a // b


def pow4_ge(X):
    """Least k with 4^k >= X (X >= 1), by doubling then bisection (no log2)."""
    hi = 1
    while 4 ** hi < X:
        hi *= 2
    lo = 0
    while lo < hi:
        mid = (lo + hi) // 2
        if 4 ** mid >= X:
            hi = mid
        else:
            lo = mid + 1
    return lo


def squ(X, steps=6):
    """An integer s >= sqrt(X) (usually ceil): Newton from 2^k >= sqrt(X); the caller checks s*s >= X."""
    if X <= 0:
        return 0
    s = 2 ** pow4_ge(X)
    for _ in range(steps):
        t = (s + fdiv(X + s - 1, s)) // 2 + 1        # stays >= sqrt(X)
        if t >= s:
            break
        s = t
    return s


def gauss_jordan(M):
    """Fraction-free Gauss-Jordan (Bareiss) on an n x (n+1) integer matrix; returns the last column (det * z) or None.
    Untrusted: only its output direction is used."""
    n = len(M)
    M = [row[:] for row in M]
    prev = 1
    for k in range(n):
        p = next((i for i in range(k, n) if M[i][k] != 0), None)
        if p is None:
            return None
        if p != k:
            M[k], M[p] = M[p], M[k]
        piv = M[k][k]
        for i in range(n):
            if i == k:
                continue
            mik = M[i][k]
            M[i] = [fdiv(piv * M[i][j] - mik * M[k][j], prev) for j in range(n + 1)]
        prev = piv
    return [M[i][n] for i in range(n)]


def round_dir(z, ymax=YMAX):
    """Integer direction proportional to z with max |y_i| = ymax (round half up)."""
    m = max(abs(x) for x in z)
    if m == 0:
        return None
    return [fdiv(2 * ymax * x + m, 2 * m) for x in z]


# ---------------------------------------------------------------- per-Record constants
class TPar2:
    """Per-depth integer coefficients of the v2 test and the scalar test (mirror of Lean `T2Thr`, `T2ParOK`)."""

    def __init__(self, par, tc, rHbar, nbar, tcol, KS):
        Z = par.Z
        pihi, s6 = par.pihi, KS.S6HI
        E, e1 = par.E, par.eps1
        eW = (6 + E) * e1 + E
        eN = E * (12 + E)
        self.ke = KS.ceil_fr(eN * Z * Z)
        self.eZ = KS.ceil_fr(E * Z)
        G2 = Fr(2 ** G2BITS)
        self.G2 = 2 ** G2BITS
        K, r, rF = par.Kbar, par.rbar, par.rFbar
        DT = tc.DT
        self.lv, self.sc, self.lsw = [], [], []
        for d in range(4):
            a = Fr(2 ** d, 192)
            X = KS.X29HI * a
            I = Fr(3, 2) * a
            c = dict(
                kV=4 * pihi * a, kU=4 * pihi * rHbar / DT, kN=4 * pihi * nbar,
                kA=24 * pihi ** 2 * Z * Z * (K * X + rF) ** 2, kB=24 * pihi ** 2 * Z * Z * (K * X + r) ** 2,
                kG=4 * pihi ** 2 * X * X, kP=4 * s6 * pihi ** 2 * Z * K * I * X,
                kC1=8 * pihi ** 2 * Z * X * rF, kC2=8 * pihi ** 2 * Z * X * r,
                kD1=4 * pihi ** 2 * Z * rF * rF, kD2=4 * pihi ** 2 * Z * r * r,
                k1=(20 * pihi * a + 8 * pihi * rHbar * tcol + 4 * s6 * pihi * nbar + 4 * pihi ** 2 * X * X) * eW * Z * Z)
            self.lv.append({k: KS.ceil_fr(v * G2) for k, v in c.items()})
            A1 = (K * X + r) ** 2
            B1 = K * I * X + (2 * X * r + r * r) * KS.I6HI
            A2 = (5 * a * KS.I6HI + r) ** 2
            B2 = (X + r) ** 2 * KS.I6HI
            s = dict(sV=4 * pihi * a, sR=4 * pihi * r,
                     sA1=24 * pihi ** 2 * Z * Z * A1, sB1=4 * s6 * pihi ** 2 * Z * B1,
                     sA2=24 * pihi ** 2 * Z * Z * A2, sB2=4 * s6 * pihi ** 2 * Z * B2,
                     s1=(20 * pihi * a + 4 * s6 * pihi * r) * eW * Z * Z)
            self.sc.append({k: KS.ceil_fr(v * G2) for k, v in s.items()})
            # least-squares weights (untrusted): G = a^2 DT^2 sum_{j>0} Jt Jt + rH^2 sum_k Bt Bt, normalised
            q = a * a * DT * DT / (rHbar * rHbar)
            self.lsw.append((max(1, round(q * 2 ** 16)), 2 ** 16))


# ---------------------------------------------------------------- the per-bin data
def bin_data(par, tc, rows):
    """rows: six lists of 12 naturals (row j's node values, offset BOFF).  Returns the exact integer data."""
    B = par.BOFF
    w = [[(rows[j][2 * i] - B, rows[j][2 * i + 1] - B) for i in range(6)] for j in range(6)]
    s = [(sum(w[j][i][0] for j in range(6)), sum(w[j][i][1] for j in range(6))) for i in range(6)]
    N = [sr * sr + si * si for sr, si in s]
    Yt = [n - par.SIX_Z2 for n in N]
    Jt = [[s[i][0] * w[j][i][1] - s[i][1] * w[j][i][0] for j in range(6)] for i in range(6)]
    Rt = [[s[i][0] * w[j][i][0] + s[i][1] * w[j][i][1] for j in range(6)] for i in range(6)]
    Th = [[[tc.Tp[k][j][i] - tc.OT for i in range(6)] for j in range(6)] for k in range(4)]   # Th[k][j][i] = DT T
    Bt = [[sum(Th[k][j][i] * Jt[i][j] for j in range(6)) for k in range(4)] for i in range(6)]
    return N, Yt, Jt, Rt, Bt


def ls_direction(t2, d, Yt, Jt, Bt):
    """Untrusted least-squares direction (rounded) for the v2 test, or None."""
    wJ, wB = t2.lsw[d]
    # scale the data down to ~2^31 before forming the normal matrix (only the direction matters)
    mJ = max(1, max(abs(Jt[i][j]) for i in range(6) for j in range(1, 6)))
    mB = max(1, max(abs(Bt[i][k]) for i in range(6) for k in range(4)))
    mY = max(1, max(abs(x) for x in Yt))
    sJ, sB, sY = max(0, mJ.bit_length() - 31), max(0, mB.bit_length() - 31), max(0, mY.bit_length() - 31)
    J = [[Jt[i][j] >> sJ for j in range(6)] for i in range(6)]
    Bs = [[Bt[i][k] >> sB for k in range(4)] for i in range(6)]
    # weights compensate the shifts: a^2 DT^2 Jt.Jt vs rH^2 Bt.Bt
    eJ, eB = 2 * sJ, 2 * sB
    e0 = min(eJ, eB)
    wJs, wBs = wJ << (eJ - e0), wB << (eB - e0)
    G = [[wJs * sum(J[i][j] * J[l][j] for j in range(1, 6)) + wBs * sum(Bs[i][k] * Bs[l][k] for k in range(4))
          for l in range(6)] for i in range(6)]
    c = [x >> sY for x in Yt]
    # sum_i |S_i|^2 = 6 for every flat vector, so (1, ..., 1) is a null direction of G and c is orthogonal to it (up to
    # rounding).  Solve on its complement, y = (w_0, ..., w_4, -sum w): the reduced 5 x 5 system is well conditioned
    # and gives the minimum-norm least-squares direction, as the regularised float solve does.
    M = [[G[a][b] - G[a][5] - G[5][b] + G[5][5] for b in range(5)] + [c[a] - c[5]] for a in range(5)]
    w = gauss_jordan(M)
    if w is None:
        return None
    return round_dir(w + [-sum(w)])


def test_dir(t2, d, y, N, Yt, Jt, Rt, Bt, Sp):
    """True iff the v2 inequality rejects the bin for the integer direction y."""
    c = t2.lv[d]
    ay = [abs(v) for v in y]
    Y1, Yinf = sum(ay), max(ay)
    Ct = abs(sum(y[i] * Yt[i] for i in range(6)))
    if Ct <= t2.ke * Y1:
        return False
    GJ = [sum(y[i] * Jt[i][j] for i in range(6)) for j in range(6)]
    GR = [sum(y[i] * Rt[i][j] for i in range(6)) for j in range(6)]
    SJ = sum(abs(GJ[j]) for j in range(1, 6))
    Bk = [sum(y[i] * Bt[i][k] for i in range(6)) for k in range(4)]
    UX = sum(b * b for b in Bk)
    NX = sum(y[i] * y[i] * sum(Jt[i][j] * Jt[i][j] for j in range(6)) for i in range(6))
    GX = max(GR[j] * GR[j] + GJ[j] * GJ[j] for j in range(6))
    SX = sum(y[i] * y[i] * Sp[i] * Sp[i] for i in range(6))
    Ub, NJ, Gb, SY2 = squ(UX), squ(NX), squ(GX), squ(SX)
    if Ub * Ub < UX or NJ * NJ < NX or Gb * Gb < GX or SY2 * SY2 < SX:
        return False
    SY1 = sum(ay[i] * Sp[i] for i in range(6))
    SYinf = max(ay[i] * Sp[i] for i in range(6))
    rhs = (c['kV'] * SJ + c['kU'] * Ub + c['kN'] * NJ + min(c['kA'] * Yinf, c['kB'] * Y1) +
           min(c['kG'] * Gb, c['kP'] * SY2) + min(c['kC1'] * SY2, c['kC2'] * SY1) +
           min(c['kD1'] * SYinf, c['kD2'] * SY1) + c['k1'] * Y1)
    return (Ct - t2.ke * Y1) * t2.G2 > rhs


def scalar_test(t2, d, i, Yt, Jt, Sp):
    """True iff the scalar test (6.12) on column i rejects the bin."""
    c = t2.sc[d]
    lhs = abs(Yt[i])
    if lhs <= t2.ke:
        return False
    SJ = sum(abs(Jt[i][j]) for j in range(1, 6))
    X = sum(Jt[i][j] * Jt[i][j] for j in range(6))
    NJ = squ(X)
    if NJ * NJ < X:
        return False
    rhs = c['sV'] * SJ + c['sR'] * NJ + min(c['sA1'] + c['sB1'] * Sp[i], c['sA2'] + c['sB2'] * Sp[i]) + c['s1']
    return (lhs - t2.ke) * t2.G2 > rhs


def tangent2(par, tc, t2, d, rows, stats=None):
    """Mirror of `tang2B`: True iff the scalar test (any column) or the v2 test (y = LS or y = Yt) rejects the bin."""
    N, Yt, Jt, Rt, Bt = bin_data(par, tc, rows)
    Sq = [squ(n) for n in N]
    if any(Sq[i] * Sq[i] < N[i] for i in range(6)):
        return False
    Sp = [x + t2.eZ for x in Sq]
    for i in range(6):
        if scalar_test(t2, d, i, Yt, Jt, Sp):
            if stats is not None:
                stats['scalar'] = stats.get('scalar', 0) + 1
            return True
    y = ls_direction(t2, d, Yt, Jt, Bt)
    if y is not None and test_dir(t2, d, y, N, Yt, Jt, Rt, Bt, Sp):
        if stats is not None:
            stats['ls'] = stats.get('ls', 0) + 1
        return True
    if test_dir(t2, d, Yt, N, Yt, Jt, Rt, Bt, Sp):
        if stats is not None:
            stats['yc'] = stats.get('yc', 0) + 1
        return True
    return False


def run(par, tc, t2, W0, R5, leaf_cb=None, stats=None, only=None):
    """Traversal (mirror of the Lean `binT2`): direct test, then `tangent2`, then the 32 children."""
    import kbins as KB
    stats = stats if stats is not None else {}

    def add(a, v):
        return [x + y for x, y in zip(a, v)]

    def inc(key):
        stats[key] = stats.get(key, 0) + 1

    def binok(d, acc, ts):
        inc(('tested', d))
        if KB.reject(par, d, acc):
            inc(('rejected', d))
            return True
        inc(('tangent', d))
        rows = [W0] + [t[1] for t in ts]
        if tangent2(par, tc, t2, d, rows, stats):
            inc(('trej', d))
            return True
        if d == 0:
            inc(('survivor', 0))
            return leaf_cb(acc, ts) if leaf_cb else True
        ok = True
        for c1 in (ts[0][2], ts[0][3]):
            a1 = add(W0, c1[1])
            for c2 in (ts[1][2], ts[1][3]):
                a2 = add(a1, c2[1])
                for c3 in (ts[2][2], ts[2][3]):
                    a3 = add(a2, c3[1])
                    for c4 in (ts[3][2], ts[3][3]):
                        a4 = add(a3, c4[1])
                        for c5 in (ts[4][2], ts[4][3]):
                            ok = binok(d - 1, add(a4, c5[1]), (c1, c2, c3, c4, c5)) and ok
        return ok

    ok = True
    for b1, c1 in enumerate(R5[0]):
        if only is not None and b1 != only[0]:
            continue
        a1 = add(W0, c1[1])
        for b2, c2 in enumerate(R5[1]):
            if only is not None and b2 != only[1]:
                continue
            a2 = add(a1, c2[1])
            for c3 in R5[2]:
                a3 = add(a2, c3[1])
                for c4 in R5[3]:
                    a4 = add(a3, c4[1])
                    for c5 in R5[4]:
                        ok = binok(3, add(a4, c5[1]), (c1, c2, c3, c4, c5)) and ok
    return ok, stats
