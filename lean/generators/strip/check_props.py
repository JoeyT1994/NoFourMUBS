#!/usr/bin/env python3
"""Numerical sanity check of the two square-sum Props of CoverageStrip{Nonzero,Zero}.lean.

Not a proof and not used by Lean: it samples three orthonormal phase rows (1; x; y) of length six
whose halves {0,1,2} | {3,4,5} both have real side signature (least squares), and evaluates both
sides of

  NonzeroJSquareSum:  S (prod_j L_{j,+})^2 (prod_j L_{j,-})^2 = -2^24 k^2 (3k^2+1)^3 Q(k,K) / (1+k^2)^32
  ZeroJSquareSum:     S [3z(z+3)^4+(3z+8)K]^3
                        = -3888 z (z+2)^2 (z+3)^2 [K+(z-1)(z+3)^3] [z^2(z+3)^4+(z+2)^2 K]^2

in the Lean conventions: S = sum over the 20 corners of 4 (Im sig)^2 with
sig = -perm * det^2 * prod conj (`Step2.sideSignature`); s, t, r = (BB*)_{10}, (BB*)_{20}, (BB*)_{21};
L_j = g + c_j z with (c_0, c_1, c_2) = (9-Z, 9-Y, 9-X) (`blockL`), z = chi/(2g) (`blockTheta`),
k = 2J/(9-p)^2 (`blockKpar`), K = XYZ.  Q is read from `CoverageQuarticDefs.qCoeffs`.

It also evaluates the pure-algebra forms `NonzeroJAlgebra` / `ZeroJAlgebra` of CoverageStripReduce.lean
(`momentPoly` of the Newton/`lamData` half moments, read from CoverageStripMomentData.lean) at the same
Gram data, and at zero-J points with s = 0 (outside the Prop's hypotheses, as a robustness check).

  python3 lean/generators/strip/check_props.py [seed]
"""
import itertools
import re
import sys
from pathlib import Path

import numpy as np
from scipy.optimize import least_squares

ROOT = Path(__file__).resolve().parents[2]
TRIPLES = list(itertools.combinations(range(6), 3))
rng = np.random.default_rng(int(sys.argv[1]) if len(sys.argv) > 1 else 11)


def q_coeffs():
    text = (ROOT / 'NoFourMUBs/PRM/CoverageQuarticDefs.lean').read_text()
    body = text[text.index('def qCoeffs'):text.index('def Q ')]
    return [tuple(map(int, m)) for m in re.findall(r'\((-?\d+), (\d+), (\d+)\)', body)]


QC = q_coeffs()


def Q(k, K):
    return sum(c * k ** i * K ** j for c, i, j in QC)


def perm3(A):
    return sum(A[0, p[0]] * A[1, p[1]] * A[2, p[2]] for p in itertools.permutations(range(3)))


def sig(A):  # Step2.sideSignature
    return -perm3(A) * np.linalg.det(A) ** 2 * np.prod(A.conj())


def data(B):
    G = B @ B.conj().T
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    p = X + Y + Z
    J = 2 * (np.conj(s) * np.conj(r) * t).real
    g = 27 - 3 * p + J
    W = X * Y + X * Z + Y * Z - X * Y * Z
    chi = W - (p - 9) * (p - 18) + (p - 15) * J
    z = chi / (2 * g)
    L = [g + (9 - V) * z for V in (Z, Y, X)]
    return dict(X=X, Y=Y, Z=Z, p=p, J=J, z=z, L=L, K=X * Y * Z)


def strip(th):
    x = np.exp(1j * np.concatenate([[0.0], th[:5]]))
    y = np.exp(1j * np.concatenate([[0.0], th[5:10]]))
    return np.vstack([np.ones(6), x, y])


def sample(zeroJ):
    def resid(th):
        T = strip(th)
        x, y = T[1], T[2]
        v = [x.sum(), y.sum(), (y * x.conj()).sum(), sig(T[:, :3]), sig(T[:, 3:])]
        out = [v[0].real, v[0].imag, v[1].real, v[1].imag, v[2].real, v[2].imag, v[3].imag, v[4].imag]
        if zeroJ:
            out.append(data(T[:, :3])['J'])
        return np.array(out)
    for _ in range(500):
        sol = least_squares(resid, 2 * np.pi * rng.random(10), xtol=1e-15, ftol=1e-15, gtol=1e-15)
        if np.max(np.abs(sol.fun)) > 1e-11:
            continue
        T = strip(sol.x)
        if min(abs(np.linalg.det(T[:, list(C)])) for C in TRIPLES) < 1e-3:
            continue
        d = data(T[:, :3])
        if zeroJ and min(abs(d['z'] + 2), abs(d['z'] + 3)) < 1e-3:
            continue
        if not zeroJ and abs(d['J']) < 1e-3:
            continue
        return T
    raise RuntimeError('no sample')


