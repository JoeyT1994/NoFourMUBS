"""Kernel C1 data for one seed ball (KERNEL_SEED.md section 3): an exact Python mirror of
`KernelAtlas/Seed/C1.lean` (every integer operation identical), float predictors, and the Lean data emitter.

The predictors (side angles and their derivatives, Y, the forced block X_p, A0, the arg branches, the windings) are
floats; the mirror decides with the same integers as the kernel whether a box passes.  Nothing here is trusted.

Horizontal gauge (SPEC §11, `"gauge": "hor"`): the ball stores `P = h(P_g)`, `U = h(T) M_θ`; the predictors use the
dephased `P_g = gauge(P)`, `U_g = gauge(U)`, and each box gets a row and column shift `sh` (`Seed/C1Hor.lean`): the
kernel checks `c1Box (shiftB B sh) D`, `sh` the grid rounding of minus the pattern part of the residual's affine model.

Usage (from the repository root):
  python3 kernel_atlas/generators/seed_c1.py BALLS.json[.gz] IDX [--m 2] [--emit DIR] [--boxes 0,5,..]
"""
import argparse, itertools, json, math, os, sys, time
from fractions import Fraction as Fr
import numpy as np

PP = 60
SC = 1 << PP
NT = 40
PI50 = Fr('3.14159265358979323846264338327950288419716939937510')
TWO_PI_Z = (2 * PI50 * SC).__floor__()          # twoPiZ in C1.lean (floor; |2pi - z/2^pp| <= 2/2^pp)
ONE = (SC, 0)
ZERO = (0, 0)

# ------------------------------------------------------------------------------------------- Poly.lean mirror
QPAIR = {5: (0, 0), 6: (0, 1), 7: (0, 2), 8: (0, 3), 9: (1, 1), 10: (1, 2), 11: (1, 3), 12: (2, 2), 13: (2, 3),
         14: (3, 3)}


def qidx(j, l):
    return 5 + [0, 4, 7, 9][j] + (l - j)


def pidx(m, n):
    if m == 0: return n
    if n == 0: return m
    if m <= 4 and n <= 4:
        j, l = sorted((m - 1, n - 1)); return qidx(j, l)
    return 15


PLIST = {k: [] for k in range(15)}
PHIGH = []
for _m in range(15):
    for _n in range(15):
        _k = pidx(_m, _n)
        (PLIST[_k] if _k < 15 else PHIGH).append((_m, _n))


def deg(m): return 0 if m == 0 else (1 if m <= 4 else 2)


def monoW(h, m):
    if m == 0: return 1
    if m <= 4: return h[m - 1]
    a, b = QPAIR[m]; return h[a] * h[b]


def cdivN(a, k): return (a + ((1 << k) - 1)) >> k          # a >= 0
def cdivD(x, d): return (x + (d - 1)) // d
def fdivZ(a, k): return a >> k                               # floor (Python >> on ints is floor)
def mb(z):
    x, y = abs(z[0]), abs(z[1])
    return max(x, y) + (min(x, y) + 1) // 2


class CT:
    __slots__ = ('c', 'rho')

    def __init__(self, c, rho):
        self.c = list(c) + [ZERO] * (15 - len(c)); self.rho = rho

    def cg(self, m): return self.c[m] if m < 15 else ZERO


def const(z): return CT([z], 0)


def termB(h, a, m): return cdivN(a * monoW(h, m), PP * deg(m))
def L1T(h, T): return sum(termB(h, mb(T.cg(j + 1)), j + 1) for j in range(4))
def L2T(h, T): return sum(termB(h, mb(T.cg(k + 5)), k + 5) for k in range(10))
def Lsum(h, T): return L1T(h, T) + L2T(h, T)
def bnd(h, T): return mb(T.cg(0)) + Lsum(h, T) + T.rho
def sB(h, T): return mb(T.cg(0)) + Lsum(h, T)
def rerr(h): return sum(termB(h, 2, m) for m in range(15))


def zadd(a, b): return (a[0] + b[0], a[1] + b[1])
def zmul(a, b): return (a[0] * b[0] - a[1] * b[1], a[0] * b[1] + a[1] * b[0])
def rnd2(w): return (fdivZ(w[0], PP), fdivZ(w[1], PP))
def rndk(k, w): return (fdivZ(w[0], k), fdivZ(w[1], k))


def add(A, B): return CT([zadd(A.cg(m), B.cg(m)) for m in range(15)], A.rho + B.rho)
def neg(A): return CT([(-A.cg(m)[0], -A.cg(m)[1]) for m in range(15)], A.rho)
def sub(A, B): return add(A, neg(B))
def conj(A): return CT([(A.cg(m)[0], -A.cg(m)[1]) for m in range(15)], A.rho)
def re(A): return CT([(A.cg(m)[0], 0) for m in range(15)], A.rho)
def im(A): return CT([(A.cg(m)[1], 0) for m in range(15)], A.rho)
def addRho(A, e): return CT(A.c, A.rho + e)
def mulI(A): return CT([(-A.cg(m)[1], A.cg(m)[0]) for m in range(15)], A.rho)


