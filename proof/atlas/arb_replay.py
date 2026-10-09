"""Arb replay of a random sample of Stage-C rejections, for all four test families (RIGOUR.md, section 4).

For a ball Record at (R, label radius), using exactly the Stage C parameters of BallRecord.stage_c (per-column r = r_col,
Frobenius r_F, tangent rH, normal n, frame T), sample:
  (a) bins rejected by the single-vector tests (6.7)/(6.12) at resolution 12,
  (b) bins rejected by the tangent test (6.11) at resolution 12 (they passed (a)),
  (c) label pairs whose O or U edge was removed by the direct tests (6.16), (6.20), (6.21),
  (d) label pairs whose edge was removed by the joint test (6.23),
and re-evaluate the same inequality in Arb (120 bits) WITHOUT the float margin; the float-proposed directions y are used
as exact rationals (the inequalities hold for every real y).  Exits nonzero if any sampled rejection is not confirmed.
Usage: python3 arb_replay.py CENTRE.json [R] [nsample] [label_radius]
"""
import json, math, sys
import numpy as np
from flint import arb, acb, ctx
ctx.prec = 120
import stagec as SC
from ballrecord import BallRecord

PI = arb.pi(); S6 = arb(6).sqrt()


def ea(x):
    return (acb(0, 2) * PI * x).exp()


def amax(xs):
    m = xs[0]
    for x in xs[1:]:
        m = x if float(x.upper()) > float(m.upper()) else m
    return arb(m.upper())                                        # an upper bound of the maximum


def amin2(x, y):
    return x if float(x.upper()) <= float(y.upper()) else y     # either is a valid upper bound of min


def norm2(v):
    """Upper bound of the Euclidean norm (norms only ever appear on the bound side of a rejection)."""
    return arb(sum((t * t for t in v), arb(0)).upper()).sqrt()


class Centre:
    """Arb quantities at one vector-ball / bin centre u (cycles, multiples of 1/192)."""
    def __init__(self, u, Pa):
        uu = [arb(0)] + [arb(int(round(float(t) * SC.DEN))) / SC.DEN for t in u]
        self.q = [[ea(uu[j] - Pa[j][i]) / S6 for i in range(6)] for j in range(6)]
        self.S = [sum((self.q[j][i] for j in range(6)), acb(0)) for i in range(6)]
        self.aS = [abs(s) for s in self.S]
        self.J = [[-(self.S[i].conjugate() * self.q[j][i]).imag for i in range(6)] for j in range(6)]   # J[j][i]
        self.c = [(x * x - 1) / (4 * PI) for x in self.aS]
        self.uu = uu

    def B(self, T):
        k = T.shape[1]
        return [[sum((self.J[j][i] * arb(float(T[6 * j + i, kk])) for j in range(6)), arb(0)) for kk in range(k)] for i in range(6)]

    def terms(self, y, r, rF, nN, K, X, I=None):
        ya = [arb(float(t)) for t in y]
        Sy = [abs(ya[i] * self.S[i]) for i in range(6)]
        Ny = arb(sum((ya[i] ** 2 * self.J[j][i] ** 2 for i in range(6) for j in range(6)), arb(0)).upper()).sqrt()
        Gy = amax([abs(sum((ya[i] * self.S[i].conjugate() * self.q[j][i] for i in range(6)), acb(0))) for j in range(6)])
        yinf = amax([abs(t) for t in ya]); y1 = sum((abs(t) for t in ya), arb(0))
        sq = amin2(yinf * (K * X + rF) ** 2, y1 * (K * X + r) ** 2)
        pure = Gy * X * X if I is None else amin2(Gy * X * X, K * norm2(Sy) * I * X)
        cross = 2 / S6 * X * amin2(norm2(Sy) * rF, sum(Sy, arb(0)) * r)
        dd = amin2(amax(Sy) * rF * rF, sum(Sy, arb(0)) * r * r) / S6
        return ya, nN * Ny + PI * (sq + pure + cross + dd)


