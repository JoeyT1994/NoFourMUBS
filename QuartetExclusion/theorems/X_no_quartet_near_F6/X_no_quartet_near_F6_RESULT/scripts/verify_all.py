#!/usr/bin/env python3
"""Replay the X certificate using only Python's standard library.

The manifest protects file integrity. Mathematical acceptance is independently
recomputed by the component verifiers, including every compressed proof node.
"""
from pathlib import Path
from fractions import Fraction as F
import hashlib
import json
import subprocess
import sys
import time

if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")
if sys.version_info < (3, 10):
    raise SystemExit("Python 3.10 or newer is required.")

ROOT = Path(__file__).resolve().parents[1]
CERT = ROOT / "certificates"


def run_component(name, live=False):
    print("REPLAY", name, flush=True)
    log_path = CERT / (name.removesuffix(".py") + ".log")
    command = [sys.executable, "-I", str(ROOT / "scripts" / name)]
    with log_path.open("w", encoding="utf-8") as log:
        process = subprocess.Popen(
            command, cwd=ROOT, stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT, text=True, encoding="utf-8"
        )
        assert process.stdout is not None
        for line in process.stdout:
            log.write(line)
            log.flush()
            if live:
                print(line, end="", flush=True)
        code = process.wait()
    if code:
        print(log_path.read_text(encoding="utf-8"), file=sys.stderr)
        raise SystemExit(f"FAILED {name}: exit {code}")


def main():
    start = time.time()
    CERT.mkdir(exist_ok=True)
    manifest = json.loads((ROOT / "MANIFEST.json").read_text())
    for relative, wanted in manifest["sha256"].items():
        path = ROOT / relative
        assert path.is_file(), ("missing file", relative)
        found = hashlib.sha256(path.read_bytes()).hexdigest()
        assert found == wanted, ("file digest mismatch", relative)
    print("PASS immutable package file digests", flush=True)

    run_component("verify_geometry.py")
    geometry = json.loads((CERT / "geometry.json").read_text())
    assert geometry["status"] == "PASS"
    assert geometry["rho"] == "3/20"
    assert geometry["normal_radius_upper"] == "147/8000"
    assert geometry["column_radius_upper"] == "21/200"
    assert geometry["normal_singular_value_squared_lower"] == "3"
    assert geometry["horizontal_tangent_dimension"] == "4"
    assert geometry["column_tangent_operator_norm_squared_upper"] == "1/3"
    assert geometry["bin_vertex_norm_squared"] == "29/6"
    assert geometry["bin_vertex_l1"] == "5"
    assert geometry["bin_vertex_linf"] == "3/2"
    print("PASS exact Fourier geometry and bin norm bounds", flush=True)

    run_component("verify_cover.py", live=True)
    cover = json.loads((CERT / "cover.json").read_text())
    assert cover["status"] == "PASS" and cover["rho"] == "3/20"
    expected = [
        {"M": 12, "nodes": 248832, "covered": 0, "rejected": 238680, "refined": 10152},
        {"M": 24, "nodes": 324864, "covered": 0, "rejected": 316620, "refined": 8244},
        {"M": 48, "nodes": 263808, "covered": 4848, "rejected": 246624, "refined": 12336},
        {"M": 96, "nodes": 394752, "covered": 197484, "rejected": 197268, "refined": 0},
    ]
    assert cover["levels"] == expected
    assert cover["total_nodes_checked"] == 1232256
    assert cover["interval_scale"] == 2**48

    run_component("verify_48_graph.py")
    graph = json.loads((CERT / "graph.json").read_text())
    assert graph["status"] == "CERTIFIED"
    assert graph["ray_count"] == 48 and graph["all_rays_exactly_biunimodular"]
    assert graph["orthogonality_edge_count"] == 390
    assert len(graph["orthogonality_6_cliques"]) == 16
    assert len(graph["orthogonal_witness_for_each_candidate_label"]) == 16
    assert all(len(row) == 48 for row in graph["orthogonal_witness_for_each_candidate_label"])
    assert graph["variable_exact_ray_phase_radii"] == {
        "gaussian_0_through_11": "2/5", "bjork_12_through_47": "3/10"
    }
    center_hash = hashlib.sha256((ROOT / "data" / "quantized48.json").read_bytes()).hexdigest()
    assert graph["input_quantized_sha256"] == center_hash
    assert cover["quantized_centers_sha256"] == center_hash
    assert F(graph["quantized_center_meanfree_phase_error_upper"]) == F(1, 1000)
    assert F(399, 1000) + F(1, 1000) == F(2, 5)
    assert F(299, 1000) + F(1, 1000) == F(3, 10)
    probability = (F(2, 5) + F(2, 5))**2 / 6
    assert probability == F(graph["uniform_minimum_overlap_probability_upper"]) == F(8, 75)
    assert F(1, 6) - probability == F(graph["uniform_gap_below_unbiased_probability"]) == F(3, 50)
    print("PASS exact 48-center graph: 390 edges, 16 six-cliques, 768 zero witnesses", flush=True)
    print("PASS shared centers, phase-radius inclusions, and probability gap", flush=True)

    summary = {
        "status": "PASS",
        "theorem_status": "PROVED with CERTIFIED finite steps; see REPORT.md for analytic implications",
        "metric": "horizontal phase quotient, unnormalized Frobenius radians",
        "closed_radius": "3/20",
        "quartet_edge": False,
        "stronger_conclusion": "For every third unbiased orthonormal basis K and every I,H-unbiased unit ray v, min_j |<k_j,v>|^2 <= 8/75.",
        "minimum_overlap_probability_upper": "8/75",
        "gap_below_unbiased_probability": "3/50",
        "ray_cover_nodes": 1232256,
        "covered_leaf_bins": 202332,
        "rejected_leaf_bins": 999192,
        "unresolved_leaf_bins": 0,
        "exact_center_count": 48,
        "robust_graph_edges": 390,
        "robust_graph_six_cliques": 16,
        "exact_zero_witnesses": 768,
        "shared_quantized_centers_sha256": center_hash,
        "proof_arithmetic": "Python integers, rational fractions, directed integer intervals, exact algebraic field arithmetic",
        "chart_germ_dependency": False,
        "old_atlas_dependency": False,
        "lean_formalization": False,
        "elapsed_seconds_informational": time.time() - start,
    }
    (CERT / "SUMMARY.json").write_text(json.dumps(summary, indent=2) + "\n")
    print("ALL PASS: closed rho = 3/20; probability bound = 8/75; deficit = 3/50.", flush=True)
    print("Receipts and logs: certificates/", flush=True)


if __name__ == "__main__":
    main()
