#!/usr/bin/env python3
"""Replay the XS side-angle bound, relative to the accepted W tube theorem.

This does not re-run W's unavailable chart certificate.  It checks all new
algebra exactly, then checks the numerical comparisons in Arb.  Required input
from W_REPORT, equations (9)--(10): on tangent radius 1/5, the chart exists and
|x-x_lin|_infinity < 153/10000 on both sides.  The code computes the exact
linear derivative from the augmented Gram/signature system, rather than using
edge_phase._side_jac's floating finite differences.

Dependency: python-flint.  Example in the supplied execution environment:
  python verify_side_bound.py
"""
from __future__ import annotations

from collections import defaultdict
from dataclasses import dataclass
from fractions import Fraction as F
from itertools import permutations, product
import json

from flint import arb, ctx


@dataclass(frozen=True)
class Q3:
    """An exact element a+b*sqrt(3)."""
    a: F = F(0)
    b: F = F(0)

    def __post_init__(self):
        object.__setattr__(self, "a", F(self.a))
        object.__setattr__(self, "b", F(self.b))

    @staticmethod
    def coerce(x):
        return x if isinstance(x, Q3) else Q3(F(x))

    def __add__(self, x):
        x = self.coerce(x)
        return Q3(self.a+x.a, self.b+x.b)

    __radd__ = __add__

    def __neg__(self):
        return Q3(-self.a, -self.b)

    def __sub__(self, x):
        return self + (-self.coerce(x))

    def __rsub__(self, x):
        return self.coerce(x) - self

    def __mul__(self, x):
        x = self.coerce(x)
        return Q3(self.a*x.a+3*self.b*x.b, self.a*x.b+self.b*x.a)

    __rmul__ = __mul__

    def __truediv__(self, x):
        x = self.coerce(x)
        n = x.a*x.a-3*x.b*x.b
        if not n:
            raise ZeroDivisionError
        return self * Q3(x.a/n, -x.b/n)

    def __bool__(self):
        return bool(self.a or self.b)


def root6(k):
    """Exact real and imaginary parts of exp(i*pi*k/3)."""
    half, rt = Q3(F(1, 2)), Q3(0, F(1, 2))
    return [(Q3(1), Q3()), (half, rt), (-half, rt),
            (Q3(-1), Q3()), (-half, -rt), (half, -rt)][k % 6]


def nonsingular(A):
    A = [list(row) for row in A]
    determinant = Q3(1)
    for k in range(len(A)):
        pivot = next((j for j in range(k, len(A)) if A[j][k]), None)
        assert pivot is not None, "singular augmented Jacobian"
        if pivot != k:
            A[k], A[pivot] = A[pivot], A[k]
            determinant = -determinant
        v = A[k][k]
        determinant *= v
        for j in range(k+1, len(A)):
            multiplier = A[j][k]/v
            for l in range(k, len(A)):
                A[j][l] -= multiplier*A[k][l]
    return determinant


def signature_coefficients():
    """perm(B)*det(B)^2 / prod(B_ij), with B=[ones;x;y]."""
    ps = list(permutations(range(3)))
    signs = [(-1)**sum(p[i] > p[j] for i in range(3)
                      for j in range(i+1, 3)) for p in ps]
    c = defaultdict(int)
    for a, b, d in product(range(6), repeat=3):
        nu = [-1]*6
        for v in (ps[a], ps[b], ps[d]):
            nu[v[1]] += 1
            nu[3+v[2]] += 1
        c[tuple(nu)] += signs[b]*signs[d]
    return {nu: z for nu, z in c.items() if z}


def augmented_derivative():
    # z=(u1,u2,u3,theta4 increment, six side increments).
    terms = [defaultdict(int) for _ in range(4)]
    def add(c, entries, coefficient=1):
        n = [0]*10
        for index, value in entries:
            n[index] += value
        terms[c][tuple(n)] += coefficient
    for j in range(3):
        add(0, [(4+j, 1)])
        add(1, [(7+j, 1)])
        add(2, [(7+j, 1), (4+j, -1)])
    for c in range(3):
        add(c, [])
    add(0, [(0, 1)])
    add(0, [(1, 1)])
    add(1, [(2, 1)])
    add(1, [(3, 1)])
    add(2, [(2, 1), (0, -1)])
    add(2, [(3, 1), (1, -1)])
    sig = signature_coefficients()
    assert len(sig) == 55
    for nu, value in sig.items():
        terms[3][(0, 0, 0, 0)+nu] += value
    base = (1, 2, 2, 4, 3, 4, 5, 0, 2, 4)
    J = [[Q3() for _ in range(10)] for _ in range(7)]
    constant = [Q3() for _ in range(7)]
    for c, group in enumerate(terms):
        for n, value in group.items():
            re, im = root6(sum(a*b for a, b in zip(n, base)))
            if c < 3:
                constant[2*c] += value*re
                constant[2*c+1] += value*im
            else:
                constant[6] += value*im/24
            for j in range(10):
                if c < 3:
                    J[2*c][j] -= value*n[j]*im
                    J[2*c+1][j] += value*n[j]*re
                else:
                    J[6][j] += value*n[j]*re/24
    assert not any(constant), "F(0,0) is not zero"
    Jx = [row[3:] for row in J]
    Jp = [row[:3]+[Q3(F(1, 48)) if i == 6 else Q3()]
          for i, row in enumerate(J)]
    det = nonsingular(Jx)
    Dh = [[F(0)]*4,
          [F(1, 2), F(-1, 4), F(1, 4), F(1, 48)],
          [F(1, 2), F(1, 4), F(-1, 4), F(-1, 48)],
          [F(1, 2), F(3, 4), F(1, 4), F(1, 48)],
          [F(0), F(0), F(1), F(0)],
          [F(0)]*4,
          [F(0), F(0), F(1), F(0)]]
    assert all(not (sum((Jx[i][k]*Dh[k][j] for k in range(7)), Q3())
                    + Jp[i][j]) for i in range(7) for j in range(4))
    return Dh, det


