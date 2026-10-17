#!/usr/bin/env python3
"""Bind the exact tube-cover input to the rational-template obstruction.

This checks source/header/input and elementary mathematical bindings.  It does
not replay the full cover or turn a pending run into a completed certificate.
"""

import sys

if not __debug__ or sys.flags.optimize:
    raise RuntimeError("This exact verifier requires assertions; do not use -O or PYTHONOPTIMIZE.")

import argparse
import hashlib
import itertools
import json
from fractions import Fraction as Q
from pathlib import Path

import verify_template_graph as graph


HERE = Path(__file__).resolve().parent
COVER_SOURCE_SHA = "520dfcb7213bf3a7f73ab09ad8f3f8ea151d4e7ff9c23649febe42d0b42625f8"


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def ceiling(x):
    return -((-x.numerator) // x.denominator)


def atan_interval(z, terms):
    assert 0 < z < 1 and terms > 0
    s = sum(((-1) ** k * z ** (2 * k + 1) / (2 * k + 1) for k in range(terms)), Q(0))
    remainder = z ** (2 * terms + 1) / (2 * terms + 1)
    return (s, s + remainder) if terms % 2 == 0 else (s - remainder, s)


def pi_interval():
    a, b = atan_interval(Q(1, 5), 32)
    c, d = atan_interval(Q(1, 239), 12)
    return 16 * a - 4 * d, 16 * b - 4 * c


def canonical_header(data):
    text = [
        "// D0 exact Gaussian anchor; arbitrary dyadic candidate centers are proposals validated by Krawczyk.",
        "#include <cstdint>",
        f"constexpr int64_t PI_LO={data['pi_lo']}LL, PI_HI={data['pi_hi']}LL;",
        "constexpr int RAY_COUNT=120;",
        f"constexpr int64_t SOURCE_RADIUS_DEN={data['source_radius_den']}, SMALL_RADIUS_DEN={data['small_radius_den']}, LARGE_RADIUS_DEN={data['large_radius_den']};",
        f"constexpr int64_t CUBE_SHIFT={data['cube_shift']}LL;",
        "struct FixedCoeff {int r,s; int64_t gamma_lo,gamma_hi;};",
        "constexpr FixedCoeff fixed_coefficients[75]={",
    ]
    text.extend("{" + ",".join(map(str, row)) + "}," for row in data["coefficients"])
    text.extend(["};", "constexpr int64_t fixed_centers[120][5]={"])
    text.extend("{" + ",".join(map(str, row)) + "}," for row in data["centers"])
    text.extend([
        "};",
        f"constexpr int64_t TUBE_RADIUS_DEN={data['tube_radius_den']}, RESIDUAL_TOLERANCE={data['residual_tolerance_numerator']}LL;",
    ])
    return "\n".join(text) + "\n"


def verify(cover_dir, graph_receipt_path):
    input_path = cover_dir / "D0_TUBE_INPUT.json"
    header_path = cover_dir / "tube_inputs.h"
    source_path = cover_dir / "d0_tube_cover.cpp"
    graph_receipt = json.loads(graph_receipt_path.read_text())
    assert graph_receipt["status"] == "PASS_FINITE_TEMPLATE_OBSTRUCTION"
    assert graph_receipt["verifier_sha256"] == sha(Path(graph.__file__))
    template_path = HERE / graph_receipt["template_file"]
    rho = Q(graph_receipt["template_chordal_radius"])
    seed_error = Q(graph_receipt["phase_seed_to_center_error_bound"])
    epsilon = Q(graph_receipt["anchor_entrywise_chordal_radius"])
    expected_graph = graph.verify(
        template_path, rho,
        Q(graph_receipt["phase_seed_box_halfwidth"]), epsilon,
        Q(graph_receipt["certified_raw_gap_strict_lower_bound"]),
    )
    assert graph_receipt == json.loads(json.dumps(expected_graph))
    templates = json.loads(template_path.read_text())
    data = json.loads(input_path.read_text())
    assert sha(source_path) == COVER_SOURCE_SHA
    assert data["source_cpp_sha256"] == COVER_SOURCE_SHA
    assert header_path.read_text() == canonical_header(data)
    grid = data["Q"]
    assert type(grid) is int and grid == 2**44
    assert data["columns"] == [0, 1, 2, 3, 4]
    assert Q(data["cube_shift"], grid) == Q(1, 8)
    assert epsilon == Q(1, data["source_radius_den"])
    pilo, pihi = pi_interval()
    assert Q(data["pi_lo"], grid) < pilo < pihi < Q(data["pi_hi"], grid)

    eta = 30 * epsilon + 36 * epsilon**2
    assert eta == Q(*data["residual_tolerance_rational"])
    assert eta == Q(graph_receipt["required_D_residual_allowance"])
    assert data["residual_tolerance_numerator"] == ceiling(eta * grid)
    eta_grid = Q(data["residual_tolerance_numerator"], grid)
    assert eta <= eta_grid < eta + Q(1, grid)
    actual_radius = Q(ceiling(Q(grid, data["tube_radius_den"])), grid)
    assert actual_radius + seed_error < rho

    D = graph.anchor_middle_minors()
    expected_coefficients = []
    phase_index = {(1, 0): 0, (0, 1): 1, (-1, 0): 2, (0, -1): -1}
    for col in data["columns"]:
        for r, s in itertools.combinations(range(6), 2):
            conjugate_r = (D[r][col][0], -D[r][col][1])
            product = graph.gauss_mul(conjugate_r, D[s][col])
            k = phase_index[product]
            if k >= 0:
                low = (k * data["pi_lo"]) // 2
                high = -((-k * data["pi_hi"]) // 2)
            else:
                low = (k * data["pi_hi"]) // 2
                high = -((-k * data["pi_lo"]) // 2)
            expected_coefficients.append([r, s, low, high])
    assert data["coefficients"] == expected_coefficients

    centers = data["centers"]
    assert len(centers) == 120
    denominator = templates["denominator"]
    maximum_center_error_square = Q(0)
    for label, coordinates in enumerate(centers):
        assert len(coordinates) == 5
        for coordinate, (a, b) in zip(coordinates, templates["centers"][label][1:]):
            assert type(coordinate) is int
            angle = Q(coordinate, grid)
            c, s, err = graph.trig_taylor(angle)
            dr = abs(c - Q(a, denominator)) + err
            di = abs(s - Q(b, denominator)) + err
            squared = dr**2 + di**2
            assert squared < seed_error**2
            maximum_center_error_square = max(maximum_center_error_square, squared)
            # Every retained box lies wholly inside the shifted fundamental cube.
            assert coordinate - actual_radius * grid > -data["pi_lo"] + data["cube_shift"]
            assert coordinate + actual_radius * grid < data["pi_lo"] + data["cube_shift"]

    radius_ticks = int(actual_radius * grid)
    assert radius_ticks == actual_radius * grid
    for a in range(120):
        for b in range(a):
            assert any(abs(centers[a][i] - centers[b][i]) > 2 * radius_ticks for i in range(5))

    return {
        "status": "PASS_TUBE_INPUT_GRAPH_BINDING",
        "scope": "Proved exact input, source/header, residual, pi, and template association bindings. Full search completion and execution provenance remain a separate gate.",
        "files": {
            "D0_TUBE_INPUT.json": sha(input_path),
            "tube_inputs.h": sha(header_path),
            "d0_tube_cover.cpp": sha(source_path),
            graph_receipt_path.name: sha(graph_receipt_path),
            template_path.name: sha(template_path),
            "verify_template_graph.py": sha(Path(graph.__file__)),
            "verify_tube_graph_binding.py": sha(Path(__file__).resolve()),
        },
        "grid": grid,
        "pi_bounds_method": "Machin 16 atan(1/5)-4 atan(1/239); rational alternating bounds with32 and12 terms.",
        "anchor_radius": str(epsilon),
        "required_residual_allowance": str(eta),
        "actual_grid_residual_allowance": str(eta_grid),
        "residual_columns": data["columns"],
        "exact_Gaussian_D_pair_coefficients_checked": 75,
        "phase_template_count": 120,
        "phase_center_coordinates_checked": 600,
        "actual_phase_template_halfwidth": str(actual_radius),
        "dyadic_phase_center_to_rational_template_error_bound": str(seed_error),
        "resulting_chordal_radius_upper_bound": str(actual_radius + seed_error),
        "graph_chordal_radius": str(rho),
        "closed_template_boxes_disjoint": True,
        "template_boxes_strictly_inside_shifted_cube": True,
        "canonical_header_matches_exactly": True,
        "approximate_Krawczyk_identity": "x=m-C(F(m)-y)+(I-C A_x)(x-m), with y=F(x) in[-eta,eta]^5 and A_x an integrated Jacobian inside the current box. The symmetric tolerance enlargement encloses every sublevel point for arbitrary finite rational C.",
        "does_not_certify": ["A completed cover run", "Existence or uniqueness of roots", "A finite perturbed candidate fiber", "Global F or Global F-prime"],
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cover-dir", type=Path, default=HERE.parent / "cover")
    parser.add_argument("--graph-receipt", type=Path, default=HERE / "D0_TEMPLATE_GRAPH_RECEIPT.json")
    parser.add_argument("--output", type=Path, default=HERE / "D0_TUBE_GRAPH_BINDING_RECEIPT.json")
    args = parser.parse_args()
    receipt = verify(args.cover_dir, args.graph_receipt)
    args.output.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n")
    print(json.dumps({k: receipt[k] for k in [
        "status", "anchor_radius", "exact_Gaussian_D_pair_coefficients_checked",
        "actual_phase_template_halfwidth", "resulting_chordal_radius_upper_bound",
        "graph_chordal_radius",
    ]}, indent=2))


if __name__ == "__main__":
    main()
