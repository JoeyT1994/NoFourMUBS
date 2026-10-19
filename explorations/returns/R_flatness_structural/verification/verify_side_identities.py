#!/usr/bin/env python3
"""Exact six-phase checks for proofs/SIDE_IDENTITIES.md; no matched-flatness import."""

import sys as _verification_sys
if _verification_sys.flags.optimize:
    raise SystemExit("Assertions are required. Run Python without -O or -OO.")

from itertools import permutations
import sympy as s


variables = s.symbols("x0:3 y0:3", nonzero=True)
x, y = variables[:3], variables[3:]
star_map = {v: 1 / v for v in variables}


def star(expr):
    return s.sympify(expr).xreplace(star_map)


def zero(expr, label):
    # All residuals are Laurent polynomials in six independent unit phases.
    value = s.expand(expr)
    if value != 0:
        value = s.cancel(value)
    assert value == 0, (label, value)
    print("PASS", label)


A = s.Matrix([[1, 1, 1], x, y])
delta = A.det()
U, V = s.prod(x), s.prod(y)
product = U * V
row_products = (s.Integer(1), U, V)
column_products = [x[j] * y[j] for j in range(3)]

for r in range(3):
    for j in range(3):
        cofactor = A.cofactor(r, j)
        zero(
            product * A[r, j] * star(cofactor)
            + row_products[r] * column_products[j] * cofactor,
            f"cofactor phase ({r},{j})",
        )

Nmu = s.Matrix([[1, 1, 1], [x[j] * y[j] for j in range(3)], y]).det()
for j in range(3):
    zero(
        delta * x[j] * y[j]
        + product * star(delta)
        - Nmu * x[j]
        - product * star(Nmu) * y[j],
        f"Mobius multiplication at column {j}",
    )

sv, tv = sum(x), sum(y)
Sv, Tv = star(sv), star(tv)
rv = sum(y[j] / x[j] for j in range(3))
Qv = star(rv)
p = sv * Sv + tv * Tv + rv * Qv
J = sv * rv * Tv + Sv * Qv * tv
g = 27 - 3 * p + J
eta = 9 - p + J
c0 = 9 - rv * Qv
P0 = rv * sv**2 + Qv * tv**2 + (3 - rv * Qv) * sv * tv
pi = sum(s.prod(A[i, perm[i]] for i in range(3)) for perm in permutations(range(3)))

zero(
    c0 * Nmu
    - delta * (3 * tv - rv * sv)
    - product * star(delta) * (3 * Sv - rv * Tv),
    "Gram expression for Mobius coefficient",
)
zero(g - delta * star(delta), "determinant Gram invariant")
zero(eta - pi * star(pi), "permanent Gram invariant")
zero(
    c0 * pi * delta - P0 * delta - g * product * star(delta),
    "lambda identity from Mobius multiplication",
)

P1 = tv * Sv**2 + rv**2 * Tv + (3 - tv * Tv) * rv * Sv
P2 = sv * Tv**2 + Qv**2 * Sv + (3 - sv * Sv) * Qv * Tv
zero((9 - tv * Tv) * pi * delta - U * P1 * delta - g * product * star(delta),
     "lambda identity for normalized row 1")
zero((9 - sv * Sv) * pi * delta - V * P2 * delta - g * product * star(delta),
     "lambda identity for normalized row 2")

pp, jj = s.symbols("p J")
gg, ee = 27 - 3 * pp + jj, 9 - pp + jj
zero((9 - pp - jj) - (gg - 2 * ee), "complementary permanent invariant")
zero((27 - 3 * pp - jj) - (2 * gg - 3 * ee), "complementary determinant invariant")

G = A * star(A).T
square_A = A.applyfunc(lambda value: value**2)
transport = square_A * s.diag(*[1 / value for value in column_products]) * A.T
for r in range(3):
    for q in range(3):
        if r != q:
            k = 3 - r - q
            zero(transport[r, q] - G[r, k], f"L Gram offdiagonal ({r},{q})")
        else:
            zero(
                transport[r, r] - sum(A[r, j]**3 / column_products[j] for j in range(3)),
                f"L Gram diagonal ({r})",
            )

print("All exact structural checks passed.")