def replay_single(U, rej, M, Pa, r, rF, K, ns, rng):
    a = arb(1) / (2 * M); X = (arb(29) / 6).sqrt() * a; L = 5 * a; I = 3 * a / 2
    bad = 0; idx = rng.choice(np.where(rej)[0], size=min(ns, int(rej.sum())), replace=False)
    for b in idx:
        C = Centre(U[b], Pa); aS = C.aS
        tau = 2 * PI * (L / S6 + r)
        t1 = any((x > 1 + tau) or (x < 1 - tau) for x in aS)
        t2 = sum(((x - 1) ** 2 for x in aS), arb(0)) > (2 * PI * (K * X + rF)) ** 2
        Smax = amax(aS)
        rho = amin2(PI * ((K * X + r) ** 2 + Smax * (K * I * X + (2 * X * r + r * r) / S6)),
                    PI * ((L / S6 + r) ** 2 + Smax * (X + r) ** 2 / S6))
        t3 = any(abs(C.c[i]) > a * sum((abs(C.J[j][i]) for j in range(1, 6)), arb(0))
                 + r * norm2([C.J[j][i] for j in range(6)]) + rho for i in range(6))
        bad += not (t1 or t2 or t3)
    return len(idx), bad


def replay_tangent(U, rej, M, Pa, r, rF, K, T, rH, nN, ns, rng):
    a = arb(1) / (2 * M); X = (arb(29) / 6).sqrt() * a; I = 3 * a / 2
    bad = 0; idx = rng.choice(np.where(rej)[0], size=min(ns, int(rej.sum())), replace=False)
    for b in idx:
        C = Centre(U[b], Pa); Bm = C.B(T); k = T.shape[1]
        # float proposal exactly as in stagec.tangent_tests
        Jf = np.array([[float(C.J[j][i].mid()) for i in range(6)] for j in range(6)])
        Bf = np.array([[float(Bm[i][kk].mid()) for kk in range(k)] for i in range(6)]); cf = np.array([float(x.mid()) for x in C.c])
        A = np.concatenate([float(a.mid()) * Jf[1:, :], float(rH.mid()) * Bf.T], 0)
        z = np.linalg.solve(A.T @ A + 1e-12 * np.eye(6), cf); y = z / np.abs(z).max()
        ya, E = C.terms(y, r, rF, nN, K, X, I)
        lhs = abs(sum((ya[i] * C.c[i] for i in range(6)), arb(0)))
        Jty = [sum((ya[i] * C.J[j][i] for i in range(6)), arb(0)) for j in range(6)]
        Bty = [sum((ya[i] * Bm[i][kk] for i in range(6)), arb(0)) for kk in range(k)]
        rhs = a * sum((abs(t) for t in Jty[1:]), arb(0)) + rH * norm2(Bty) + E
        bad += not (lhs > rhs)
    return len(idx), bad


def replay_edges_direct(Cs, s, O, Ub, ns, rng):
    n = len(Cs); pairs = [(i, j) for i in range(n) for j in range(i + 1, n)]
    bad = 0; tested = 0
    for kind, G in (('O', O), ('U', Ub)):
        lst = [p for p in pairs if not G[p]]
        for k in rng.choice(len(lst), size=min(ns, len(lst)), replace=False):
            i, j = lst[k]; tested += 1
            u = [arb(0)] + [arb(int(round(float(t) * SC.DEN))) / SC.DEN for t in Cs[i]]
            v = [arb(0)] + [arb(int(round(float(t) * SC.DEN))) / SC.DEN for t in Cs[j]]
            Q = [ea(u[t] - v[t]) for t in range(6)]; S = sum(Q, acb(0)); aS = abs(S)
            re = arb(float(s[i])) + arb(float(s[j]))
            DU = [(S.real * (-Q[t].imag) + S.imag * Q[t].real) / 6 for t in range(6)]
            mu = sum(DU, arb(0)) / 6; DU = [d - mu for d in DU]; nDU = norm2(DU)
            if kind == 'O':
                rej = (aS > 2 * PI * S6 * re) or (aS ** 2 / (2 * PI) > 6 * re * nDU + PI * re ** 2 * aS)
            else:
                rej = (abs(aS - S6) > 2 * PI * S6 * re) or (abs((aS ** 2 / 6 - 1) / (4 * PI)) > re * nDU + PI * re ** 2 * (1 + aS / 6))
            bad += not rej
    return tested, bad


