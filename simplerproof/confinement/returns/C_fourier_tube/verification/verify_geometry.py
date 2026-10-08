#!/usr/bin/env python3
"""Exact rational comparisons used in GEOMETRY_AND_GAUGE.md.

The compactness and continuity arguments are mathematical proofs, not tests.
This script checks the projection identities and all cutoff comparisons.
"""
from fractions import Fraction as Q


def verify():
    P = [[(Q(int(i//6 == j//6)) - Q(1, 6)) *
          (Q(int(i % 6 == j % 6)) - Q(1, 6))
          for j in range(36)] for i in range(36)]
    assert all(36*x == int(36*x) for row in P for x in row)
    assert all(P[i][j] == P[j][i] for i in range(36) for j in range(36))
    assert all(sum(P[i][k]*P[k][j] for k in range(36)) == P[i][j]
               for i in range(36) for j in range(36))
    assert sum(P[i][i] for i in range(36)) == 25
    for col in range(36):
        assert all(sum(P[6*r+c][col] for c in range(6)) == 0 for r in range(6))
        assert all(sum(P[6*r+c][col] for r in range(6)) == 0 for c in range(6))
    print('PASS: rational horizontal projection, rank 25, denominator divides 36')

    # r=0.0914, K is a strict upper bound for kappa(r).
    r = Q(457, 5000)
    K = Q(5023, 100000)
    B = Q(21, 500)
    assert 0 < r < Q(1, 10)
    assert 0 < K < 1
    assert 0 < 1-K/12
    assert (1-K/12)**2 < 1-r*r
    # For x <= kappa, 6x-x^2/4 >= x(6-kappa/4).
    assert 5*K/(6-K/4) < B < 1
    f = 1 + B/(6*(4-B))
    assert 6*K*f*f < Q(11, 20)**2
    print('PASS: d_F <= 457/5000 implies nu < 11/20')
    print('Exact positive squared-radius margin:', Q(11, 20)**2-6*K*f*f)

    assert Q(451, 1000) < Q(11, 20)
    assert 26 < Q(657, 25)  # 26.28
    print('PASS: all threshold comparisons in the compact outer-set reduction')


if __name__ == '__main__':
    verify()
    print('GEOMETRY AND GAUGE VERIFICATION PASS')
