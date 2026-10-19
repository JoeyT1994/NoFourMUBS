#!/usr/bin/env python3
"""Exact counterexample to two PRIOR, untrusted structural assertions.

This does not refute Handoff R, which only claims flatness for matched sides.
Arithmetic is in Z[w]/(w^2+w+1), using only the standard library.
"""

import sys as _verification_sys
if _verification_sys.flags.optimize:
    raise SystemExit("Assertions are required. Run Python without -O or -OO.")


from itertools import permutations


def add(x, y):
    return x[0] + y[0], x[1] + y[1]


def neg(x):
    return -x[0], -x[1]


def mul(x, y):
    a, b = x
    c, d = y
    return a*c - b*d, a*d + b*c - b*d


def conj(x):
    return x[0] - x[1], -x[1]


def prod(xs):
    result = (1, 0)
    for x in xs:
        result = mul(result, x)
    return result


def total(xs):
    result = (0, 0)
    for x in xs:
        result = add(result, x)
    return result


def det(A, permanent=False):
    n = len(A)
    terms = []
    for p in permutations(range(n)):
        term = prod(A[i][p[i]] for i in range(n))
        parity = sum(p[i] > p[j] for i in range(n) for j in range(i+1, n))
        terms.append(term if permanent or parity % 2 == 0 else neg(term))
    return total(terms)


def sub(A, rows, cols):
    return [[A[i][j] for j in cols] for i in rows]


def psi(A):
    delta = det(A)
    # All entries have modulus one, so conjugate(product) is its inverse.
    return prod([det(A, permanent=True), delta, delta,
                 conj(prod(x for row in A for x in row))])


one, w, w2 = (1, 0), (0, 1), (-1, -1)
H = [
    [one, one, one, one, one, one],
    [one, one, w, w, w2, w2],
    [one, w, one, w2, w2, w],
    [one, w, w2, one, w, w2],
    [one, w2, w2, w, one, w],
    [one, w2, w, w2, w, one],
]

assert all(mul(x, conj(x)) == one for row in H for x in row)
assert all(total(mul(H[i][k], conj(H[j][k])) for k in range(6))
           == ((6, 0) if i == j else (0, 0))
           for i in range(6) for j in range(6))

lo, hi = list(range(3)), list(range(3, 6))
E, B, C, D = [sub(H, rows, cols)
              for rows, cols in ((lo, lo), (lo, hi), (hi, lo), (hi, hi))]
assert det(B) == det(C) == (3, 0)
assert psi(B) == psi(C) == (9, -9)
psi_residual = add(psi(B), neg(conj(psi(C))))
assert psi_residual == (-9, -18)

# Compute the strict invariants directly from the corner, in the same ring.
Gh = [[add((6, 0) if i == j else (0, 0),
           neg(total(mul(E[i][k], conj(E[j][k])) for k in range(3))))
       for j in range(3)] for i in range(3)]
s, t, r = Gh[1][0], Gh[2][0], Gh[2][1]
S, T, Q = conj(s), conj(t), conj(r)
X, Y, Z = mul(s, S), mul(t, T), mul(r, Q)
p = total((X, Y, Z))
J = add(prod((s, r, T)), prod((S, Q, t)))
g = total(((27, 0), neg(mul((3, 0), p)), J))
eta = total(((9, 0), neg(p), J))
chi = total((mul(X, Y), mul(X, Z), mul(Y, Z), neg(prod((X, Y, Z))),
             neg(mul(add(p, (-9, 0)), add(p, (-18, 0)))),
             mul(add(p, (-15, 0)), J)))
R = add(prod(((4, 0), g, g, eta)), neg(mul(chi, chi)))
assert (g, eta, chi, R) == ((9, 0), (3, 0), (-27, 0), (243, 0))

delta_H = det(H)
assert delta_H == (-216, 0)
tau = (-1, 0)


def transformed(rows):
    column_products = [prod(H[k][j] for k in rows) for j in range(6)]
    return [[prod([H[i][j], H[i][j], conj(column_products[j])])
             for j in range(6)] for i in rows]


Alo, Ahi = transformed(lo), transformed(hi)
lhs = det(sub(Alo, lo, lo))
rhs = mul(conj(tau), conj(det(sub(Ahi, lo, hi))))
# The cofactor parity (-1)^(sum(I)+sum(J)) is +1 for I=J={0,1,2}.
assert lhs == (3, 0)
assert rhs == (0, 3)
assert add(lhs, neg(rhs)) == (3, -3)

print("PASS: Tao is phase-flat and HH*=6I exactly.")
print("Strict invariants: g=9, eta=3, chi=-27, R=243 > 0.")
print("Psi(B) = Psi(C) = 9 - 9*w.")
print("Psi(B) - conjugate(Psi(C)) = -9 - 18*w != 0.")
print("Prior squared-complement identity: lhs=3, rhs=3*w; residual != 0.")
print("This only rejects the prior universal claims; it does not refute Handoff R.")
