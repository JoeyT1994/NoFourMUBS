#!/usr/bin/env python3
"""Small exact structural identities; no flatness theorem is assumed.

Uses independent integer Laurent-polynomial arithmetic from Python's stdlib.
"""

import sys as _verification_sys
if _verification_sys.flags.optimize:
    raise SystemExit("Assertions are required. Run Python without -O or -OO.")

from collections import defaultdict
from itertools import permutations


class LP:
    def __init__(self, terms=None, n=9):
        self.n = n
        if isinstance(terms, int):
            terms = {(0,)*n: terms}
        self.terms = {k: v for k, v in (terms or {}).items() if v}

    def __add__(self, other):
        if isinstance(other, int):
            other = LP(other, self.n)
        d = defaultdict(int, self.terms)
        for k, v in other.terms.items():
            d[k] += v
        return LP(d, self.n)

    __radd__ = __add__

    def __neg__(self):
        return LP({k: -v for k, v in self.terms.items()}, self.n)

    def __sub__(self, other):
        return self + (-other)

    def __mul__(self, other):
        if isinstance(other, int):
            other = LP(other, self.n)
        d = defaultdict(int)
        for k, v in self.terms.items():
            for a, b in other.terms.items():
                d[tuple(x+y for x, y in zip(k, a))] += v*b
        return LP(d, self.n)

    __rmul__ = __mul__

    def star(self):
        return LP({tuple(-x for x in k): v for k, v in self.terms.items()}, self.n)


def var(i, n=9):
    k = [0]*n
    k[i] = 1
    return LP({tuple(k): 1}, n)


def product(xs, n=9):
    out = LP(1, n)
    for x in xs:
        out = out*x
    return out


def det(A, permanent=False):
    n = len(A)
    out = LP(0, A[0][0].n)
    for p in permutations(range(n)):
        sign = 1 if permanent else (-1)**sum(p[i] > p[j]
                    for i in range(n) for j in range(i+1, n))
        out += sign*product((A[i][p[i]] for i in range(n)), A[0][0].n)
    return out


def cofactor(A, i, j):
    return (-1)**(i+j)*det([[A[k][l] for l in range(3) if l != j]
                           for k in range(3) if k != i])


def transpose(A):
    return list(map(list, zip(*A)))


def matmul(A, B):
    return [[sum(A[i][k]*B[k][j] for k in range(len(B)))
             for j in range(len(B[0]))] for i in range(len(A))]


def zeros(A):
    return all(not x.terms for row in A for x in row)


A = [[var(3*i+j) for j in range(3)] for i in range(3)]
Ast = [[x.star() for x in row] for row in A]
A2 = [[x*x for x in row] for row in A]
P = product(x for row in A for x in row)
delta = det(A)
pi = det(A, permanent=True)
assert not (delta*pi-det(A2)-2*P*det(Ast)).terms
print("PASS: det(A) perm(A) = det(A^2) + 2 P det(A^(-1)).")

for i in range(3):
    for j in range(3):
        m = cofactor(A, i, j)
        p = product(A[k][l] for k in range(3) if k != i
                    for l in range(3) if l != j)
        assert not (m+p*m.star()).terms
print("PASS: all nine 2x2 cofactor phase-conjugation identities.")

Ahash = [[product(A[k][j] for k in range(3) if k != i)
          for j in range(3)] for i in range(3)]
adjhash = transpose([[cofactor(Ahash, i, j) for j in range(3)]
                     for i in range(3)])
Lnum = matmul(A2, adjhash)
for i in range(3):
    Ri = product(A[i])
    assert not (Lnum[i][i]+Ri*delta).terms
assert not (det(Ahash)-P*det(Ast)).terms
print("PASS: diag(A^2 adj(A#))_i = -R_i det(A); det(A#)=P det(A^(-1)).")

G = matmul(A, transpose(Ast))
hashgram = matmul(Ahash, transpose([[x.star() for x in row] for row in Ahash]))
assert zeros([[hashgram[i][j]-G[j][i] for j in range(3)] for i in range(3)])
G2 = matmul(A2, transpose([[x.star() for x in row] for row in A2]))
row_products = [product(row) for row in A]
for i in range(3):
    for j in range(3):
        ratio_product = row_products[i]*row_products[j].star()
        assert not (G2[i][j]+2*ratio_product*G[j][i]-G[i][j]*G[i][j]).terms
print("PASS: L G^T L* + 2 diag(bar(lambda)) G^T diag(lambda) = G^(entrywise 2).")

# Six independent phases for a normalized side (1;x;y).
n = 6
one = LP(1, n)
x = [var(i, n) for i in range(3)]
y = [var(i+3, n) for i in range(3)]
A = [[one]*3, x, y]
s, t = sum(x), sum(y)
S, T = s.star(), t.star()
r = sum(y[j]*x[j].star() for j in range(3))
Q = r.star()
U, V = product(x, n), product(y, n)
pi_bar = det(A, permanent=True).star()
M = [[A[i][j]*A[i][j]*x[j].star()*y[j].star()
      for j in range(3)] for i in range(3)]
N = matmul(M, transpose(A))
expected = [[S*T-pi_bar, T, S],
            [Q, s*Q-U*pi_bar, s],
            [r, t, t*r-V*pi_bar]]
assert zeros([[N[i][j]-expected[i][j] for j in range(3)] for i in range(3)])
print("PASS: L_A G^T = N0(G) - bar(z) diag(bar(lambda)).")
print("The final notation uses pi=z*lambda0, U=lambda0*bar(lambda1),")
print("and the analogous V identity; all polynomial coefficients above were checked exactly.")