def replay_joint(Cs, s, O0, U0, O1, U1, Pa, r, rF, K, T, rH, nN, ns, rng):
    """Edges present after the direct tests (O0, U0) but removed by joint_filter (O1, U1)."""
    k = T.shape[1]; bad = 0; tested = 0
    cache = {}
    def cen(i):
        if i not in cache: cache[i] = Centre(Cs[i], Pa)
        return cache[i]
    for kind, G0, G1 in (('O', O0, O1), ('U', U0, U1)):
        lst = [(i, j) for i, j in zip(*np.where(np.triu(G0 & ~G1, 1)))]
        for kk in rng.choice(len(lst), size=min(ns, len(lst)), replace=False) if lst else []:
            i, j = lst[kk]; tested += 1
            C0, C1 = cen(i), cen(j); B0, B1 = C0.B(T), C1.B(T)
            u = C0.uu; v = C1.uu
            Q = [ea(u[t] - v[t]) for t in range(6)]; S = sum(Q, acb(0)); aS = abs(S)
            re = arb(float(s[i])) + arb(float(s[j]))
            DO = [[-Q[t].imag for t in range(6)], [Q[t].real for t in range(6)]]
            if kind == 'O':
                D = DO; qE = [S.real / (2 * PI), S.imag / (2 * PI)]; EE = PI * re ** 2
            else:
                D = [[(S.real * DO[0][t] + S.imag * DO[1][t]) / 6 for t in range(6)]]
                qE = [(aS ** 2 / 6 - 1) / (4 * PI)]; EE = PI * re ** 2 * (1 + aS / 6)
            l = len(D)
            # float proposal exactly as in stagec.joint_filter
            f = lambda x: float(x.mid())
            s0, s1 = float(s[i]), float(s[j])
            J0 = np.array([[f(C0.J[jj][ii]) for ii in range(6)] for jj in range(6)]); J1 = np.array([[f(C1.J[jj][ii]) for ii in range(6)] for jj in range(6)])
            Bf0 = np.array([[f(B0[ii][q]) for q in range(k)] for ii in range(6)]); Bf1 = np.array([[f(B1[ii][q]) for q in range(k)] for ii in range(6)])
            Df = np.array([[f(x) for x in row] for row in D]); EEf = f(EE)
            Am = np.zeros((12 + k + l, 12 + l))
            Am[0:6, 0:6] = s0 * J0; Am[0:6, 12:] = s0 * Df.T
            Am[6:12, 6:12] = s1 * J1; Am[6:12, 12:] = -s1 * Df.T
            Am[12:12 + k, 0:6] = f(rH) * Bf0.T; Am[12:12 + k, 6:12] = f(rH) * Bf1.T
            Am[12 + k:, 12:] = EEf * np.eye(l)
            rv = np.concatenate([[f(x) for x in C0.c], [f(x) for x in C1.c], [f(x) for x in qE]])
            z = np.linalg.solve(Am.T @ Am + 1e-12 * np.eye(12 + l), rv); w = z / np.abs(z).max()
            y0, y1, ye = w[:6], w[6:12], w[12:]
            ya0, E0 = C0.terms(y0, r, rF, nN, K, re * 0 + arb(s0))
            ya1, E1 = C1.terms(y1, r, rF, nN, K, arb(s1))
            yea = [arb(float(t)) for t in ye]
            lhs = abs(sum((ya0[t] * C0.c[t] for t in range(6)), arb(0)) + sum((ya1[t] * C1.c[t] for t in range(6)), arb(0))
                      + sum((yea[t] * qE[t] for t in range(l)), arb(0)))
            DTe = [sum((yea[q] * D[q][t] for q in range(l)), arb(0)) for t in range(6)]
            v0 = [sum((ya0[ii] * C0.J[jj][ii] for ii in range(6)), arb(0)) + DTe[jj] for jj in range(6)]
            v1 = [sum((ya1[ii] * C1.J[jj][ii] for ii in range(6)), arb(0)) - DTe[jj] for jj in range(6)]
            bt = [sum((ya0[ii] * B0[ii][q] + ya1[ii] * B1[ii][q] for ii in range(6)), arb(0)) for q in range(k)]
            rhs = arb(s0) * norm2(v0) + E0 + arb(s1) * norm2(v1) + E1 + rH * norm2(bt) + EE * norm2(yea)
            bad += not (lhs > rhs)
    return tested, bad


