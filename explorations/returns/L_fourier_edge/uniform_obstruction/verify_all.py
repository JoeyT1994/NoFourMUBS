#!/usr/bin/env python3
"""Replay exact finite gates and check the retained completed tube run.

Default: fresh exact Python gates plus validation of the shipped full-run
record.  --full-cover additionally compiles and executes a fresh whole-torus
search.  No numerical solver, network, or third-party Python package is used.
"""
import sys
if not __debug__ or sys.flags.optimize:
    raise RuntimeError("Run without -O, -OO, or PYTHONOPTIMIZE")

import argparse
import hashlib
import json
from pathlib import Path
import platform
import resource
import shutil
import subprocess
import tempfile
import time

ROOT = Path(__file__).resolve().parent
FLAGS = ["-O3", "-std=c++17", "-fno-fast-math", "-ffp-contract=off",
         "-ftrapv", "-Wall", "-Wextra"]
EXPECTED_COUNTS = {
    "nodes": 5066657, "range_exclusions": 1600288,
    "krawczyk_exclusions": 931293, "known_domain_leaves": 1748,
    "splits": 2533328, "contractions": 467744,
    "max_depth": 41, "max_pending": 28,
}

def require(condition, message):
    if not condition:
        raise RuntimeError(message)

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def load(path):
    return json.loads(path.read_text())

def write(path, value):
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n")

def verify_manifest():
    path = ROOT / "SHA256SUMS"
    if not path.exists():
        return {"present": False, "scope": "Development tree; no packaged manifest yet."}
    count = 0
    for line in path.read_text().splitlines():
        digest, relative = line.split("  ", 1)
        candidate = ROOT / relative
        require(candidate.resolve().is_relative_to(ROOT.resolve()), "Manifest path escapes bundle")
        require(sha(candidate) == digest, "Manifest mismatch: " + relative)
        count += 1
    require(count > 0, "Empty manifest")
    return {"present": True, "files_checked": count, "sha256": sha(path)}

def run_gate(script, tree, logs):
    command = [sys.executable, str(tree / script)]
    started = time.monotonic()
    completed = subprocess.run(command, cwd=logs, text=True, capture_output=True)
    stem = script.replace("/", "_").removesuffix(".py")
    (logs / (stem + ".stdout.txt")).write_text(completed.stdout)
    (logs / (stem + ".stderr.txt")).write_text(completed.stderr)
    require(completed.returncode == 0,
            "Exact gate failed: " + script + "\n" + completed.stderr[-3000:])
    return {"script": script, "exit_code": completed.returncode,
            "seconds": time.monotonic() - started}

def exact_replays(destination):
    tree = destination / "isolated_exact_replay"
    logs = destination / "exact_logs"
    tree.mkdir()
    logs.mkdir()
    # The verifiers resolve data beside their own source. Copy only the exact
    # inputs/receipts and notes, with no pre-existing generated Python cache.
    for folder in ("algebra", "region", "cover"):
        (tree / folder).mkdir()
        for source in (ROOT / folder).iterdir():
            if source.is_file() and source.suffix in {".py", ".json", ".md", ".h", ".cpp"}:
                shutil.copy2(source, tree / folder / source.name)
    specs = [
        ("algebra/verify_dita_rays.py", ["algebra/D0_EXACT_GRAPH.json", "algebra/D0_RAY_GRAPH_RECEIPT.json"]),
        ("algebra/verify_dita_gaps.py", ["algebra/D0_GAP_RECEIPT.json"]),
        ("algebra/verify_template_association.py", ["algebra/D0_TEMPLATE_ASSOCIATION_RECEIPT.json"]),
        ("algebra/audit_d0_tube.py", ["algebra/INDEPENDENT_TUBE_AUDIT_RECEIPT.json"]),
        ("region/verify_template_graph.py", ["region/D0_TEMPLATE_GRAPH_RECEIPT.json"]),
        ("region/verify_tube_graph_binding.py", ["region/D0_TUBE_GRAPH_BINDING_RECEIPT.json"]),
        ("region/verify_dita_interval.py", ["region/DITA_INTERVAL_RECEIPT.json"]),
    ]
    gates = []
    for script, receipts in specs:
        for receipt in receipts:
            (tree / receipt).unlink(missing_ok=True)
        result = run_gate(script, tree, logs)
        for receipt in receipts:
            require((tree / receipt).is_file(), "Fresh receipt missing: " + receipt)
            require(load(tree / receipt) == load(ROOT / receipt),
                    "Fresh exact output differs from retained output: " + receipt)
        result["fresh_receipts_match"] = receipts
        gates.append(result)
        print("EXACT_GATE_PASS " + script, flush=True)
    return gates

