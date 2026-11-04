"""Exact model of the kernel joint edge test (Stage C (6.23), `StageC.edgeOExcl_of_joint` / `edgeUExcl_of_joint`).

For a label pair (A, B) the label-centre data are the integer node values of the six rows (as for a bin), and the
pair phases are the table values q_j = EU[(wA_j - wB_j) mod 192] (scale Z = 2^p, error epsU each).  Multipliers
y0, y1 (6 integers each) and ye (2 for O, 1 for U), |.| <= 511, come from a hint (a least-squares direction,
untrusted).  The integer quantities are exact; the final comparison is one exact rational inequality: the real
inequality of the lemma multiplied by 24 pi Z^2, with every real constant replaced by its rational upper bound and
every approximation error added (see `joint_rhs`).
"""
from fractions import Fraction as Fr


import kbins as KB
import ktangent2 as KT2
from ktangent2l import isqU


def label_rows(par, W0, EU, EP, w):
    """The six rows (offset BOFF) of the label centre (0, w1..w5)."""
    return [W0] + [KB.node_vals(EU, EP[m], w[m - 1], par.p) for m in range(1, 6)]


def label_data(par, tc, W0, EU, EP, w):
    return KT2.bin_data(par, tc, label_rows(par, W0, EU, EP, w))


def pair_q(EU, wa, wb):
    """q_j = EU[(wa_j - wb_j) mod 192], j = 0..5 (wa_0 = wb_0 = 0)."""
    a, b = [0] + list(wa), [0] + list(wb)
    return [EU[(a[j] - b[j]) % 192] for j in range(6)]


def per_label(par, t2, data, y):
    """Integer quantities of one label for multiplier y: GJ (6), Bk (4), NJ, Gb, SY2, SY1, SYinf, Y1, Yinf, CtPart."""
    N, Yt, Jt, Rt, Bt = data
    ym = [abs(v) for v in y]
    GJ = [sum(y[i] * Jt[i][j] for i in range(6)) for j in range(6)]
    GR = [sum(y[i] * Rt[i][j] for i in range(6)) for j in range(6)]
    Bk = [sum(y[i] * Bt[i][k] for i in range(6)) for k in range(4)]
    NX = sum(ym[i] ** 2 * sum(Jt[i][j] ** 2 for j in range(6)) for i in range(6))
    GX = max(GR[j] ** 2 + GJ[j] ** 2 for j in range(6))
    Sq = [isqU(n) for n in N]
    Sp = [x + t2.eZ for x in Sq]
    SX = sum(ym[i] ** 2 * Sp[i] ** 2 for i in range(6))
    return dict(GJ=GJ, Bk=Bk, NJ=isqU(NX), NX=NX, Gb=isqU(GX), GX=GX, SY2=isqU(SX), SX=SX,
                SY1=sum(ym[i] * Sp[i] for i in range(6)), SYinf=max(ym[i] * Sp[i] for i in range(6)),
                Y1=sum(ym), Yinf=max(ym), C=sum(y[i] * Yt[i] for i in range(6)), Sq=Sq, N=N)


def consts(par, tb_epsU, tp, tc):
    """Rational constants (upper bounds) shared by all pairs."""
    E, e1 = par.E, par.eps1
    return dict(pi=par.pihi, s6=KB.S6HI, i6=KB.I6HI, K=par.Kbar, r=par.rbar, rF=par.rFbar, rH=tp.rHbar, n=tp.nbar,
                tcol=tp.tcol, DT=tc.DT, Z=par.Z, eW=(6 + E) * e1 + E, eN=E * (12 + E), eU=tb_epsU)


def eball(k, L, s):
    """24 pi Z^2 * Eball(y) for label data L and radius s (rational), errors included."""
    pi, Z, eW = k['pi'], k['Z'], k['eW']
    Ks_rF, Ks_r = (k['K'] * s + k['rF']) ** 2, (k['K'] * s + k['r']) ** 2
    t = 4 * pi * k['n'] * L['NJ'] + 4 * k['s6'] * pi * k['n'] * eW * Z * Z * L['Y1']
    t += 24 * pi ** 2 * Z * Z * min(L['Yinf'] * Ks_rF, L['Y1'] * Ks_r)
    t += 4 * pi ** 2 * s * s * L['Gb'] + 4 * pi ** 2 * s * s * Z * Z * eW * L['Y1']
    t += 8 * pi ** 2 * Z * s * min(L['SY2'] * k['rF'], L['SY1'] * k['r'])
    t += 4 * pi ** 2 * Z * min(L['SYinf'] * k['rF'] ** 2, L['SY1'] * k['r'] ** 2)
    return t


