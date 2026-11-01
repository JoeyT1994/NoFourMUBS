#!/usr/bin/env python3
"""Exact elementary checks supporting RANK_LEMMA.md (standard library)."""
from itertools import product


def dot(a, b):
    return sum(x*y for x, y in zip(a, b))


def multiply(a, b):
    out = {}
    for ka, va in a.items():
        for kb, vb in b.items():
            key = tuple(x+y for x, y in zip(ka, kb))
            out[key] = out.get(key, 0) + va*vb
    return {k: v for k, v in out.items() if v}


def add(*polys):
    out = {}
    for p in polys:
        for k, v in p.items():
            out[k] = out.get(k, 0) + v
    return {k: v for k, v in out.items() if v}


def negate(p):
    return {k: -v for k, v in p.items()}


def monomial(e):
    return {tuple(e): 1}


def main():
    n = 6
    signs = list(product((-1, 1), repeat=n))
    one = (1,)*n
    balanced = [v for v in signs if dot(one, v) == 0]
    assert len(balanced) == 20
    assert all(dot(u, v) != 0 for u in balanced for v in balanced)
    # a,b,A,B,u stand for a,b,conj(a),conj(b),u, with conj(u)=u^-1.
    a, b, A, B, u = [monomial([int(i == j) for i in range(5)])
                      for j in range(5)]
    iu = monomial([0, 0, 0, 0, -1])
    one_poly = monomial([0]*5)
    lhs = multiply(u, add(multiply(add(a, multiply(b, u)),
                                  add(A, multiply(B, iu))),
                          negate(one_poly)))
    rhs = add(multiply(multiply(A, b), multiply(u, u)),
              multiply(add(multiply(a, A), multiply(b, B),
                           negate(one_poly)), u),
              multiply(a, B))
    assert lhs == rhs
    print('PASS: no three orthogonal sign vectors of length six')
    print('PASS: exact unit-circle quadratic identity')
    print('ALL EXACT CHECKS PASSED')


if __name__ == '__main__':
    main()
