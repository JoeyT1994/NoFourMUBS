#!/usr/bin/env python3
"""Exact spectrum for the standard Bjorck circulant order-six Hadamard.

This is a single nonaffine example, not a classification of a larger sector.
Acceptance uses exact Q(t) arithmetic, t^4=12, with t>0 and sqrt(3)=t^2/2.
"""
from __future__ import annotations

from fractions import Fraction as F
from functools import reduce
from math import lcm
import itertools
import numpy as np

Z = (F(0),) * 4
ONE = (F(1), F(0), F(0), F(0))


def scalar(a=0, b=0, c=0, d=0):
    return tuple(map(F, (a, b, c, d)))


def sadd(a, b):
    return tuple(x+y for x, y in zip(a, b))


def sneg(a):
    return tuple(-x for x in a)


def smul(a, b):
    ans = [F(0)] * 4
    for j, x in enumerate(a):
        for k, y in enumerate(b):
            ans[(j+k) % 4] += x*y*(12 if j+k >= 4 else 1)
    return tuple(ans)


def spow(a, n):
    ans = ONE
    for _ in range(n):
        ans = smul(ans, a)
    return ans


def scale(a, c):
    return tuple(c*x for x in a)


def cadd(x, y):
    return sadd(x[0], y[0]), sadd(x[1], y[1])


def cmul(x, y):
    a, b = x
    c, d = y
    return sadd(smul(a, c), sneg(smul(b, d))), sadd(smul(a, d), smul(b, c))


def conj(x):
    return x[0], sneg(x[1])


def cneg(x):
    return sneg(x[0]), sneg(x[1])


def mmul(a, b):
    ans = tuple(np.zeros((36, 36), dtype=object) for _ in range(4))
    for j, x in enumerate(a):
        if not np.any(x):
            continue
        for k, y in enumerate(b):
            if not np.any(y):
                continue
            ans[(j+k) % 4][:] += (12 if j+k >= 4 else 1) * (x @ y)
    return ans


def madd(a, b):
    return tuple(x+y for x, y in zip(a, b))


def smat(s):
    assert all(x.denominator == 1 for x in s)
    return tuple(int(x)*np.eye(36, dtype=object) for x in s)


def mscale(a, c):
    return tuple(c*x for x in a)


def shift(a, s):
    return madd(a, smat(sneg(s)))


def mtrace(a):
    return tuple(F(np.trace(x)) for x in a)


def iszero(a):
    return not any(np.any(x) for x in a)


def build():
    ci = Z, ONE
    d = scalar(F(1, 2), 0, F(-1, 4)), scalar(0, F(1, 2))
    assert cmul(d, conj(d)) == (ONE, Z)
    first = [(ONE, Z), cmul(ci, d), cneg(d), cneg(ci),
             cneg(conj(d)), cmul(ci, conj(d))]
    h = [[first[(j-a) % 6] for j in range(6)] for a in range(6)]
    for a, b in itertools.product(range(6), repeat=2):
        total = (Z, Z)
        for j in range(6):
            total = cadd(total, cmul(h[a][j], conj(h[b][j])))
        assert total == ((scale(ONE, 6), Z) if a == b else (Z, Z))
    gram = [[Z for _ in range(36)] for _ in range(36)]
    for a, j, b, k in itertools.product(range(6), repeat=4):
        q = cmul(cmul(h[a][j], conj(h[b][j])), cmul(h[b][k], conj(h[a][k])))
        g = sneg(q[0])
        if a == b and j == k:
            g = sadd(g, scale(ONE, 6))
        gram[6*a+j][6*b+k] = g
    denominator = reduce(lcm, (v.denominator for row in gram for g in row for v in g), 1)
    qmat = tuple(np.zeros((36, 36), dtype=object) for _ in range(4))
    for i, j in itertools.product(range(36), repeat=2):
        for k in range(4):
            qmat[k][i, j] = int(denominator * gram[i][j][k])
    return denominator, qmat


def main():
    den, q = build()
    assert all(np.array_equal(x, x.T) for x in q)
    # Eigenvalues of G proposed over Q(sqrt(3)), plus two roots of
    # x^2 -(12sqrt(3)-6)x +(216sqrt(3)-324).
    rational_nodes = [scalar(0), scalar(12), scalar(0, 0, 3),
                      scalar(36, 0, -9), scalar(18, 0, -3)]
    quad_sum = scalar(-6, 0, 6)
    quad_product = scalar(-324, 0, 108)
    annihilator = q
    for root in rational_nodes[1:]:
        annihilator = mmul(annihilator, shift(q, scale(root, den)))
    quadratic = madd(mmul(q, q), mscale(mmul(smat(scale(quad_sum, den)), q), -1))
    quadratic = madd(quadratic, smat(scale(quad_product, den**2)))
    annihilator = mmul(annihilator, quadratic)
    assert iszero(annihilator), 'Bjorck annihilator failed'
    # Distinctness is an exact algebraic check.  Positivity of the quadratic
    # discriminant is proved below by rational bounds on sqrt(3).
    for i, a in enumerate(rational_nodes):
        for b in rational_nodes[i+1:]:
            assert a != b
        assert sadd(sadd(smul(a, a), sneg(smul(quad_sum, a))), quad_product) != Z
    # Power sums of the quadratic roots, without adjoining sqrt(7).
    ps = [scale(ONE, 2), quad_sum]
    for k in range(2, 7):
        ps.append(sadd(smul(quad_sum, ps[-1]), sneg(smul(quad_product, ps[-2]))))
    node_mults = [15, 5, 2, 2, 4]
    power = smat(ONE)
    for k in range(7):
        expected = scale(ps[k], 4)
        for node, mult in zip(rational_nodes, node_mults):
            expected = sadd(expected, scale(spow(node, k), mult))
        assert mtrace(power) == scale(expected, den**k), k
        if k != 6:
            power = mmul(power, q)
    # Exact rational inequalities used for strict minimum identification.
    # r=sqrt(3): 13/8 < r < 26/15 < 49/28, and r>3/2.
    assert F(13, 8)**2 < 3 < F(26, 15)**2
    assert F(26, 15) < F(49, 28)
    assert F(3, 2)**2 < 3
    # For lambda_minus=6r-3-3sqrt(49-28r),
    # lambda_minus > 36-18r follows from
    # 8r-13>0 and (8r-13)^2-(49-28r)=312-180r>0.
    # The other eigenvalues are larger by r>3/2.
    # The minimum singular value 3(r-1) exceeds sqrt(3) iff r>3/2.
    print('PASS: Bjorck circulant matrix is exactly Hadamard')
    print('PASS: degree-seven Gram annihilator and moments 0 through 6')
    print('PASS: horizontal spectrum 0^4,12^5,(6sqrt3)^2,(36-18sqrt3)^2,')
    print('      (18-6sqrt3)^4,(6sqrt3-3 +/- 3sqrt(49-28sqrt3))^4')
    print('PASS: minimum positive singular value 3(sqrt3-1) > sqrt3')
    print('Exact integer matrix scale:', den)


if __name__ == '__main__':
    main()
