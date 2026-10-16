"""Exact model of the kernel joint edge test (Stage C (6.23), `StageC.edgeOExcl_of_joint` / `edgeUExcl_of_joint`).

For a label pair (A, B) the label-centre data are the integer node values of the six rows (as for a bin), and the
pair phases are the table values q_j = EU[(wA_j - wB_j) mod 192] (scale Z = 2^p, error epsU each).  Multipliers
y0, y1 (6 integers each) and ye (2 for O, 1 for U), |.| <= 511, come from a hint (a least-squares direction,
untrusted).  The integer quantities are exact; the final comparison is one exact rational inequality: the real
inequality of the lemma multiplied by 24 pi Z^2, with every real constant replaced by its rational upper bound and
every approximation error added (see `joint_rhs`).
"""
from fractions import Fraction as Fr

import numpy as np

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
def ls_mult(C, s, a, b, typ, P, K, rH, eP, T):
    """Least-squares multipliers of stagec.joint_filter for the pair (a, b), rounded to |.| <= 511."""
    import stagec as SC
    import math
    k = T.shape[1]
    eU = SC.cis_table(np.concatenate([np.zeros((len(C), 1), int), SC._toint(C)], axis=1))
    S = eU @ eP / SC.SQ6
    q = eU[:, :, None] * eP[None, :, :] / SC.SQ6
    J = -(np.conj(S)[:, None, :] * q).imag
    c = (np.abs(S) ** 2 - 1) / (2 * SC.TWO_PI)
    B = np.einsum('nji,jik->nik', J, T.reshape(6, 6, k))
    Qv = eU[a] * eU[b].conj(); Ssum = Qv.sum(); aS = abs(Ssum); re = s[a] + s[b]
    DO = np.stack([-Qv.imag, Qv.real], 0)
    if typ == 'O':
        D = DO; qE = np.array([Ssum.real, Ssum.imag]) / SC.TWO_PI; EE = math.pi * re ** 2
    else:
        D = ((Ssum.real * DO[0] + Ssum.imag * DO[1]) / 6)[None, :]
        qE = np.array([(aS ** 2 / 6 - 1) / (2 * SC.TWO_PI)]); EE = math.pi * re ** 2 * (1 + aS / 6)
    l = D.shape[0]
    A = np.zeros((12 + k + l, 12 + l))
    A[0:6, 0:6] = s[a] * J[a]; A[0:6, 12:] = s[a] * D.T
    A[6:12, 6:12] = s[b] * J[b]; A[6:12, 12:] = -s[b] * D.T
    A[12:12 + k, 0:6] = rH * B[a].T; A[12:12 + k, 6:12] = rH * B[b].T
    A[12 + k:, 12:] = EE * np.eye(l)
    G = A.T @ A + 1e-12 * np.eye(12 + l)
    z = np.linalg.solve(G, np.concatenate([c[a], c[b], qE]))
    m = np.abs(z).max()
    w = np.round(511 * z / m).astype(int)
    return [int(v) for v in w[:6]], [int(v) for v in w[6:12]], [int(v) for v in w[12:]]
