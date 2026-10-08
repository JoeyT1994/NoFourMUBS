#!/usr/bin/env python3
"""Exact, dependency-free certificate for the signed-invariant Lipschitz bound.

All acceptance comparisons use integers or fractions.Fraction.  Printed decimal
values are only a convenience; they are not used in any acceptance test.
"""
from collections import defaultdict
from fractions import Fraction as Q
from itertools import permutations, product
from math import comb, isqrt


def signed_polynomial():
    """Return (q-conj(q)) as a Laurent polynomial in nine unit entries."""
    ps = list(permutations(range(3)))
    signs = [(-1) ** sum(p[i] > p[j] for i in range(3)
                         for j in range(i + 1, 3)) for p in ps]
    q = defaultdict(int)
    for p0, p1, p2 in product(range(6), repeat=3):
        exponent = [-1] * 9
        for k in (p0, p1, p2):
            for i, j in enumerate(ps[k]):
                exponent[3 * i + j] += 1
        q[tuple(exponent)] += signs[p1] * signs[p2]
    anti = defaultdict(int)
    for exponent, coefficient in q.items():
        anti[exponent] += coefficient
        anti[tuple(-v for v in exponent)] -= coefficient
    return {e: c for e, c in anti.items() if c}


def sqrt_bounds(x, digits=30):
    scale = 10 ** digits
    lo = isqrt(x.numerator * scale * scale // x.denominator)
    a, b = Q(lo, scale), Q(lo + 1, scale)
    assert a * a <= x <= b * b
    return a, b


def asin_upper(x, n=80):
    """Positive Taylor series, with a proved geometric upper bound for its tail."""
    assert 0 <= x < 1
    partial = sum(Q(comb(2 * k, k), 4 ** k * (2 * k + 1))
                  * x ** (2 * k + 1) for k in range(n))
    # Each coefficient is <=1, including all omitted coefficients.
    return partial + x ** (2 * n + 1) / (1 - x * x)


def main():
    anti = signed_polynomial()
    assert len(anti) == 48
    assert set(anti.values()) == {-1, 1}
    for e, c in anti.items():
        assert anti[tuple(-v for v in e)] == -c
        assert all(sum(e[3 * i + j] for j in range(3)) == 0 for i in range(3))
        assert all(sum(e[3 * i + j] for i in range(3)) == 0 for j in range(3))
    # Sum_{ell} ell ell^T = 144 P_3, where P_3 projects to matrices with
    # zero row and column sums.  This identity proves the global derivative
    # bound ||grad (2 Im q)|| <= sqrt(48*144) = 48 sqrt(3).
    for i in range(9):
        ir, ic = divmod(i, 3)
        for j in range(9):
            jr, jc = divmod(j, 3)
            observed = sum(e[i] * e[j] for e in anti)
            projected = ((Q(int(ir == jr)) - Q(1, 3))
                         * (Q(int(ic == jc)) - Q(1, 3)))
            assert observed == 144 * projected
    # This same identity also bounds every bilinear second derivative by
    # 144 ||v|| ||w||, directly by Cauchy--Schwarz.
    delta = Q(1, 40)
    root26 = sqrt_bounds(Q(26))[1]
    root3 = sqrt_bounds(Q(3))[1]
    root23 = sqrt_bounds(Q(2, 3))[1]
    x = (root26 + 48 * root3 * delta) / 12
    assert x < 1
    bound = delta + root23 * asin_upper(x)
    assert bound < Q(548503, 1000000) < Q(11, 20)
    print('Signed Laurent polynomial: 48 coefficients, each +/-1: PASS')
    print('Exponent covariance = 144 P_3: PASS')
    print('Global Lipschitz constant 48 sqrt(3): PASS')
    print('Global Hessian bound 144: PASS')
    print('Fourier-tube radius 1/40 gives nu < 0.548503 < 0.55: PASS')
    print('TUBE VERIFICATION PASS')


if __name__ == '__main__':
    main()
