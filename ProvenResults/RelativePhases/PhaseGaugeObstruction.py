#!/usr/bin/env python3
"""Exact finite algebra checks for PhaseGaugeObstruction.md."""
from pathlib import Path
import json
import sympy as s


def simp(x):
    return s.simplify(s.expand_complex(x))


def zero(M):
    return all(simp(x) == 0 for x in M)


def main():
    w = -s.Rational(1, 2) + s.I * s.sqrt(3) / 2
    rows = [s.Matrix([[1, 1, 1]]),
            s.Matrix([[1, w, w**2]]),
            s.Matrix([[1, w**2, w]])]
    F = s.Matrix.vstack(*rows)
    checks = {'fourier_characters_are_orthogonal': zero(F * F.H - 3 * s.eye(3))}
    cases = []
    for n in range(4):
        C = s.Matrix.vstack(*([rows[1]] * n + [rows[2]] * (3 - n)))
        G = (F * C.H * C * F.H / 3).applyfunc(simp)
        # These are eigenvalues in the row-character basis; the last two
        # positions may exchange compared with a column-character convention.
        expected = s.diag(0, 3 * n, 3 * (3 - n))
        assert zero(G - expected)
        admissible = n in (1, 2)
        record = {'first_row_type_multiplicity': n,
                  'eigenvalues': [0, 3*n, 3*(3-n)],
                  'admissible': admissible}
        if admissible:
            singleton_type = 1 if n == 1 else 2
            A = s.Matrix.vstack(rows[0], rows[0], rows[singleton_type])
            assert zero(A.H * A + C.H * C - 6 * s.eye(3))
            out = A * s.ones(3, 1)
            assert [simp(z*s.conjugate(z)) for z in out] == [9, 9, 0]
            record['complement_output_squared_moduli'] = [9, 9, 0]
        cases.append(record)
    checks['all_four_multiplicity_cases'] = True
    # H=F6, z on the even positions. This realizes exactly two outputs.
    q = s.Rational(1, 2) + s.I * s.sqrt(3) / 2
    H = s.Matrix(6, 6, lambda i, j: q**(i*j)).applyfunc(simp)
    z = s.Matrix([1, 0, 1, 0, 1, 0])
    out = (H.H * z).applyfunc(simp)
    checks['fourier_six_is_hadamard'] = zero(H.H * H - 6 * s.eye(6))
    checks['support_gap_is_attained'] = [simp(v*s.conjugate(v)) for v in out] == [9, 0, 0, 9, 0, 0]
    assert all(checks.values())
    report = {'status': 'PASS_EXACT', 'checks': checks,
              'multiplicity_cases': cases,
              'scope': 'Finite character algebra and a sharp example; the accompanying note proves exhaustiveness. No exclusion of nonlinear phase curves.'}
    Path(__file__).with_name('PhaseGaugeObstructionVerification.json').write_text(json.dumps(report, indent=2)+'\n')
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
