#!/usr/bin/env python3
"""Exact universal coefficient certificate for d(B)=2 Im q(B).

Python standard library only. No floating-point acceptance comparisons.
The analytic use of this coefficient table is explained in
../SIGNED_INVARIANT_BOUNDS.md.
"""
from collections import Counter, defaultdict
from fractions import Fraction as Q
from itertools import permutations


def signed_laurent():
    perms = list(permutations(range(3)))
    signs = [(-1) ** sum(p[i] > p[j] for i in range(3)
                        for j in range(i + 1, 3)) for p in perms]
    exponents = [tuple(int(j == p[i]) for i in range(3) for j in range(3))
                 for p in perms]
    q = defaultdict(int)
    for a in exponents:
        for ib, b in enumerate(exponents):
            for ic, c in enumerate(exponents):
                q[tuple(x + y + z - 1 for x, y, z in zip(a, b, c))] += (
                    signs[ib] * signs[ic])
    q = {k: v for k, v in q.items() if v}
    delta = defaultdict(int, q)
    for k, v in q.items():
        delta[tuple(-x for x in k)] -= v
    return q, {k: v for k, v in delta.items() if v}


def verify():
    q, delta = signed_laurent()
    assert len(q) == 55
    assert len(delta) == 48
    assert Counter(delta.values()) == Counter({1: 24, -1: 24})
    assert Counter(sum(x*x for x in k) for k in delta) == Counter({10: 36, 18: 12})
    for k, c in delta.items():
        assert delta[tuple(-x for x in k)] == -c
        assert all(sum(k[3*i+j] for j in range(3)) == 0 for i in range(3))
        assert all(sum(k[3*i+j] for i in range(3)) == 0 for j in range(3))

    # P is the orthogonal projection onto 3x3 matrices with zero row/column sums.
    P = [[(Q(int(i//3 == j//3)) - Q(1, 3)) *
          (Q(int(i % 3 == j % 3)) - Q(1, 3))
          for j in range(9)] for i in range(9)]
    G = [[sum(k[i]*k[j] for k in delta) for j in range(9)] for i in range(9)]
    assert all(G[i][j] == 144*P[i][j] for i in range(9) for j in range(9))
    assert all(sum(P[i][k]*P[k][j] for k in range(9)) == P[i][j]
               for i in range(9) for j in range(9))
    assert sum(P[i][i] for i in range(9)) == 4
    print('PASS: 48 signed Laurent terms, all coefficients +/-1')
    print('PASS: exact frequency Gram matrix is 144 times a rank-four projection')
    print('PASS: analytic bounds give Lipschitz 48*sqrt(3), Hessian norm 144')

    # A fully rational proof of the 1/40 tube consequence, using only the
    # universal Lipschitz constant (independent of the stronger tube result).
    assert Q(51, 10)**2 > 26
    assert Q(17321, 10000)**2 > 3
    assert Q(817, 1000)**2 > Q(2, 3)
    eta = Q(1, 40)
    x = (Q(51, 10) + 48*Q(17321, 10000)*eta)/12
    t = Q(321, 500)
    lower_sine = t-t**3/6+t**5/120-t**7/5040
    assert 0 < t < 1
    assert x < lower_sine
    assert eta + Q(817, 1000)*t < Q(11, 20)
    print('PASS: exact rational certificate for the entire 1/40 Fourier-family tube')


if __name__ == '__main__':
    verify()
    print('SIGNED INVARIANT VERIFICATION PASS')
