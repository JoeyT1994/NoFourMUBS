#!/usr/bin/env python3
"""Exact finite arithmetic for CLOCK_COLLISION.md; standard library only."""

from itertools import combinations, permutations, product
import json
from pathlib import Path

from verify_support_obstruction import OMEGA, ONE, ZERO, Qomega, determinant3, inner


def omega_power(n):
    return [ONE, OMEGA, OMEGA * OMEGA][n % 3]


def dephase_exponents(a, first_row, first_col):
    return [
        [(a[i][j] - a[i][first_col] - a[first_row][j] + a[first_row][first_col]) % 3 for j in range(6)]
        for i in range(6)
    ]


def tao_witness(a, target):
    """Find a discrete row/column/third-root-phase equivalence, then replay it."""
    for first_row, first_col in product(range(6), repeat=2):
        d = dephase_exponents(a, first_row, first_col)
        for tail in permutations([j for j in range(6) if j != first_col]):
            cols = (first_col,) + tail
            transformed_rows = [tuple(row[j] for j in cols) for row in d]
            if len(set(transformed_rows)) != 6:
                continue
            lookup = {row: i for i, row in enumerate(transformed_rows)}
            if any(tuple(row) not in lookup for row in target):
                continue
            rows = tuple(lookup[tuple(row)] for row in target)
            assert rows[0] == first_row
            row_phases = [(-a[i][first_col]) % 3 for i in range(6)]
            col_phases = [(-a[first_row][j] + a[first_row][first_col]) % 3 for j in range(6)]
            result = [[(a[rows[i]][cols[j]] + row_phases[rows[i]] + col_phases[cols[j]]) % 3 for j in range(6)] for i in range(6)]
            assert result == target
            return {"rows": rows, "columns": cols, "row_phase_exponents": row_phases, "column_phase_exponents": col_phases}
    raise AssertionError("No Tao equivalence found")


def exact_hadamard(exponents):
    columns = [[omega_power(exponents[i][j]) for i in range(6)] for j in range(6)]
    for i in range(6):
        for j in range(6):
            assert inner(columns[i], columns[j]) == Qomega.coerce(6 if i == j else 0)


