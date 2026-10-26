#!/usr/bin/env python3
"""Summarize current cap proposals and independently replayed certificates."""
from __future__ import annotations

import csv
from collections import Counter
import hashlib
import json
from pathlib import Path
import statistics

HERE = Path(__file__).resolve().parent


def load(path):
    return json.loads(path.read_text()) if path.exists() else {}


def main():
    source = HERE.parent / "ZC_cap_transfers/context/ZT_per_ball_counts.csv"
    vendor = HERE.parent / "ZC_cap_transfers/context"
    proof_files = [HERE/"cap_verify.py", HERE/"coverage.py", HERE/"weighted.py",
                   vendor/"patches.py", vendor/"wholeball.py", vendor/"seedcert.py",
                   vendor/"tmarb.py", vendor/"wholeball_basis.json"]
    proof_hashes = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in proof_files}
    input_hash = hashlib.sha256((HERE/"transfer_input.json.gz").read_bytes()).hexdigest()
    rows = []
    with source.open(newline="") as stream:
        previous = list(csv.DictReader(stream))
    for original in previous:
        seed = int(original["seed"])
        proposalpath = HERE / "proposals" / f"seed_{seed}.json"
        proposal = load(proposalpath)
        result = load(HERE / "results" / f"seed_{seed}.json")
        info = proposal.get("info", {})
        geometry = info.get("numerical_hull", {})
        proposal_reason = proposal.get("error", proposal.get("reason", ""))
        source_model_fallback = "NOT ESTABLISHED" if proposal and (proposal_reason or proposal.get("status") == "NOT ESTABLISHED") else "NOT ATTEMPTED"
        source_sha = hashlib.sha256(proposalpath.read_bytes()).hexdigest() if proposalpath.exists() else None
        certpath = HERE/"certificates"/f"seed_{seed}.json"
        certificate_sha = hashlib.sha256(certpath.read_bytes()).hexdigest() if certpath.exists() else None
        certificate = load(certpath)
        certified_cap_list = certificate.get("caps", []) if result.get("all_caps_passed") else []
        mode_counts = Counter(cap.get("mode", "polynomial") for cap in certified_cap_list)
        weighted_count = sum(cap.get("weighted_target", False) is True for cap in certified_cap_list)
        affine_count = 0
        for cap in certified_cap_list:
            values = cap.get("multiplier_vec", [0, 0, 0, 0])
            affine_count += any((float.fromhex(v) != 0 if isinstance(v, str) else v != 0) for v in values)
        proof_current = bool(result and all(result.get("code_sha256", {}).get(name) == value
                                             for name, value in proof_hashes.items()))
        certificate_current = bool(result and certificate_sha and certificate_sha == result.get("proposal_sha256"))
        input_current = bool(result and result.get("input_sha256") == input_hash)
        row = {"seed": seed, "source_radius": original["source_radius"],
               "original_boxes": original["original_boxes"],
               "ZT_certified_patches": original["certified_patch_count"],
               "ZT_wholeball_status": original["wholeball_status"],
               "source_model_status": info.get("normal_form", {}).get("status", source_model_fallback),
               "replay_source_model_status": result.get("source_model", {}).get("status", "NOT ESTABLISHED" if result.get("error") else "NOT REPLAYED"),
               "numerical_proposal_status": proposal.get("status", "NOT ATTEMPTED"),
               "proposed_caps": len(proposal["caps"]) if "caps" in proposal else "",
               "numerical_cover": geometry.get("covers", ""),
               "numerical_hull_minimum_distance": geometry.get("minimum_distance", ""),
               "replay_status": result.get("status", "NOT REPLAYED"),
               "replayed_caps": result.get("caps", ""),
               "certified_caps": result.get("certified_caps", ""),
               "all_caps_passed": result.get("all_caps_passed", False),
               "certified_full_sphere": result.get("full_sphere", False),
               "result_matches_current_proposal": bool(result and source_sha == result.get("source_proposal_sha256")),
               "proof_code_current": proof_current,
               "certificate_hash_matches": certificate_current,
               "input_hash_matches": input_current,
               "polynomial_caps": mode_counts["polynomial"],
               "local_caps": mode_counts["local"],
               "local_sphere_caps": mode_counts["local_sphere"],
               "weighted_target_caps": weighted_count,
               "nonzero_affine_multiplier_caps": affine_count,
               "coverage_facets": result.get("coverage", {}).get("facets", ""),
               "coverage_max_norm_squared": result.get("coverage", {}).get("max_norm_squared", ""),
               "target_margin_lower": result.get("target_margin_lower", ""),
               "orientation_margin_lower": result.get("orientation_margin_lower", ""),
               "error": result.get("error", proposal_reason)}
        if row["certified_full_sphere"]:
            row["box_reduction_factor"] = int(row["original_boxes"]) / int(row["replayed_caps"])
            row["ZT_patch_reduction_factor"] = int(row["ZT_certified_patches"]) / int(row["replayed_caps"]) if row["ZT_certified_patches"] else ""
        else:
            row["box_reduction_factor"] = row["ZT_patch_reduction_factor"] = ""
        rows.append(row)
    with (HERE / "per_ball_cap_counts.csv").open("w", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    full = [r for r in rows if r["certified_full_sphere"]]
    caps_only = [r for r in rows if r["all_caps_passed"] and not r["certified_full_sphere"]]
    current = [r for r in full if r["result_matches_current_proposal"]]
    fully_current = [r for r in current if r["proof_code_current"] and r["certificate_hash_matches"] and r["input_hash_matches"]]
    caps_only_current = [r for r in caps_only if r["result_matches_current_proposal"] and r["proof_code_current"] and r["certificate_hash_matches"] and r["input_hash_matches"]]
    constructed = [r for r in rows if r["proposed_caps"] != ""]
    numerical = [r for r in rows if r["numerical_cover"] is True]
    summary = {"sample_balls": len(rows), "proposals": len(constructed),
               "source_models_certified": sum(r["source_model_status"] == "CERTIFIED" for r in rows),
               "source_models_not_established": sum(r["source_model_status"] == "NOT ESTABLISHED" for r in rows),
               "numerical_full_sphere_covers": len(numerical),
               "certified_full_sphere_covers": len(full),
               "certified_caps_only_balls": len(caps_only),
               "certified_caps_only_total_caps": sum(r["certified_caps"] for r in caps_only),
               "certified_caps_only_seed_ids": [r["seed"] for r in caps_only],
               "certified_current_proposals": len(current),
               "fully_current_certificates": len(fully_current),
               "fully_current_caps_only_certificates": len(caps_only_current),
               "provenance_mismatches": len(full)-len(fully_current)+len(caps_only)-len(caps_only_current),
               "provenance_mismatch_seed_ids": [r["seed"] for r in full+caps_only if r not in fully_current+caps_only_current],
               "certified_seed_ids": [r["seed"] for r in full],
               "not_certified_seed_ids": [r["seed"] for r in rows if not r["certified_full_sphere"]],
               "certified_cap_counts": {"min": min((r["replayed_caps"] for r in full), default=None),
                                         "median": statistics.median([r["replayed_caps"] for r in full]) if full else None,
                                         "max": max((r["replayed_caps"] for r in full), default=None)},
               "certified_total_caps": sum(r["replayed_caps"] for r in full),
               "certified_cap_modes": {mode: sum(r[mode+"_caps"] for r in full)
                                       for mode in ("polynomial", "local", "local_sphere")},
               "certified_weighted_target_caps": sum(r["weighted_target_caps"] for r in full),
               "certified_nonzero_affine_multiplier_caps": sum(r["nonzero_affine_multiplier_caps"] for r in full),
               "certified_total_facets": sum(r["coverage_facets"] for r in full),
               "coverage_support_dot_checks": sum(r["coverage_facets"]*r["replayed_caps"] for r in full),
               "certified_original_boxes": sum(int(r["original_boxes"]) for r in full),
               "certified_ZT_patches": sum(int(r["ZT_certified_patches"]) for r in full if r["ZT_certified_patches"]),
               "all_certified_target_margin_lower": min((r["target_margin_lower"] for r in full), default=None),
               "all_certified_orientation_margin_lower": min((r["orientation_margin_lower"] for r in full if r["orientation_margin_lower"] not in (None, "")), default=None)}
    (HERE / "coverage_summary.json").write_text(json.dumps(summary, indent=2) + "\n")
    print(json.dumps({k:v for k,v in summary.items() if not k.endswith("seed_ids")}, indent=2))


if __name__ == "__main__":
    main()
