"""Second-order Taylor models: (a) the Hadamard manifold chart delta(eta) ~ T eta + q(eta,eta)/2, (b) branch phases
beta_a(eta) ~ beta_a + D_a eta + Q_a(eta,eta)/2.  Max residuals over sampled balls.  Floating point exploration."""
import sys, itertools, numpy as np
from brlib import frame, Hof, newton, cert, AT
from unbiased import solve

def chart(P, T, eta):
    x, ok = AT.project(P.reshape(36) + T @ eta)
    return x - P.reshape(36), ok

def branch_at(P, T, eta, phi0):
    H, _ = Hof(P, T, eta)
    return newton(phi0.copy(), H.conj().T)[0]

def quad_fit(f, h=2e-3):
    """value, gradient (n x 4) and Hessian (n x 4 x 4) of f at 0 by central differences"""
    f0 = f(np.zeros(4)); n = len(f0); g = np.zeros((n, 4)); Hs = np.zeros((n, 4, 4))
    E = np.eye(4) * h
    for i in range(4):
        fp, fm = f(E[i]), f(-E[i])
        g[:, i] = (fp - fm) / (2*h); Hs[:, i, i] = (fp - 2*f0 + fm) / h**2
    for i, j in itertools.combinations(range(4), 2):
        fpp, fpm, fmp, fmm = f(E[i]+E[j]), f(E[i]-E[j]), f(-E[i]+E[j]), f(-E[i]-E[j])
        Hs[:, i, j] = Hs[:, j, i] = (fpp - fpm - fmp + fmm) / (4*h*h)
    return f0, g, Hs

def model(f0, g, Hs, eta): return f0 + g @ eta + 0.5 * np.einsum('nij,i,j->n', Hs, eta, eta)

rng = np.random.default_rng(int(sys.argv[1]))
for _ in range(int(sys.argv[2])):
    idx = int(rng.integers(len(cert.recs)))
    P = cert.recs[idx]['phi'].reshape(6, 6); T = frame(P)
    c0, cg, cH = quad_fit(lambda e: chart(P, T, e)[0])
    phis0 = solve(np.exp(1j*P).conj().T, starts=2500, seed=1)
    fits = [quad_fit(lambda e, p=p: branch_at(P, T, e, p)) for p in phis0]
    out = [idx, len(phis0)]
    for rho in [0.16, 0.3]:
        cres = []; bres = []
        for _ in range(10):
            d = rng.normal(size=4); d *= rho / np.linalg.norm(d)
            dt, ok = chart(P, T, d)
            cres.append(np.linalg.norm(dt - model(c0, cg, cH, d)))
            for (f0, g, Hs), p in zip(fits, phis0):
                # continue the branch along the segment to d
                q = p.copy()
                for k in range(1, 7): q = branch_at(P, T, d * k / 6, q)
                bres.append(np.linalg.norm(np.angle(np.exp(1j*(q - model(f0, g, Hs, d))))))
        out += [rho, round(max(cres), 5), round(float(np.median(bres)), 5), round(float(np.percentile(bres, 95)), 4)]
    print(out, flush=True)
