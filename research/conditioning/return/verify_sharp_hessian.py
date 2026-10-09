#!/usr/bin/env python3
"""Exact checks for SHARP_HESSIAN_BOUND.md; standard library only."""
from fractions import Fraction as F
from itertools import combinations
import json


def check(condition, message):
    if not condition:
        raise AssertionError(message)


def var(i):
    return {(i,): F(1)}


def add(*polys):
    result = {}
    for poly in polys:
        for monomial, coefficient in poly.items():
            result[monomial] = result.get(monomial, F(0)) + coefficient
            if not result[monomial]:
                del result[monomial]
    return result


def scale(poly, c):
    return {m: c * a for m, a in poly.items() if c * a}


def mul(poly, other):
    result = {}
    for a, ca in poly.items():
        for b, cb in other.items():
            m = tuple(sorted(a + b))
            result[m] = result.get(m, F(0)) + ca * cb
            if not result[m]:
                del result[m]
    return result


def power(poly, exponent):
    result = {(): F(1)}
    for _ in range(exponent):
        result = mul(result, poly)
    return result


def main():
    n = 6
    # Symmetric Gram identity before imposing the row-sum constraints.
    indices = {(i, j): k for k, (i, j) in enumerate(
        (i, j) for i in range(n) for j in range(i, n))}
    def g(i, j):
        return var(indices[min(i, j), max(i, j)])
    diagonal = add(*(power(g(i, i), 2) for i in range(n)))
    trace = add(*(g(i, i) for i in range(n)))
    trace_square = add(*(power(g(i, j), 2) for i in range(n) for j in range(n)))
    left = add(*(power(add(g(i, i), g(j, j), scale(g(i, j), -2)), 2)
                 for i, j in combinations(range(n), 2)))
    correction = add(*(mul(g(i, i), add(*(g(i, j) for j in range(n))))
                       for i in range(n)))
    right = add(scale(diagonal, n), power(trace, 2),
                scale(trace_square, 2), scale(correction, -4))
    check(left == right, "universal Gram fourth-distance identity failed")

    # General scalar identity, with zero-sum term retained.
    xs = [var(i) for i in range(n)]
    moments = {k: add(*(power(x, k) for x in xs)) for k in range(1, 5)}
    scalar_left = add(*(power(add(xs[i], scale(xs[j], -1)), 4)
                        for i, j in combinations(range(n), 2)))
    scalar_right = add(scale(moments[4], n), scale(power(moments[2], 2), 3),
                       scale(mul(moments[1], moments[3]), -4))
    check(scalar_left == scalar_right, "scalar fourth-distance identity failed")

    cases = {}
    for k in range(1, 6):
        a_squared = F(6 - k, 6 * k)
        b_squared = F(k, 6 * (6 - k))
        fourth = k * a_squared**2 + (6 - k) * b_squared**2
        check(fourth == F(6, k * (6 - k)) - F(1, 2),
              "two-coordinate-value fourth-moment identity failed")
        check(fourth <= F(7, 10), "two-value fourth moment exceeds 7/10")
        cases[k] = str(fourth)
    check(F(1, 2) < F(7, 10), "three-root stationary case not dominated")

    # Sharpness with u_ij = xraw_i*yraw_j/sqrt(60).
    xraw = [5, -1, -1, -1, -1, -1]
    yraw = [1, -1, 0, 0, 0, 0]
    uraw = [[x * y for y in yraw] for x in xraw]
    check(all(sum(row) == 0 for row in uraw), "equality example row sums nonzero")
    check(all(sum(uraw[i][j] for i in range(n)) == 0 for j in range(n)),
          "equality example column sums nonzero")
    check(F(sum(z * z for row in uraw for z in row), 60) == 1,
          "equality example is not unit norm")
    outputs = [-F(sum((uraw[a][c] - uraw[b][c])**2 for c in range(n)), 60)
               for a, b in combinations(range(n), 2)]
    norm_squared = sum(z * z for z in outputs)
    check(norm_squared == F(36, 5), "sharp Hessian equality value failed")
    check(outputs.count(-F(6, 5)) == 5 and outputs.count(F(0)) == 10,
          "sharp Hessian output pattern failed")
    check(F(sum(x**4 for x in xraw), 30**2) == F(7, 10),
          "sharp scalar equality value failed")

    # Polarization coefficient identity.
    a, b = var(0), var(1)
    check(add(power(add(a, b), 2), scale(power(add(a, scale(b, -1)), 2), -1))
          == scale(mul(a, b), 4), "polarization identity failed")

    # Exact strict rational bounds: sqrt(3)>433/250,
    # 12/(25 sqrt(5))<43/200.
    sqrt3_lower = F(433, 250)
    loss_upper = F(43, 200)
    check(sqrt3_lower**2 < 3, "rational sqrt(3) lower bound failed")
    check(F(144, 25**2 * 5) < loss_upper**2,
          "rational Lipschitz loss upper bound failed")
    check(sqrt3_lower - loss_upper == F(1517, 1000),
          "Fourier local lower bound arithmetic failed")
    check(F(17, 10) - loss_upper == F(297, 200),
          "atlas local lower bound arithmetic failed")
    # For the Tao isolation argument, (2*sigma/L)^2=5/2 exactly.
    tao_sigma_squared = F(9, 2)
    hessian_squared = F(36, 5)
    check(4 * tao_sigma_squared / hessian_squared == F(5, 2),
          "Tao horizontal isolation radius arithmetic failed")

    print(json.dumps({
        "status": "PASS",
        "arithmetic": "Python integers and fractions; standard library only",
        "gram_identity": "exact polynomial identity on all symmetric 6x6 G",
        "scalar_identity": "exact polynomial identity in six independent variables",
        "two_value_fourth_moments": cases,
        "scalar_maximum": "7/10 (analytic maximization proof in note)",
        "sharp_squared_hessian_constant": str(norm_squared),
        "sharp_hessian_constant": "6/sqrt(5)",
        "radius": "2/25",
        "fourier_normal_bound_strictly_exceeds": "1517/1000",
        "atlas_17_over_10_normal_bound_strictly_exceeds": "297/200",
        "tao_horizontal_isolation_radius_squared": "5/2",
        "scope": "no reconstruction or atlas coverage assumption used for Hessian theorem"
    }, indent=2))


if __name__ == "__main__":
    main()
