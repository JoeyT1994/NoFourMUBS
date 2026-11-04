#!/usr/bin/env python3
"""Replay every proof-critical certificate. Any failed stage is fatal.

Default: both the small third-moment proof and the original L-id proof.
--quick: the complete third-moment proof, omitting only the redundant L-id
calculation; this is still a universal flatness certificate, not sampling.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import platform
import resource
import subprocess
import sys
import tempfile
import threading
import time
from importlib.metadata import version


def main():
    if not __debug__:
        raise SystemExit("Refusing optimized Python: exact acceptance assertions must be enabled.")
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--quick", action="store_true", help="Complete direct proof only; omit the redundant large L-id replay.")
    parser.add_argument("--report", type=Path, default=None)
    args = parser.parse_args()
    root = Path(__file__).resolve().parent
    reports = root / "reports"
    reports.mkdir(exist_ok=True)
    report_path = args.report or reports / ("verification_quick.json" if args.quick else "verification.json")
    started = time.perf_counter()
    results = []
    env = os.environ.copy()
    env["PYTHONDONTWRITEBYTECODE"] = "1"
    env["PYTHONHASHSEED"] = "0"
    env.pop("PYTHONOPTIMIZE", None)

    def write_report(status, error=None):
        parent = resource.getrusage(resource.RUSAGE_SELF)
        children = resource.getrusage(resource.RUSAGE_CHILDREN)
        report = {
            "status": status,
            "mode": "direct_proof_only" if args.quick else "both_universal_proofs",
            "python": platform.python_version(),
            "platform": platform.platform(),
            "python_flint": version("python-flint"),
            "acceptance": "Exact integer, rational-function, and explicit algebraic-number arithmetic only.",
            "elapsed_wall_seconds": time.perf_counter() - started,
            "child_cpu_seconds": children.ru_utime + children.ru_stime,
            "parent_cpu_seconds": parent.ru_utime + parent.ru_stime,
            "peak_process_rss_kib": max(parent.ru_maxrss, children.ru_maxrss),
            "peak_memory_definition": "Maximum RSS of any verifier process (Linux KiB; the L-id replay runs alongside the others); parent memory is small and separate.",
            "stages": results,
        }
        if error:
            report["error"] = str(error)
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text(json.dumps(report, indent=2) + "\n")
        return report

    running = []

    def run_stage(name, script, expected, extra=()):
        log_path = reports / (name + ".log")
        argv = [sys.executable, "-B", str(root / script), *map(str, extra)]
        print(f"START {name}", flush=True)
        wall = time.perf_counter()
        with log_path.open("w") as log:
            process = subprocess.Popen(argv, cwd=root, env=env, stdout=log, stderr=subprocess.STDOUT)
            running.append(process)
            if hasattr(os, "wait4"):
                _, status, usage = os.wait4(process.pid, 0)
                code = os.waitstatus_to_exitcode(status)
                process.returncode = code
                cpu = usage.ru_utime + usage.ru_stime
                rss = usage.ru_maxrss
            else:
                code = process.wait()
                cpu = None
                rss = None
        elapsed = time.perf_counter() - wall
        content = log_path.read_text()
        ok = code == 0 and expected in content
        results.append({"stage": name, "script": script, "exit_code": code,
                        "expected_pass_marker": expected, "pass": ok,
                        "wall_seconds": elapsed, "cpu_seconds": cpu,
                        "peak_rss_kib": rss, "log": str(log_path.relative_to(root))})
        if not ok:
            raise RuntimeError(f"{name} failed; exit={code}; see {log_path}\n{content[-3000:]}")
        print(f"PASS {name}: {elapsed:.3f} s wall, {rss} KiB peak RSS", flush=True)

    lid = {}

    def run_lid(generated):
        try:
            run_stage("full_L_id", "certificate_agent/verify_factored_rational.py",
                      "PASS UNIVERSAL MATCHED FOURTH-MOMENT IDENTITY",
                      ("--certificate", generated))
        except BaseException as exc:
            lid["error"] = exc

    tmp = None if args.quick else tempfile.TemporaryDirectory(prefix="matched-flatness-replay-")
    try:
        if not args.quick:
            # The L-id replay is independent of the stages below and the longest; it runs alongside them.
            generated = Path(tmp.name) / "factor_certificate.json"
            lid_thread = threading.Thread(target=run_lid, args=(generated,))
            lid_thread.start()
        run_stage("structural", "verify_structural.py", "PASS_EXACT_STRUCTURAL_IDENTITIES")
        run_stage("universal_moments_audit", "audit/verify_universal_moments.py", "PASS")
        run_stage("weighted_defect_contraction", "direct/verify_universal_third.py", "PASS_UNIVERSAL_THIRD_MOMENTS_AND_WEIGHTED_DEFECT_CONTRACTION")
        run_stage("third_moment_targets", "direct/verify_third_moments.py", "PASS_EXACT_THIRD_MOMENT_MATCHED_FLATNESS")
        run_stage("integer_cofactors", "direct/verify_certificate_slices.py", "PASS_INTEGER_COEFFICIENT_SLICES_AND_COFACTORS")
        run_stage("source_translation", "certificate_agent/verify_source_translation.py", "PASS invariants agree horizontally and vertically")
        run_stage("exact_anchor", "audit/verify_anchor.py", "PASS_EXACT_ANCHOR")

        if not args.quick:
            lid_thread.join()
            if "error" in lid:
                raise lid["error"]
            expected = json.loads((root / "certificate_agent/factor_certificate.json").read_text())
            actual = json.loads(generated.read_text())
            expected.pop("measurements", None)
            actual.pop("measurements", None)
            if actual != expected:
                different = [k for k in set(actual) | set(expected) if actual.get(k) != expected.get(k)]
                raise AssertionError("Regenerated L-id certificate differs: " + ", ".join(sorted(different)))
            source = root / "certificate_agent/verify_factored_rational.py"
            if actual["source_sha256"] != hashlib.sha256(source.read_bytes()).hexdigest():
                raise AssertionError("L-id source hash mismatch")
            results.append({"stage": "L_id_certificate_binding", "pass": True,
                            "description": "All regenerated coefficients, factor/cofactor records and numerator digests match; timing excluded."})
            print("PASS L_id_certificate_binding", flush=True)
        report = write_report("PASS_ALL_EXACT_MATCHED_FLATNESS_CHECKS")
        print(json.dumps({k: report[k] for k in ("status", "mode", "elapsed_wall_seconds", "child_cpu_seconds", "peak_process_rss_kib")}, indent=2), flush=True)
        print(f"REPORT {report_path}", flush=True)
    except BaseException as exc:
        for process in running:
            if process.poll() is None:
                process.kill()
        write_report("FAIL", exc)
        raise
    finally:
        if tmp is not None:
            tmp.cleanup()


if __name__ == "__main__":
    main()
