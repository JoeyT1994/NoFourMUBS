"""Kernel C1e data for the edge ball (X-ball): an exact Python mirror of `KernelAtlas/Edge/C1e.lean` (every integer
operation identical), float predictors, and the Lean data emitter.

The chart is `F6-012` (SPEC §10): p = (u1, u2, u3, y) = M w, seed theta = (pi/3 (1, 2, 2) + u, theta4), the
horizontal side (unknowns theta4, phi_0..5) solves the Gram equations of G_h(theta) and Im Psi + y/2 = 0, the
vertical side (theta4', phi'_0..5) those of G_v(theta) and Im Psi - y/2 = 0 (E's corner order).  Every float here is
only a predictor; the mirror decides with the kernel's integers whether a box passes.

Usage (from the repository root):
  python3 kernel_atlas/generators/edge_c1e.py [--r 0.115] [--rho 1/4] [--k 16] [--boxes i,j,..] [--emit DIR]
"""
import argparse, itertools, math, os, sys, time
from fractions import Fraction as Fr
from pathlib import Path
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
from seed_c1 import (PP, SC, NT, ONE, ZERO, CT, const, Lsum, bnd, rerr, zadd, zmul, rnd2, add, neg, sub, conj, re, im,
                     addRho, mulI, lin, smul, mul, expOK, expI, argOK, argT, sumT, rz, gramH, gramV, rowsT, FT, ivc, ivm,
                     ivI, ivNeg, ivConj, IVZ, ivAdd, ivSum, jcI, psiT, ET, BT, CT3, forcedT, QT, boundOK, boundN, cdivN,
                     fdivZ, mb, gz, quad_coefs, ct_real, ct_cplx, lean_int_list, lean_nat_list, lean_z2, lean_ct,
                     lean_ct_list)

PI50 = Fr('3.14159265358979323846264338327950288419716939937510')
PI3Z = 1207336576346187140                       # round(pi/3 2^60) (C1e.lean `pi3Z`)
assert abs(PI50 / 3 * SC - PI3Z) < Fr(1, 2)
CTH = [1, 2, 2]
RX = Fr(1, 4)


