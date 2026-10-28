#!/usr/bin/env python3
"""Exact projected cubic-frequency Gram bounds, standard library only.

Reads the supplied JSON as data. Does not import or execute project code.
All matrix algebra is in Q(sqrt(3)); all final row sums and comparisons use
integers and exact sign tests for a+b*sqrt(3).
"""
from __future__ import annotations

import ast
from fractions import Fraction as Q
import hashlib
import json
from math import gcd
from pathlib import Path
import sys

ZERO = (Q(0), Q(0))
ONE = (Q(1), Q(0))


def add(x, y):
    return x[0]+y[0], x[1]+y[1]


def neg(x):
    return -x[0], -x[1]


def mul(x, y):
    return x[0]*y[0]+3*x[1]*y[1], x[0]*y[1]+x[1]*y[0]


def inv(x):
    d = x[0]*x[0]-3*x[1]*x[1]
    if d == 0:
        raise ArithmeticError('zero field denominator')
    return x[0]/d, -x[1]/d


def sum_field(values):
    result = ZERO
    for value in values:
        result = add(result, value)
    return result


def parse(text):
    def visit(node):
        if isinstance(node, ast.Constant) and type(node.value) is int:
            return Q(node.value), Q(0)
        if isinstance(node, ast.UnaryOp) and isinstance(node.op, ast.USub):
            return neg(visit(node.operand))
        if isinstance(node, ast.BinOp):
            a, b = visit(node.left), visit(node.right)
            if isinstance(node.op, ast.Add):
                return add(a, b)
            if isinstance(node.op, ast.Sub):
                return add(a, neg(b))
            if isinstance(node.op, ast.Mult):
                return mul(a, b)
            if isinstance(node.op, ast.Div):
                return mul(a, inv(b))
        if (isinstance(node, ast.Call) and isinstance(node.func, ast.Name)
                and node.func.id == 'sqrt' and len(node.args) == 1
                and isinstance(node.args[0], ast.Constant) and node.args[0].value == 3):
            return Q(0), Q(1)
        raise ValueError('Unexpected field expression: '+text)
    return visit(ast.parse(text, mode='eval').body)


def sign(x):
    """Exact sign of integer/rational a+b sqrt(3)."""
    a, b = x
    if a == 0:
        return (b > 0)-(b < 0)
    if b == 0:
        return (a > 0)-(a < 0)
    if a > 0 and b > 0:
        return 1
    if a < 0 and b < 0:
        return -1
    difference = a*a-3*b*b
    if difference == 0:
        raise ArithmeticError('sqrt(3) irrationality violated')
    return (1 if difference > 0 else -1)*(1 if a > 0 else -1)


def absolute(x):
    return neg(x) if sign(x) < 0 else x


def projector(rows):
    n = [[parse(v) for v in row] for row in rows]
    if len(n) != 72 or any(len(row) != 2 for row in n):
        raise ValueError('expected a 72-by-2 exact plane basis')
    gram = [[sum_field(mul(row[i], row[j]) for row in n) for j in range(2)] for i in range(2)]
    determinant = add(mul(gram[0][0], gram[1][1]), neg(mul(gram[0][1], gram[1][0])))
    if sign(determinant) <= 0:
        raise ArithmeticError('plane basis is not independent')
    inverse = [[mul(gram[1][1], inv(determinant)), mul(neg(gram[0][1]), inv(determinant))],
               [mul(neg(gram[1][0]), inv(determinant)), mul(gram[0][0], inv(determinant))]]
    u = [[sum_field(mul(row[j], inverse[j][i]) for j in range(2)) for i in range(2)] for row in n]
    result = [[sum_field(mul(n[i][j], u[k][j]) for j in range(2)) for k in range(72)] for i in range(72)]
    if any(result[i][j] != result[j][i] for i in range(72) for j in range(72)):
        raise ArithmeticError('projector is not symmetric')
    return result, n


def frequencies():
    out = []
    for block in range(2):
        for i in range(6):
            for j in range(i+1, 6):
                for r in range(6):
                    out.append({36*block+6*r+i: -1, 36*block+6*r+j: 1})
    for i in range(6):
        for j in range(6):
            for r in range(6):
                for s in range(r+1, 6):
                    out.append({6*r+i: -1, 36+6*r+j: 1, 6*s+i: 1, 36+6*s+j: -1})
    if len(out) != 720:
        raise ArithmeticError('unexpected frequency count')
    return out