def joint_check(k, typ, LA, LB, sa, sb, q, ye):
    """True iff the joint test (type 'O' or 'U') excludes the edge, for the multipliers already in LA, LB and ye."""
    pi, Z, eW, eN, eU, s6 = k['pi'], k['Z'], k['eW'], k['eN'], k['eU'], k['s6']
    Q = (sum(z[0] for z in q), sum(z[1] for z in q))
    if typ == 'O':
        ye1, ye2 = ye
        D = [6 * Z * (ye2 * q[j][0] - ye1 * q[j][1]) for j in range(6)]       # 6Z^2 * (D^T ye)_j, integer
        yeL1 = abs(ye1) + abs(ye2)
        dE = yeL1 * eU                                                     # error of (D^T ye)_j
        lhs_int = abs(LA['C'] + LB['C'] + 12 * Z * (ye1 * Q[0] + ye2 * Q[1]))
        lhs_err = (LA['Y1'] + LB['Y1']) * eN * Z * Z + 72 * Z * Z * eU * yeL1
        yN = isqU(ye1 * ye1 + ye2 * ye2)
        if yN * yN < ye1 * ye1 + ye2 * ye2:
            return False
        EE = 24 * pi ** 2 * Z * Z * (sa + sb) ** 2 * yN
    else:
        (ye1,) = ye
        D = [-ye1 * (Q[0] * q[j][1] - Q[1] * q[j][0]) for j in range(6)]   # -ye Im(conj(Q) q_j) = 6Z^2 ye DU_j
        eD = (12 + 6 * eU) * eU
        dE = abs(ye1) * eD / 6
        Q2 = Q[0] ** 2 + Q[1] ** 2
        lhs_int = abs(LA['C'] + LB['C'] + ye1 * (Q2 - 6 * Z * Z))
        lhs_err = (LA['Y1'] + LB['Y1']) * eN * Z * Z + abs(ye1) * Z * Z * 6 * eU * (12 + 6 * eU)
        QN = isqU(Q2)
        if QN * QN < Q2:
            return False
        EE = 24 * pi ** 2 * Z * Z * (sa + sb) ** 2 * (1 + (Fr(QN, Z) + 6 * eU) / 6) * abs(ye1)
    VA = [-LA['GJ'][j] + D[j] for j in range(6)]
    VB = [-LB['GJ'][j] - D[j] for j in range(6)]
    XA, XB = sum(v * v for v in VA), sum(v * v for v in VB)
    VNA, VNB = isqU(XA), isqU(XB)
    UXab = sum((LA['Bk'][kk] + LB['Bk'][kk]) ** 2 for kk in range(4))
    UB = isqU(UXab)
    for L in (LA, LB):
        if L['NX'] > L['NJ'] ** 2 or L['GX'] > L['Gb'] ** 2 or L['SX'] > L['SY2'] ** 2:
            return False
        if any(L['N'][i] > L['Sq'][i] ** 2 for i in range(6)):
            return False
    if XA > VNA * VNA or XB > VNB * VNB or UXab > UB * UB:
        return False
    rhs = (4 * pi * sa * VNA + 4 * s6 * pi * sa * Z * Z * (eW * LA['Y1'] + 6 * dE) + eball(k, LA, sa)
           + 4 * pi * sb * VNB + 4 * s6 * pi * sb * Z * Z * (eW * LB['Y1'] + 6 * dE) + eball(k, LB, sb)
           + 4 * pi * k['rH'] * Fr(UB, k['DT']) + 8 * pi * k['rH'] * k['tcol'] * eW * Z * Z * (LA['Y1'] + LB['Y1'])
           + EE)
    return rhs < lhs_int - lhs_err


