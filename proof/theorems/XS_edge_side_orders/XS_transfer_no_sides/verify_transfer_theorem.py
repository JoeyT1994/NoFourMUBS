#!/usr/bin/env python3
"""Exact checks for the XS transfer theorem, conditional on the stated W inputs.

No third-party dependency. This checks the NEW arithmetic and corner census;
it does not replay W's unavailable contraction/germ certificates.
"""
from fractions import Fraction as F
from itertools import permutations
from math import isqrt
from pathlib import Path
import argparse
import json


def sqrt_interval(x, digits=60):
    assert x >= 0
    scale = 10**digits
    n = isqrt(x.numerator*scale**2//x.denominator)
    lo, hi = F(n, scale), F(n+1, scale)
    assert lo*lo <= x < hi*hi
    return lo, hi


def f(x):
    return F(4, 3)*x*x + F(10, 3)*x**3 + F(249, 24)*x**4


def optimal_graph_ambient_interval(rho):
    # b=sqrt(2/3)*R^2 and R^2=rho^2+b^2 on the limiting tube.
    d_lo, d_hi = sqrt_interval(1-F(8, 3)*rho*rho)
    R2_lo, R2_hi = F(3, 4)*(1-d_hi), F(3, 4)*(1-d_lo)
    return sqrt_interval(R2_lo)[0], sqrt_interval(R2_hi)[1]


def inverse(A):
    n = len(A)
    B = [[F(x) for x in row] + [F(i == j) for j in range(n)]
         for i, row in enumerate(A)]
    for k in range(n):
        pivot = next(i for i in range(k, n) if B[i][k])
        B[k], B[pivot] = B[pivot], B[k]
        v = B[k][k]
        B[k] = [x/v for x in B[k]]
        for i in range(n):
            if i != k:
                v = B[i][k]
                B[i] = [x-v*y for x, y in zip(B[i], B[k])]
    return [row[n:] for row in B]


def verify():
    t = F(1, 5)
    rho = F(1514489, 10**7)
    normal = F(190233, 10**7)
    ambient = F(152639, 10**6)
    assert rho < F(1, 4) and normal < F(11, 200)
    # Positivity makes the squared comparisons equivalent to their radical forms.
    margins = {
        'normal_selfmap_squared': normal**2-F(2, 3)*(rho**2+normal**2)**2,
        'ambient_squared': ambient**2-rho**2-normal**2,
        'normal_contraction_squared': 1-F(8, 3)*ambient**2,
        'parameter_path': t-rho-f(ambient),
        # Using pi>3, this proves 2*t/sqrt(3)+2*rho < pi/3.
        'corner_anchor_squared_vs_one': (1-2*rho)**2-F(4, 3)*t**2,
        # W normal uniqueness is valid on norm<=3/5.
        'normal_uniqueness_squared': 3-8*F(3, 5)**2,
    }
    assert 1-2*rho > 0
    assert all(value > 0 for value in margins.values())
    assert max(rho, ambient) < F(3, 5)

    W = [[1, F(-1, 2), F(-1, 2), 0],
         [F(-1, 2), F(7, 4), F(1, 4), 0],
         [F(-1, 2), F(1, 4), F(7, 4), 0],
         [0, 0, 0, 1]]
    Wi = inverse(W)
    assert [Wi[i][i] for i in range(4)] == [F(4, 3), F(2, 3), F(2, 3), F(1)]

    # Every rectangle coefficient is already horizontal and has norm exactly 2.
    coeff = [[0]*6 for _ in range(6)]
    coeff[1][1] = coeff[0][0] = 1
    coeff[1][0] = coeff[0][1] = -1
    assert all(sum(row) == 0 for row in coeff)
    assert all(sum(coeff[i][j] for i in range(6)) == 0 for j in range(6))
    assert sum(x*x for row in coeff for x in row) == 4

    triples = list(permutations(range(6), 3))
    accepted = []
    for r in triples:
        for c in triples:
            a, b = (r[1]-r[0]) % 6, (r[2]-r[0]) % 6
            d, e = (c[1]-c[0]) % 6, (c[2]-c[0]) % 6
            if ((a*d) % 6, (a*e) % 6, (b*d) % 6) != (1, 2, 2):
                continue
            assert a == d and a in (1, 5)
            R = tuple((r[0]+a*i) % 6 for i in range(6))
            C = tuple((c[0]+a*j) % 6 for j in range(6))
            assert R[:3] == r and C[:3] == c
            assert sorted(R) == sorted(C) == list(range(6))
            assert all(((R[i]-R[0])*(C[j]-C[0])-i*j) % 6 == 0
                       for i in range(6) for j in range(6))
            accepted.append((r, c))
    assert len(triples)**2 == 14400 and len(accepted) == 72

    # Strictly bracket the supremum of this scalar comparison method.
    rlo, rhi = F(15144896, 10**8), F(15144897, 10**8)
    Rlo = optimal_graph_ambient_interval(rlo)
    Rhi = optimal_graph_ambient_interval(rhi)
    assert rlo+f(Rlo[1]) < t
    assert rhi+f(Rhi[0]) > t
    assert rho < rlo

    return {
        'status': 'CERTIFIED new exact comparisons and census; PROVED theorem conditional on W inputs',
        'external_inputs': [
            'W chart exists and is analytic on exact tangent ellipsoid radius 1/5, agreeing with U germ',
            'W genuine normal graph on tangent radius 1/4 and normal radius 11/200',
            'W normal uniqueness among ambient lifts of norm <=3/5',
            'W extraction identity Vq-eta=E(z), with ||E(z)|| <= f(||z||)',
        ],
        'replays_W_certificates': False,
        'largest_certified_chart_t_from_supplied_input': str(t),
        'simple_coarse_radius': str(F(3, 20)),
        'improved_coarse_radius': str(rho),
        'normal_tube_radius': str(normal),
        'path_ambient_radius': str(ambient),
        'exact_positive_margins': {k: str(v) for k, v in margins.items()},
        'first_three_seed_squared_dual_norms': [str(Wi[i][i]) for i in range(3)],
        'ordered_corner_pairs_checked': 14400,
        'Fourier_anchored_corner_pairs': len(accepted),
        'comparison_supremum_strict_bracket': [str(rlo), str(rhi)],
        'comparison_supremum_is_intrinsic_optimum': False,
        'orientation_tests_required': False,
        'fold_y_equals_zero_included': True,
    }


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    result = verify()
    encoded = json.dumps(result, indent=2)+'\n'
    if args.output:
        args.output.write_text(encoded)
    print(encoded, end='')
