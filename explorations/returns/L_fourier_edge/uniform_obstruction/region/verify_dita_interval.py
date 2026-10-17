#!/usr/bin/env python3
"""Exact Laurent identity and ball inclusion for a nonconstant Diţă arc."""

import sys

if not __debug__ or sys.flags.optimize:
    raise RuntimeError("This exact verifier requires assertions; do not use -O or PYTHONOPTIMIZE.")

import hashlib
import json
from fractions import Fraction as Q
from pathlib import Path

import verify_template_graph as helper


HERE = Path(__file__).resolve().parent
HELPER_SHA = "ee007519efef901d05b0dea29ecf8e75f3720d94e1ec47c002b0831049ff55a5"


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def conjugate(a):
    return (a[0], -a[1])


def add_term(poly, exponent, coefficient):
    old = poly.get(exponent, (0, 0))
    value = (old[0] + coefficient[0], old[1] + coefficient[1])
    if value == (0, 0):
        poly.pop(exponent, None)
    else:
        poly[exponent] = value


def main():
    assert sha(Path(helper.__file__)) == HELPER_SHA
    D = helper.anchor_middle_minors()
    E = [[0] * 6 for _ in range(6)]
    for r in (2, 5):
        for c in (3, 4):
            E[r][c] = 1
    for r in (3, 4):
        for c in (2, 5):
            E[r][c] = -1
    assert all(E[0][c] == E[c][0] == 0 for c in range(6))
    assert max(abs(a) for row in E for a in row) == 1

    row_records, column_records = [], []
    for r in range(6):
        for s in range(6):
            row_poly, column_poly = {}, {}
            for j in range(6):
                add_term(row_poly, E[r][j] - E[s][j], helper.gauss_mul(D[r][j], conjugate(D[s][j])))
                add_term(column_poly, E[j][s] - E[j][r], helper.gauss_mul(conjugate(D[j][r]), D[j][s]))
            expected = {0: (6, 0)} if r == s else {}
            assert row_poly == column_poly == expected
            row_records.append([r, s, [[k, *v] for k, v in sorted(row_poly.items())]])
            column_records.append([r, s, [[k, *v] for k, v in sorted(column_poly.items())]])

    # H00 H23/(H03 H20) is a row/column phase invariant equal to i z.
    constant = helper.gauss_mul(
        helper.gauss_mul(D[0][0], D[2][3]),
        conjugate(helper.gauss_mul(D[0][3], D[2][0])),
    )
    exponent = E[0][0] + E[2][3] - E[0][3] - E[2][0]
    assert constant == (0, 1) and exponent == 1
    epsilon = Q(1, 10000)
    assert 2 - 18 * epsilon > 0
    receipt = {
        "status": "PASS_AFFINE_HADAMARD_IDENTITY_AND_BALL_INCLUSION",
        "scope": "Exact Laurent identity for all unit-circle z; analytic entrywise inclusion for the full closed t interval. The regional exclusion uses the separate completed tube/graph theorem.",
        "verifier_sha256": sha(Path(__file__).resolve()),
        "anchor_helper_sha256": HELPER_SHA,
        "anchor_matrix_gaussian_pairs": D,
        "exponent_mask": E,
        "family": "H(t)_ij=D_ij exp(i t E_ij)",
        "parameter_interval": [str(-epsilon), str(epsilon)],
        "Brierley_Weigert_parameter_relation": "t=2*pi*x",
        "Brierley_Weigert_parameter_interval": "|x|<=1/(20000*pi)",
        "primary_provenance": "Brierley-Weigert, arXiv:0901.4051v2, Appendix A.2, affine Dita family; raw normalization here.",
        "row_Gram_Laurent_polynomials": row_records,
        "column_Gram_Laurent_polynomials": column_records,
        "Laurent_polynomial_identities_checked": 72,
        "Hadamard_identity": "H(t) H(t)^dagger=H(t)^dagger H(t)=6I for every real t",
        "ball_inclusion_inequality": "max_ij|H(t)_ij-D_ij|<=|t|<=1/10000, using |exp(iu)-1|<=|u| and |E_ij|<=1",
        "nonconstant_gauge_invariant": {"ratio": "H00*H23/(H03*H20)", "constant_gaussian_pair": constant, "exponent_of_z": exponent},
        "minimum_regional_middle_minor_modulus_bound": str(2 - 18 * epsilon),
        "sampling_used": False,
    }
    output = HERE / "DITA_INTERVAL_RECEIPT.json"
    output.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n")
    print(json.dumps({k: receipt[k] for k in ["status", "parameter_interval", "Laurent_polynomial_identities_checked", "sampling_used"]}, indent=2))


if __name__ == "__main__":
    main()
