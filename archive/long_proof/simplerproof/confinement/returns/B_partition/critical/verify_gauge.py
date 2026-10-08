#!/usr/bin/env python3
"""Exact, dependency-free checks for the sharpened six-column gauge.

Every acceptance uses fractions.Fraction and integer arithmetic. Decimal
output is informational only. Run: python3 verify_gauge.py
"""
from fractions import Fraction as Q
from math import comb, factorial, isqrt


def sqrt_lower(x, places=20):
    scale = 10**places
    k = isqrt(x.numerator * scale**2 // x.denominator)
    lo, hi = Q(k, scale), Q(k + 1, scale)
    assert lo * lo <= x < hi * hi
    return lo, hi


def cos_bounds_from_square(x2, last_even=14):
    """Bounds for cos(sqrt(x2)), using the alternating Taylor series."""
    assert 0 <= x2 <= 1 and last_even % 2 == 0
    upper = sum((-1)**j * x2**j / factorial(2*j)
                for j in range(last_even + 1))
    lower = upper - x2**(last_even + 1) / factorial(2*last_even + 2)
    return lower, upper


def f3_inverse_square_bounds(y):
    # rho(r) <= y iff r^2 <= 1 - ((5 + cos(y/sqrt(6)))/6)^2.
    cl, ch = cos_bounds_from_square(y*y/6)
    return 1 - ((5+ch)/6)**2, 1 - ((5+cl)/6)**2


def assert_f3_rho_interval(r, lo, hi):
    _, inv_lo_hi = f3_inverse_square_bounds(lo)
    inv_hi_lo, _ = f3_inverse_square_bounds(hi)
    assert inv_lo_hi < r*r < inv_hi_lo


def improved_square_upper(r, order=5, places=20):
    s, _ = sqrt_lower(1-r*r, places)
    b = 2*(1-3*s+2/s)
    q = b/4
    assert 0 < q < 1
    # asin(sqrt(q))/sqrt(q) = sum a_j q^j. All a_j <= 1.
    f = sum(Q(comb(2*j, j), 4**j*(2*j+1))*q**j
            for j in range(order+1))
    f += q**(order+1)/(1-q)
    return 72*(1-s)*f*f


def main():
    assert_f3_rho_interval(Q(75,1000), Q('0.4509537624'), Q('0.4509537626'))
    assert_f3_rho_interval(Q('0.09138'), Q('0.5500091004'), Q('0.5500091006'))
    assert_f3_rho_interval(Q('0.0914'), Q('0.5501302414'), Q('0.5501302416'))
    rl, rh = f3_inverse_square_bounds(Q(11,20))
    assert Q('0.0913784975325')**2 < rl
    assert rh < Q('0.0913784975326')**2
    # An especially short certificate for the originally proposed 0.0914.
    r = Q('0.0914')
    s = Q(995814259,10**9)
    assert s*s < 1-r*r
    q = (1-3*s+2/s)/2
    # a_j <= 1/6 for j >= 1, giving this geometric majorant.
    f = 1 + q/(6*(1-q))
    assert 72*(1-s)*f*f < Q('0.54995')**2
    # A slightly stronger terminal radius, still with comfortable exact margins.
    assert improved_square_upper(Q('0.09141')) < Q('0.549999')**2
    assert improved_square_upper(Q('0.09141018')) < Q('0.54999998')**2
    print('GAUGE EXACT PASS')
    print('Original F3 threshold lies in (0.0913784975325, 0.0913784975326).')
    print('Sharper gauge: d_F <= 0.0914 implies nu < 0.54995.')
    print('Sharper gauge: d_F <= 0.09141 implies nu < 0.549999.')


if __name__ == '__main__':
    main()
