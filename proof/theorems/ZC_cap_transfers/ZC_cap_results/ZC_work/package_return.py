#!/usr/bin/env python3
"""Build the user-facing ZC ZIP from final proof and replay artifacts."""
from pathlib import Path
import hashlib
import json
import shutil
import zipfile
from verify_gap import verify as verify_gap

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    stage = ROOT / "ZC_cap_results"
    stage.mkdir(exist_ok=True)
    work = stage / "ZC_work"
    work.mkdir(exist_ok=True)
    source = ROOT / "ZC_cap_transfers"
    shutil.copytree(source, stage / "ZC_cap_transfers", dirs_exist_ok=True,
                    ignore=shutil.ignore_patterns("__pycache__", "*.pyc"))
    names = [
        "cap_verify.py", "coverage.py", "weighted.py", "construction.py",
        "coverage_batch.py", "coverage_summary.py", "replay_all.py",
        "test_rejection.py", "verify_input_projection.py", "verify_gap.py", "assemble_report.py",
        "package_return.py", "REPORT.md", "CAP_FORMAT.md", "CONSTRUCTION_NOTES.md", "cap_theory.md",
        "coverage_notes.md", "scalar_completeness.md", "weighted_audit.md",
        "weighted_test.json", "runtime_versions.json", "input_projection.json",
        "affine_multiplier_example.py", "affine_multiplier_example.md", "affine_multiplier_example.json",
        "rejection_results.json", "exact_coverage_tests.json",
        "gap_replay.json", "gap_replay_tests.json", "proposal_freeze.json",
        "coverage_summary.json", "per_ball_cap_counts.csv", "transfer_input.json.gz",
    ]
    for name in names:
        shutil.copy2(HERE / name, work / name)
    for folder in ("certificates", "results", "proposals", "gaps"):
        target = work / folder
        target.mkdir(exist_ok=True)
        for file in sorted((HERE / folder).glob("seed_*.json")):
            shutil.copy2(file, target / file.name)
    for name in ("REPORT.md", "per_ball_cap_counts.csv", "coverage_summary.json"):
        shutil.copy2(HERE / name, stage / name)
    shutil.copy2(HERE / "README_RETURN.md", stage / "README.md")
    (stage / "requirements.txt").write_text(
        "# Versions used for this return; SciPy is needed only for construction.\n"
        "numpy==2.3.5\npython-flint==0.9.0\nscipy==1.17.0\n")

    summary = json.loads((HERE / "coverage_summary.json").read_text())
    proof_sources = {
        "cap_verify.py": HERE / "cap_verify.py", "coverage.py": HERE / "coverage.py",
        "weighted.py": HERE / "weighted.py",
        **{name: source / "context" / name for name in
           ("patches.py", "wholeball.py", "seedcert.py", "tmarb.py", "wholeball_basis.json")},
    }
    proof_hashes = {name: sha(file) for name, file in proof_sources.items()}
    errors = []
    freeze = json.loads((work / "proposal_freeze.json").read_text())
    for entry in freeze["entries"]:
        if sha(work / "proposals" / entry["file"]) != entry["sha256"]:
            errors.append(f"seed {entry['seed']}: frozen proposal hash mismatch")
    if freeze["source_count"] != 200 or len(freeze["entries"]) != 200:
        errors.append("frozen proposal manifest does not contain exactly 200 sources")
    full_ids = summary["certified_seed_ids"]
    partial_ids = summary.get("certified_caps_only_seed_ids", [])
    for seed in full_ids + partial_ids:
        result = json.loads((work / "results" / f"seed_{seed}.json").read_text())
        certificate = work / "certificates" / f"seed_{seed}.json"
        proposal = work / "proposals" / f"seed_{seed}.json"
        if seed in full_ids and not result.get("full_sphere"):
            errors.append(f"seed {seed}: result not complete")
        if seed in partial_ids and not result.get("all_caps_passed"):
            errors.append(f"seed {seed}: partial cap inequalities not complete")
        if result.get("proposal_sha256") != sha(certificate):
            errors.append(f"seed {seed}: certificate hash mismatch")
        if result.get("source_proposal_sha256") != sha(proposal):
            errors.append(f"seed {seed}: source proposal hash mismatch")
        for name, expected in proof_hashes.items():
            if result.get("code_sha256", {}).get(name) != expected:
                errors.append(f"seed {seed}: code hash mismatch for {name}")
        if result.get("input_sha256") != sha(work / "transfer_input.json.gz"):
            errors.append(f"seed {seed}: compact input hash mismatch")
    gap_audits = []
    for seed in partial_ids:
        candidate = json.loads((work / "proposals" / f"seed_{seed}.json").read_text())
        witness = json.loads((work / "gaps" / f"seed_{seed}.json").read_text())
        if witness.get("source_seed") != seed:
            errors.append(f"seed {seed}: gap witness source mismatch")
        try:
            gap_audits.append(verify_gap(candidate["caps"], witness))
        except (ArithmeticError, ValueError, KeyError) as exc:
            errors.append(f"seed {seed}: exact gap verification failed: {exc}")
    audit = {"status": "PASS" if not errors else "FAIL", "errors": errors,
             "certified_sources_checked": len(full_ids),
             "partial_cap_sources_checked": len(partial_ids),
             "frozen_proposals_checked": len(freeze["entries"]),
             "exact_gap_replay": gap_audits,
             "proof_code_sha256": proof_hashes,
             "current_recording_helper_sha256": sha(HERE / "coverage_batch.py"),
             "recording_helper_note": "Run records retain the historical scheduler hash. Scheduling-only changes are not mathematical proof dependencies and are not grounds to repeat accepted checks.",
             "input_archive_sha256": sha(ROOT / "upload" / "ZC_cap_transfers.zip"),
             "scope": "Package integrity and replay provenance; mathematical acceptance is in results/.",
             "prepared": "2026-10-26"}
    (stage / "PACKAGE_AUDIT.json").write_text(json.dumps(audit, indent=2) + "\n")
    if errors:
        print(json.dumps(audit, indent=2))
        raise SystemExit(1)
    files = sorted(p for p in stage.rglob("*") if p.is_file() and p.name != "MANIFEST.sha256")
    (stage / "MANIFEST.sha256").write_text("".join(f"{sha(p)}  {p.relative_to(stage).as_posix()}\n" for p in files))
    output = ROOT / "ZC_cap_results.zip"
    with zipfile.ZipFile(output, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6) as archive:
        for file in sorted(stage.rglob("*")):
            if file.is_file():
                archive.write(file, Path(stage.name) / file.relative_to(stage))
    with zipfile.ZipFile(output) as archive:
        corrupt = archive.testzip()
        if corrupt:
            raise ValueError(f"ZIP integrity failure: {corrupt}")
    print(json.dumps({"status": "PASS", "zip": str(output), "bytes": output.stat().st_size,
                      "files": len(files)+1, "certified_sources": len(summary["certified_seed_ids"]),
                      "sha256": sha(output)}, indent=2))


if __name__ == "__main__":
    main()