def lin(h, l):
    c = []
    for m in range(15):
        acc = (0, 0)
        for (w, T) in reversed(l): acc = zadd(zmul(w, T.cg(m)), acc)
        c.append(rnd2(acc))
    return CT(c, cdivN(sum(mb(w) * T.rho for (w, T) in l), PP) + rerr(h))


def smul(h, z, A):
    return CT([rnd2(zmul(z, A.cg(m))) for m in range(15)], cdivN(mb(z) * A.rho, PP) + rerr(h))


def mul(h, A, B):
    out = []
    for k in range(15):
        acc = (0, 0)
        for (m, n) in reversed(PLIST[k]):          # foldr order is irrelevant for exact sums
            acc = zadd(zmul(A.cg(m), B.cg(n)), acc)
        out.append(rnd2(acc))
    hi = cdivN(L1T(h, A) * L2T(h, B) + L2T(h, A) * L1T(h, B) + L2T(h, A) * L2T(h, B), PP)
    rho = hi + rerr(h) + cdivN(sB(h, A) * B.rho + A.rho * sB(h, B) + A.rho * B.rho, PP)
    return CT(out, rho)


# cisRound (KernelAtlas/Trig.lean)
def taylorCS(x, n):
    tr, ti, sr, si = Fr(1), Fr(0), Fr(0), Fr(0)
    for m in range(n):
        tr, ti, sr, si = -ti * x / (m + 1), tr * x / (m + 1), sr + tr, si + ti
    return sr, si


def rnd(q, p):
    v = q * (1 << p) + Fr(1, 2)
    return v.numerator // v.denominator


def cisRound(x, n, p):
    C, S = taylorCS(x, n)
    return (rnd(C, p), rnd(S, p))


def cisRem(x, n): return abs(x) ** n / math.factorial(n) * 2


