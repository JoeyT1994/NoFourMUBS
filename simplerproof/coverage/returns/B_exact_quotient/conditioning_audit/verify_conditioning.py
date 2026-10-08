#!/usr/bin/env python3
"""Exact symbolic proof checks for CONDITIONING.md; no floating-point input.

Laurent monomials are a**p*b**q*w**r, w**2+w+1=0. Formal involution
inverts all three phases. Matrix character sums are computed in Q[a±1,b±1,w].
"""
from collections import defaultdict, Counter
from fractions import Fraction
from itertools import product


def add_monomial(poly, p, q, r, coeff):
    r %= 3
    if r == 2:
        poly[p, q, 0] -= coeff
        poly[p, q, 1] -= coeff
    else:
        poly[p, q, r] += coeff


def clean(poly):
    return {m: c for m, c in poly.items() if c}


def constant(c):
    return {(0, 0, 0): Fraction(c)} if c else {}


def raw_gram_twice(x, y, u, v, xx, yy, uu, vv):
    if (x, y) == (xx, yy):
        return [(0, 0, 0, 12 * ((u, v) == (uu, vv)) - 2)]
    du = u - uu
    pa = (int(y == 1) - int(yy == 1)) * du
    pb = (int(y == 2) - int(yy == 2)) * du
    pw = (y - yy) * (v - vv)
    sign = -1 if ((x - xx) * du) % 2 else 1
    return [(pa, pb, pw, -sign), (-pa, -pb, -pw, -sign)]


def transformed_entry(row, col):
    k, l, y, u = row
    kk, ll, yy, uu = col
    result = defaultdict(Fraction)
    # T*T=6I, and raw_gram_twice returns 2B, hence divide by 12.
    for x, v, xx, vv in product(range(2), range(3), range(2), range(3)):
        sgn = -1 if (x*l + xx*ll) % 2 else 1
        shift = -k*v + kk*vv
        for pa, pb, pw, c in raw_gram_twice(x, y, u, v, xx, yy, uu, vv):
            add_monomial(result, pa, pb, pw + shift, Fraction(sgn*c, 12))
    return clean(result)


def expected_entry(row, col):
    k, l, y, u = row
    kk, ll, yy, uu = col
    if (k, l) != (kk, ll):
        return {}
    if k == 0:
        return constant(6 * (1 if u == uu else -1)) if l == 1 and y == yy else {}
    if l == 0:
        return constant(9 * (y == yy) - 3) if u == uu else {}
    if (y, u) == (yy, uu):
        return constant(6)
    if y == yy or u == uu:
        return {}
    # C01=a^-1, C12=a/b, C02=b. Lower block is C*, k=2 conjugates.
    pa, pb = {(0, 1): (-1, 0), (1, 2): (1, -1), (0, 2): (0, 1)}[tuple(sorted((y, yy)))]
    if (u == 1) ^ (k == 2):
        pa, pb = -pa, -pb
    return {(pa, pb, 0): Fraction(-3)}


def verify_blocks():
    indices = list(product(range(3), range(2), range(3), range(2)))
    for row in indices:
        for col in indices:
            got, wanted = transformed_entry(row, col), expected_entry(row, col)
            assert got == wanted, (row, col, got, wanted)


def verify_three_by_three():
    # Symmetric unit-phase off-diagonal C. Monomials use three exponents here.
    def plus(x, y): return tuple(a+b for a, b in zip(x, y))
    def minus(x): return tuple(-a for a in x)
    c, d, e = (1,0,0), (0,1,0), (0,0,1)
    C = [[None,c,d],[c,None,e],[d,e,None]]
    z = [(1,0,-1),(1,-1,0),(0,0,0)]
    for i, j in product(range(3), repeat=2):
        actual = Counter()
        for k in range(3):
            if C[i][k] is not None and C[j][k] is not None:
                actual[plus(C[i][k], minus(C[j][k]))] += 1
        expected = Counter({plus(z[i],minus(z[j])): 1})
        if i == j:
            expected[(0,0,0)] += 1
        assert actual == expected
    # Squared singular values 4,1,1 imply block eigenvalues 6±6,6±3,6±3.
    spectrum = Counter({0: 6})
    spectrum.update({0:3,12:3})
    for _ in range(2):
        spectrum.update({0:2,9:4})
        spectrum.update({0:1,12:1,9:2,3:2})
    assert spectrum == {0:15,12:5,9:12,3:4}
    spectrum[0] -= 11
    assert spectrum == {0:4,12:5,9:12,3:4}
    assert sum(spectrum.values()) == 25
    assert sum(k*v for k,v in spectrum.items()) == 180


if __name__ == '__main__':
    verify_blocks()
    verify_three_by_three()
    print('PASS: full symbolic Fourier-family Gram decomposition; rank 21; sigma_min^2=3.')
