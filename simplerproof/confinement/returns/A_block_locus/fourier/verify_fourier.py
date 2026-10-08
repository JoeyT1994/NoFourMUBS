#!/usr/bin/env python3
"""Exhaustive exact certificates for the full affine Fourier torus.

Run: python3 verify_fourier.py
Only Python's standard library is used. Every decision uses integers or
fractions. No floating-point number is evaluated anywhere in this script.

The Laurent-polynomial ring is Z[zeta_6][A^{+-1},B^{+-1}],
with zeta_6^2=zeta_6-1. See FOURIER_CONFINEMENT.md for the analytic proof.
"""

from collections import Counter
from fractions import Fraction as Q
from itertools import combinations, permutations, product
from math import factorial


def coefficient_add(a, b):
    return a[0] + b[0], a[1] + b[1]


def coefficient_multiply(a, b):
    return (a[0] * b[0] - a[1] * b[1],
            a[0] * b[1] + a[1] * b[0] + a[1] * b[1])


def coefficient_conjugate(a):
    return a[0] + a[1], -a[1]


def add(a, b):
    out = dict(a)
    for exponent, coefficient in b.items():
        out[exponent] = coefficient_add(out.get(exponent, (0, 0)), coefficient)
        if out[exponent] == (0, 0):
            del out[exponent]
    return out


def negative(a):
    return {e: (-c[0], -c[1]) for e, c in a.items()}


def multiply(a, b):
    out = {}
    for e, c in a.items():
        for f, d in b.items():
            g = e[0] + f[0], e[1] + f[1]
            out[g] = coefficient_add(out.get(g, (0, 0)), coefficient_multiply(c, d))
    return {e: c for e, c in out.items() if c != (0, 0)}


def conjugate(a):
    return {(-e[0], -e[1]): coefficient_conjugate(c) for e, c in a.items()}


def monomial(exponent=(0, 0), coefficient=(1, 0)):
    return {exponent: coefficient}


def canonical_up_to_sign(a):
    return min(tuple(sorted(a.items())), tuple(sorted(negative(a).items())))


ROOTS = ((1, 0), (0, 1), (-1, 1), (-1, 0), (0, -1), (1, -1))
PERMUTATIONS = tuple(permutations(range(3)))
SIGNS = tuple((-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))
              for p in PERMUTATIONS)


def fourier_matrix():
    return [[monomial((int(i % 2 == 1 and j % 3 == 1),
                       int(i % 2 == 1 and j % 3 == 2)), ROOTS[i * j % 6])
             for j in range(6)] for i in range(6)]


def q_polynomial(matrix):
    permanent = {}
    determinant = {}
    entry_product = monomial()
    for row in matrix:
        for entry in row:
            entry_product = multiply(entry_product, entry)
    for permutation, sign in zip(PERMUTATIONS, SIGNS):
        term = monomial()
        for i in range(3):
            term = multiply(term, matrix[i][permutation[i]])
        permanent = add(permanent, term)
        determinant = add(determinant, term if sign == 1 else negative(term))
    # Every entry is a unit monomial. Its reciprocal is its conjugate.
    return multiply(multiply(permanent, multiply(determinant, determinant)),
                    conjugate(entry_product))


def verify_hadamard(h):
    for i in range(6):
        for j in range(6):
            gram = {}
            for k in range(6):
                gram = add(gram, multiply(h[i][k], conjugate(h[j][k])))
            assert gram == (monomial(coefficient=(6, 0)) if i == j else {})
    print("PASS: all 36 Hadamard Gram identities, over the exact Laurent ring")


def verify_all_corners(h):
    counts = Counter()
    row_counts = {}
    witnesses = {}
    for rows in combinations(range(6), 3):
        row_counts[rows] = Counter()
        for cols in combinations(range(6), 3):
            q = q_polynomial([[h[i][j] for j in cols] for i in rows])
            key = canonical_up_to_sign(add(q, negative(conjugate(q))))
            counts[key] += 1
            row_counts[rows][key] += 1
            witnesses.setdefault(key, (rows, cols))
    exponents = ((2, -1), (1, 1), (1, -2))
    expected = {(): 256}
    for epsilon2, epsilon3 in product((-1, 1), repeat=2):
        polynomial = {}
        for exponent, sign in zip(exponents, (1, epsilon2, epsilon3)):
            polynomial = add(polynomial, monomial(exponent, (3 * sign, 0)))
            polynomial = add(polynomial, monomial((-exponent[0], -exponent[1]),
                                                  (-3 * sign, 0)))
        expected[canonical_up_to_sign(polynomial)] = 36
    assert dict(counts) == expected
    assert sum(counts.values()) == 400
    for rows, distribution in row_counts.items():
        if len({row % 2 for row in rows}) == 1:
            assert dict(distribution) == {(): 20}
        else:
            assert dict(distribution) == {key: (12 if not key else 2) for key in expected}
    print("PASS: 256 zero corners and 36 of each of the four signed-sine-square formulas")
    for key, count in sorted(counts.items()):
        if key:
            print("  A witness for a nonzero class:", witnesses[key], "multiplicity", count)


def shift_parameters(h, m, n):
    out = []
    for row in h:
        next_row = []
        for entry in row:
            assert len(entry) == 1
            (e, c), = entry.items()
            phase = (2 * m + n) * e[0] + (m - n) * e[1]
            next_row.append(monomial(e, coefficient_multiply(c, ROOTS[phase % 6])))
        out.append(next_row)
    return out