def validate_coverage(directory, retained=False):
    coverage = load(directory / "tube_coverage.json")
    require(coverage["complete"] is True, "Incomplete coverage")
    require(coverage["fresh_root"] is True, "Cover did not start at whole root cube")
    require(coverage["producer_checkpoint_read"] is False, "Unexpected checkpoint dependency")
    for key in EXPECTED_COUNTS:
        require(type(coverage[key]) is int and coverage[key] >= 0, "Invalid counter: " + key)
    n, s = coverage["nodes"], coverage["splits"]
    leaves = sum(coverage[k] for k in ("range_exclusions", "krawczyk_exclusions", "known_domain_leaves"))
    require(n == 2 * s + 1 and leaves == s + 1, "Coverage tree count failure")
    require(0 < coverage["max_checked_endpoint"] < 2**63, "Invalid endpoint bound")
    log = (directory / "stdout.txt").read_text()
    require("COMPLETE_D0_RESIDUAL_TUBE_COVER" in log, "Missing completion marker")
    require("VERIFICATION_INCOMPLETE" not in log, "Incomplete marker present")
    require(not (directory / "stderr.txt").read_text(), "Nonempty search stderr")
    marker = (f"COMPLETE_D0_RESIDUAL_TUBE_COVER nodes={n} "
              f"range={coverage['range_exclusions']} kraw={coverage['krawczyk_exclusions']} "
              f"known={coverage['known_domain_leaves']} splits={s} "
              f"contractions={coverage['contractions']} depth={coverage['max_depth']} "
              f"max_pending={coverage['max_pending']}")
    nonblank = [line for line in log.splitlines() if line.strip()]
    require(nonblank.count(marker) == 1 and nonblank[-1] == marker,
            "Completion marker must be unique, exact, and the last nonblank line")
    data = load(ROOT / "cover" / "D0_TUBE_INPUT.json")
    grid = data["Q"]
    radius = -(-grid // data["tube_radius_den"])
    boxes = [json.loads(line) for line in (directory / "template_boxes.jsonl").read_text().splitlines()]
    expected = [{"label": label, "domain": [[x-radius, x+radius] for x in center]}
                for label, center in enumerate(data["centers"])]
    require(boxes == expected, "Retained template boxes differ from exact input")
    if retained:
        for key, value in EXPECTED_COUNTS.items():
            require(coverage[key] == value, "Shipped coverage counter changed: " + key)
        receipt = load(directory / "RUN_RECEIPT.json")
        require(receipt["status"] == "COMPLETE" and receipt["exit_code"] == 0,
                "Retained full run did not finish successfully")
        require(receipt["compile_flags"] == FLAGS, "Retained build flags mismatch")
        require(set(receipt["sha256"]) == {"d0_tube_cover.cpp", "tube_inputs.h", "D0_TUBE_INPUT.json", "d0_tube_cover"},
                "Retained build receipt has incomplete or unexpected hash roles")
        for name, digest in receipt["sha256"].items():
            require(sha(ROOT / "cover" / name) == digest, "Retained source/build binding mismatch: " + name)
        build = load(ROOT / "region" / "TUBE_BUILD_ASSOCIATION_RECEIPT.json")
        require(build["status"] == "PASS_BINARY_REPRODUCED_AND_SOURCE_METADATA_REPAIRED",
                "Independent build did not pass")
        require(build["source_sha256"] == receipt["sha256"]["d0_tube_cover.cpp"]
                and build["header_sha256"] == receipt["sha256"]["tube_inputs.h"]
                and build["input_metadata_after_sha256"] == receipt["sha256"]["D0_TUBE_INPUT.json"],
                "Independent build input hashes mismatch")
        require(build["existing_binary_sha256"] == build["independently_rebuilt_binary_sha256"]
                == receipt["sha256"]["d0_tube_cover"], "Independent build binding failed")
    return coverage

def fresh_full_cover(destination, compiler, cpu_limit):
    folder = destination / "fresh_full_cover"
    folder.mkdir()
    binary = folder / "d0_tube_cover"
    command = [compiler, *FLAGS, str(ROOT / "cover" / "d0_tube_cover.cpp"), "-o", str(binary)]
    built = subprocess.run(command, text=True, capture_output=True)
    (folder / "compile.stdout.txt").write_text(built.stdout)
    (folder / "compile.stderr.txt").write_text(built.stderr)
    require(built.returncode == 0, "Compilation failed: " + built.stderr[-3000:])
    def guard():
        resource.setrlimit(resource.RLIMIT_AS, (1024**3, 1024**3))
        resource.setrlimit(resource.RLIMIT_CPU, (cpu_limit, cpu_limit))
    started = time.monotonic()
    with (folder / "stdout.txt").open("w") as out, (folder / "stderr.txt").open("w") as err:
        process = subprocess.Popen([str(binary)], cwd=folder, text=True,
                                   stdout=subprocess.PIPE, stderr=err, preexec_fn=guard)
        for line in process.stdout:
            out.write(line)
            out.flush()
            print(line, end="", flush=True)
        code = process.wait()
    receipt = {
        "status": "COMPLETE" if code == 0 else "INCOMPLETE", "exit_code": code,
        "seconds": time.monotonic()-started, "compiler_command": command,
        "compile_flags": FLAGS, "platform": platform.platform(),
        "sha256": {name: sha(ROOT / "cover" / name)
                   for name in ("d0_tube_cover.cpp", "tube_inputs.h", "D0_TUBE_INPUT.json")},
        "fresh_binary_sha256": sha(binary), "cpu_limit_seconds": cpu_limit,
        "scope": "Fresh complete five-phase residual-sublevel search; no saved tree read.",
    }
    write(folder / "RUN_RECEIPT.json", receipt)
    require(code == 0, "Fresh cover incomplete; inspect fresh_full_cover logs")
    return validate_coverage(folder)

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, help="New output directory; must not exist")
    parser.add_argument("--full-cover", action="store_true", help="Compile and run a fresh full search (about 12 minutes on the original host)")
    parser.add_argument("--compiler", default="g++")
    parser.add_argument("--cpu-limit", type=int, default=3600)
    args = parser.parse_args()
    require(args.cpu_limit > 0, "CPU limit must be positive")
    manifest = verify_manifest()
    if args.output:
        destination = args.output.expanduser().resolve()
        destination.mkdir(parents=True, exist_ok=False)
    else:
        destination = Path(tempfile.mkdtemp(prefix="dita_obstruction_replay_"))
    print("REPLAY_OUTPUT " + str(destination), flush=True)
    exact = exact_replays(destination)
    retained = validate_coverage(ROOT / "cover" / "full_tube_r1e4", retained=True)
    fresh = fresh_full_cover(destination, args.compiler, args.cpu_limit) if args.full_cover else None
    result = {
        "status": "PASS_FRESH_FULL_CERTIFICATE" if fresh else "PASS_EXACT_GATES_AND_RETAINED_FULL_RUN",
        "manifest": manifest, "exact_gate_replays": exact,
        "retained_complete_cover_checked": retained,
        "fresh_full_cover": fresh,
        "full_cover_replayed_in_this_invocation": bool(args.full_cover),
        "regional_anchor_entry_radius": "1/10000",
        "normalized_basis_ray_gap_strict_lower_bound": "1/8",
        "two_companion_energy_gap_strict_lower_bound": "3/32",
        "scope": "Computer-assisted regional theorem using the written arithmetic and algebraic proofs; not a formal-kernel proof.",
        "not_claimed": ["Global F", "Global F-prime", "Exactly 120 candidates at every nearby anchor", "Constant affine algebra rank", "A complex Nullstellensatz identity"],
    }
    write(destination / "REPLAY_RECEIPT.json", result)
    print(result["status"], flush=True)
    print("RECEIPT " + str(destination / "REPLAY_RECEIPT.json"), flush=True)

if __name__ == "__main__":
    main()