def S(T):
    return sum(4 * sig(T[:, list(C)]).imag ** 2 for C in TRIPLES)


def main():
    worst = 0.0
    for _ in range(4):
        T = sample(False)
        a, b = (T[:, :3], T[:, 3:]) if data(T[:, :3])['J'] > 0 else (T[:, 3:], T[:, :3])
        d, e = data(a), data(b)
        k = 2 * d['J'] / (9 - d['p']) ** 2
        lhs = S(T) * np.prod(d['L']) ** 2 * np.prod(e['L']) ** 2
        rhs = -2 ** 24 * k ** 2 * (3 * k * k + 1) ** 3 * Q(k, d['K']) / (1 + k * k) ** 32
        worst = max(worst, abs(lhs / rhs - 1))
        print(f'nonzero J: k={k:.6f} K={d["K"]:.6f} S={S(T):.6e} lhs/rhs-1={lhs / rhs - 1:.1e}')
    for _ in range(4):
        T = sample(True)
        d = data(T[:, :3])
        z, K = d['z'], d['K']
        lhs = S(T) * (3 * z * (z + 3) ** 4 + (3 * z + 8) * K) ** 3
        rhs = (-3888 * z * (z + 2) ** 2 * (z + 3) ** 2 * (K + (z - 1) * (z + 3) ** 3)
               * (z * z * (z + 3) ** 4 + (z + 2) ** 2 * K) ** 2)
        worst = max(worst, abs(lhs / rhs - 1))
        print(f'zero J:    z={z:.6f} K={K:.6f} S={S(T):.6e} lhs/rhs-1={lhs / rhs - 1:.1e}')
    print('worst relative deviation', f'{worst:.1e}', 'PASS' if worst < 1e-6 else 'FAIL')


# ---- the pure-algebra forms (CoverageStrip{Newton,Lambda,Reduce}.lean) ----

def moment_poly_terms():
    src = (ROOT / 'NoFourMUBs/PRM/CoverageStripMomentData.lean').read_text()
    body = src[src.index('def momentPoly'):src.index('/-- The sum over ordered')]
    out = []
    for line in body.split('\n')[1:]:
        line = line.strip().rstrip('+').strip()
        if not line:
            continue
        c = re.match(r'\(?(-?\d+)\)?', line).group(1)
        ms = [(int(a.strip('()')), int(b.strip('()')))
              for a, b in re.findall(r'M \((\(?-?\d+\)?), (\(?-?\d+\)?)\)', line)]
        out.append((int(c), ms))
    return out


MP = moment_poly_terms()


def moment_poly(M):
    return sum(c * np.prod([M(p) for p in ms]) for c, ms in MP)


def newton_half(s, S, t, T, r, Q, u, v, w, wb, pi, up, vp):
    m11, m2m1, mm12 = s * t - pi, s * Q - up, t * r - vp
    return {(2, 0): s ** 2 - 2 * u * S, (0, 2): t ** 2 - 2 * v * T, (2, -2): Q ** 2 - 2 * w * r,
            (1, 1): m11, (2, -1): m2m1, (-1, 2): mm12, (3, 0): s ** 3 - 3 * s * u * S + 3 * u,
            (0, 3): t ** 3 - 3 * t * v * T + 3 * v, (3, -3): Q ** 3 - 3 * Q * w * r + 3 * w,
            (2, 1): s * m11 - t * u * S + u * r, (1, 2): t * m11 - s * v * T + v * Q,
            (3, -1): s * m2m1 - Q * u * S + u * T, (3, -2): Q * m2m1 - s * w * r + w * t,
            (-1, 3): t * mm12 - r * v * T + v * S, (-2, 3): r * mm12 - t * wb * Q + wb * s}


