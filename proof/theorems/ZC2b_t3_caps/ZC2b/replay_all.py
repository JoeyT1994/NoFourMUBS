"""Fresh Arb and integer replay of the ZC2b mixed-sphere certificates.

This driver never trusts constructor status, numerical hulls, or stored margins.
Every requested source is accounted for, including absent or failed proposals.
"""
from __future__ import annotations

import argparse
from collections import Counter
from datetime import datetime, timezone
import gc
import gzip
import hashlib
import importlib.metadata
import json
import multiprocessing as mp
from pathlib import Path
import platform
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sys.path[:0] = [str(ROOT / "cert"), str(ROOT / "atlas")]

DATA = None
ARGS = None
cap_t3 = None


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def code_binding():
    paths = sorted((ROOT / "cert").glob("*.py"))
    paths += sorted((ROOT / "atlas").glob("*.py"))
    paths += [ROOT / "cert" / "wholeball_basis.json", Path(__file__)]
    return {str(p.relative_to(ROOT)): digest(p) for p in paths}


def write_json(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    temp = path.with_suffix(path.suffix + ".tmp")
    temp.write_text(json.dumps(value, indent=2, allow_nan=False) + "\n")
    temp.replace(path)


def one(seed):
    started = time.perf_counter()
    path = ARGS.proposals / f"seed_{seed}.json"
    source = DATA["t3_seeds"][str(seed)]
    boxes = Counter()
    for group in source["transfers"]:
        boxes[group["kind"]] += len(group.get("boxes", []))
    result = dict(seed=seed, status="NOT ESTABLISHED", full_sphere=False,
                  caps=0, certified_caps=0, original_boxes=dict(boxes))
    if not path.exists():
        result["reason"] = "No proposal supplied; original boxes retained."
    else:
        try:
            proposal_bytes = path.read_bytes()
            proposal_sha256 = hashlib.sha256(proposal_bytes).hexdigest()
            proposal = json.loads(proposal_bytes)
            if proposal.get("seed") != seed:
                raise ValueError("proposal filename/source index mismatch")
            result.update(cap_t3.replay(DATA, proposal, ARGS.precision))
            result["proposal_sha256"] = proposal_sha256
            result["cap_kinds"] = dict(Counter(
                source["transfers"][cap["group_index"]]["kind"]
                for cap in proposal.get("caps", [])))
        except Exception as exc:
            result.update(status="NOT ESTABLISHED", full_sphere=False,
                          reason=f"{type(exc).__name__}: {exc}")
    result["elapsed_seconds"] = time.perf_counter() - started
    write_json(ARGS.out / f"seed_{seed}.json", result)
    return {k: result.get(k) for k in (
        "seed", "status", "full_sphere", "caps", "certified_caps", "cap_kinds",
        "original_boxes", "elapsed_seconds", "reason", "proposal_sha256"
    )} | {"facets": result.get("coverage", {}).get("facets", 0)}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=ROOT / "data/zc2b_t3.json.gz")
    parser.add_argument("--proposals", type=Path, default=HERE / "results")
    parser.add_argument("--out", type=Path, default=HERE / "receipts")
    parser.add_argument("--seeds", default="all")
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--precision", type=int, default=224)
    args = parser.parse_args()
    start = time.perf_counter()
    initial_code_binding = code_binding()
    # Import only after recording the source bytes, then require that those
    # files have remained identical at the end of the complete replay.
    global cap_t3
    import cap_t3 as t3_module
    cap_t3 = t3_module
    input_bytes = args.input.read_bytes()
    input_sha256 = hashlib.sha256(input_bytes).hexdigest()
    data = json.loads(gzip.decompress(input_bytes))
    del input_bytes
    supplied_indices = data["t3_seed_indices"]
    if len(supplied_indices) != len(set(supplied_indices)) or set(data["t3_seeds"]) != {str(i) for i in supplied_indices}:
        raise ValueError("supplied source list and record dictionary disagree")
    seeds = data["t3_seed_indices"] if args.seeds == "all" else [int(x) for x in args.seeds.split(",")]
    if len(set(seeds)) != len(seeds) or any(i not in data["t3_seed_indices"] for i in seeds):
        raise ValueError("requested source list must contain distinct supplied indices")
    # The cap replay needs ordered descriptors, but not hundreds of thousands
    # of box coordinates. Keep exact box counts independently before releasing
    # those lists in future optimizations; this version retains the input.
    gc.collect()
    gc.freeze()
    global DATA, ARGS
    DATA, ARGS = data, args
    if args.workers < 1:
        raise ValueError("workers must be positive")
    results = []
    if args.workers > 1:
        with mp.get_context("fork").Pool(args.workers) as pool:
            for result in pool.imap_unordered(one, seeds):
                results.append(result)
                print(json.dumps(result), flush=True)
    else:
        for seed in seeds:
            result = one(seed)
            results.append(result)
            print(json.dumps(result), flush=True)
    results.sort(key=lambda x: x["seed"])
    full = [r for r in results if r["full_sphere"]]
    retained = [r for r in results if not r["full_sphere"]]
    removed_boxes = Counter()
    retained_boxes = Counter()
    for row in full:
        removed_boxes.update(row["original_boxes"])
    for row in retained:
        retained_boxes.update(row["original_boxes"])
    packages = {}
    for package in ("python-flint", "numpy", "scipy", "sympy", "mpmath"):
        try:
            packages[package] = importlib.metadata.version(package)
        except importlib.metadata.PackageNotFoundError:
            packages[package] = None
    binding_unchanged = code_binding() == initial_code_binding
    input_unchanged = digest(args.input) == input_sha256
    proposals_unchanged = all(
        not r.get("proposal_sha256") or
        digest(args.proposals / f"seed_{r['seed']}.json") == r["proposal_sha256"]
        for r in results
    )
    summary = dict(
        format="zc2b-mixed-cap-replay-v1",
        verdict=("BINDING_CHANGED" if not (binding_unchanged and input_unchanged and proposals_unchanged)
                 else "PASS" if len(full) == len(seeds) else "PARTIAL"),
        created_utc=datetime.now(timezone.utc).isoformat(),
        requested_spheres=len(seeds), certified_spheres=len(full),
        retained_box_spheres=len(retained),
        certified_seed_indices=[r["seed"] for r in full],
        retained_seed_indices=[r["seed"] for r in retained],
        certified_sphere_caps=sum(r["caps"] for r in full),
        certified_sphere_facets=sum(r["facets"] for r in full),
        removed_boxes=dict(removed_boxes), retained_boxes=dict(retained_boxes),
        elapsed_wall_seconds=time.perf_counter() - start,
        total_source_seconds=sum(r["elapsed_seconds"] for r in results),
        precision_bits=args.precision, workers=args.workers,
        input_sha256=input_sha256, code_sha256=initial_code_binding,
        code_unchanged_during_replay=binding_unchanged,
        input_unchanged_during_replay=input_unchanged,
        proposals_unchanged_during_replay=proposals_unchanged,
        python=platform.python_version(), packages=packages,
        sources=results,
        scope="Geometric cap transfers and exact full-sphere coverage. Conditional on the supplied matched-completion germ and W/XS chart theorem. Does not replay the complete atlas or prove the global MUB theorem.",
    )
    write_json(args.out / "summary.json", summary)
    print(json.dumps({k: v for k, v in summary.items() if k not in ("sources", "code_sha256")}), flush=True)
    return 0 if summary["verdict"] == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())
