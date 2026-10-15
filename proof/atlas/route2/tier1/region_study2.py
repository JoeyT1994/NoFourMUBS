"""Track all 252 roots over sampled points of a Record ball (radius rho): escapes, close pairs, conditioning.
Usage: region_study2.py rho nsamp id1 id2 ...  (exploration)"""
import sys, time, numpy as np
from centres import load
from roots import F, JF, hc_roots, frame, track_each, spread
phi, Rr, Tint = load()
rho = float(sys.argv[1]); ns = int(sys.argv[2]); ids = [int(a) for a in sys.argv[3:]]
rng = np.random.default_rng(0)
def mdist(U):
    d = U[:, None, :] - U[None, :, :]
    D = np.maximum(abs(d.real), abs(np.angle(np.exp(1j * d.imag)))).max(axis=2)
    np.fill_diagonal(D, np.inf); return D
for i in ids:
    t0 = time.time(); P = phi[i].reshape(6, 6); T = frame(P); H0 = np.exp(1j * P)
    U0 = hc_roots([H0], [i])[i]; n = len(U0)
    esc = np.zeros(n, bool); minsep = mdist(U0).min(1); maxsp = np.array([spread(u) for u in U0]); fails = 0
    cond = np.array([np.linalg.norm(np.linalg.inv(JF(H0, u)), np.inf) for u in U0]); ntor = []
    for s in range(ns):
        e = rng.normal(size=4); e *= rho / np.linalg.norm(e) * (1 if s % 2 == 0 else rng.uniform() ** 0.25)
        U, H, alive, ok = track_each(P, T, U0, e)
        if not ok: fails += 1; continue
        esc |= ~alive
        Ua = np.where(alive[:, None], U, 1e6 + 1e6j * np.arange(n)[:, None])
        minsep = np.minimum(minsep, np.where(alive, mdist(Ua).min(1), np.inf))
        maxsp = np.maximum(maxsp, [spread(u) if al else 0 for u, al in zip(U, alive)])
        cond = np.maximum(cond, [np.linalg.norm(np.linalg.inv(JF(H, u)), np.inf) if al else 0 for u, al in zip(U, alive)])
        ntor.append(int(sum(1 for u, al in zip(U, alive) if al and np.max(abs(u.real)) < 1e-7)))
    tor0 = np.max(abs(U0.real), axis=1) < 1e-9
    near = (np.max(abs(U0.real), axis=1) < 0.3) & ~tor0
    print(f'rec {i} rho {rho}: fails {fails}/{ns}; torus counts {sorted(set(ntor))}; escaped {esc.sum()}; spread>6 (not esc) {((maxsp > 6) & ~esc).sum()}; '
          f'close pairs (minsep<0.15) {(minsep < 0.15).sum()} [torus {(minsep[tor0] < 0.15).sum()}]; cond>5: {(cond > 5).sum()}; '
          f'near-torus complex at centre {near.sum()} ({time.time()-t0:.0f}s)', flush=True)