def half_mom(d):  # HalfData.mom
    s, S, t, T, r, Q, u, v, w, U, V, W, pi, PI, up, vp, UP, VP = d
    m = newton_half(s, S, t, T, r, Q, u, v, w, W, pi, up, vp)
    b = newton_half(S, s, T, t, Q, r, U, V, W, w, PI, UP, VP)
    special = {(2, 2): m[(1, 1)] ** 2 - 2 * u * v * b[(1, 1)], (-2, -2): b[(1, 1)] ** 2 - 2 * U * V * m[(1, 1)],
               (4, -2): m[(2, -1)] ** 2 - 2 * u * w * b[(2, -1)], (-4, 2): b[(2, -1)] ** 2 - 2 * U * W * m[(2, -1)],
               (-2, 4): m[(-1, 2)] ** 2 - 2 * v * W * b[(-1, 2)], (2, -4): b[(-1, 2)] ** 2 - 2 * V * w * m[(-1, 2)]}
    return lambda p: special[p] if p in special else (m[p] if p in m else b[(-p[0], -p[1])])


def lam_L(s, t, r, z, g):
    return [g + (9 - abs(r) ** 2) * z, g + (9 - abs(t) ** 2) * z, g + (9 - abs(s) ** 2) * z]


def lam_data(s, t, r, z, g):  # lamData
    S, T, Q = np.conj(s), np.conj(t), np.conj(r)
    P0 = r * s ** 2 + Q * t ** 2 + (3 - abs(r) ** 2) * s * t
    P1 = t * S ** 2 + r ** 2 * T + (3 - abs(t) ** 2) * r * S
    P2 = s * T ** 2 + Q ** 2 * S + (3 - abs(s) ** 2) * Q * T
    L = lam_L(s, t, r, z, g)
    la, lb, lc = P0 / L[0], P1 / L[1], P2 / L[2]
    ba, bb, bc = np.conj(P0) / L[0], np.conj(P1) / L[1], np.conj(P2) / L[2]
    return (s, S, t, T, r, Q, la * bb, la * bc, lc * bb, lb * ba, lc * ba, lb * bc,
            la * z, ba * z, bb * z, bc * z, lb * z, lc * z)


def algebra_S(s, t, r, zA, gA, zB, gB):
    mA, mB = half_mom(lam_data(s, t, r, zA, gA)), half_mom(lam_data(-s, -t, -r, zB, gB))
    return moment_poly(lambda p: mA(p) + mB(p))


def main_algebra():
    worst = 0.0
    for _ in range(3):
        T = sample(False)
        a = T[:, :3] if data(T[:, :3])['J'] > 0 else T[:, 3:]
        G = a @ a.conj().T
        s, t, r = G[1, 0], G[2, 0], G[2, 1]
        d = data(a)
        k = 2 * d['J'] / (9 - d['p']) ** 2
        h = 1 + k * k
        q, J = 4 / h, 8 * k / h ** 2
        val = algebra_S(s, t, r, -2 * (1 + k) / h, 3 * q + J, -2 * (1 - k) / h, 3 * q - J)
        worst = max(worst, abs(val / S(T) - 1))
        print(f'NonzeroJAlgebra lhs-factor momentPoly(...) / S - 1 = {val / S(T) - 1:.1e}')
    for z in (0.5, -1.0, -2.5):  # zero-J algebraic points with s = 0
        p, W = 9 - z * z, z * z * (z + 3) ** 2
        Y = (p + np.sqrt(p * p - 4 * W)) / 2
        Zv = p - Y
        t, r = np.sqrt(Y) * np.exp(0.3j), np.sqrt(Zv) * np.exp(1.1j)
        val = algebra_S(0j, t, r, z, 3 * z * z, z, 3 * z * z)
        lhs = val * (3 * z * (z + 3) ** 4) ** 3
        rhs = -3888 * z * (z + 2) ** 2 * (z + 3) ** 2 * ((z - 1) * (z + 3) ** 3) * (z * z * (z + 3) ** 4) ** 2
        worst = max(worst, abs(lhs / rhs - 1))
        print(f'ZeroJAlgebra at s = 0, z = {z}: lhs/rhs - 1 = {lhs / rhs - 1:.1e}')
    print('algebra forms: worst relative deviation', f'{worst:.1e}', 'PASS' if worst < 1e-6 else 'FAIL')


if __name__ == '__main__':
    main()
    main_algebra()
