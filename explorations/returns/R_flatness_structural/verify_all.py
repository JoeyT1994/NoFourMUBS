#!/usr/bin/env python3
"""Replay the implemented checks; this is not a structural proof of Handoff R."""
import argparse
import datetime as dt
import importlib.metadata
import json
import os
from pathlib import Path
import platform
import subprocess
import sys
import time


def main():
    if sys.flags.optimize:
        raise SystemExit("Assertions are required. Run Python without -O or -OO.")
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--baseline", action="store_true",
                        help="Also replay the existing rational seed-expansion method.")
    parser.add_argument("--diagnostics", action="store_true",
                        help="Also check the counterexample to a rejected stronger claim.")
    parser.add_argument("--json", type=Path, metavar="PATH",
                        help="Write the complete verification results to this path.")
    args = parser.parse_args()
    base = Path(__file__).resolve().parent
    checks = [
        ("structural", "verification/verify_side_identities.py"),
        ("structural", "verification/verify_conic_identities.py"),
        ("structural", "verification/verify_cubic_reduction.py"),
    ]
    if args.baseline:
        checks.append(("existing_seed_expansion", "reference/check_existing_W11.py"))
    if args.diagnostics:
        checks.append(("rejected_claim_diagnostic", "diagnostics/check_rejected_claim.py"))
    versions = {}
    for package in ("sympy", "python-flint", "mpmath"):
        try:
            versions[package] = importlib.metadata.version(package)
        except importlib.metadata.PackageNotFoundError:
            versions[package] = None
    environment = os.environ.copy()
    environment.pop("PYTHONOPTIMIZE", None)
    environment["PYTHONDONTWRITEBYTECODE"] = "1"
    results = []
    started = dt.datetime.now(dt.timezone.utc).isoformat()
    for scope, relative in checks:
        before = time.perf_counter()
        result = subprocess.run([sys.executable, str(base / relative)], cwd=base,
                                env=environment, text=True, capture_output=True)
        elapsed = time.perf_counter() - before
        record = {
            "script": relative, "scope": scope, "return_code": result.returncode,
            "elapsed_seconds": round(elapsed, 6),
            "status": "PASS" if result.returncode == 0 else "FAIL",
            "stdout": result.stdout, "stderr": result.stderr,
        }
        results.append(record)
        print(f"{record['status']} {relative} ({elapsed:.3f} s)", flush=True)
        if result.returncode:
            print(result.stdout, end="")
            print(result.stderr, end="", file=sys.stderr)
    ok = all(record["return_code"] == 0 for record in results)
    report = {
        "started_utc": started, "python": platform.python_version(),
        "dependencies": versions, "assertions_enabled": True,
        "implemented_checks": "PASS" if ok else "FAIL",
        "structural_matched_flatness_obligation": "NOT_ESTABLISHED",
        "lean_files_modified": False, "lean_build_performed": False,
        "checks": results,
    }
    if args.json:
        args.json.parent.mkdir(parents=True, exist_ok=True)
        args.json.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print("Implemented checks: " + ("PASS" if ok else "FAIL"))
    print("Handoff R structural matched-flatness obligation: NOT ESTABLISHED")
    return 0 if ok else 1


if __name__ == "__main__":
    raise SystemExit(main())
