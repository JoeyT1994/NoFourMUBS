"""Check 3: CRITICAL_CORNER_REDUCTION (3),(6),(9) and CRITICAL_STRIP_CLASSIFICATION (4),(6)
on actual phase-orthogonal strips whose split {0,1,2}|{3,4,5} is critical on both halves.
S_direct = sum over all twenty corners of 4 (Im Psi)^2 is computed from the matrices only."""
import json, sys
import numpy as np
import mpmath as mp
import sympy as sp
from scipy.optimize import least_squares
from audit_common import *

rng = np.random.default_rng(int(sys.argv[1]) if len(sys.argv) > 1 else 3)
mode = sys.argv[2] if len(sys.argv) > 2 else 'zero'
nsamp = int(sys.argv[3]) if len(sys.argv) > 3 else 6
E_, B_ = [0, 1, 2], [3, 4, 5]


def resid(th):
    T = strip_from_angles(th)
    r = list(orth_residual(T)) + [psi(T[:, E_]).imag, psi(T[:, B_]).imag]
    if mode == 'zero':
        r.append(gram_invariants(T[:, E_] @ T[:, E_].conj().T)['J'])
    return np.array(r)


def sample():
    for _ in range(200):
        sol = least_squares(resid, 2 * np.pi * rng.random(10), xtol=1e-15, ftol=1e-15, gtol=1e-15)
        if np.max(np.abs(sol.fun)) < 1e-11:
            T = strip_from_angles(sol.x)
            if min(abs(np.linalg.det(T[:, list(C)])) for C in TRIPLES) > 1e-3:
                if mode == 'zero' or abs(gram_invariants(T[:, E_] @ T[:, E_].conj().T)['J']) > 1e-3:
                    return T
    raise RuntimeError('no sample')


def S_direct(T):
    return sum(4 * psi(T[:, list(C)]).imag ** 2 for C in TRIPLES)


if mode == 'zero':
    for n in range(nsamp):
        T = sample()
        d = gram_invariants(T[:, E_] @ T[:, E_].conj().T)
        z = d['chi'] / (2 * d['g'])
        K = d['K']
        A = 3 * z * (z + 3) ** 4 + (3 * z + 8) * K
        Bq = z * z * (z + 3) ** 4 + (z + 2) ** 2 * K
        S4 = -3888 * z * (z + 2) ** 2 * (z + 3) ** 2 * (K + (z - 1) * (z + 3) ** 3) * Bq ** 2 / A ** 3
        fz = np.prod([3 * z + 9 - X for X in (d['X'], d['Y'], d['Z'])])
        Th = -psi(T[:, E_]) / d['g']
        print(f"J={d['J']:.1e} z={z:.6f} z^2-(9-p)={z*z-(9-d['p']):.1e} W-z^2(z+3)^2={d['W']-z*z*(z+3)**2:.1e} "
              f"Theta-z={abs(Th-z):.1e} S_direct={S_direct(T):.10f} S_formula(4)={S4:.10f} A/prod(3z+9-X_i)={A/fz:.6f}")
else:
    here = str(__import__('pathlib').Path(__file__).resolve().parents[3] / 'MinimalConstruction' / 'Proofs' / 'critical_quartic.json')
    data = json.load(open(here))
    c, d_ = sp.symbols('c d')
    mp.mp.dps = 60
    fac = [(sp.lambdify((c, d_), sp.sympify(f.replace('^', '**')), 'mpmath'), e) for f, e in data['factors']]
    Qf, Am, Ap = fac[0][0], fac[4][0], fac[3][0]  # which A is which is tested below
    rows = []
    for n in range(nsamp):
        T = sample()
        dE = gram_invariants(T[:, E_] @ T[:, E_].conj().T)
        P, Bk = (T[:, E_], T[:, B_]) if dE['J'] > 0 else (T[:, B_], T[:, E_])
        d = gram_invariants(P @ P.conj().T)
        p, J, W = d['p'], d['J'], d['W']
        q = 9 - p
        k = 2 * J / q ** 2
        h = 1 + k * k
        K = d['K']
        th_plus = -psi(P) / d['g']
        dB = gram_invariants(Bk @ Bk.conj().T)
        th_minus = -psi(Bk) / dB['g']
        chk = [J * J - q ** 3 * (p - 5) / 4, W + (p - 9) * (p * p - 10 * p + 27) / 2,
               abs(th_plus - (-2 * (1 + k) / h)), abs(th_minus - (-2 * (1 - k) / h)), q - 4 / h]
        Sd = S_direct(T)
        kk, KK = mp.mpf(k), mp.mpf(K)
        Qv, a1, a2 = Qf(kk, KK), Ap(kk, KK), Am(kk, KK)
        num = -262144 * kk ** 2 * (3 * kk ** 2 + 1) ** 3 * a1 ** 3 * a2 ** 3 * Qv
        rows.append((float(mp.log(abs(mp.mpf(Sd)))), float(mp.log(abs(num))), float(mp.log(abs(a1))),
                     float(mp.log(abs(a2))), float(mp.log(h)), float(mp.log(k)), float(mp.log(3*k*k+1)),
                     Sd, float(num)))
        print(f"k={k:.5f} K={K:.5f} checks={['%.1e' % x for x in chk]} S_direct={Sd:.6e} sign(num)={np.sign(float(num))} "
              f"sign(Q)={np.sign(float(Qv))}")
    M = np.array(rows)
    # fit log S_direct - log|num| = a*log|A1| + b*log|A2| + c*log h + e*log k + f*log(3k^2+1) + const
    y = M[:, 0] - M[:, 1]
    Xd = np.column_stack([M[:, 2], M[:, 3], M[:, 4], M[:, 5], M[:, 6], np.ones(len(M))])
    coef, res, rk, sv = np.linalg.lstsq(Xd, y, rcond=None)
    print('fit exponents [A1, A2, h, k, 3k^2+1, const]:', np.round(coef, 6), 'max resid',
          np.abs(Xd @ coef - y).max())
