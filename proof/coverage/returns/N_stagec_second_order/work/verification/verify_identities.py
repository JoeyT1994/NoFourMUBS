#!/usr/bin/env python3
"""CERTIFIED finite exact-rational identity fixtures; standard Python only.

These checks verify the encoded identities on reproducible rational inputs.
The universal proofs are in REPORT.md; finite fixtures are not a substitute.
"""
from fractions import Fraction as F
import itertools
import json
from pathlib import Path
import random


def dot(x, y):
    return sum((a*b for a, b in zip(x, y)), F(0))


def bilinear(x, H, y):
    return sum((x[j]*H[j][k]*y[k] for j in range(len(x)) for k in range(len(y))), F(0))


def unit(t):
    return (1-t*t)/(1+t*t), 2*t/(1+t*t)


def run():
    rng = random.Random(73152)
    checked = 0
    for case in range(48):
        phases = [[unit(F(rng.randrange(-8, 9), rng.randrange(1, 9))) for i in range(6)] for j in range(6)]
        H = []
        for i in range(6):
            gram = [[dot(phases[j][i], phases[k][i])/6 for k in range(6)] for j in range(6)]
            Hi = [[gram[j][k]-(sum(gram[j]) if j == k else 0) for k in range(6)] for j in range(6)]
            assert all(sum(row) == 0 for row in Hi)
            assert all(Hi[j][k] == Hi[k][j] for j in range(6) for k in range(6))
            v = [F(rng.randrange(-8, 9), 8) for j in range(6)]
            pair = -sum((gram[j][k]*(v[j]-v[k])**2 for j in range(6) for k in range(j+1, 6)), F(0))
            assert bilinear(v, Hi, v) == pair
            p0 = dot(v, v)-sum(v)**2/6
            for sign in (-1, 1):
                coefficients = [F(1, 6)-sign*gram[j][k] for j in range(6) for k in range(j+1, 6)]
                assert all(c >= 0 for c in coefficients)
                sos = sum(((F(1, 6)-sign*gram[j][k])*(v[j]-v[k])**2
                           for j in range(6) for k in range(j+1, 6)), F(0))
                assert p0+sign*bilinear(v, Hi, v) == sos
            H.append(Hi)
        y = [F(rng.randrange(-8, 9), 8) for i in range(6)]
        T = [[[F(rng.randrange(-4, 5), 16) for k in range(4)] for i in range(6)] for j in range(6)]
        d = [F(0)]+[F(rng.randrange(-8, 9), 64) for j in range(5)]
        eta = [F(rng.randrange(-8, 9), 64) for k in range(4)]
        A = [[sum(y[i]*H[i][j+1][l+1] for i in range(6)) for l in range(5)] for j in range(5)]
        C = [[-sum(y[i]*H[i][j+1][l]*T[l][i][k] for i in range(6) for l in range(6))
              for k in range(4)] for j in range(5)]
        D = [[sum(y[i]*T[j][i][k]*H[i][j][l]*T[l][i][m]
                   for i in range(6) for j in range(6) for l in range(6)) for m in range(4)] for k in range(4)]
        direct = F(0)
        for i in range(6):
            w = [d[j]-dot(T[j][i], eta) for j in range(6)]
            direct += y[i]*bilinear(w, H[i], w)
            centred = [z-sum(d)/6 for z in w]
            assert bilinear(w, H[i], w) == bilinear(centred, H[i], centred)
        block = bilinear(d[1:], A, d[1:])+2*bilinear(d[1:], C, eta)+bilinear(eta, D, eta)
        assert block == direct
        checked += 1
    vertices = [[0, *s] for s in itertools.product((-1, 1), repeat=5)]
    fourth = [sum((v[j]-v[k])**4 for j in range(6) for k in range(j+1, 6)) for v in vertices]
    assert max(fourth) == 101
    # Explicit counterexample that requires the row-sum allowance in W(v).
    x = [F(1, 2), -F(1, 2), F(0), F(0), F(0), F(0)]
    lam = F(1, 10)
    actual = 6*(1+lam)**2*dot(x, x)
    invalid_horizontal_formula = 6*dot(x, x)+6*lam**2*dot(x, x)
    assert actual > invalid_horizontal_formula
    return dict(status="CERTIFIED finite exact-rational checks", rational_cases=checked,
                column_laplacians=6*checked, psd_sum_of_squares=12*checked,
                exact_block_identities=checked, bin_vertices=len(vertices),
                fourth_power_constant=101, row_sum_counterexample_verified=True)


if __name__ == '__main__':
    result = run()
    print(json.dumps(result, indent=2, sort_keys=True))
    (Path(__file__).with_name('exact_identities_result.json')).write_text(json.dumps(result, indent=2, sort_keys=True)+'\n')
