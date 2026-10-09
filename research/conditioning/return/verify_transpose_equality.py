#!/usr/bin/env python3
"""Exact equality case outside the stated affine Fourier family.

The example is F(i,i)^T.  All arithmetic is in Q(sqrt(3)) represented by
integer pairs.  The explicit matrix entries are twelfth roots of unity;
neither numerical spectra nor tolerance-based decisions are used.
"""
from __future__ import annotations

import itertools
import numpy as np

N = 36


def zero():
    return np.zeros((N, N), dtype=object)


def ident():
    return np.eye(N, dtype=object)


def qmul(x, y):
    a, b = x
    c, d = y
    return a @ c + 3 * (b @ d), a @ d + b @ c


def shift(x, scalar):
    return x[0] - scalar * ident(), x[1].copy()


def iszero(x):
    return not np.any(x[0]) and not np.any(x[1])


# 2*cos(pi*k/6) = alpha + beta*sqrt(3).
COS2 = (
    (2, 0), (0, 1), (1, 0), (0, 0), (-1, 0), (0, -1),
    (-2, 0), (0, -1), (-1, 0), (0, 0), (1, 0), (0, 1),
)


def phase_exponents(z_exponents=(0, 3, 3)):
    # H_(p,a),(q,j) = (-1)^(p*q) omega^(a*j) z_j^p,
    # z=(1,i,i), omega=zeta^4, i=zeta^3, zeta=exp(2*pi*i/12).
    exponents = np.empty((6, 6), dtype=int)
    for p in range(2):
        for a in range(3):
            for q in range(2):
                for j in range(3):
                    exponents[3*p+a, 3*q+j] = (6*p*q + 4*a*j + p*z_exponents[j]) % 12
    return exponents


def gram2(exponents):
    result = 12 * ident(), zero()
    for a, j, b, k in itertools.product(range(6), repeat=4):
        e = int(exponents[a, j] - exponents[b, j]
                + exponents[b, k] - exponents[a, k]) % 12
        c, d = COS2[e]
        result[0][6*a+j, 6*b+k] -= c
        result[1][6*a+j, 6*b+k] -= d
    return result


def check_hadamard(exponents):
    for a, b in itertools.product(range(6), repeat=2):
        re = [0, 0]
        im = [0, 0]
        for j in range(6):
            e = int(exponents[a, j] - exponents[b, j]) % 12
            for k in range(2):
                re[k] += COS2[e][k]
                im[k] += COS2[(3-e) % 12][k]
        assert re == ([12, 0] if a == b else [0, 0])
        assert im == [0, 0]


def er_column_pairs(exponents):
    result = []
    for j, k in itertools.combinations(range(6), 2):
        # Ratios lie in a common antipodal pair iff their exponents
        # are identical modulo 6.
        e = (exponents[:, j] - exponents[:, k]) % 6
        if all(v == e[0] for v in e):
            result.append((j, k))
    return result


def main():
    f = phase_exponents()
    h = f.T.copy()
    check_hadamard(f)
    check_hadamard(h)
    b = gram2(h)
    for matrix in b:
        assert np.array_equal(matrix, matrix.T)
    poly = b
    for root in (6, 18, 24):
        poly = qmul(poly, shift(b, root))
    assert iszero(poly)
    b2 = qmul(b, b)
    b3 = qmul(b2, b)
    for matrix, target in ((b, 360), (b2, 6912), (b3, 139968)):
        assert np.trace(matrix[0]) == target and np.trace(matrix[1]) == 0
    roots, multiplicities = (0, 6, 18, 24), (15, 4, 12, 5)
    assert sum(multiplicities) == 36
    for degree, target in ((1, 360), (2, 6912), (3, 139968)):
        assert sum(m*r**degree for r, m in zip(roots, multiplicities)) == target
    assert er_column_pairs(f) == [(0, 3), (1, 4), (2, 5)]
    assert er_column_pairs(h) == []
    # All 12 exceptional parameters that admit both a row and a column
    # ER pair are equivalent to F(1,1), by explicit permutations.
    f11 = phase_exponents((0, 0, 0))
    for d, e1, e2 in itertools.product(range(3), range(2), range(2)):
        signs = (0, e1, e2)
        zp = tuple((-4*d*j + 6*signs[j]) % 12 for j in range(3))
        special = phase_exponents(zp)
        rows = list(range(3)) + [3 + (a+d) % 3 for a in range(3)]
        cols = [3*((q+signs[j]) % 2)+j for q in range(2) for j in range(3)]
        assert np.array_equal(special[np.ix_(rows, cols)], f11)
    # Independently check the permutation establishing transpose invariance.
    bf = gram2(f)
    transposition = [6*j+a for a in range(6) for j in range(6)]
    for i in range(2):
        assert np.array_equal(b[i], bf[i][np.ix_(transposition, transposition)])
    print('PASS: F(i,i)^T is an exact Hadamard equality example')
    print('PASS: horizontal spectrum 0^4, 3^4, 9^12, 12^5')
    print('PASS: zero column ER pairs, excluding equivalence to every F(a,b)')
    print('PASS: all 12 family-intersection parameters permute to F(1,1)')
    print('PASS: exact transpose permutation of the full phase Gram matrix')


if __name__ == '__main__':
    main()