def ratCeilN(q):
    c = -((-q.numerator) // q.denominator)
    return max(c, 0)


def ex0(A): return Fr(A.cg(0)[0], SC)
def expOK(A): return abs(ex0(A)) / (NT + 1) <= Fr(1, 2)
def expE(A): return cisRound(ex0(A), NT, PP)
def expEps(A): return ratCeilN((cisRem(ex0(A), NT) + Fr(1, SC)) * SC)
def L1r(h, A): return sum(termB(h, mb((A.cg(j + 1)[0], 0)), j + 1) for j in range(4))
def L2r(h, A): return sum(termB(h, mb((A.cg(k + 5)[0], 0)), k + 5) for k in range(10))


def expCoef(A, k):
    E = expE(A)
    if k == 0: return E
    if k <= 4: return rnd2(zmul(E, (0, A.cg(k)[0])))
    a, b = QPAIR[k]
    inner = (-(A.cg(a + 1)[0] * A.cg(b + 1)[0] * (1 if a == b else 2)), 2 * SC * A.cg(k)[0])
    return rndk(PP + (PP + 1), zmul(E, inner))


def expI(h, A):
    L1, L2, rho, eps = L1r(h, A), L2r(h, A), A.rho, expEps(A)
    D6 = 6 * (1 << (2 * PP))
    r = (rho + cdivN(L1 * (L2 + rho), PP) + cdivN((L2 + rho) ** 2, PP + 1) + ((L1 + L2 + rho) ** 3 + (D6 - 1)) // D6
         + cdivN(eps * ((1 << PP) + L1 + L2), PP) + cdivN(eps * L1 ** 2, 2 * PP + 1) + rerr(h))
    return CT([expCoef(A, k) for k in range(15)], r)


def argZ(a): return cisRound(-Fr(a, SC), NT, PP)
def argEps(a): return ratCeilN((cisRem(-Fr(a, SC), NT) + Fr(1, SC)) * SC)
def argV(h, a, D): return sub(smul(h, argZ(a), D), const(ONE))


def argT(h, a, D):
    v = argV(h, a, D); v2 = mul(h, v, v); ub = bnd(h, v); ez = argEps(a)
    c = [(v.cg(k)[1] - fdivZ(v2.cg(k)[1], 1) + (a if k == 0 else 0), 0) for k in range(15)]
    rho = (v.rho + cdivN(v2.rho, 1) + rerr(h) + cdivD(ub ** 3, 3 * SC * (SC - ub)) + cdivD(ez * SC, SC - ez))
    return CT(c, rho)


def argOK(h, a, D):
    return (2 * bnd(h, argV(h, a, D)) < SC and 2 * argEps(a) < SC and abs(-Fr(a, SC)) / (NT + 1) <= Fr(1, 2))


# ------------------------------------------------------------------------------------------- C1.lean mirror
def sumT(l):
    acc = const(ZERO)
    for T in reversed(l): acc = add(T, acc)
    return acc


def rz(x): return (x, 0)


IZ = (0, SC)


def thetaT(B, D, k):
    c0 = B['th0'][k] + fdivZ(sum(B['Mth'][4 * k + l] * D['wc'][l] for l in range(4)), PP)
    return CT([rz(c0)] + [rz(B['Mth'][4 * k + (m - 1)]) for m in range(1, 5)], 1)


def one3(h, p, q): return add(add(const(ONE), p), q)
def oneMix(h, p, q, r, s): return add(add(const(ONE), mul(h, p, conj(q))), mul(h, r, conj(s)))


def gramH(h, e): return [neg(one3(h, e[0], e[1])), neg(one3(h, e[2], e[3])), neg(oneMix(h, e[2], e[0], e[3], e[1]))]
def gramV(h, e): return [neg(one3(h, e[0], e[2])), neg(one3(h, e[1], e[3])), neg(oneMix(h, e[1], e[0], e[3], e[2]))]
def rowsT(h, phi): return [expI(h, phi[j]) for j in range(6)]


def resT(h, G, xy):
    return [sub(sumT([xy[0], xy[1], xy[2]]), G[0]), sub(sumT([xy[3], xy[4], xy[5]]), G[1]),
            sub(sumT([mul(h, xy[3], conj(xy[0])), mul(h, xy[4], conj(xy[1])), mul(h, xy[5], conj(xy[2]))]), G[2])]


def FT(h, G, xy):
    c = resT(h, G, xy)
    return [re(c[0]), re(c[1]), re(c[2]), im(c[0]), im(c[1]), im(c[2])]


def matT(h, Y, v):
    return [lin(h, [(rz(Y[6 * i + k]), v[k]) for k in range(6)]) for i in range(6)]


def ivc(h, T): return (T.cg(0), Lsum(h, T) + T.rho)
def ivm(a, b): return (rnd2(zmul(a[0], b[0])), cdivN(mb(a[0]) * b[1] + a[1] * mb(b[0]) + a[1] * b[1], PP) + 2)
def ivI(a): return ((-a[0][1], a[0][0]), a[1])
def ivNeg(a): return ((-a[0][0], -a[0][1]), a[1])
def ivConj(a): return ((a[0][0], -a[0][1]), a[1])
IVZ = ((0, 0), 0)


def jcI(g, k, m):
    if k == 0: return ivI(g[m]) if m < 3 else IVZ
    if k == 1: return IVZ if m < 3 else ivI(g[m])
    if m < 3: return ivNeg(ivI(ivm(g[m + 3], ivConj(g[m]))))
    return ivI(ivm(g[m], ivConj(g[m - 3])))


def jI(g, i, m):
    c = jcI(g, i, m) if i < 3 else jcI(g, i - 3, m)
    return (c[0][0] if i < 3 else c[0][1], c[1])


def qRowsI(Y, J):
    out = []
    for i in range(6):
        tot = 0
        for m in range(6):
            c = (SC * SC if i == m else 0) - sum(Y[6 * i + l] * J[l][m][0] for l in range(6))
            r = sum(abs(Y[6 * i + l]) * J[l][m][1] for l in range(6))
            tot += cdivN(abs(c) + r, PP)
        out.append(tot)
    return out


def sideK(h, G, phi, Y, rt):
    phr = [re(A) for A in phi]
    b = [bnd(h, T) for T in matT(h, Y, FT(h, G, rowsT(h, phr)))]
    g = [ivc(h, addRho(T, rt)) for T in rowsT(h, phr)]
    q = qRowsI(Y, [[jI(g, l, m) for m in range(6)] for l in range(6)])
    num = [b[i] * SC + q[i] * rt for i in range(6)]
    ok = all(num[i] < rt * SC for i in range(6)) and all(expOK(phr[i]) for i in range(6))
    return ok, [cdivN(x, PP) for x in num], b, q


def tubeT(phi, e): return [addRho(re(phi[j]), e[j]) for j in range(6)]
def tubeRows(h, phi, e): return [addRho(T, e[j]) for j, T in enumerate(rowsT(h, [re(A) for A in phi]))]


def psiT(h, xy):
    x = lambda j: xy[j]; y = lambda j: xy[j + 3]
    pr = lambda a, b: mul(h, x(a), y(b))
    perm = sumT([pr(0, 1), pr(0, 2), pr(1, 0), pr(1, 2), pr(2, 0), pr(2, 1)])
    det = sumT([pr(1, 2), neg(pr(2, 1)), neg(pr(0, 2)), pr(2, 0), pr(0, 1), neg(pr(1, 0))])
    p3 = mul(h, mul(h, mul(h, x(0), y(0)), mul(h, x(1), y(1))), mul(h, x(2), y(2)))
    return mul(h, mul(h, perm, mul(h, det, det)), conj(p3))


def ivAdd(a, b): return ((a[0][0] + b[0][0], a[0][1] + b[0][1]), a[1] + b[1])


def ivSum(l):
    acc = IVZ
    for x in reversed(l): acc = ivAdd(x, acc)
    return acc


def psiI(g):
    pr = lambda a, b: ivm(g[a], g[b + 3])
    perm = ivSum([pr(0, 1), pr(0, 2), pr(1, 0), pr(1, 2), pr(2, 0), pr(2, 1)])
    det = ivSum([pr(1, 2), ivNeg(pr(2, 1)), ivNeg(pr(0, 2)), pr(2, 0), pr(0, 1), ivNeg(pr(1, 0))])
    p3 = ivm(ivm(ivm(g[0], g[3]), ivm(g[1], g[4])), ivm(g[2], g[5]))
    return ivm(ivm(perm, ivm(det, det)), ivConj(p3))


def signIv(o, a): return a[1] < o * a[0][1]


def signAny(h, o, xy):
    return signIv(o, psiI([ivc(h, T) for T in xy])) or signOK(h, o, psiT(h, xy))


def signOK(h, o, T):
    t = im(T)
    return Lsum(h, t) + t.rho < o * t.cg(0)[0]


def ET(e): return [const(ONE)] * 4 + [e[0], e[1], const(ONE), e[2], e[3]]
def BT(xy): return [const(ONE)] * 3 + list(xy)


def CT3(xyV):
    V = BT(xyV)
    return [V[3 * (q % 3) + q // 3] for q in range(9)]


def isOne(T): return T.rho == 0 and all(T.cg(m) == (ONE if m == 0 else (0, 0)) for m in range(15))


def mulF(h, A, B):
    if isOne(A): return B
    if isOne(B): return A
    return mul(h, A, B)


def mulH(h, X, Y):
    return [sumT([mulF(h, X[3 * (q // 3) + k], conj(Y[3 * (q % 3) + k])) for k in range(3)]) for q in range(9)]


def neuT(h, A0, Bm):
    return [sub(const(ONE if q // 3 == q % 3 else ZERO),
                lin(h, [(A0[3 * (q // 3) + k], conj(Bm[3 * (q % 3) + k])) for k in range(3)])) for q in range(9)]


def forcedT(h, Xp, A0, E, Bm, C):
    CE = mulH(h, C, E); XB = mulH(h, Xp, Bm)
    R = [add(CE[q], XB[q]) for q in range(9)]
    Rb = [bnd(h, T) for T in R]
    X = neuT(h, A0, Bm)
    qr = [sum(bnd(h, X[3 * i + l]) for l in range(3)) for i in range(3)]
    q = max(qr + [0])
    a = [max([mb(A0[3 * l + j]) for l in range(3)] + [0]) for j in range(3)]
    if q >= SC: return False, None
    Nm = [mb(A0[qq]) + cdivD(q * a[qq % 3], SC - q) for qq in range(9)]
    dl = [cdivN(sum(Rb[3 * (qq // 3) + l] * Nm[3 * l + qq % 3] for l in range(3)), PP) for qq in range(9)]
    return True, [addRho(Xp[qq], dl[qq]) for qq in range(9)]


def QT(h, th, sh, sv, argD):
    out = []
    for q in range(36):
        j, k = divmod(q, 6)
        if j == 0 or k == 0: out.append(const(ZERO))
        elif j < 3 and k < 3: out.append(th[2 * (j - 1) + (k - 1)])
        elif j < 3: out.append(sh[3 * (j - 1) + (k - 3)])
        elif k < 3: out.append(sv[3 * (k - 1) + (j - 3)])
        else: out.append(argD[3 * (j - 3) + (k - 3)])
    return out


def resQ(h, B, D, Q):
    out = []
    for e in range(36):
        A = Q[e]
        c0 = B['P'][e] + fdivZ(sum(B['U'][4 * e + l] * D['wc'][l] for l in range(4)), PP) + D['wind'][e] * TWO_PI_Z
        r = A.rho + 1 + 2 * abs(D['wind'][e])
        c = [(A.cg(0)[0] - c0, 0)] + [(A.cg(m)[0] - B['U'][4 * e + (m - 1)], 0) for m in range(1, 5)] + \
            [(A.cg(m)[0], 0) for m in range(5, 15)]
        out.append(CT(c, r))
    return out


def isqrtUp(x):
    s = math.isqrt(x)
    return s if s * s >= x else s + 1


def boundN(h, res):
    """The n this box certifies (the least n for which boundOK holds), or None."""
    Hn = sum(cdivN(isqrtUp(sum(res[e].cg(k + 5)[0] ** 2 for e in range(36))) * monoW(h, k + 5), PP * 2)
             for k in range(10))
    rn = isqrtUp(sum(res[e].rho ** 2 for e in range(36)))
    vmax = 0
    for s in range(16):
        tot = 0
        for e in range(36):
            A = res[e]
            v = A.cg(0)[0] * SC + sum(A.cg(l + 1)[0] * (h[l] if (s >> l) & 1 else -h[l]) for l in range(4))
            tot += v * v
        vmax = max(vmax, tot)
    M = isqrtUp(vmax)                          # M * SC... (vertex values are at scale 2^(2pp))
    Mg = -((-M) // SC)                         # grid units, rounded up
    return Hn + rn + Mg, dict(Hn=Hn, rho=rn, vert=Mg)


def boundOK(h, n, res):
    Hn = sum(cdivN(isqrtUp(sum(res[e].cg(k + 5)[0] ** 2 for e in range(36))) * monoW(h, k + 5), PP * 2)
             for k in range(10))
    rn = isqrtUp(sum(res[e].rho ** 2 for e in range(36)))
    if Hn + rn > n: return False
    M = n - Hn - rn
    for s in range(16):
        tot = 0
        for e in range(36):
            A = res[e]
            v = A.cg(0)[0] * SC + sum(A.cg(l + 1)[0] * (h[l] if (s >> l) & 1 else -h[l]) for l in range(4))
            tot += v * v
        if tot > (M * SC) ** 2: return False
    return True


def shA(sh, e, m):
    g = lambda i: sh[i] if i < len(sh) else 0
    return g(5 * (e // 6) + m) + g(30 + 5 * (e % 6) + m)


def shiftB(B, sh):
    """Mirror of `shiftB`: the ball with `P - S_0` and `U - S_l`."""
    B2 = dict(B)
    B2['P'] = [B['P'][e] - shA(sh, e, 0) for e in range(36)]
    B2['U'] = [B['U'][q] - shA(sh, q // 4, q % 4 + 1) for q in range(144)]
    return B2


def pattern_ab(C):
    """Row and column parts (a_i, b_j) of C - h(C): rowmean_i - allmean and colmean_j (floats)."""
    M = np.array(C, float).reshape(6, 6)
    allm = M.mean()
    return M.mean(axis=1) - allm, M.mean(axis=0)


def horShift(res0, D):
    """The shift `sh` (60 integers) cancelling the pattern part of the residual's affine model."""
    alpha = np.zeros((6, 5)); beta = np.zeros((6, 5))
    for m in range(1, 5):
        a, b = pattern_ab([res0[e].cg(m)[0] for e in range(36)])
        alpha[:, m] = -np.round(a); beta[:, m] = -np.round(b)
    a, b = pattern_ab([res0[e].cg(0)[0] for e in range(36)])
    wc = np.array(D['wc'], float) / SC
    alpha[:, 0] = -a - alpha[:, 1:] @ wc
    beta[:, 0] = -b - beta[:, 1:] @ wc
    sh = [int(round(x)) for x in alpha.reshape(30)] + [int(round(x)) for x in beta.reshape(30)]
    return sh


def c1Box(B, D, n=None, verbose=False):
    """Mirror of c1Box.  Returns (ok, info)."""
    h = D['hb']
    th = [thetaT(B, D, k) for k in range(4)]
    info = {}
    if not all(expOK(t) for t in th): return False, 'expOK theta'
    e = [expI(h, t) for t in th]
    GH, GV = gramH(h, e), gramV(h, e)
    okH, eH, bH, qH = sideK(h, GH, D['phH'], D['YH'], D['tubeH'])
    okV, eV, bV, qV = sideK(h, GV, D['phV'], D['YV'], D['tubeV'])
    info.update(bH=max(bH) / SC, qH=max(qH) / SC, bV=max(bV) / SC, qV=max(qV) / SC)
    if not (okH and okV): return False, ('kraw', info)
    sH, sV = tubeT(D['phH'], eH), tubeT(D['phV'], eV)
    xyH, xyV = tubeRows(h, D['phH'], eH), tubeRows(h, D['phV'], eV)
    if not signAny(h, B['o'], xyH): return False, ('signB', info)
    if not signAny(h, -B['o'], xyV): return False, ('signV', info)
    Bm, C = BT(xyH), CT3(xyV)
    okD, Dm = forcedT(h, D['Xp'], D['A0'], ET(e), Bm, C)
    if not okD: return False, ('neumann', info)
    if not all(argOK(h, D['argA'][q], Dm[q]) for q in range(9)): return False, ('arg', info)
    argD = [argT(h, D['argA'][q], Dm[q]) for q in range(9)]
    Qm = QT(h, th, sH, sV, argD)
    if B.get('hor'):
        sh = horShift(resQ(h, B, D, Qm), D)
        B = shiftB(B, sh)
        info['sh'] = sh
    res = resQ(h, B, D, Qm)
    nb, parts = boundN(h, res)
    info.update(n_box=nb / SC, **{k: v / SC for k, v in parts.items() if k != 'sh'},
                rhoD=max(T.rho for T in Dm) / SC, rhoArg=max(T.rho for T in argD) / SC,
                rhoSide=max(T.rho for T in sH + sV) / SC)
    if n is None: return True, (nb, info)
    return boundOK(h, n, res), (nb, info)


# ------------------------------------------------------------------------------------------- float predictors
def gz(x): return int(round(x * SC))


def seedE(th):
    a = np.exp(1j * np.asarray(th))
    return a


def grams(th):
    a, b, c, d = np.exp(1j * np.asarray(th, float))
    sh = -(1 + a + b); th_ = -(1 + c + d); rh = -(1 + c * np.conj(a) + d * np.conj(b))
    sv = -(1 + a + c); tv = -(1 + b + d); rv = -(1 + b * np.conj(a) + d * np.conj(c))
    return (sh, th_, rh), (sv, tv, rv)


def dgrams(th):
    """d(s,t,r)/dtheta (3 x 4 complex) for both sides."""
    a, b, c, d = np.exp(1j * np.asarray(th, float))
    i = 1j
    Dh = np.array([[-i * a, -i * b, 0, 0], [0, 0, -i * c, -i * d],
                   [i * c * np.conj(a), i * d * np.conj(b), -i * c * np.conj(a), -i * d * np.conj(b)]])
    Dv = np.array([[-i * a, 0, -i * c, 0], [0, -i * b, 0, -i * d],
                   [i * b * np.conj(a), -i * b * np.conj(a), i * d * np.conj(c), -i * d * np.conj(c)]])
    return Dh, Dv


def Ff(phi, G):
    x = np.exp(1j * phi[:3]); y = np.exp(1j * phi[3:])
    v = np.array([x.sum() - G[0], y.sum() - G[1], (y * np.conj(x)).sum() - G[2]])
    return np.concatenate([v.real, v.imag])


def Jf(phi):
    x = np.exp(1j * phi[:3]); y = np.exp(1j * phi[3:])
    Jc = np.zeros((3, 6), complex)
    Jc[0, :3] = 1j * x; Jc[1, 3:] = 1j * y
    Jc[2, :3] = -1j * y * np.conj(x); Jc[2, 3:] = 1j * y * np.conj(x)
    return np.vstack([Jc.real, Jc.imag])


def newton(phi, G, it=30):
    phi = phi.copy()
    for _ in range(it):
        f = Ff(phi, G)
        if np.abs(f).max() < 1e-15: break
        phi = phi - np.linalg.solve(Jf(phi), f)
    return phi, np.abs(Ff(phi, G)).max() < 1e-12


def dphi(phi, th, Mth, which):
    Dh, Dv = dgrams(th)
    Dg = Dh if which == 'h' else Dv
    Dgr = np.vstack([Dg.real, Dg.imag])                     # d Gvec / d theta, 6 x 4
    return np.linalg.solve(Jf(phi), Dgr) @ Mth              # F(phi) = Gvec  =>  J dphi = dGvec


def Df(th, phh, phv):
    a, b, c, d = np.exp(1j * np.asarray(th, float))
    E = np.array([[1, 1, 1], [1, a, b], [1, c, d]])
    B = np.vstack([np.ones(3), np.exp(1j * phh[:3]), np.exp(1j * phh[3:])])
    V = np.vstack([np.ones(3), np.exp(1j * phv[:3]), np.exp(1j * phv[3:])])
    C = V.T
    return -(C @ np.conj(E).T) @ np.linalg.inv(np.conj(B).T), B, C, E


MONO2 = [(0, 0), (0, 1), (0, 2), (0, 3), (1, 1), (1, 2), (1, 3), (2, 2), (2, 3), (3, 3)]


class Ball:
    def __init__(self, d):
        fh = lambda x: float.fromhex(x) if isinstance(x, str) else float(x)
        self.theta0 = np.array([fh(x) for x in d['theta0']])
        self.Mth = np.array([fh(x) for x in d['Mth']]).reshape(4, 4)
        self.r = fh(d['r']); self.o = int(d['o'])
        self.P = np.array([fh(x) for x in d['P']]); self.U = np.array([fh(x) for x in d['U']]).reshape(36, 4)
        self.n_cert = fh(d['n'])
        self.hor = d.get('gauge') == 'hor'
        # the dephased centre and frame (predictors, windings): cross ratios, exact for either gauge
        gauge = lambda X: (X - X[:, :1] - X[:1, :] + X[:1, :1])
        self.Pg = gauge(self.P.reshape(6, 6)).reshape(36)
        self.Ug = np.stack([gauge(self.U[:, l].reshape(6, 6)).reshape(36) for l in range(4)], axis=1)
        # grid data
        red = lambda x: x - 2 * math.pi * round(x / (2 * math.pi))
        self.th0z = [gz(red(x)) for x in self.theta0]; self.Mz = [gz(x) for x in self.Mth.reshape(16)]
        self.Pz = [gz(x) for x in self.P]; self.Uz = [gz(x) for x in self.U.reshape(144)]
        # the matrices exactly as the kernel sees them
        self.thq = np.array([z / SC for z in self.th0z]); self.Mq = np.array(self.Mz, float).reshape(4, 4) / SC
        Pm = self.Pg.reshape(6, 6)
        phh = np.array([Pm[1, 3], Pm[1, 4], Pm[1, 5], Pm[2, 3], Pm[2, 4], Pm[2, 5]])
        phv = np.array([Pm[3, 1], Pm[4, 1], Pm[5, 1], Pm[3, 2], Pm[4, 2], Pm[5, 2]])
        Gh, Gv = grams(self.thq)
        self.phh0, ok1 = newton(phh, Gh); self.phv0, ok2 = newton(phv, Gv)
        assert ok1 and ok2, 'centre sides'

    def sides_at(self, th):
        """Continue the sides from theta0 to th."""
        phh, phv = self.phh0.copy(), self.phv0.copy()
        m = max(1, int(math.ceil(np.linalg.norm(th - self.thq) / 0.004)))
        for s in range(1, m + 1):
            t = self.thq + (th - self.thq) * (s / m)
            Gh, Gv = grams(t)
            phh, o1 = newton(phh, Gh); phv, o2 = newton(phv, Gv)
            assert o1 and o2
        return phh, phv

    def ball_dict(self, n):
        return dict(th0=self.th0z, Mth=self.Mz, P=self.Pz, U=self.Uz, n=n, o=self.o, hor=self.hor)


def quad_coefs(fval, eps):
    """Second-order Taylor coefficients (order of MONO2) of f at 0 from central differences, f: R^4 -> R^k."""
    f0 = fval(np.zeros(4))
    g = []; q = []
    fp = {}; fm = {}
    for j in range(4):
        e = np.zeros(4); e[j] = eps
        fp[j] = fval(e); fm[j] = fval(-e)
        g.append((fp[j] - fm[j]) / (2 * eps))
    for (j, l) in MONO2:
        if j == l: q.append((fp[j] - 2 * f0 + fm[j]) / (2 * eps ** 2))
        else:
            e1 = np.zeros(4); e1[j] = eps; e2 = np.zeros(4); e2[l] = eps
            q.append((fval(e1 + e2) - fval(e1 - e2) - fval(-e1 + e2) + fval(-e1 - e2)) / (4 * eps ** 2))
    return f0, np.array(g), np.array(q)


def ct_real(c0, g, q, rho=0):
    return CT([(gz(c0), 0)] + [(gz(x), 0) for x in g] + [(gz(x), 0) for x in q], rho)


def ct_cplx(c0, g, q, rho=0):
    z = lambda w: (gz(w.real), gz(w.imag))
    return CT([z(c0)] + [z(x) for x in g] + [z(x) for x in q], rho)


def box_data(ball, wc, h, wind_ref=True):
    """Predictors for the box w = wc + u, |u_l| <= h_l (floats)."""
    wcz = [gz(x) for x in wc]; hz = [int(math.ceil(x * SC)) for x in h]
    wcq = np.array(wcz, float) / SC
    thc = ball.thq + ball.Mq @ wcq
    phh, phv = ball.sides_at(thc)

    def sides_u(u):
        th = thc + ball.Mq @ u
        Gh, Gv = grams(th)
        a, _ = newton(phh, Gh); b, _ = newton(phv, Gv)
        return a, b, th

    epsu = 1e-3 * max(h)
    fH = lambda u: sides_u(u)[0]
    fV = lambda u: sides_u(u)[1]
    h0, hg, hq = quad_coefs(fH, epsu)
    v0, vg, vq = quad_coefs(fV, epsu)
    red = lambda x: x - 2 * math.pi * np.round(x / (2 * math.pi))
    h0 = red(h0); v0 = red(v0)
    phH = [ct_real(h0[j], hg[:, j], hq[:, j]) for j in range(6)]
    phV = [ct_real(v0[j], vg[:, j], vq[:, j]) for j in range(6)]
    YH = np.linalg.inv(Jf(h0)); YV = np.linalg.inv(Jf(v0))

    def Dval(u):
        a, b, th = sides_u(u)
        return Df(th, a, b)[0].reshape(9)

    D0, Dg, Dq = quad_coefs(Dval, epsu)
    Xp = [ct_cplx(D0[q], Dg[:, q], Dq[:, q]) for q in range(9)]
    _, Bm, _, _ = Df(thc, h0, v0)
    A0 = np.linalg.inv(np.conj(Bm).T).reshape(9)
    argA = []
    for q in range(9):
        argA.append(gz(np.angle(D0[q])))
    # windings: Q centre vs P + U wc
    Qc = np.zeros(36)
    for qq in range(36):
        j, k = divmod(qq, 6)
        if j == 0 or k == 0: Qc[qq] = 0
        elif j < 3 and k < 3: Qc[qq] = thc[2 * (j - 1) + (k - 1)]
        elif j < 3: Qc[qq] = h0[3 * (j - 1) + (k - 3)]
        elif k < 3: Qc[qq] = v0[3 * (k - 1) + (j - 3)]
        else: Qc[qq] = argA[3 * (j - 3) + (k - 3)] / SC
    ref = ball.Pg + ball.Ug @ wcq
    wind = [int(round((Qc[qq] - ref[qq]) / (2 * math.pi))) for qq in range(36)]
    D = dict(wc=wcz, hb=hz, phH=phH, phV=phV, YH=[gz(x) for x in YH.reshape(36)], YV=[gz(x) for x in YV.reshape(36)],
             tubeH=0, tubeV=0, Xp=Xp, A0=[(gz(z.real), gz(z.imag)) for z in A0], argA=argA, wind=wind)
    return D


def tune_tubes(D):
    """Choose the tube radii (as the kernel will check them)."""
    h = D['hb']
    for side in ('H', 'V'):
        phi = D['ph' + side]; Y = D['Y' + side]
        rt = 1 << 10
        for _ in range(40):
            ok, e, b, q = sideK(h, None if False else D['_G' + side], phi, Y, rt)
            if ok: break
            bm = max(b); qm = max(q)
            if qm >= SC: raise RuntimeError('q >= 1')
            rt = int(max(bm * SC // max(SC - qm, 1) * 3 // 2, rt * 2))
        else:
            raise RuntimeError('tube')
        D['tube' + side] = rt
    return D


def prepare(ball, wc, h):
    D = box_data(ball, wc, h)
    hz = D['hb']
    B0 = ball.ball_dict(0)
    th = [thetaT(B0, D, k) for k in range(4)]
    e = [expI(hz, t) for t in th]
    D['_GH'], D['_GV'] = gramH(hz, e), gramV(hz, e)
    tune_tubes(D)
    del D['_GH'], D['_GV']
    return D


def ball_boxes(r, m):
    """Dyadic boxes (2^m per axis) of [-r, r]^4 meeting the ball (exact test on the grid)."""
    k = 1 << m
    rz = gz(r)
    out = []
    for idx in itertools.product(range(k), repeat=4):
        cz = [(-rz * k + (2 * i + 1) * rz) for i in idx]       # centre * k
        dmin = sum(max(abs(c) - rz, 0) ** 2 for c in cz)        # (min |w|)^2 * k^2
        if dmin <= (rz * k) ** 2:
            out.append(idx)
    return out


# ------------------------------------------------------------------------------------------- Lean emitter
def lean_int_list(l): return '[' + ', '.join(str(int(x)) for x in l) + ']'
def lean_nat_list(l): return '[' + ', '.join(str(int(x)) for x in l) + ']'
def lean_z2(z): return '(%d, %d)' % z
def lean_ct(T): return '⟨' + ', '.join(lean_z2(z) for z in T.c) + ', %d⟩' % T.rho
def lean_ct_list(l): return '[' + ', '.join(lean_ct(T) for T in l) + ']'


def lean_box(name, D):
    return ('noncomputable def %s : BoxD where\n  wc := %s\n  hb := %s\n  phH := %s\n  phV := %s\n  YH := %s\n'
            '  YV := %s\n  tubeH := %d\n  tubeV := %d\n  Xp := %s\n  A0 := %s\n  argA := %s\n  wind := %s\n') % (
        name, lean_int_list(D['wc']), lean_nat_list(D['hb']), lean_ct_list(D['phH']), lean_ct_list(D['phV']),
        lean_int_list(D['YH']), lean_int_list(D['YV']), D['tubeH'], D['tubeV'], lean_ct_list(D['Xp']),
        '[' + ', '.join(lean_z2(z) for z in D['A0']) + ']', lean_int_list(D['argA']), lean_int_list(D['wind']))


def lean_ball(name, B):
    return ('noncomputable def %s : BallD where\n  th0 := %s\n  Mth := %s\n  P := %s\n  U := %s\n  n := %d\n  o := %d\n') % (
        name, lean_int_list(B['th0']), lean_int_list(B['Mth']), lean_int_list(B['P']), lean_int_list(B['U']),
        B['n'], B['o'])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('balls'); ap.add_argument('idx', type=int)
    ap.add_argument('--m', type=int, default=2)
    ap.add_argument('--boxes', default='')
    ap.add_argument('--emit', default='')
    ap.add_argument('--n', type=float, default=0)
    a = ap.parse_args()
    op = __import__('gzip').open if a.balls.endswith('.gz') else open
    d = json.load(op(a.balls, 'rt'))['seeds'][a.idx]
    ball = Ball(d)
    keep = ball_boxes(ball.r, a.m)
    k = 1 << a.m
    sel = range(len(keep)) if not a.boxes else [int(x) for x in a.boxes.split(',')]
    print('ball %d: r=%.4g, %d boxes (m=%d), n(cert)=%.4g' % (a.idx, ball.r, len(keep), a.m, ball.n_cert))
    Ds = []; worst = 0
    t0 = time.time()
    for bi in sel:
        idx = keep[bi]
        wc = np.array([ball.r * (2 * i + 1 - k) / k for i in idx])
        h = np.full(4, ball.r / k)
        D = prepare(ball, wc, h)
        ok, info = c1Box(ball.ball_dict(0), D)
        if ok and ball.hor: D['_sh'] = info[1].pop('sh')
        print('box %d %s: ok=%s %s' % (bi, idx, ok, info if not ok else {kk: '%.3g' % v for kk, v in info[1].items()}))
        if ok: worst = max(worst, info[0])
        Ds.append((bi, D))
    print('n needed = %.6g (cert n %.6g), %.1f s' % (worst / SC, ball.n_cert, time.time() - t0))
    if a.emit:
        n = gz(a.n) if a.n else worst
        B = ball.ball_dict(n)
        os.makedirs(a.emit, exist_ok=True)
        with open(os.path.join(a.emit, 'C1Data.lean'), 'w') as f:
            f.write('import KernelAtlas.Seed.C1\n\nnamespace NoFourMUBs.KernelAtlas.Seed.Test\n\nopen NoFourMUBs.KernelAtlas.Seed\n\n')
            f.write(lean_ball('ball', B) + '\n')
            for bi, D in Ds:
                f.write(lean_box('box%d' % bi, D) + '\n')
                if ball.hor:
                    f.write('def sh%d : List ℤ := %s\n\n' % (bi, lean_int_list(D['_sh'])))
            f.write('end NoFourMUBs.KernelAtlas.Seed.Test\n')
        with open(os.path.join(a.emit, 'C1Check.lean'), 'w') as f:
            f.write('import KernelAtlas.Seed.Test.C1Data\nimport KernelAtlas.Seed.C1Hor\n\n'
                    'namespace NoFourMUBs.KernelAtlas.Seed.Test\n\nopen NoFourMUBs.KernelAtlas.Seed\n\n')
            for bi, D in Ds:
                if ball.hor:
                    f.write('theorem box%d_ok : c1Box (shiftB ball sh%d) box%d = true := by decide +kernel\n\n'
                            % (bi, bi, bi))
                else:
                    f.write('theorem box%d_ok : c1Box ball box%d = true := by decide +kernel\n\n' % (bi, bi))
            f.write('end NoFourMUBs.KernelAtlas.Seed.Test\n')
        for bi, D in Ds:
            print('mirror at n:', bi, c1Box(B, D, n)[0])


if __name__ == '__main__':
    main()
