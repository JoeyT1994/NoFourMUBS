"""Track all 252 complex roots over a Record ball of radius rho (sampled), to see collisions, conditioning and
quadratic-model accuracy.  Exploration only.  Usage: region_study.py rho id1 id2 ..."""
import sys, time, itertools, numpy as np
from centres import load
from roots import F, JF, newton, hc_roots, wrap, frame, chart, track_all
phi, Rr, Tint = load()
rho = float(sys.argv[1]); ids = [int(a) for a in sys.argv[2:]]
rng = np.random.default_rng(0)

def track(P, T, U0, eta, steps=None):
    return track_all(P, T, U0, eta)

def mdist(U):
    d = U[:, None, :] - U[None, :, :]
    D = np.maximum(abs(d.real), abs(np.angle(np.exp(1j * d.imag)))).max(axis=2)
    np.fill_diagonal(D, np.inf); return D

for i in ids:
    t0 = time.time()
    P = phi[i].reshape(6, 6); T = frame(P); H0 = np.exp(1j * P)
    U0 = hc_roots([H0], [i])[i]; n = len(U0)
    # quadratic models by central differences (h = 0.02)
    h = 0.02; E = np.eye(4) * h
    def Uat(e): return track(P, T, U0, e, steps=2)[0]
    Up = [Uat(E[k]) for k in range(4)]; Um = [Uat(-E[k]) for k in range(4)]
    G = np.stack([(Up[k] - Um[k]) / (2 * h) for k in range(4)], -1)          # n x 5 x 4
    Hs = np.zeros((n, 5, 4, 4), complex)
    for k in range(4): Hs[:, :, k, k] = (Up[k] - 2 * U0 + Um[k]) / h ** 2
    for k, l in itertools.combinations(range(4), 2):
        q = [Uat(sk * E[k] + sl * E[l]) for sk, sl in ((1, 1), (1, -1), (-1, 1), (-1, -1))]
        Hs[:, :, k, l] = Hs[:, :, l, k] = (q[0] - q[1] - q[2] + q[3]) / (4 * h * h)
    model = lambda e: U0 + G @ e + 0.5 * np.einsum('nikl,k,l->ni', Hs, e, e)
    minsep = mdist(U0).min(axis=1); maxcond = np.array([np.linalg.norm(np.linalg.inv(JF(H0, u)), np.inf) for u in U0])
    dev = np.zeros(n); devlin = np.zeros(n); fails = 0; ntor = []
    for s in range(24):
        e = rng.normal(size=4); e *= rho / np.linalg.norm(e) * (1 if s % 2 == 0 else rng.uniform() ** 0.25)
        U, H, ok = track(P, T, U0, e)
        if not ok: fails += 1
        d = U - model(e); dv = np.maximum(abs(d.real), abs(np.angle(np.exp(1j * d.imag)))).max(axis=1)
        d1 = U - U0 - G @ e; dl = np.maximum(abs(d1.real), abs(np.angle(np.exp(1j * d1.imag)))).max(axis=1)
        dev = np.maximum(dev, dv); devlin = np.maximum(devlin, dl)
        minsep = np.minimum(minsep, mdist(U).min(axis=1))
        maxcond = np.maximum(maxcond, [np.linalg.norm(np.linalg.inv(JF(H, u)), np.inf) for u in U])
        ntor.append(int((np.max(abs(U.real), axis=1) < 1e-7).sum()))
    tor0 = np.max(abs(U0.real), axis=1) < 1e-9
    print(f'rec {i} rho {rho}: track fails {fails}; torus counts {sorted(set(ntor))}; '
          f'minsep min {minsep.min():.3f} (#<0.2: {(minsep < 0.2).sum()}); max ||J^-1|| {maxcond.max():.2f}; '
          f'quad-model dev median {np.median(dev):.4f} 95% {np.percentile(dev, 95):.4f} max {dev.max():.3f}; '
          f'lin dev median {np.median(devlin):.4f}; sweep |G| median {np.median(np.abs(G).sum(-1).max(-1))*rho:.3f} ({time.time()-t0:.0f}s)', flush=True)
