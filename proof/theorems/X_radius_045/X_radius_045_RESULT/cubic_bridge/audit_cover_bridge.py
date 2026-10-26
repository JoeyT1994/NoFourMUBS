#!/usr/bin/env python3
"""Independent exact tensor and interval-LDL checks for a supplied cover checker.

This is a focused implementation audit, not a replacement for replaying every
cover witness.  Regenerate cubic_filter_tensors.json with the companion
input-free verify_cubic_filter_bridge.py before running this file.
"""
if not __debug__:
    raise SystemExit('Assertions must be enabled; do not use -O.')
from fractions import Fraction as F
from pathlib import Path
from itertools import permutations, product
from math import isqrt
import argparse, hashlib, importlib.util, json

ROOT = Path(__file__).resolve().parent


def sqrt_bounds(q, bits=100):
    scale = 1 << bits
    k = isqrt((q.numerator * scale * scale) // q.denominator)
    lo, hi = F(k, scale), F(k + 1, scale)
    assert lo * lo <= q < hi * hi
    return lo, hi


ROOTS = [(F(1), F(1))] + [sqrt_bounds(F(q)) for q in (2, 3, 6)]


def algebraic_bounds(coefficients):
    lo = hi = F(0)
    for c, (a, b) in zip(map(F, coefficients), ROOTS):
        lo += c * (a if c >= 0 else b)
        hi += c * (b if c >= 0 else a)
    return lo, hi


def solve(A, b):
    """Rational Gauss-Jordan, independent of the production interval LDL."""
    rows = [list(row) + [c] for row, c in zip(A, b)]
    for k in range(len(rows)):
        p = next(j for j in range(k, len(rows)) if rows[j][k])
        rows[k], rows[p] = rows[p], rows[k]
        pivot = rows[k][k]
        rows[k] = [v / pivot for v in rows[k]]
        for j in range(len(rows)):
            if j != k:
                multiplier = rows[j][k]
                rows[j] = [v - multiplier * w for v, w in zip(rows[j], rows[k])]
    return [row[-1] for row in rows]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('cover', type=Path)
    ap.add_argument('--receipt', type=Path, default=ROOT / 'code18_bridge_audit.json')
    args = ap.parse_args()
    path = args.cover.resolve()
    spec = importlib.util.spec_from_file_location('audited_cover_checker', path)
    cover = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(cover)
    exact = json.loads((ROOT / 'cubic_filter_tensors.json').read_text())
    cp = cover.CP
    for key in ('Q_div_sqrt3', 'P3'):
        assert {k: list(map(F, v)) for k, v in cp[key].items()} == {
            k: list(map(F, v)) for k, v in exact['natural_predictors'][key].items()
        }

    checked = 0

    def encloses(interval, coefficients):
        nonlocal checked
        lo, hi = algebraic_bounds(coefficients)
        assert F(interval.lo, cover.SCALE) <= lo <= hi <= F(interval.hi, cover.SCALE)
        checked += 1

    for j, i, a in product(range(6), range(6), range(4)):
        encloses(cover.TF[i][j][a], exact['T'][6*j+i][a])
    qt = {(a, b): [cover.ZERO] * 36 for a, b in product(range(4), repeat=2)}
    for a, b, factor, terms in cover.QBLOCK:
        for j, i, coefficient in terms:
            qt[a, b][6*j+i] = qt[b, a][6*j+i] = factor * coefficient
    for a, b in product(range(4), repeat=2):
        data = exact['QT'][f'{a},{b}']
        for interval, coefficients in zip(qt[a, b], data):
            encloses(interval, coefficients)
    pt = {abc: [cover.ZERO] * 36 for abc in product(range(4), repeat=3)}
    for abc, terms in zip(cover.TRIPLES, cover.PBLOCK):
        for perm in set(permutations(abc)):
            for j, i, coefficient in terms:
                pt[perm][6*j+i] = coefficient
    for abc in product(range(4), repeat=3):
        data = exact['PT'][','.join(map(str, abc))]
        for interval, coefficients in zip(pt[abc], data):
            encloses(interval, coefficients)
    assert checked == 3024

    rational_cases = 0
    if hasattr(cover.Checker, 'trust_region_bound'):
        checker = object.__new__(cover.Checker)
        rho = F(9, 20)
        assert F(cover.RHO.lo, cover.SCALE) <= rho <= F(cover.RHO.hi, cover.SCALE)

        def as_interval(v):
            return cover.frac(v.numerator, v.denominator)

        for seed in range(128):
            L = [[F(int(i == j)) for j in range(4)] for i in range(4)]
            for i in range(4):
                for j in range(i):
                    L[i][j] = F((seed * (i+2) + 3*j) % 13 - 6, 7 + seed % 3)
            D = [F(1 + (seed + 3*i) % 11, 7) for i in range(4)]
            P = [[sum(L[i][k] * D[k] * L[j][k] for k in range(4))
                  for j in range(4)] for i in range(4)]
            b = [F((seed * (i+1) + 2*i) % 17 - 8, 13) for i in range(4)]
            lam = F(seed % 9, 16)
            A = [[P[i][j] - (2*lam if i == j else 0) for j in range(4)]
                 for i in range(4)]
            expected = lam * rho*rho + sum(x*y for x, y in zip(b, solve(P, b))) / 2
            result = checker.trust_region_bound(
                [[as_interval(v) for v in row] for row in A],
                list(map(as_interval, b)), as_interval(lam))
            assert result is not None
            assert F(result.lo, cover.SCALE) <= expected <= F(result.hi, cover.SCALE)
            rational_cases += 1
        for diagonal in (0, -1):
            bad = [[cover.frac(diagonal if i == j else 0) for j in range(4)]
                   for i in range(4)]
            assert checker.trust_region_bound(bad, [cover.ZERO] * 4, cover.ZERO) is None
        try:
            checker.trust_region_bound(bad, [cover.ZERO] * 4, cover.frac(-1))
        except AssertionError:
            pass
        else:
            raise AssertionError('negative multiplier was accepted')

    receipt = {
        'status': 'PASS',
        'scope': 'Focused exact implementation audit; full cover replay is separate.',
        'cover_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
        'canonical_natural_tensor_data_identical': True,
        'all_T_QT_PT_entries_enclosed': True,
        'exact_interval_entry_checks': checked,
        'independent_rational_LDL_value_checks': rational_cases,
        'singular_and_negative_pivot_rejection_checked': bool(rational_cases),
        'negative_multiplier_rejection_checked': bool(rational_cases),
        'arithmetic': 'Fractions and integer square-root isolation; no floating decisions.',
    }
    args.receipt.write_text(json.dumps(receipt, indent=2) + '\n')
    print(json.dumps(receipt, indent=2))


if __name__ == '__main__':
    main()
