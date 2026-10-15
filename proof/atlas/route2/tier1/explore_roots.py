"""Root structure at Record centres: conditioning, separation, torus/off-torus split (exploration)."""
import sys, numpy as np
from centres import load
from roots import F, JF, hc_roots, wrap
phi, R, Tint = load()
ids = [int(a) for a in sys.argv[1:]]
Hs = [np.exp(1j * phi[i].reshape(6, 6)) for i in ids]
rts = hc_roots(Hs, ids)
for i, H in zip(ids, Hs):
    U = rts[i]; n = len(U)
    res = max(np.max(abs(F(H, u))) for u in U)
    tor = np.max(abs(U.real), axis=1) < 1e-9
    cond = np.array([np.linalg.norm(np.linalg.inv(JF(H, u)), np.inf) for u in U])
    # separation in the max norm, imaginary parts mod 2 pi
    D = np.full((n, n), np.inf)
    for a in range(n):
        d = U - U[a]; d = abs(d.real) + 0 * d.imag, abs(np.angle(np.exp(1j * d.imag)))
        D[a] = np.maximum(d[0], d[1]).max(axis=1); D[a, a] = np.inf
    sep = D.min(axis=1)
    mods = np.max(abs(U.real), axis=1)
    print(f'record {i}: roots {n}, torus {tor.sum()}, max|F| {res:.1e}; max |Re u| {mods.max():.2f} (median off-torus {np.median(mods[~tor]):.2f}, '
          f'min off-torus {mods[~tor].min():.3f})')
    for name, m in (('torus', tor), ('off', ~tor)):
        print(f'   {name}: ||J^-1|| median {np.median(cond[m]):.3f} max {cond[m].max():.2f};  nearest-root distance min {sep[m].min():.3f} '
              f'5% {np.percentile(sep[m], 5):.3f} median {np.median(sep[m]):.3f};  sep*/cond min {(sep[m] / cond[m]).min():.3f}')