def inverse_rational(A):
    n = len(A)
    A = [[F(x) for x in row] + [F(i == j) for j in range(n)]
         for i, row in enumerate(A)]
    for k in range(n):
        pivot = next(i for i in range(k, n) if A[i][k])
        A[k], A[pivot] = A[pivot], A[k]
        v = A[k][k]
        A[k] = [x/v for x in A[k]]
        for i in range(n):
            if i != k:
                v = A[i][k]
                A[i] = [x-v*y for x, y in zip(A[i], A[k])]
    return [row[n:] for row in A]


def A(x):
    x = F(x)
    return arb(x.numerator)/x.denominator


def main():
    ctx.prec = 192
    Dh, det = augmented_derivative()
    W = [[1, F(-1, 2), F(-1, 2), 0],
         [F(-1, 2), F(7, 4), F(1, 4), 0],
         [F(-1, 2), F(1, 4), F(7, 4), 0],
         [0, 0, 0, 1]]
    W_inv = inverse_rational(W)
    # q=(u1,u2,u3,y/24); so coefficient on the fourth q coordinate is 24 times.
    Dq = [row[:3]+[24*row[3]] for row in Dh]
    squared = [sum(row[i]*W_inv[i][j]*row[j]
                   for i in range(4) for j in range(4)) for row in Dq]
    assert squared == [F(0), F(2, 3), F(2, 3), F(4, 3), F(2, 3), F(0), F(2, 3)]
    transpose = [[F(i == j) for j in range(4)] for i in range(4)]
    transpose[1], transpose[2] = transpose[2], transpose[1]
    transpose[3][3] = -1
    WT = [[sum(transpose[k][i]*W[k][l]*transpose[l][j]
               for k in range(4) for l in range(4)) for j in range(4)]
          for i in range(4)]
    assert WT == W
    epsilon = A(F(153, 10000))
    table = []
    for t in [F(23, 200), F(13, 100), F(1, 5)]:
        bound = 2*A(t)/arb(3).sqrt()+epsilon
        assert bound < arb.pi()/6
        table.append({"t": str(t), "side_sup_strict_upper_expression": "2*t/sqrt(3)+153/10000",
                      "bound_arb": str(bound), "margin_to_pi_over_6_arb": str(arb.pi()/6-bound)})
    # Fixed reference columns in units pi/3.  Their two-dimensional circular
    # sup-norm separation is 2*pi/3, slightly stronger than the brief requires.
    columns = [(3, 0), (4, 2), (5, 4)]
    circular = lambda a, b: min((a-b) % 6, (b-a) % 6)
    separations = [max(circular(a[k], b[k]) for k in range(2))
                   for a, b in product(columns, repeat=2) if a != b]
    assert min(separations) == 2
    print(json.dumps({
        "status": "CERTIFIED new algebra and comparisons, conditional on the supplied W chart/tube theorem",
        "external_input": "W_REPORT equations (9)--(10), chart on t<=1/5 and uniform side-predictor error <153/10000",
        "replays_W_certificate": False,
        "augmented_Jacobian_determinant": {"rational": str(det.a), "sqrt3_coefficient": str(det.b)},
        "D_h_raw_p": [[str(x) for x in row] for row in Dh],
        "linear_squared_dual_norms_including_theta4": [str(x) for x in squared],
        "largest_t_in_this_proof": "1/5",
        "table": table,
        "fixed_reference_column_separation": "2*pi/3",
        "nearest_order_sufficient_condition": "correctly aligned side error <pi/3",
        "scope_warning": "The bound concerns the chart sides. It does not place another completion with the same extracted p in a chart tube, or determine raw phase windings without a chosen lift."
    }, indent=2))


if __name__ == "__main__":
    main()