def main():
    if not __debug__:
        raise SystemExit("Run without -O; assertions are certificate checks.")

    # The analytic equations force pairwise negative sign inner products.
    # Exhaust the finite possible sign configurations, retaining antipodes.
    signs = list(product((-1, 1), repeat=3))
    admissible = {}
    for count in (2, 3, 4, 5):
        families = []
        for ids in combinations(range(8), count):
            dots = [sum(signs[i][k] * signs[j][k] for k in range(3)) for i, j in combinations(ids, 2)]
            if any(dot >= 0 for dot in dots):
                continue
            families.append(ids)
            if count >= 3:
                assert all(dot == -1 for dot in dots)
                for triple in combinations(ids, 3):
                    assert abs(determinant3([signs[i] for i in triple])) == 4
            if count == 4:
                assert [sum(signs[i][j] for i in ids) for j in range(3)] == [0, 0, 0]
        admissible[count] = families
    assert not admissible[5]
    assert len(admissible[4]) == 2
    antipodal_pairs = [ids for ids in admissible[2] if sum(signs[ids[0]][k] * signs[ids[1]][k] for k in range(3)) == -3]
    assert len(antipodal_pairs) == 4
    for ids in admissible[2]:
        dot = sum(signs[ids[0]][k] * signs[ids[1]][k] for k in range(3))
        # The two sign directions are dependent exactly for antipodal pairs.
        minors = [signs[ids[0]][a] * signs[ids[1]][b] - signs[ids[0]][b] * signs[ids[1]][a] for a, b in combinations(range(3), 2)]
        assert all(m == 0 for m in minors) == (dot == -3)

    # Rigid all-normal branch, including the opposite common beta sign.
    t0 = [
        [0, 0, 2, 2, 1, 1],
        [0, 1, 1, 0, 1, 0],
        [0, 2, 0, 2, 2, 0],
        [0, 0, 1, 1, 2, 2],
        [0, 1, 0, 1, 0, 1],
        [0, 2, 2, 0, 0, 2],
    ]
    tetrahedron = [(1, 1, 1), (1, -1, -1), (-1, 1, -1), (-1, -1, 1)]
    derived_t0 = []
    for half, j in product((0, 1), range(3)):
        # At alpha=1/2 and beta=sqrt(3)/2, multiplication of the last
        # four columns by -1 gives -exp(i*epsilon*pi/3): omega^2 for
        # epsilon=+1 and omega for epsilon=-1. Every entry also has
        # the clock factor omega^(2j). The lower half reverses epsilon.
        row = [0, j]
        for epsilon in tetrahedron:
            effective_sign = epsilon[j] * (1 if half == 0 else -1)
            row.append((2 * j + (2 if effective_sign == 1 else 1)) % 3)
        derived_t0.append(row)
    assert derived_t0 == t0
    tminus = t0[3:] + t0[:3]
    target = [
        [0, 0, 0, 0, 0, 0],
        [0, 0, 1, 1, 2, 2],
        [0, 1, 0, 2, 2, 1],
        [0, 1, 2, 0, 1, 2],
        [0, 2, 2, 1, 0, 1],
        [0, 2, 1, 2, 1, 0],
    ]
    for a in (t0, tminus, target):
        exact_hadamard(a)
    witnesses = {"positive_beta": tao_witness(t0, target), "negative_beta": tao_witness(tminus, target)}

    # Exhaust the six rank-one qutrit rays from all permutations of their
    # equilateral cyclic ratios. Representatives all have first entry one.
    roots = [ONE, OMEGA, OMEGA * OMEGA]
    kernel_rays = set()
    for a in permutations(roots):
        assert sum(a, ZERO) == ZERO
        assert a[0] * a[1] * a[2] == ONE
        r = (ONE, a[0].conjugate(), a[2])
        assert tuple(r[j] * r[(j + 1) % 3].conjugate() for j in range(3)) == a
        kernel_rays.add(r)
    qplus = [tuple(omega_power(base + k * j) for j, base in enumerate((0, 1, 1))) for k in range(3)]
    qminus = [tuple(omega_power(base + k * j) for j, base in enumerate((0, 2, 2))) for k in range(3)]
    assert set(qplus + qminus) == kernel_rays
    assert len(kernel_rays) == 6
    for q in (qplus, qminus):
        for i, j in product(range(3), repeat=2):
            assert inner(q[i], q[j]) == Qomega.coerce(3 if i == j else 0)
    for a in qplus:
        for b in qminus:
            assert inner(a, b).abs2() == 3
    assert {tuple(x.conjugate() for x in r) for r in qplus} == set(qminus)

    # The raw qutrit Fourier matrix sends Q+ to Q- up to nonzero column
    # phases/scales. Division is avoided by exact cross multiplication.
    qutrit_exchange = []
    for r in qplus:
        transformed = [sum((omega_power(j * k) * r[k] for k in range(3)), ZERO) for j in range(3)]
        assert transformed[0] != ZERO
        matches = [index for index, target_ray in enumerate(qminus) if all(transformed[j] == transformed[0] * target_ray[j] for j in range(3))]
        assert len(matches) == 1
        qutrit_exchange.append(matches[0])
    assert sorted(qutrit_exchange) == [0, 1, 2]

    # All twelve exceptional parameter points, using roots of unity of order
    # six represented exactly in Q(omega), are genuinely different.
    exceptional = {(s1 * omega_power(k), s2 * omega_power(2 * k)) for k, s1, s2 in product(range(3), (-1, 1), (-1, 1))}
    assert len(exceptional) == 12
    receipt = {
        "status": "PASS",
        "arithmetic": "exact Q(omega), integer signs, standard library",
        "negative_dot_sign_family_counts": {str(k): len(v) for k, v in admissible.items()},
        "antipodal_sign_pairs": len(antipodal_pairs),
        "rigid_matrix_derived_from_tetrahedron_formula": True,
        "tao_equivalences": witnesses,
        "rank_one_qutrit_rays": len(kernel_rays),
        "cross_qutrit_normalized_squared_overlap": "1/3",
        "qutrit_Fourier_exchange_permutation": qutrit_exchange,
        "exceptional_Fourier_parameters": len(exceptional),
        "scope": "finite arithmetic for analytic clock-collision proof; not global A",
    }
    target_path = (Path(__file__).resolve().parents[1] / "certificates" / "CLOCK_COLLISION_RECEIPT.json")
    target_path.write_text(json.dumps(receipt, indent=2) + "\n")
    print(json.dumps(receipt, indent=2))


if __name__ == "__main__":
    main()