if __name__ == '__main__':
    phi = json.load(open(sys.argv[1]))['phi']
    R = float(sys.argv[2]) if len(sys.argv) > 2 else 0.08
    ns = int(sys.argv[3]) if len(sys.argv) > 3 else 60
    rad = float(sys.argv[4]) if len(sys.argv) > 4 else 0.03
    rng = np.random.default_rng(0)
    B = BallRecord(phi)
    o = B.stage_c(R, radius=rad)                          # sets B.tcol and returns the exact parameters used
    rH, n, rcol, rF = o['rH'], o['n'], o['rcol'], o['rF']
    P = np.asarray(phi, float).reshape(6, 6) / SC.TWO_PI
    r, rFc, rHc, nc = rcol / SC.TWO_PI, rF / SC.TWO_PI, rH / SC.TWO_PI, n / SC.TWO_PI
    rFc = min(rFc, math.sqrt(6) * r)
    K = SC.opnorm_bound(P); eP = SC.cis_centre(P); T = np.asarray(B.rec.Tbn)
    Pa = [[arb(float(P[j, i])) for i in range(6)] for j in range(6)]
    ra, rFa, rHa, na, Ka = arb(r), arb(rFc), arb(rHc), arb(nc), arb(K)
    print('Record: R %.3f  r_col %.4f  r_F %.4f  rH %.4f  n %.2e  Stage C ok %s' % (R, rcol, rF, rH, n, o.get('ok')))
    M = 12; g = (np.arange(M) + 0.5) / M
    U = np.stack(np.meshgrid(g, g, g, g, g, indexing='ij'), -1).reshape(-1, 5)
    keep1 = SC.single_tests(U, P, r, M, K, eP, rFc)
    t1, b1 = replay_single(U, ~keep1, M, Pa, ra, rFa, Ka, ns, rng)
    U2 = U[keep1]; keep2 = SC.tangent_tests(U2, P, r, M, K, eP, rFc, T, rHc, nc)
    t2, b2 = replay_tangent(U2, ~keep2, M, Pa, ra, rFa, Ka, T, rHa, na, ns, rng)
    Ub, Mf = SC.bins(P, r, tang=(T, rHc, nc), rF=rFc)
    Cs, s = SC.cluster(Ub, Mf, radius=rad)
    O0, U0 = SC.edges(Cs, s)
    t3, b3 = replay_edges_direct(Cs, s, O0, U0, ns, rng)
    O1, U1 = SC.joint_filter(Cs, s, O0, U0, P, r, K, eP, rFc, T, rHc, nc)
    t4, b4 = replay_joint(Cs, s, O0, U0, O1, U1, Pa, ra, rFa, Ka, T, rHa, na, ns, rng)
    for name, t, b in (('single-vector bins (6.7/6.12)', t1, b1), ('tangent bins (6.11)', t2, b2),
                       ('direct edges (6.16/6.20/6.21)', t3, b3), ('joint edges (6.23)', t4, b4)):
        print('%-32s %4d sampled rejections, %d not confirmed in Arb' % (name, t, b))
    bad = b1 + b2 + b3 + b4
    print('ARB REPLAY PASS' if bad == 0 else 'ARB REPLAY FAIL'); sys.exit(1 if bad else 0)
