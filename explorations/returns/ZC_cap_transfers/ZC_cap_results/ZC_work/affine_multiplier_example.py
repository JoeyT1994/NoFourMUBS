#!/usr/bin/env python3
"""Exact rational audit of a full-rank affine cap-multiplier example.

No NumPy, SciPy, Arb, source ball, or numerical optimizer is needed.
Run: python affine_multiplier_example.py --output affine_multiplier_example.json
"""
from fractions import Fraction as Q
import argparse
import json
from pathlib import Path


def dot(v, w):
    return sum((a*b for a, b in zip(v, w)), Q(0))


def certificate_matrix(F, d, e, t, lam, mu, avec, s):
    n = len(e)
    gram = [[sum((F[k][i]*F[k][j] for k in range(len(d))), Q(0))
             for j in range(n)] for i in range(n)]
    b = [sum((F[k][i]*d[k] for k in range(len(d))), Q(0)) for i in range(n)]
    matrix = [[Q(0) for _ in range(n+1)] for _ in range(n+1)]
    for i in range(n):
        for j in range(n):
            matrix[i][j] = (lam if i == j else Q(0)) - gram[i][j]
            matrix[i][j] -= (e[i]*avec[j]+avec[i]*e[j])/2
        matrix[i][n] = matrix[n][i] = -b[i]-(mu*e[i]-t*avec[i])/2
    matrix[n][n] = s-dot(d, d)+t*mu-lam
    return matrix


def verify_example():
    diagonal = [Q(2), Q(1), Q(1), Q(1)]
    F = [[diagonal[i] if i == j else Q(0) for j in range(4)] for i in range(4)]
    d = [Q(-9, 8), Q(0), Q(0), Q(0)]
    e = [Q(1), Q(0), Q(0), Q(0)]
    t = Q(1, 2)
    assert dot(e, e) == 1
    assert diagonal[0]*diagonal[1]*diagonal[2]*diagonal[3] == 2

    # On ||x||=1, f(x)=3*x1^2-(9/2)*x1+145/64.  Its positive
    # leading coefficient makes its interval maximum occur at an endpoint.
    lead = diagonal[0]**2-diagonal[1]**2
    linear = 2*diagonal[0]*d[0]
    constant = diagonal[1]**2+dot(d, d)
    true_max = Q(49, 64)
    assert (lead, linear, constant) == (Q(3), Q(-9, 2), Q(145, 64))
    assert lead > 0
    assert lead*t*t+linear*t+constant == true_max
    assert lead+linear+constant == true_max
    assert true_max < 1
    assert Q(7, 8)**2 == true_max

    # Global PSD implies evaluation bounds at +e1 and -e1.  A positive
    # weighted average cancels mu and gives the exact scalar-only lower bound.
    endpoint_plus = (diagonal[0]+d[0])**2
    endpoint_minus = (-diagonal[0]+d[0])**2
    weight_plus, weight_minus = Q(3, 4), Q(1, 4)
    assert endpoint_plus == Q(49, 64) and endpoint_minus == Q(625, 64)
    assert weight_plus+weight_minus == 1
    assert weight_plus*(1-t)+weight_minus*(-1-t) == 0
    scalar_lower = weight_plus*endpoint_plus+weight_minus*endpoint_minus
    assert scalar_lower == Q(193, 64) and scalar_lower > 1
    # The lower bound is attainable by a positive semidefinite certificate.
    scalar_mu = Q(9, 2)
    assert endpoint_plus+scalar_mu*(1-t) == scalar_lower
    assert endpoint_minus+scalar_mu*(-1-t) == scalar_lower
    scalar_matrix = certificate_matrix(F, d, e, t, Q(4), scalar_mu,
                                       [Q(0)]*4, scalar_lower)
    scalar_expected = [Q(0), Q(3), Q(3), Q(3), Q(0)]
    assert scalar_matrix == [[scalar_expected[i] if i == j else Q(0)
                              for j in range(5)] for i in range(5)]

    # Affine multiplier 3*(1-x1) is nonnegative on the unit ball.
    mu, avec, lam, s = Q(3), [Q(-3), Q(0), Q(0), Q(0)], Q(129, 128), Q(25, 32)
    assert mu >= 0 and mu*mu == dot(avec, avec) == 9
    matrix = certificate_matrix(F, d, e, t, lam, mu, avec, s)
    assert matrix == [[Q(1, 128) if i == j else Q(0)
                       for j in range(5)] for i in range(5)]
    assert 0 < s < 1

    return {
        "status": "CERTIFIED exact rational algebra",
        "dimension": 4,
        "cap": "||x||=1, x1>=1/2",
        "F_diagonal": [str(a) for a in diagonal],
        "F_determinant": "2",
        "d": [str(a) for a in d],
        "true_cap_max_squared_norm": str(true_max),
        "true_cap_max_norm": "7/8",
        "scalar_only_best_squared_bound": str(scalar_lower),
        "scalar_optimal_mu": str(scalar_mu),
        "scalar_optimal_lambda": "4",
        "scalar_certificate_diagonal": [str(a) for a in scalar_expected],
        "scalar_bound_exceeds_one": True,
        "affine_witness": {"lambda": str(lam), "mu": str(mu),
                           "a": [str(a) for a in avec], "s": str(s)},
        "affine_SOC_both_squared_values": "9",
        "affine_certificate_matrix": [[str(a) for a in row] for row in matrix],
        "affine_matrix_exactly_I5_over_128": True,
        "affine_matrix_positive_definite": True,
        "affine_s_less_than_one": True,
        "scope": "Exact theorem example for the cap-target quadratic certificate; no seed-ball or MUB assertion."
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    result = verify_example()
    rendered = json.dumps(result, indent=2)+"\n"
    if args.output:
        args.output.write_text(rendered)
    print(rendered, end="")


if __name__ == "__main__":
    main()
