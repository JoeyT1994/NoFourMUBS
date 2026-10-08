"""Arb replay of a random sample of Stage-C rejections (RIGOUR.md, item 3).

For a ball Record, rerun the float Stage C, then for a random sample of
  (a) bins rejected by the single-vector tests (6.7) / (6.12) at the first resolution, and
  (b) label pairs whose O or U edge was removed by the direct tests (6.16), (6.20), (6.21),
re-evaluate the same inequalities in Arb ball arithmetic WITHOUT the float margin and check that the rejection holds.
Exits nonzero if any sampled float rejection is not confirmed in Arb.
Usage: python3 arb_replay.py CENTRE.json [R] [nsample]
"""
import json, math, sys
import numpy as np
from flint import arb, acb, ctx
ctx.prec = 120
import stagec as SC
from ballrecord import BallRecord

PI = arb.pi()


def e_arb(x):
    return (acb(0, 2) * PI * x).exp()


def replay_bins(P, r, K, M, U, rejected, nsample, rng):
    a = arb(1) / (2 * M); X = arb(29) .__truediv__(6).sqrt() * a; L = 5 * a; I = 3 * a / 2
    Pa = [[arb(float(P[j, i])) for i in range(6)] for j in range(6)]
    bad = 0; idx = rng.choice(np.where(rejected)[0], size=min(nsample, int(rejected.sum())), replace=False)
    for b in idx:
        u = [arb(0)] + [arb(int(round(float(t) * SC.DEN))) / SC.DEN for t in U[b]]
        q = [[e_arb(u[j] - Pa[j][i]) / arb(6).sqrt() for i in range(6)] for j in range(6)]
        S = [sum((q[j][i] for j in range(6)), acb(0)) for i in range(6)]
        aS = [abs(s) for s in S]
        tau = 2 * PI * (L / arb(6).sqrt() + r)
        t1 = any((x > 1 + tau) or (x < 1 - tau) for x in aS)
        t2 = sum(((x - 1) ** 2 for x in aS), arb(0)) > (2 * PI * (K * X + r)) ** 2
        # scalar test (6.12)
        Jm = [[-(S[i].conjugate() * q[j][i]).imag for i in range(6)] for j in range(6)]
        c = [(x * x - 1) / (4 * PI) for x in aS]
        Smax = max((z.upper() for z in aS), key=lambda z: float(z))      # exact upper endpoint (rho increases with it)
        rho1 = PI * ((K * X + r) ** 2 + Smax * (K * I * X + (2 * X * r + r * r) / arb(6).sqrt()))
        rho2 = PI * ((L / arb(6).sqrt() + r) ** 2 + Smax * (X + r) ** 2 / arb(6).sqrt())
        rho = rho1 if rho1 < rho2 else rho2 if rho2 < rho1 else rho1
        t3 = False
        for i in range(6):
            rhs = a * sum((abs(Jm[j][i]) for j in range(1, 6)), arb(0)) + r * sum((Jm[j][i] ** 2 for j in range(6)), arb(0)).sqrt() + rho
            if abs(c[i]) > rhs: t3 = True
        if not (t1 or t2 or t3): bad += 1
    return len(idx), bad


def replay_edges(C, s, O, Ub, nsample, rng):
    n = len(C); pairs = [(i, j) for i in range(n) for j in range(i + 1, n)]
    noO = [p for p in pairs if not O[p]]; noU = [p for p in pairs if not Ub[p]]
    bad = 0; tested = 0
    for kind, lst in (('O', noO), ('U', noU)):
        for k in rng.choice(len(lst), size=min(nsample, len(lst)), replace=False):
            i, j = lst[k]; tested += 1
            u = [arb(0)] + [arb(int(round(float(t) * SC.DEN))) / SC.DEN for t in C[i]]
            v = [arb(0)] + [arb(int(round(float(t) * SC.DEN))) / SC.DEN for t in C[j]]
            Q = [e_arb(u[t] - v[t]) for t in range(6)]; S = sum(Q, acb(0)); aS = abs(S)
            re = arb(float(s[i])) + arb(float(s[j]))
            DU = [(S.real * (-Q[t].imag) + S.imag * Q[t].real) / 6 for t in range(6)]
            mu = sum(DU, arb(0)) / 6; DU = [d - mu for d in DU]; nDU = sum((d * d for d in DU), arb(0)).sqrt()
            if kind == 'O':
                rej = (aS > 2 * PI * arb(6).sqrt() * re) or (aS ** 2 / (2 * PI) > 6 * re * nDU + PI * re ** 2 * aS)
            else:
                rej = (abs(aS - arb(6).sqrt()) > 2 * PI * arb(6).sqrt() * re) or \
                      (abs((aS ** 2 / 6 - 1) / (4 * PI)) > re * nDU + PI * re ** 2 * (1 + aS / 6))
            if not rej: bad += 1
    return tested, bad


if __name__ == '__main__':
    phi = json.load(open(sys.argv[1]))['phi']; R = float(sys.argv[2]) if len(sys.argv) > 2 else 0.08
    ns = int(sys.argv[3]) if len(sys.argv) > 3 else 200
    rng = np.random.default_rng(0)
    B = BallRecord(phi); rH, n = B.normal_bound(R)
    rcol = min(R, (getattr(B, 'tcol', None) or 1.0) * rH + n)
    P = np.asarray(phi, float).reshape(6, 6) / SC.TWO_PI; r = rcol / SC.TWO_PI
    K = SC.opnorm_bound(P); eP = SC.cis_centre(P)
    M = 12; g = (np.arange(M) + 0.5) / M
    U = np.stack(np.meshgrid(g, g, g, g, g, indexing='ij'), -1).reshape(-1, 5)
    keep = SC.single_tests(U, P, r, M, K, eP)
    tb, bb = replay_bins(P, arb(r), arb(K), M, U, ~keep, ns, rng)
    print('bins: %d sampled float rejections, %d not confirmed in Arb' % (tb, bb))
    Ub_, Mf = SC.bins(P, r)
    C, s = SC.cluster(Ub_, Mf, radius=0.03)
    O, Ubm = SC.edges(C, s)
    te, be = replay_edges(C, s, O, Ubm, ns, rng)
    print('edges: %d sampled float edge removals, %d not confirmed in Arb' % (te, be))
    sys.exit(1 if bb or be else 0)