def lcm(a, b):
    return a//gcd(a, b)*b


def verify_pattern(pattern):
    p0, n0 = projector(pattern['fixed_plane_basis_0'])
    p1, n1 = projector(pattern['fixed_plane_basis_1'])
    if any(sum_field(mul(n0[k][i], n1[k][j]) for k in range(72)) != ZERO
           for i in range(2) for j in range(2)):
        raise ArithmeticError('planes are not orthogonal')
    denominator = 1
    for matrix in (p0, p1):
        for row in matrix:
            for x in row:
                for coefficient in x:
                    denominator = lcm(denominator, coefficient.denominator)
    pi = []
    for matrix in (p0, p1):
        pi.append([[(int(a*denominator), int(b*denominator)) for a, b in row] for row in matrix])
    ls = frequencies()
    projected = []
    for matrix in pi:
        projected.append([[(sum(e*matrix[k][j][0] for k, e in ell.items()),
                             sum(e*matrix[k][j][1] for k, e in ell.items()))
                            for j in range(72)] for ell in ls])
    maxima = {key: (0, 0) for key in ('EK0K1', 'EKK', 'EEK')}
    unprojected_maximum = 0
    for i, ell in enumerate(ls):
        sums = {key: (0, 0) for key in maxima}
        ordinary_sum = 0
        for j, other in enumerate(ls):
            ordinary = sum(e*other.get(k, 0) for k, e in ell.items())
            ordinary_sum += abs(ordinary)**3
            if ordinary == 0:
                continue
            ga = [(sum(e*projected[p][i][k][0] for k, e in other.items()),
                   sum(e*projected[p][i][k][1] for k, e in other.items())) for p in range(2)]
            total = add(ga[0], ga[1])
            mix = absolute(mul(ga[0], ga[1]))
            kk = mul(total, total)
            sums['EK0K1'] = add(sums['EK0K1'], tuple(abs(ordinary)*v for v in mix))
            sums['EKK'] = add(sums['EKK'], tuple(abs(ordinary)*v for v in kk))
            # Scale this degree-one projected expression to denominator^2.
            sums['EEK'] = add(sums['EEK'], tuple(ordinary**2*denominator*v for v in absolute(total)))
        unprojected_maximum = max(unprojected_maximum, ordinary_sum)
        for key, value in sums.items():
            if sign(add(value, neg(maxima[key]))) > 0:
                maxima[key] = value
    if unprojected_maximum != 308:
        raise ArithmeticError('unprojected cubic Gram check failed')
    bounds = {'EK0K1': Q(7, 2), 'EKK': Q(15), 'EEK': Q(61)}
    results = {}
    for key, upper in bounds.items():
        value = maxima[key]
        gap = (upper.numerator*denominator**2-upper.denominator*value[0], -upper.denominator*value[1])
        if sign(gap) <= 0:
            raise ArithmeticError(key+' did not meet its strict bound')
        results[key] = {'row_sum_exact_numerators': list(value),
                        'row_sum_exact_denominator': denominator**2,
                        'strict_rational_upper': [upper.numerator, upper.denominator]}
    return {'pattern': pattern['number'], 'status': 'PROVED', 'frequency_count': 720,
            'unprojected_cubic_gram_maximum': 308,
            'projector_common_denominator': denominator,
            'projected_gram_bounds': results}


def main():
    default = Path(__file__).resolve().parent/'input/crossing/crossing_structure_20261028.json'
    path = Path(sys.argv[1]) if len(sys.argv) > 1 else default
    data = json.loads(path.read_text())
    output = {'status': 'PROVED', 'arithmetic': 'standard-library exact Q(sqrt(3))',
              'input_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
              'patterns': [verify_pattern(p) for p in data['patterns']]}
    rendered = json.dumps(output, indent=2)
    print(rendered)
    if len(sys.argv) > 2:
        Path(sys.argv[2]).write_text(rendered+'\n')


if __name__ == '__main__':
    main()