def f6k(e): return ((e // 6) * (e % 6)) % 6


PA = [f6k(6 * (3 + q // 3) + 3 + q % 3) * PI3Z for q in range(9)]


# ------------------------------------------------------------------------------------------- C1e.lean mirror
def aT(B, D, k):
    c0 = CTH[k] * PI3Z + fdivZ(sum(B['Mth'][4 * k + l] * D['wc'][l] for l in range(4)), PP)
    return CT([rz(c0)] + [rz(B['Mth'][4 * k + (m - 1)]) for m in range(1, 5)], abs(CTH[k]) + 1)


def yT(B, D):
    c0 = fdivZ(sum(B['Mth'][12 + l] * D['wc'][l] for l in range(4)), PP)
    return CT([rz(c0)] + [rz(B['Mth'][12 + (m - 1)]) for m in range(1, 5)], 1)


def matT7(h, Y, v):
    return [lin(h, [(rz(Y[7 * i + k]), v[k]) for k in range(7)]) for i in range(7)]


def halfZ(v): return (-(1 << (PP - 1)), 0) if v else (1 << (PP - 1), 0)


def FE(h, v, e, y, xy):
    G = gramV(h, e) if v else gramH(h, e)
    return FT(h, G, xy) + [add(im(psiT(h, xy)), smul(h, halfZ(v), y))]


def dG4I(v, g3, g1, g2, k):
    if k == 0: return IVZ
    if k == 1: return ivI(g3)
    return ivI(ivm(g3, ivConj(g2))) if v else ivI(ivm(g3, ivConj(g1)))


def jGI(v, g, g3, g1, g2, i, m):
    c = lambda k, m: dG4I(v, g3, g1, g2, k) if m == 0 else jcI(g, k, m - 1)
    x = c(i, m) if i < 3 else c(i - 3, m)
    return (x[0][0] if i < 3 else x[0][1], x[1])


def dpsiT(h, g):
    pr = lambda a, b: mul(h, g[a], g[b])
    p = sumT([pr(0, 4), pr(0, 5), pr(1, 3), pr(1, 5), pr(2, 3), pr(2, 4)])
    hs = sumT([pr(1, 5), neg(pr(2, 4)), neg(pr(0, 5)), pr(2, 3), pr(0, 4), neg(pr(1, 3))])
    c = conj(mul(h, mul(h, mul(h, g[0], g[3]), mul(h, g[1], g[4])), mul(h, g[2], g[5])))
    hhc = mul(h, mul(h, hs, hs), c); phc = mul(h, mul(h, add(p, p), hs), c); base = mul(h, p, hhc)
    Pm = [mul(h, g[0], add(g[4], g[5])), mul(h, g[1], add(g[3], g[5])), mul(h, g[2], add(g[3], g[4])),
          mul(h, g[3], add(g[1], g[2])), mul(h, g[4], add(g[0], g[2])), mul(h, g[5], add(g[0], g[1]))]
    Dm = [mul(h, g[0], sub(g[4], g[5])), mul(h, g[1], sub(g[5], g[3])), mul(h, g[2], sub(g[3], g[4])),
          mul(h, g[3], sub(g[2], g[1])), mul(h, g[4], sub(g[0], g[2])), mul(h, g[5], sub(g[1], g[0]))]
    return [mulI(sub(add(mul(h, Pm[m], hhc), mul(h, phc, Dm[m])), base)) for m in range(6)]


def jLT(dps, m): return const(ZERO) if m == 0 else im(dps[m - 1])


def qRowsH(h, Y, JG, JL):
    out = []
    for i in range(7):
        tot = 0
        for m in range(7):
            c0 = fdivZ((SC * SC if i == m else 0) - sum(Y[7 * i + l] * JG[l][m][0] for l in range(6)), PP)
            T = sub(const(rz(c0)), smul(h, rz(Y[7 * i + 6]), JL[m]))
            tot += bnd(h, T) + 1 + cdivN(sum(abs(Y[7 * i + l]) * JG[l][m][1] for l in range(6)), PP)
        out.append(tot)
    return out


def sideE(h, v, e012, y, ph, Y, rt, ec=None):
    """Mirror of sideE; returns (ok, e (computed radii), b, q).  With ec=None the radius check is skipped."""
    t = re(ph[0])
    e3 = expI(h, t)
    phr = [re(ph[j + 1]) for j in range(6)]
    xy = rowsT(h, phr)
    b = [bnd(h, T) for T in matT7(h, Y, FE(h, v, e012 + [e3], y, xy))]
    g = [addRho(T, rt) for T in xy]
    gi_ = [ivc(h, T) for T in g]
    g3, g1, g2 = ivc(h, addRho(e3, rt)), ivc(h, e012[1]), ivc(h, e012[2])
    JG = [[jGI(v, gi_, g3, g1, g2, l, m) for m in range(7)] for l in range(6)]
    dps = dpsiT(h, g)
    q = qRowsH(h, Y, JG, [jLT(dps, m) for m in range(7)])
    num = [b[i] * SC + q[i] * rt for i in range(7)]
    e = [cdivN(x, PP) for x in num]
    ok = all(num[i] < rt * SC for i in range(7)) and expOK(t) and all(expOK(x) for x in phr)
    if ec is not None: ok = ok and all(e[i] <= ec[i] for i in range(7))
    return ok, e, b, q


def tubeE(ph, e): return [addRho(re(ph[j]), e[j]) for j in range(7)]


def rowsE(h, ph, e):
    xy = rowsT(h, [re(ph[j + 1]) for j in range(6)])
    return [addRho(xy[j], e[j + 1]) for j in range(6)]


def dRT(h, a, b, c, d):
    one = const(ONE)
    s = neg(add(add(one, a), b))
    t = neg(add(add(one, c), d))
    r = neg(add(add(one, mul(h, c, conj(a))), mul(h, d, conj(b))))
    dt = neg(mulI(d))
    dr = neg(mulI(mul(h, d, conj(b))))
    X = mul(h, s, conj(s)); Yv = mul(h, t, conj(t)); Z = mul(h, r, conj(r))
    dY = add(mul(h, conj(t), dt), mul(h, t, conj(dt)))
    dZ = add(mul(h, conj(r), dr), mul(h, r, conj(dr)))
    p = add(add(X, Yv), Z); dp = add(dY, dZ)
    srt = mul(h, mul(h, s, r), conj(t)); J = add(srt, conj(srt))
    dsrt = add(mul(h, mul(h, s, dr), conj(t)), mul(h, mul(h, s, r), conj(dt))); dJ = add(dsrt, conj(dsrt))
    XY = mul(h, X, Yv)
    W = sub(add(add(XY, mul(h, X, Z)), mul(h, Yv, Z)), mul(h, XY, Z))
    dW = sub(add(add(add(mul(h, X, dY), mul(h, X, dZ)), mul(h, dY, Z)), mul(h, Yv, dZ)),
             mul(h, X, add(mul(h, dY, Z), mul(h, Yv, dZ))))
    c3 = const((3 * SC, 0))
    g = add(sub(const((27 * SC, 0)), mul(h, c3, p)), J); dg = sub(dJ, mul(h, c3, dp))
    eta = add(sub(const((9 * SC, 0)), p), J); deta = sub(dJ, dp)
    p9 = sub(p, const((9 * SC, 0))); p15 = sub(p, const((15 * SC, 0))); p18 = sub(p, const((18 * SC, 0)))
    chi = add(sub(W, mul(h, p9, p18)), mul(h, p15, J))
    dchi = add(add(sub(sub(dW, mul(h, dp, p18)), mul(h, p9, dp)), mul(h, dp, J)), mul(h, p15, dJ))
    gg = mul(h, g, g)
    return sub(add(mul(h, const((8 * SC, 0)), mul(h, mul(h, g, dg), eta)), mul(h, const((4 * SC, 0)), mul(h, gg, deta))),
               mul(h, const((2 * SC, 0)), mul(h, chi, dchi)))


def posOK(h, T):
    t = re(T)
    return Lsum(h, t) + t.rho < t.cg(0)[0]


def difF6(Q, e): return sub(Q[e], CT([rz(f6k(e) * PI3Z)], f6k(e)))


def zsm(n, A): return CT([(n * A.cg(m)[0], n * A.cg(m)[1]) for m in range(15)], abs(n) * A.rho)


def hor36(Y):
    R = [sumT([Y[6 * a + b] for b in range(6)]) for a in range(6)]
    C = [sumT([Y[6 * a + b] for a in range(6)]) for b in range(6)]
    T = sumT(R)
    return [add(sub(sub(zsm(36, Y[e]), zsm(6, R[e // 6])), zsm(6, C[e % 6])), T) for e in range(36)]


def argWin(h, a, T): return abs(T.cg(0)[0] - a) + Lsum(h, T) + T.rho + 4 < 3 * PI3Z


def core(B, D):
    """Mirror of Edge.coreOK, qModels and kModels; returns (ok, qm, km, info)."""
    h = D['hb']
    a = [aT(B, D, k) for k in range(3)]
    if not all(expOK(t) for t in a): return False, None, None, 'expOK a'
    e012 = [expI(h, t) for t in a]
    y = yT(B, D)
    okH, eH, bH, qH = sideE(h, False, e012, y, D['phH'], D['YH'], D['rhoH'], D['eH'])
    okV, eV, bV, qV = sideE(h, True, e012, y, D['phV'], D['YV'], D['rhoV'], D['eV'])
    info = dict(bH=max(bH) / SC, qH=max(qH) / SC, bV=max(bV) / SC, qV=max(qV) / SC, eH=max(eH) / SC, eV=max(eV) / SC)
    if not (okH and okV): return False, None, None, ('kraw', info)
    xH, xV = tubeE(D['phH'], D['eH']), tubeE(D['phV'], D['eV'])
    e3 = addRho(expI(h, re(D['phH'][0])), D['eH'][0])
    xyH, xyV = rowsE(h, D['phH'], D['eH']), rowsE(h, D['phV'], D['eV'])
    S = addRho(xH[0], bnd(h, sub(xH[0], xV[0])))
    if not expOK(S): return False, None, None, ('expOK S', info)
    dR = dRT(h, e012[0], e012[1], e012[2], expI(h, S))
    info['dR'] = (re(dR).cg(0)[0] / SC, (Lsum(h, re(dR)) + dR.rho) / SC)
    if not posOK(h, dR): return False, None, None, ('dR4', info)
    e = e012 + [e3]
    okD, Dm = forcedT(h, D['Xp'], D['A0'], ET(e), BT(xyH), CT3(xyV))
    if not okD: return False, None, None, ('neumann', info)
    if not all(argOK(h, B['Pa'][q], Dm[q]) for q in range(9)): return False, None, None, ('arg', info)
    argD = [argT(h, B['Pa'][q], Dm[q]) for q in range(9)]
    if not all(argWin(h, B['Pa'][q], argD[q]) for q in range(9)): return False, None, None, ('argWin', info)
    th = a + [xH[0]]
    Q = QT(h, th, [xH[j + 1] for j in range(6)], [xV[j + 1] for j in range(6)], argD)
    E, Bm, C = ET(e), BT(xyH), CT3(xyV)
    km = []
    for q in range(36):
        j, k = divmod(q, 6)
        if j < 3 and k < 3: km.append(E[3 * j + k])
        elif j < 3: km.append(Bm[3 * j + k - 3])
        elif k < 3: km.append(C[3 * (j - 3) + k])
        else: km.append(Dm[3 * (j - 3) + k - 3])
    info.update(rhoD=max(T.rho for T in Dm) / SC, rhoArg=max(T.rho for T in argD) / SC,
                rhoSide=max(T.rho for T in xH + xV) / SC)
    return True, Q, km, info


def c1eBox(B, D, verbose=False):
    """Mirror of c1eBox. Returns (ok, info)."""
    ok, Q, _, info = core(B, D)
    if not ok: return False, info
    h = D['hb']
    res = hor36([difF6(Q, e) for e in range(36)])
    nb, parts = boundN(h, res)
    info.update(nX_box=nb / SC / 36, **{k: v / SC / 36 for k, v in parts.items()})
    return boundOK(h, B['nX'], res), (nb, info)


# ------------------------------------------------------------------------------------------- float predictors
TH0 = np.array([1, 2, 2, 4]) * math.pi / 3
PH0 = np.array([3, 4, 5, 0, 2, 4]) * math.pi / 3
PERM_PAIRS = [(0, 1), (0, 2), (1, 0), (1, 2), (2, 0), (2, 1)]


def psi_f(x, y):
    pr = lambda a, b: x[a] * y[b]
    perm = sum(pr(a, b) for a, b in PERM_PAIRS)
    det = pr(1, 2) - pr(2, 1) - pr(0, 2) + pr(2, 0) + pr(0, 1) - pr(1, 0)
    return perm * det * det * np.conj(x[0] * y[0] * x[1] * y[1] * x[2] * y[2])


def gram_f(v, rho):
    a, b, c, d = rho
    if v: return -(1 + a + c), -(1 + b + d), -(1 + b * np.conj(a) + d * np.conj(c))
    return -(1 + a + b), -(1 + c + d), -(1 + c * np.conj(a) + d * np.conj(b))


def F_f(v, aa, y, xi):
    """edgeF (floats): aa = (a0, a1, a2), xi = (theta4, phi_0..5)."""
    rho = np.exp(1j * np.array([aa[0], aa[1], aa[2], xi[0]]))
    s, t, r = gram_f(v, rho)
    x = np.exp(1j * xi[1:4]); yy = np.exp(1j * xi[4:7])
    g = np.array([x.sum() - s, yy.sum() - t, (yy * np.conj(x)).sum() - r])
    return np.concatenate([g.real, g.imag, [psi_f(x, yy).imag + (-y if v else y) / 2]])


def J_f(v, aa, y, xi, eps=1e-7):
    J = np.zeros((7, 7))
    for k in range(7):
        e = np.zeros(7); e[k] = eps
        J[:, k] = (F_f(v, aa, y, xi + e) - F_f(v, aa, y, xi - e)) / (2 * eps)
    return J


def newton7(v, aa, y, xi, it=40):
    xi = xi.copy()
    for _ in range(it):
        f = F_f(v, aa, y, xi)
        if np.abs(f).max() < 1e-14: break
        xi = xi - np.linalg.solve(J_f(v, aa, y, xi), f)
    return xi, np.abs(F_f(v, aa, y, xi)).max() < 1e-11


class XBall:
    """The X-ball: M = diag(1, 1, 1, 24) W^{-1/2} (return W's tangent metric), radius r, k boxes per axis."""

    def __init__(self, r=0.115, k=16, margin=Fr(1, 16), rho=RX):
        if not math.isfinite(r) or r <= 0:
            raise ValueError("the tangent radius must be finite and positive")
        rho = Fr(rho)
        if rho <= 0 or margin < 0:
            raise ValueError("rho must be positive and margin nonnegative")
        self.nX = math.floor(36 * rho * SC)
        Wm = np.array([[1, -.5, -.5, 0], [-.5, 1.75, .25, 0], [-.5, .25, 1.75, 0], [0, 0, 0, 1.]])
        ev, V = np.linalg.eigh(Wm)
        M = np.diag([1, 1, 1, 24.]) @ (V @ np.diag(ev ** -0.5) @ V.T)
        self.Mz = [gz(x) for x in M.reshape(16)]
        self.Mq = np.array(self.Mz, float).reshape(4, 4) / SC
        self.k = [k] * 4 if isinstance(k, int) else list(k); self.margin = margin
        if len(self.k) != 4 or any(not isinstance(ka, int) or ka <= 0 for ka in self.k):
            raise ValueError("k must contain four positive integers")
        # the kernel radius: a multiple of 2^20 grid units per box
        unit = (1 << 20) * math.lcm(*self.k)
        self.rz = (gz(r) // unit) * unit
        if self.rz <= 0:
            raise ValueError("the tangent radius rounds to zero on the kernel grid")
        self.r = self.rz / SC
        self.xi0 = np.concatenate([[TH0[3]], PH0])

    def ball_dict(self):
        return dict(Mth=self.Mz, Pa=PA, nX=self.nX)

    def p_of(self, w): return self.Mq @ w

    def solve_at(self, w):
        """Both sides at w, by continuation from w = 0 (exact zero there)."""
        p = self.p_of(np.asarray(w, float))
        m = max(1, int(math.ceil(np.abs(p).max() / 0.05)))
        xh = self.xi0.copy(); xv = self.xi0.copy()
        for s in range(1, m + 1):
            q = p * s / m
            aa = TH0[:3] + q[:3]
            xh, o1 = newton7(False, aa, q[3], xh); xv, o2 = newton7(True, aa, q[3], xv)
            assert o1 and o2, 'continuation failed'
        return xh, xv

    def box_geom(self, idx):
        """Exact grid centre and (enlarged) half-width of box idx."""
        hz = [self.rz // ka for ka in self.k]
        wcz = [(-self.rz + (2 * i + 1) * hz[a]) for a, i in enumerate(idx)]
        hb = [int(x * (1 + self.margin)) for x in hz]
        return wcz, hb, hz

    def boxes(self):
        """Grid boxes meeting the open ball (exact)."""
        hz = [self.rz // ka for ka in self.k]
        out = []
        for idx in itertools.product(*[range(ka) for ka in self.k]):
            cz = [(-self.rz + (2 * i + 1) * hz[a]) for a, i in enumerate(idx)]
            dmin = sum(max(abs(c) - hz[a], 0) ** 2 for a, c in enumerate(cz))
            if dmin < self.rz ** 2: out.append(idx)
        return out


def Dfun(aa, t, xh, xv):
    a, b, c, d = np.exp(1j * np.array([aa[0], aa[1], aa[2], t]))
    E = np.array([[1, 1, 1], [1, a, b], [1, c, d]])
    Bm = np.vstack([np.ones(3), np.exp(1j * xh[1:4]), np.exp(1j * xh[4:7])])
    V = np.vstack([np.ones(3), np.exp(1j * xv[1:4]), np.exp(1j * xv[4:7])])
    C = V.T
    return -(C @ np.conj(E).T) @ np.linalg.inv(np.conj(Bm).T), Bm


def box_data(xb, idx):
    wcz, hb, _ = xb.box_geom(idx)
    return box_data_at(xb, wcz, hb)


def box_data_at(xb, wcz, hb):
    """Predictors on a specified exact grid box, including transfer-only boxes."""
    if len(wcz) != 4 or len(hb) != 4 or any(h <= 0 for h in hb):
        raise ValueError("a box needs four coordinates and four positive half-widths")
    wcq = np.array(wcz, float) / SC
    xh0, xv0 = xb.solve_at(wcq)

    def sides_u(u):
        p = xb.Mq @ (wcq + u)
        aa = TH0[:3] + p[:3]
        a, o1 = newton7(False, aa, p[3], xh0); b, o2 = newton7(True, aa, p[3], xv0)
        assert o1 and o2
        return a, b, aa

    epsu = 1e-3 * min(hb) / SC
    h0, hg, hq = quad_coefs(lambda u: sides_u(u)[0], epsu)
    v0, vg, vq = quad_coefs(lambda u: sides_u(u)[1], epsu)
    phH = [ct_real(h0[j], hg[:, j], hq[:, j]) for j in range(7)]
    phV = [ct_real(v0[j], vg[:, j], vq[:, j]) for j in range(7)]
    pc = xb.Mq @ wcq; aac = TH0[:3] + pc[:3]
    YH = np.linalg.inv(J_f(False, aac, pc[3], h0)); YV = np.linalg.inv(J_f(True, aac, pc[3], v0))

    def Dval(u):
        a, b, aa = sides_u(u)
        return Dfun(aa, a[0], a, b)[0].reshape(9)

    D0, Dg, Dq = quad_coefs(Dval, epsu)
    Xp = [ct_cplx(D0[q], Dg[:, q], Dq[:, q]) for q in range(9)]
    _, Bm = Dfun(aac, h0[0], h0, v0)
    A0 = np.linalg.inv(np.conj(Bm).T).reshape(9)
    return dict(wc=wcz, hb=hb, phH=phH, phV=phV, YH=[gz(x) for x in YH.reshape(49)], YV=[gz(x) for x in YV.reshape(49)],
                rhoH=0, rhoV=0, eH=[0] * 7, eV=[0] * 7, Xp=Xp, A0=[(gz(z.real), gz(z.imag)) for z in A0])


def tune(B, D):
    """Choose the Krawczyk radii and the claimed enclosure radii as the kernel will check them."""
    h = D['hb']
    a = [aT(B, D, k) for k in range(3)]
    e012 = [expI(h, t) for t in a]
    y = yT(B, D)
    for side, v in (('H', False), ('V', True)):
        good = []
        for x in np.geomspace(1e-4, 1e-2, 30):
            rt = int(x * SC)
            ok, e, bb, q = sideE(h, v, e012, y, D['ph' + side], D['Y' + side], rt)
            if ok: good.append(rt)
            elif good: break
        if not good: raise RuntimeError('Krawczyk (side %s)' % side)
        # 1.6 x the smallest passing radius: room for the neighbours' enclosures (tube consistency)
        rt = max(r for r in good if r <= 1.6 * good[0])
        ok, e, bb, q = sideE(h, v, e012, y, D['ph' + side], D['Y' + side], rt)
        D['rho' + side] = rt; D['e' + side] = e
    return D


# ------------------------------------------------------------------------------------------- Lean emitter
def lean_eball(name, B):
    return 'def %s : EBallD where\n  Mth := %s\n  Pa := %s\n  nX := %d\n' % (
        name, lean_int_list(B['Mth']), lean_int_list(B['Pa']), B['nX'])


def lean_ebox(name, D):
    return ('def %s : EBoxD where\n  wc := %s\n  hb := %s\n  phH := %s\n  phV := %s\n  YH := %s\n  YV := %s\n'
            '  rhoH := %d\n  rhoV := %d\n  eH := %s\n  eV := %s\n  Xp := %s\n  A0 := %s\n') % (
        name, lean_int_list(D['wc']), lean_nat_list(D['hb']), lean_ct_list(D['phH']), lean_ct_list(D['phV']),
        lean_int_list(D['YH']), lean_int_list(D['YV']), D['rhoH'], D['rhoV'], lean_nat_list(D['eH']),
        lean_nat_list(D['eV']), lean_ct_list(D['Xp']), '[' + ', '.join(lean_z2(z) for z in D['A0']) + ']')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--r', type=float, default=0.115)
    ap.add_argument('--rho', type=Fr, default=RX, help='X image radius as an exact fraction (default 1/4)')
    ap.add_argument('--k', default='16', help='boxes per axis: one int or four, comma separated')
    ap.add_argument('--boxes', default='')
    ap.add_argument('--sample', type=int, default=0, help='check this many random boxes')
    ap.add_argument('--emit', default='')
    a = ap.parse_args()
    kk = [int(x) for x in a.k.split(',')]
    xb = XBall(a.r, kk[0] if len(kk) == 1 else kk, rho=a.rho)
    keep = xb.boxes()
    print('X-ball: r = %.6f (kernel), k = %s, %d boxes' % (xb.r, xb.k, len(keep)))
    if a.boxes: sel = [int(x) for x in a.boxes.split(',')]
    elif a.sample: sel = sorted(np.random.default_rng(0).choice(len(keep), a.sample, replace=False).tolist())
    else: sel = range(len(keep))
    sel = list(sel)
    if not sel or len(set(sel)) != len(sel) or any(i < 0 or i >= len(keep) for i in sel):
        ap.error("select distinct valid box indices")
    B = xb.ball_dict()
    out = []
    t0 = time.time()
    for bi in sel:
        D = tune(B, box_data(xb, keep[bi]))
        ok, info = c1eBox(B, D)
        print('box %d %s: ok=%s %s' % (bi, keep[bi], ok, info if not ok else {kk: ('%.3g' % v if isinstance(v, float) else v)
                                                                          for kk, v in info[1].items()}))
        if not ok:
            raise RuntimeError("box %d failed the exact mirror: %s" % (bi, info))
        out.append((bi, D, ok))
    print('%.1f s' % (time.time() - t0))
    if a.emit:
        destination = Path(a.emit).resolve()
        lean_root = Path(HERE).parent / 'lean'
        edge_root = lean_root / 'KernelAtlas' / 'Edge'
        if not destination.is_relative_to(edge_root):
            ap.error("the output directory must be under kernel_atlas/lean/KernelAtlas/Edge")
        module = '.'.join(destination.relative_to(lean_root).parts)
        namespace = 'NoFourMUBs.' + module
        os.makedirs(destination, exist_ok=True)
        with open(os.path.join(a.emit, 'C1eData.lean'), 'w') as f:
            f.write('import KernelAtlas.Edge.C1e\n\nnamespace ' + namespace + '\n\n'
                    'open NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.Edge\n\n')
            f.write(lean_eball('ball', B) + '\n')
            for bi, D, ok in out: f.write(lean_ebox('box%d' % bi, D) + '\n')
            f.write('end ' + namespace + '\n')
        with open(os.path.join(a.emit, 'C1eCheck.lean'), 'w') as f:
            f.write('import ' + module + '.C1eData\n\nnamespace ' + namespace + '\n\n'
                    'open NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.Edge\n\n')
            for bi, D, ok in out:
                if ok: f.write('theorem box%d_ok : c1eBox ball box%d = true := by decide +kernel\n\n' % (bi, bi))
            f.write('end ' + namespace + '\n')


if __name__ == '__main__':
    main()
