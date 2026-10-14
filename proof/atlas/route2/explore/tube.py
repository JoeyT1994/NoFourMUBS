"""Affine branch models x_a(eta) ~ c_a + D_a eta (D_a = -Jx^+ J_eta): max deviation over the ball, and min singular value."""
import sys, numpy as np
from brlib import frame, Hof, newton, cert, AT
from unbiased import solve, residual, jac

def Jeta(phi, P, T, h=1e-6):
    cols = []
    for k in range(4):
        e = np.zeros(4); e[k] = h
        Hp, _ = Hof(P, T, e); Hm, _ = Hof(P, T, -e)
        cols.append((residual(phi, Hp.conj().T) - residual(phi, Hm.conj().T)) / (2*h))
    return np.array(cols).T                       # 6 x 4

rng = np.random.default_rng(int(sys.argv[1]))
for _ in range(int(sys.argv[2])):
    idx = int(rng.integers(len(cert.recs)))
    P = cert.recs[idx]['phi'].reshape(6, 6); T = frame(P); H0 = np.exp(1j * P)
    phis0 = solve(H0.conj().T, starts=2500, seed=1); n = len(phis0)
    D = []; smin0 = []
    for p in phis0:
        Jx = jac(p, H0.conj().T); s = np.linalg.svd(Jx, compute_uv=False)[-1]; smin0.append(s)
        D.append(-np.linalg.pinv(Jx) @ Jeta(p, P, T))
    out = [idx, n, round(min(smin0), 3), round(float(np.median([np.linalg.norm(d, 2) for d in D])), 2)]
    for rho in [0.08, 0.16, 0.3]:
        devs = []; fails = 0
        for _ in range(15):
            d = rng.normal(size=4); d *= rho / np.linalg.norm(d)        # boundary of the ball
            phis = [p.copy() for p in phis0]; bad = False
            for k in range(1, 7):
                H, ok = Hof(P, T, d * k / 6)
                for a in range(n):
                    phis[a], res = newton(phis[a], H.conj().T)
                    if res > 1e-8: bad = True
            if bad: fails += 1; continue
            for a in range(n):
                dev = np.angle(np.exp(1j*(phis[a] - phis0[a] - D[a] @ d)))
                devs.append(np.linalg.norm(dev))
        out += [rho, fails, round(float(np.median(devs)), 4) if devs else None, round(float(np.max(devs)), 4) if devs else None]
    print(out, flush=True)
