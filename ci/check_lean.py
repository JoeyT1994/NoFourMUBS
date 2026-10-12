#!/usr/bin/env python3
"""Build existing proof sources and audit endpoints; never generate certificates."""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean"
PREFIXES = {
    "NoFourMUBs": LEAN,
    "Step1": LEAN / "Step1Gen/lean",
    "Hadamard6": LEAN / "vendor/hadamard6",
    "OAI": LEAN / "vendor/fourier",
}


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def source(module):
    base = PREFIXES.get(module.split(".")[0])
    return None if base is None else base / (module.replace(".", "/") + ".lean")


def imports(path):
    # All selected sources use ordinary, single-line imports. Ignore comments.
    text = path.read_text()
    return [name for line in re.findall(r"^\s*(?:public\s+)?import\s+([^\n]+)", text, re.M)
            for name in line.split("--", 1)[0].split()]


def closure(modules):
    visited, visiting, ordered, external = set(), set(), [], set()

    def visit(module):
        path = source(module)
        if path is None:
            external.add(module)
            return
        if module in visited:
            return
        if module in visiting:
            raise ValueError(f"Import cycle at {module}")
        if not path.is_file():
            raise FileNotFoundError(path)
        visiting.add(module)
        for dep in imports(path):
            visit(dep)
        visiting.remove(module)
        visited.add(module)
        ordered.append(module)

    for module in modules:
        visit(module)
    return ordered, sorted(external)


def validate(plan):
    if plan["atlas_certification"] is not False:
        raise ValueError("Atlas certification is outside this workflow's scope")
    for relative, expected in plan["source_hashes"].items():
        path = (LEAN / relative).resolve()
        if not path.is_relative_to(LEAN.resolve()) or sha(path) != expected:
            raise ValueError(f"Source pin mismatch: {relative}")
    if len(plan["axiom_endpoints"]) != len(set(plan["axiom_endpoints"])):
        raise ValueError("Duplicate audit endpoints")
    return closure(plan["modules"])


def run(command, log):
    with log.open("ab") as out:
        result = subprocess.run(command, cwd=LEAN, stdout=out, stderr=subprocess.STDOUT)
    if result.returncode:
        print(log.read_text(errors="replace")[-16000:], flush=True)
        raise RuntimeError(f"Command exited {result.returncode}: {command}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("group", choices=["main", "matched", "critical", "open-binding"])
    parser.add_argument("--validate-only", action="store_true")
    parser.add_argument("--cache-only", action="store_true")
    args = parser.parse_args()
    plan_path = ROOT / "ci" / (args.group + ".json")
    plan = json.loads(plan_path.read_text())
    ordered, external = validate(plan)
    print(f"{args.group}: {len(ordered)} local dependency modules; "
          f"{len(plan['axiom_endpoints'])} axiom endpoints. Atlas certification excluded.", flush=True)
    if args.validate_only:
        return
    result_dir = ROOT / "ci-results" / args.group
    result_dir.mkdir(parents=True, exist_ok=True)
    if args.cache_only:
        mathlib = [m for m in external if m == "Mathlib" or m.startswith("Mathlib.")]
        run(["lake", "exe", "cache", "get", *mathlib], result_dir / "cache.log")
        return
    report = {"status": "RUNNING", "group": args.group,
              "commit": os.environ.get("GITHUB_SHA"), "plan_sha256": sha(plan_path),
              "atlas_certification": False, "unconditional_theorem": False,
              "remaining_inputs": plan["remaining_inputs"], "completed_modules": []}
    report_path = result_dir / "result.json"
    try:
        # Building the local closure in dependency order bounds memory usage.
        # Mathlib's official pinned cache is fetched in the preceding step.
        for index, module in enumerate(ordered, 1):
            print(f"[{index}/{len(ordered)}] {module}", flush=True)
            run(["lake", "build", module], result_dir / "build.log")
            report["completed_modules"].append(module)
            report_path.write_text(json.dumps(report, indent=2) + "\n")
        audit = result_dir / "Audit.lean"
        content = "".join(f"import {module}\n" for module in plan["modules"])
        if plan.get("check_main_type"):
            content += "\n#check @NoFourMUBs.no_four_mubs_main\n"
            content += "#print NoFourMUBs.no_four_mubs_main\n"
        content += "\n" + "".join(f"#print axioms {name}\n" for name in plan["axiom_endpoints"])
        audit.write_text(content)
        audit_log = result_dir / "axioms.log"
        run(["lake", "env", "lean", "-j2", str(audit)], audit_log)
        text = audit_log.read_text()
        if "sorryAx" in text or "ofReduceBool" in text or "error:" in text:
            raise ValueError("Forbidden axiom or Lean audit error")
        parsed = {name: [a.strip() for a in axioms.split(",") if a.strip()]
                  for name, axioms in re.findall(r"'([^']+)' depends on axioms:\s*\[([^\]]*)\]", text)}
        parsed.update({name: [] for name in re.findall(r"'([^']+)' does not depend on any axioms", text)})
        if set(parsed) != set(plan["axiom_endpoints"]):
            raise ValueError("Lean did not report exactly the expected audit endpoints")
        if any(not set(axioms) <= set(plan["allowed_axioms"]) for axioms in parsed.values()):
            raise ValueError("Nonstandard axiom in audited theorem")
        validate(plan)
        report.update(status="PASS", axiom_endpoints=parsed,
                      audit_log_sha256=sha(audit_log))
    except Exception as exc:
        report.update(status="FAIL", error=str(exc))
        raise
    finally:
        report["finished_utc"] = datetime.datetime.now(datetime.timezone.utc).isoformat()
        report_path.write_text(json.dumps(report, indent=2) + "\n")
        summary = os.environ.get("GITHUB_STEP_SUMMARY")
        if summary:
            with open(summary, "a") as out:
                out.write(f"## {args.group}: {report['status']}\n\n")
                out.write(f"Built {len(report['completed_modules'])}/{len(ordered)} local modules.\n\n")
                out.write("This checks the listed targets. The main theorem still takes "
                          "AtlasCertificate, MatchedExistence and CriticalClassification as inputs. "
                          "It is not an unconditional no-four-MUB proof. Atlas certification was not run.\n")


if __name__ == "__main__":
    main()