def lattice_permutations(h, m, n):
    ell = m - n
    rows = [i if i % 2 == 0 else 2 * ((i // 2 + ell) % 3) + 1 for i in range(6)]
    swaps = (0, n % 2, ell % 2)
    cols = [j % 3 + 3 * ((j // 3 + swaps[j % 3]) % 2) for j in range(6)]
    return [[h[rows[i]][cols[j]] for j in range(6)] for i in range(6)]


def verify_lattice(h):
    # Both sides depend only on m,n mod 6. These 36 cases cover all integers.
    for m, n in product(range(6), repeat=2):
        assert shift_parameters(h, m, n) == lattice_permutations(h, m, n)
    print("PASS: all lattice shifts, using 36 exhaustive residue classes")


def horizontal_projection(matrix):
    rows = [sum(row) / 6 for row in matrix]
    cols = [sum(matrix[i][j] for i in range(6)) / 6 for j in range(6)]
    mean = sum(rows) / 6
    return [[matrix[i][j] - rows[i] - cols[j] + mean for j in range(6)] for i in range(6)]


def inner(a, b):
    return sum(a[i][j] * b[i][j] for i in range(6) for j in range(6))


def verify_norm_and_hexagon():
    t1 = [[Q(int(i % 2 == 1 and j % 3 == 1)) for j in range(6)] for i in range(6)]
    t2 = [[Q(int(i % 2 == 1 and j % 3 == 2)) for j in range(6)] for i in range(6)]
    u1, u2 = horizontal_projection(t1), horizontal_projection(t2)
    assert (inner(u1, u1), inner(u1, u2), inner(u2, u2)) == (2, -1, 2)
    # The vertices of |x|,|y|,|x+y| <= 1 are all pairwise intersections of
    # the six bounding lines which obey all six inequalities.
    normals = ((1, 0), (-1, 0), (0, 1), (0, -1), (1, 1), (-1, -1))
    vertices = set()
    for (a, b), (c, d) in combinations(normals, 2):
        determinant = a * d - b * c
        if not determinant:
            continue
        x, y = Q(d - b, determinant), Q(a - c, determinant)
        if all(nx * x + ny * y <= 1 for nx, ny in normals):
            vertices.add((x, y))
    assert vertices == {(1, 0), (0, 1), (-1, 1), (-1, 0), (0, -1), (1, -1)}
    for x, y in vertices:
        a, b = (2 * x + y) / 3, (x - y) / 3
        assert x * x + x * y + y * y == 1
        assert max(abs(a), abs(b), abs(a - b)) == Q(2, 3)
    # The quadratic x^2+xy+y^2 has a positive definite Hessian:
    assert 2 > 0 and 2 * 2 - 1 * 1 > 0
    print("PASS: horizontal norm identity and all six hexagon vertices")


def sine_taylor(t, last_index):
    return sum(((-1) ** k) * t ** (2 * k + 1) / factorial(2 * k + 1)
               for k in range(last_index + 1))


def verify_constants():
    # All sine arguments here belong to (0,1); alternating Taylor sums
    # through k=7 and k=8 bound sine from below and above, respectively.
    alpha_lo = Q(43887162260746, 10 ** 14)
    alpha_hi = Q(43887162260747, 10 ** 14)
    target_squared = Q(26, 144)
    assert 0 < alpha_lo < alpha_hi < Q(9, 20) < 1
    assert sine_taylor(alpha_lo, 8) ** 2 < target_squared
    assert sine_taylor(alpha_hi, 7) ** 2 > target_squared
    radius_lo = Q(35833717932519, 10 ** 14)
    radius_hi = Q(35833717932521, 10 ** 14)
    assert radius_lo ** 2 < Q(2, 3) * alpha_lo ** 2
    assert Q(2, 3) * alpha_hi ** 2 < radius_hi ** 2
    distance_lo = Q(7308006387000, 10 ** 14)
    distance_hi = Q(7308006387001, 10 ** 14)
    assert distance_lo < sine_taylor(alpha_lo / 6, 7)
    assert sine_taylor(alpha_hi / 6, 8) < distance_hi
    assert radius_hi < Q(55, 100)
    assert distance_hi < Q(75, 1000)
    # Sharpness proof bounds: sqrt(6)<5/2, a<3/20, pi/3>1.
    assert 6 < Q(5, 2) ** 2
    assert 6 * Q(3, 20) < 1
    # Projector sharpness: kappa <= (5r/2)^2 for r<=3/40.
    assert 1 - Q(3, 40) ** 2 > Q(23, 25) ** 2
    assert 12 / (1 + Q(23, 25)) == Q(25, 4)
    # arcsin(t) <= 101t/100 for t<=3/32.
    assert 1 - Q(3, 32) ** 2 > Q(100, 101) ** 2
    assert Q(101, 10) * Q(3, 40) + Q(3, 20) == Q(363, 400) < 1
    print("PASS: exact rational/Taylor enclosures")
    print("  0.43887162260746 < alpha_26 < 0.43887162260747")
    print("  0.35833717932519 < radius_26 < 0.35833717932521")
    print("  0.07308006387000 < distance_26 < 0.07308006387001")


def main():
    h = fourier_matrix()
    verify_hadamard(h)
    verify_all_corners(h)
    verify_lattice(h)
    verify_norm_and_hexagon()
    verify_constants()
    print("FOURIER CONFINEMENT EXACT VERIFIER: PASS")


if __name__ == "__main__":
    main()
