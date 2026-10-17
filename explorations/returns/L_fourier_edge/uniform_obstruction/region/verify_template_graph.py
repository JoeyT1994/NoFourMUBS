#!/usr/bin/env python3
"""Exact rational obstruction on a finite set of ray templates.

This verifies the graph and quantitative margin, not the required global
containment of all nearby-anchor candidates.  No template is assumed to be
an exact solution, and the numerical construction source is not a proof input.
See UNIFORM_REGION_THEOREM.md for the complete conditional statement.
"""

import sys

if not __debug__ or sys.flags.optimize:
    raise RuntimeError("This exact verifier requires assertions; do not use -O or PYTHONOPTIMIZE.")

import argparse
import hashlib
import itertools
import json
import math
from fractions import Fraction as Q
from pathlib import Path


HERE = Path(__file__).resolve().parent
TEMPLATE_SHA = "65f041e6624e07a2ef755d3f9c6a871650f99898e99427fce1f74985745a98fb"


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def trig_taylor(t):
    """Rational T_40 enclosures: each remainder <= |t|^41/41!."""
    assert abs(t) <= 4
    c, s, power, fact = Q(0), Q(0), Q(1), 1
    for k in range(41):
        if k:
            power *= t
            fact *= k
        term = power / fact
        if k % 2 == 0:
            c += (-1 if (k // 2) % 2 else 1) * term
        else:
            s += (-1 if ((k - 1) // 2) % 2 else 1) * term
    remainder = abs(t) ** 41 / math.factorial(41)
    return c, s, remainder


def all_six_cliques(adj):
    """Exhaustive ascending-index clique enumeration, with bitset intersection."""
    found = []

    def visit(prefix, candidates):
        if len(prefix) == 6:
            found.append(prefix)
            return
        needed = 6 - len(prefix)
        while candidates.bit_count() >= needed:
            bit = candidates & -candidates
            candidates ^= bit
            vertex = bit.bit_length() - 1
            visit(prefix + (vertex,), candidates & adj[vertex])

    visit((), (1 << len(adj)) - 1)
    assert len(found) == len(set(found))
    return found


def gauss_mul(a, b):
    return (a[0] * b[0] - a[1] * b[1], a[0] * b[1] + a[1] * b[0])


def anchor_middle_minors():
    one, minus, ii, mi = (1, 0), (-1, 0), (0, 1), (0, -1)
    D = [
        [one, one, one, one, one, one],
        [one, minus, ii, mi, mi, ii],
        [one, ii, minus, ii, mi, mi],
        [one, mi, ii, minus, ii, mi],
        [one, mi, mi, ii, minus, ii],
        [one, ii, mi, mi, ii, minus],
    ]
    perms = list(itertools.permutations(range(3)))
    signs = [(-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3)) for p in perms]
    squares = []
    for rows in itertools.combinations(range(6), 3):
        for cols in itertools.combinations(range(6), 3):
            re, im = 0, 0
            for perm, sign in zip(perms, signs):
                term = (1, 0)
                for j in range(3):
                    term = gauss_mul(term, D[rows[j]][cols[perm[j]]])
                re += sign * term[0]
                im += sign * term[1]
            squares.append(re * re + im * im)
    assert len(squares) == 400 and min(squares) == 4
    return D


def verify(template_path, rho, phase_halfwidth, anchor_radius, requested_raw_gap):
    assert sha(template_path) == TEMPLATE_SHA
    data = json.loads(template_path.read_text())
    assert data["kind"] == "rational_ray_templates_not_claimed_exact_solutions"
    denominator = data["denominator"]
    assert type(denominator) is int and denominator == 10**12
    centers = data["centers"]
    phases = data["phase_seeds_radians"]
    assert len(centers) == len(phases) == 120
    R = Q(data["center_component_modulus_bound"])
    seed_error = Q(data["phase_seed_to_center_error_bound"])
    assert R >= 1 and seed_error > 0
    assert rho > 0 and phase_halfwidth > 0
    assert phase_halfwidth + seed_error <= rho
    assert anchor_radius > 0 and requested_raw_gap > 0

    for center, phase in zip(centers, phases):
        assert len(center) == 6 and len(phase) == 5
        assert center[0] == [denominator, 0]
        for a, b in center:
            assert type(a) is int and type(b) is int
            assert Q(a * a + b * b, denominator**2) <= R**2
        for (a, b), angle in zip(center[1:], phase):
            c, s, error = trig_taylor(Q(angle))
            dr = abs(c - Q(a, denominator)) + error
            di = abs(s - Q(b, denominator)) + error
            assert dr * dr + di * di <= seed_error**2

    n = len(centers)
    denominator4 = denominator**4
    overlap_numerators = [[0] * n for _ in range(n)]
    for a in range(n):
        for b in range(a, n):
            re = sum(x * u + y * v for (x, y), (u, v) in zip(centers[a], centers[b]))
            im = sum(x * v - y * u for (x, y), (u, v) in zip(centers[a], centers[b]))
            overlap_numerators[a][b] = overlap_numerators[b][a] = re * re + im * im

    e = 5 * rho * (1 + R)
    o_threshold = e**2
    u_threshold = 5 * e + e**2  # 2 sqrt(6) < 5, using actual MU modulus sqrt(6).
    adj = [0] * n
    uadj = [0] * n
    edges = []
    uedges = []
    for a in range(n):
        assert Q(overlap_numerators[a][a], denominator4) > o_threshold
        for b in range(a):
            squared = Q(overlap_numerators[a][b], denominator4)
            if squared <= o_threshold:
                adj[a] |= 1 << b
                adj[b] |= 1 << a
                edges.append((b, a))
            if abs(squared - 6) <= u_threshold:
                uadj[a] |= 1 << b
                uadj[b] |= 1 << a
                uedges.append((b, a))
        # A common-U label can equal a clique label; account for any such loop.
        if abs(Q(overlap_numerators[a][a], denominator4) - 6) <= u_threshold:
            uadj[a] |= 1 << a
            uedges.append((a, a))

    cliques = all_six_cliques(adj)
    assert len(edges) == 600 and len(cliques) == 10
    center_gap = Q(599, 100)
    star_witnesses = []
    for clique in cliques:
        common_u = (1 << n) - 1
        for a in clique:
            common_u &= uadj[a]
        assert common_u == 0
        row = []
        for b in range(n):
            witness = max(clique, key=lambda a: abs(overlap_numerators[a][b] - 6 * denominator4))
            discrepancy = Q(abs(overlap_numerators[witness][b] - 6 * denominator4), denominator4)
            assert discrepancy > center_gap
            row.append(witness)
        star_witnesses.append(row)

    center_inner_bound = 1 + 5 * R**2
    overlap_square_error = (6 + center_inner_bound) * e
    raw_gap = center_gap - overlap_square_error
    assert raw_gap > requested_raw_gap
    assert center_gap > u_threshold
    probability_gap = requested_raw_gap / 36
    two_basis_energy_gap = 6 * probability_gap**2

    D = anchor_middle_minors()
    middle_minor_gap = 2 - 18 * anchor_radius
    assert middle_minor_gap > 0
    residual_allowance = 30 * anchor_radius + 36 * anchor_radius**2
    anchor_payload = json.dumps(D, separators=(",", ":")).encode()
    return {
        "status": "PASS_FINITE_TEMPLATE_OBSTRUCTION",
        "scope": "Exact finite template graph and quantitative margins. A separate complete near-anchor candidate containment certificate is required for the regional theorem.",
        "template_file": template_path.name,
        "template_sha256": sha(template_path),
        "verifier_sha256": sha(Path(__file__).resolve()),
        "arithmetic": "Python arbitrary-precision integers and fractions only; assertions enabled.",
        "template_count": n,
        "template_centers_claimed_exact_roots": False,
        "center_component_modulus_bound": str(R),
        "phase_seed_to_center_error_bound": str(seed_error),
        "phase_seed_box_halfwidth": str(phase_halfwidth),
        "template_chordal_radius": str(rho),
        "raw_inner_product_error": str(e),
        "orthogonality_threshold_squared": str(o_threshold),
        "unbiasedness_squared_residual_threshold": str(u_threshold),
        "orthogonality_edge_count": len(edges),
        "orthogonality_edges": edges,
        "potential_unbiased_edge_count": len(uedges),
        "potential_unbiased_edges": uedges,
        "all_six_cliques": cliques,
        "clique_count": len(cliques),
        "common_unbiased_label_counts": [0] * len(cliques),
        "center_star_gap_strict_lower_bound": str(center_gap),
        "star_witnesses": star_witnesses,
        "overlap_square_error_bound": str(overlap_square_error),
        "derived_raw_gap_strict_lower_bound": str(raw_gap),
        "certified_raw_gap_strict_lower_bound": str(requested_raw_gap),
        "normalized_probability_gap_strict_lower_bound": str(probability_gap),
        "two_completing_bases_squared_probability_energy_strict_lower_bound": str(two_basis_energy_gap),
        "anchor_matrix_gaussian_pairs": D,
        "anchor_matrix_sha256": hashlib.sha256(anchor_payload).hexdigest(),
        "anchor_entrywise_chordal_radius": str(anchor_radius),
        "required_D_residual_allowance": str(residual_allowance),
        "D_middle_minor_count": 400,
        "D_minimum_middle_minor_squared_modulus": 4,
        "regional_middle_minor_modulus_lower_bound": str(middle_minor_gap),
        "containment_not_checked": "Every dephased physical ray with all |F_D,j| <= required_D_residual_allowance must belong to at least one listed phase seed box. Root multiplicity, existence, uniqueness, and finite perturbed fibers are not assumed.",
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--templates", type=Path, default=HERE / "D0_TEMPLATE_CENTERS.json")
    parser.add_argument("--output", type=Path, default=HERE / "D0_TEMPLATE_GRAPH_RECEIPT.json")
    parser.add_argument("--rho", type=Q, default=Q(10001, 1000000))
    parser.add_argument("--phase-halfwidth", type=Q, default=Q(1, 100))
    parser.add_argument("--anchor-radius", type=Q, default=Q(1, 10000))
    parser.add_argument("--raw-gap", type=Q, default=Q(9, 2))
    args = parser.parse_args()
    receipt = verify(args.templates, args.rho, args.phase_halfwidth, args.anchor_radius, args.raw_gap)
    args.output.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n")
    print(json.dumps({key: receipt[key] for key in [
        "status", "template_count", "orthogonality_edge_count", "clique_count",
        "potential_unbiased_edge_count", "certified_raw_gap_strict_lower_bound",
        "normalized_probability_gap_strict_lower_bound",
        "two_completing_bases_squared_probability_energy_strict_lower_bound",
    ]}, indent=2))


if __name__ == "__main__":
    main()
