#!/usr/bin/env python3
"""Exact Laurent-coefficient certificate for the full Dita circle.

No numerical eigenvalues and no parameter sampling enter acceptance.  Each
matrix coefficient is a Gaussian integer stored as a pair of NumPy object
arrays, so Python unbounded integer arithmetic is used throughout.
"""
from __future__ import annotations

import numpy as np

N = 36


def zero(n=N):
    return np.zeros((n, n), dtype=object)


def identity(n=N):
    return np.eye(n, dtype=object)


def trim(p):
    return {k: v for k, v in p.items() if np.any(v[0]) or np.any(v[1])}


def add_coeff(p, exponent, real, imag, row, col):
    if exponent not in p:
        p[exponent] = (zero(), zero())
    p[exponent][0][row, col] += real
    p[exponent][1][row, col] += imag


def shift(p, scalar):
    q = {k: (r.copy(), s.copy()) for k, (r, s) in p.items()}
    if 0 not in q:
        q[0] = (zero(), zero())
    q[0][0][:] -= scalar * identity()
    return trim(q)


def multiply(p, q):
    result = {}
    for j, (a, b) in p.items():
        for k, (c, d) in q.items():
            if j + k not in result:
                result[j + k] = (zero(), zero())
            result[j + k][0][:] += a @ c - b @ d
            result[j + k][1][:] += a @ d + b @ c
    return trim(result)


def trace(p):
    return {
        k: (int(np.trace(r)), int(np.trace(s)))
        for k, (r, s) in p.items()
        if np.trace(r) != 0 or np.trace(s) != 0
    }


def unit(i_power):
    return ((1, 0), (0, 1), (-1, 0), (0, -1))[i_power % 4]


# Dita matrix entries are i**P[a,c] * z**E[a,c].
P = np.array([
    [0, 0, 0, 0, 0, 0],
    [0, 2, 1, 3, 3, 1],
    [0, 1, 2, 1, 3, 3],
    [0, 3, 1, 2, 1, 3],
    [0, 3, 3, 1, 2, 1],
    [0, 1, 3, 3, 1, 2],
], dtype=int)
E = np.array([
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 1, 1],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 1, 1],
    [0, -1, 0, -1, 0, 0],
    [0, -1, 0, -1, 0, 0],
], dtype=int)


def build_doubled_gram():
    # B = 2 J_full^T J_full = 12 I - (M + M^*),
    # M_(a,j),(b,k) = H_aj conjugate(H_bj) H_bk conjugate(H_ak).
    bmat = {0: (12 * identity(), zero())}
    for a in range(6):
        for j in range(6):
            for b in range(6):
                for k in range(6):
                    phase = int(P[a, j] - P[b, j] + P[b, k] - P[a, k])
                    power = int(E[a, j] - E[b, j] + E[b, k] - E[a, k])
                    re, im = unit(phase)
                    add_coeff(bmat, power, -re, -im, 6 * a + j, 6 * b + k)
                    add_coeff(bmat, -power, -re, im, 6 * a + j, 6 * b + k)
    return trim(bmat)


def verify_hadamard():
    # Formal conjugation on the circle sends i->-i and z->1/z.
    for a in range(6):
        for b in range(6):
            coeffs = {}
            for j in range(6):
                exp = int(E[a, j] - E[b, j])
                re, im = unit(int(P[a, j] - P[b, j]))
                old = coeffs.get(exp, (0, 0))
                coeffs[exp] = old[0] + re, old[1] + im
            coeffs = {k: v for k, v in coeffs.items() if v != (0, 0)}
            assert coeffs == ({0: (6, 0)} if a == b else {}), (a, b, coeffs)


def main():
    verify_hadamard()
    b = build_doubled_gram()
    # Formal transpose symmetry and conjugate reciprocity imply that B is
    # real symmetric at every |z|=1; both are checked coefficientwise.
    for k, (r, s) in b.items():
        assert np.array_equal(r, r.T) and np.array_equal(s, s.T)
        assert np.array_equal(r, b[-k][0])
        assert np.array_equal(s, -b[-k][1])
    polynomial = b
    for root in (12, 20, 24):
        polynomial = multiply(polynomial, shift(b, root))
    assert polynomial == {}, 'Annihilating polynomial failed'
    b2 = multiply(b, b)
    b3 = multiply(b2, b)
    assert trace(b) == {0: (360, 0)}
    assert trace(b2) == {0: (6720, 0)}
    assert trace(b3) == {0: (134400, 0)}
    # The distinct roots and the first three traces uniquely determine the
    # multiplicities; verify the claimed solution with exact integers.
    roots, mult = (0, 12, 20, 24), (15, 10, 6, 5)
    assert sum(mult) == 36
    for degree, target in ((1, 360), (2, 6720), (3, 134400)):
        assert sum(m * r**degree for m, r in zip(mult, roots)) == target
    vandermonde_det = 1
    for i in range(4):
        for j in range(i + 1, 4):
            vandermonde_det *= roots[j] - roots[i]
    assert vandermonde_det != 0
    print('PASS: full Dita family is Hadamard, exactly and for all |z|=1')
    print('PASS: B(B-12I)(B-20I)(B-24I)=0 as a Laurent matrix identity')
    print('PASS: horizontal spectrum 0^4, 6^10, 10^6, 12^5')
    print('PASS: rank 21 and minimum positive singular value sqrt(6) everywhere')


if __name__ == '__main__':
    main()
