#!/usr/bin/env python3
"""A non-Fourier, non-H2-reducible strict carrier inside the D2 neighbourhood.

Diagnostic added at import (26 September 2026); it is not part of the D2
certificate. The carrier is the canonical positive-sheet reconstruction
H_+(a,b,c,d) at four exact rational unit-circle seeds. Its Hadamard property
is the reconstruction's accepted side-formula input, re-checked here to 50
digits. The distance bound and the two nonvanishing defects are high-precision
evaluations whose margins exceed the evaluation error by more than 40 orders
of magnitude. They are not interval certificates.
"""
from pathlib import Path
import itertools as it, sys
import mpmath as mp
import numpy as np

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parents[1]/'MinimalConstruction'/'Implementation'))
from model import Model

mp.mp.dps = 60
# (sign, p, q): seed = sign*(q+i p)^2/(q^2+p^2), an exact rational unit-circle point.
SEEDS = [(-1, 338976117, 587108317), (-1, -222142165, 384761417),
         (1, -7782369, 13465715), (-1, 400330331, 693412283)]
DELTA = mp.mpf(1)/1024


def seed(sign, p, q):
    den = p*p+q*q
    return mp.mpc(mp.mpf(sign*(q*q-p*p))/den, mp.mpf(sign*2*p*q)/den)


def require(ok, msg):
    if not ok:
        raise SystemExit('FAIL: '+msg)


def main():
    seeds = [seed(*s) for s in SEEDS]
    require(all(abs(abs(z)-1) < mp.mpf(10)**-55 for z in seeds), 'seeds on the unit circle')
    model = Model(seeds, 1)
    require(model.R > 0, 'strict seed')
    H = model.hadamard()
    unit = max(abs(abs(H[i, j])-1) for i in range(6) for j in range(6))
    orth = max(abs(q) for q in (H*H.H-6*mp.eye(6)))
    require(unit < mp.mpf(10)**-50 and orth < mp.mpf(10)**-50, 'Hadamard residual')

    # Explicit matching to the Fourier orbit: F6[pi,sigma] dephased equals H approximately.
    Hn = np.array(H.tolist(), dtype=complex)
    w = np.exp(2j*np.pi/6)
    best = None
    perms = list(it.permutations(range(6)))
    for pi in perms:
        Fp = w**np.outer(np.array(pi), np.arange(6))
        for sigma in perms:
            K = Fp[:, sigma]
            K = K/K[:, [0]]/K[[0], :]*K[0, 0]
            err = np.max(np.abs(K-Hn))
            if best is None or err < best[0]:
                best = (err, pi, sigma)
    _, pi, sigma = best
    q6 = mp.exp(mp.pi*mp.j/3)
    alpha = [q6**(-(pi[r]*sigma[0])) for r in range(6)]   # row phases of the matching
    dists = []
    for j in range(6):
        v = mp.matrix([alpha[r]*q6**(pi[r]*sigma[j]) for r in range(6)])/mp.sqrt(6)
        u = H[:, j]/mp.sqrt(6)
        ov = sum(mp.conj(v[r])*u[r] for r in range(6))
        dists.append(mp.sqrt(max(mp.mpf(0), 1-abs(ov)**2)))
    dmax = max(dists)
    require(dmax < DELTA, 'matched distance inside the D2 domain')

    f3 = min(mp.sqrt(sum(abs(q)**2 for q in (S*S.H-3*mp.eye(3))))
             for R in it.combinations(range(6), 3) for C in it.combinations(range(6), 3)
             for S in [mp.matrix([[H[r, c] for c in C] for r in R])])
    h2 = min(abs(H[i, j]*H[k, l]+H[i, l]*H[k, j])
             for i, k in it.combinations(range(6), 2) for j, l in it.combinations(range(6), 2))
    require(f3 > mp.mpf(10)**-10 and h2 > mp.mpf(10)**-12, 'nonzero F3 and H2 defects')
    print('strict seed R =', mp.nstr(model.R, 8))
    print('Hadamard residuals', mp.nstr(unit, 3), mp.nstr(orth, 3))
    print('matching row perm', pi, 'column perm', sigma)
    print('max matched column-projector distance', mp.nstr(dmax, 8), '< 1/1024 =', mp.nstr(DELTA, 8))
    print('min ||S S^dag - 3I|| over all 400 3x3 submatrices', mp.nstr(f3, 8))
    print('min |h_ij h_kl + h_il h_kj| over all 225 2x2 submatrices', mp.nstr(h2, 8))
    print('PASS: a strict carrier with no F3 block (not Fourier, transposed Fourier or Tao)')
    print('      and no 2x2 Hadamard block (not H2-reducible) lies in the D2 domain.')


if __name__ == '__main__':
    main()