# ---------------------------------------------------------------- multipliers (untrusted, floats)
class LSMult:
    """Least-squares multipliers of stagec.joint_filter for label pairs, rounded to |.| <= 511 (untrusted hints).

    Plain Python floats in a fixed order (no numpy linear algebra, no complex type, no `sum`, `abs` of complex or `**`),
    so the hints are the same bits on every platform: each step is one correctly rounded IEEE operation.  The inputs
    (EXP192 and eP from Arb, the rational frame T, the label radii) are already platform independent."""

    def __init__(self, C, s, eP, T, rH):
        import stagec as SC
        self.k, self.rH, self.s = T.shape[1], float(rH), [float(x) for x in s]
        self.twopi, self.sq6 = SC.TWO_PI, SC.SQ6
        eP = [[(float(eP[j, i].real), float(eP[j, i].imag)) for i in range(6)] for j in range(6)]
        T = [[float(T[e, kk]) for kk in range(self.k)] for e in range(36)]
        K = SC._toint(C)
        self.eU, self.J, self.c, self.B = [], [], [], []
        for w in K:
            eu = [(1.0, 0.0)] + [(float(SC.EXP192[int(x) % SC.DEN].real), float(SC.EXP192[int(x) % SC.DEN].imag))
                                 for x in w]
            S = []
            for i in range(6):
                re = im = 0.0
                for j in range(6):
                    re += eu[j][0] * eP[j][i][0] - eu[j][1] * eP[j][i][1]
                    im += eu[j][0] * eP[j][i][1] + eu[j][1] * eP[j][i][0]
                S.append((re / self.sq6, im / self.sq6))
            J = [[0.0] * 6 for _ in range(6)]                       # J[j][i] = -Im(conj(S_i) q_ji)
            for j in range(6):
                for i in range(6):
                    qr = (eu[j][0] * eP[j][i][0] - eu[j][1] * eP[j][i][1]) / self.sq6
                    qi = (eu[j][0] * eP[j][i][1] + eu[j][1] * eP[j][i][0]) / self.sq6
                    J[j][i] = -(S[i][0] * qi - S[i][1] * qr)
            c = [(S[i][0] * S[i][0] + S[i][1] * S[i][1] - 1.0) / (2 * self.twopi) for i in range(6)]
            B = [[0.0] * self.k for _ in range(6)]                  # B[i][kk] = sum_j J[j][i] T[6j + i][kk]
            for i in range(6):
                for kk in range(self.k):
                    acc = 0.0
                    for j in range(6):
                        acc += J[j][i] * T[6 * j + i][kk]
                    B[i][kk] = acc
            self.eU.append(eu); self.J.append(J); self.c.append(c); self.B.append(B)

    def __call__(self, a, b, typ):
        import math
        ea, eb, sa, sb, k = self.eU[a], self.eU[b], self.s[a], self.s[b], self.k
        Q = [(ea[j][0] * eb[j][0] + ea[j][1] * eb[j][1], ea[j][1] * eb[j][0] - ea[j][0] * eb[j][1]) for j in range(6)]
        sr = si = 0.0
        for qr, qi in Q:
            sr += qr; si += qi
        aS2 = sr * sr + si * si
        re = sa + sb
        DO = [[-qi for qr, qi in Q], [qr for qr, qi in Q]]
        if typ == 'O':
            D, qE, EE = DO, [sr / self.twopi, si / self.twopi], math.pi * (re * re)
        else:
            D = [[(sr * DO[0][j] + si * DO[1][j]) / 6 for j in range(6)]]
            qE, EE = [(aS2 / 6 - 1.0) / (2 * self.twopi)], math.pi * (re * re) * (1.0 + math.sqrt(aS2) / 6)
        l = len(D); nc = 12 + l
        A = [[0.0] * nc for _ in range(12 + k + l)]
        for r in range(6):
            for cc in range(6):
                A[r][cc] = sa * self.J[a][r][cc]
                A[6 + r][6 + cc] = sb * self.J[b][r][cc]
            for m in range(l):
                A[r][12 + m] = sa * D[m][r]
                A[6 + r][12 + m] = -sb * D[m][r]
        for kk in range(k):
            for cc in range(6):
                A[12 + kk][cc] = self.rH * self.B[a][cc][kk]
                A[12 + kk][6 + cc] = self.rH * self.B[b][cc][kk]
        for m in range(l):
            A[12 + k + m][12 + m] = EE
        G = [[0.0] * nc for _ in range(nc)]
        for u in range(nc):
            for v in range(nc):
                acc = 0.0
                for r in range(len(A)):
                    acc += A[r][u] * A[r][v]
                G[u][v] = acc + (1e-12 if u == v else 0.0)
        z = self.c[a] + self.c[b] + qE
        # Gaussian elimination with partial pivoting (first maximal pivot)
        M = [G[r][:] + [z[r]] for r in range(nc)]
        for col in range(nc):
            piv = col
            for r in range(col + 1, nc):
                if math.fabs(M[r][col]) > math.fabs(M[piv][col]):
                    piv = r
            M[col], M[piv] = M[piv], M[col]
            for r in range(col + 1, nc):
                f = M[r][col] / M[col][col]
                for cc in range(col, nc + 1):
                    M[r][cc] = M[r][cc] - f * M[col][cc]
        x = [0.0] * nc
        for r in range(nc - 1, -1, -1):
            acc = M[r][nc]
            for cc in range(r + 1, nc):
                acc = acc - M[r][cc] * x[cc]
            x[r] = acc / M[r][r]
        m = 0.0
        for v in x:
            m = max(m, math.fabs(v))
        w = [round(511 * v / m) for v in x]
        return w[:6], w[6:12], w[12:]

