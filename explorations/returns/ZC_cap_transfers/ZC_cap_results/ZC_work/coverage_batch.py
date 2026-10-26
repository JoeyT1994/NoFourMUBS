#!/usr/bin/env python3
"""Incremental exact coverage and Arb replay of cap proposal snapshots.

Run with PYTHONPATH=ZC_work/deps:ZC_cap_transfers/context and
OPENBLAS_NUM_THREADS=1.  Loads the source gzip once, forks at most two
workers, and never modifies the construction agent's proposal files.
"""
from __future__ import annotations

import argparse
from concurrent.futures import ProcessPoolExecutor, as_completed
import gzip
import gc
import ctypes
import hashlib
import json
from multiprocessing import get_context
from pathlib import Path
import time

import cap_verify as CV
from coverage import construct_coverage_certificate, verify_coverage

HERE = Path(__file__).resolve().parent
ORIGINAL_INPUT = HERE.parent / "ZC_cap_transfers/context/sample_certificate.json.gz"
INPUT = HERE / "transfer_input.json.gz"
if not INPUT.exists():
    INPUT = ORIGINAL_INPUT
_DATA = None
_INPUT_SHA = None
_CODE_SHA = None
_MODELS = {}


def digest(content):
    return hashlib.sha256(content).hexdigest()


def save_json(path, data):
    temp = path.with_suffix(".json.tmp")
    temp.write_text(json.dumps(data, indent=2) + "\n")
    temp.replace(path)


def work(item):
    seed, source_bytes = item
    started = time.perf_counter()
    source_sha = digest(source_bytes)
    proposal = json.loads(source_bytes)
    certpath = HERE / "certificates" / f"seed_{seed}.json"
    resultpath = HERE / "results" / f"seed_{seed}.json"
    try:
        caps = proposal.get("caps", [])
        if not caps:
            result = {"seed": seed, "status": "NOT ESTABLISHED", "full_sphere": False,
                      "caps": 0, "certified_caps": 0,
                      "error": proposal.get("error", proposal.get("reason", "no proposed caps"))}
        else:
            proposal["coverage"] = construct_coverage_certificate(caps)
            proposal["source_proposal_sha256"] = source_sha
            geometry = verify_coverage(caps, proposal["coverage"])
            save_json(certpath, proposal)
            if seed not in _MODELS:
                _MODELS[seed] = CV.P.normal_form(CV.SC.Ball(_DATA["seeds"][seed]), 224)
            result = CV.replay(_DATA, proposal, 224, model=_MODELS[seed])
            result["coverage_construction_check"] = geometry
            result["proposal_sha256"] = digest(certpath.read_bytes())
    except Exception as exc:
        result = {"seed": seed, "status": "NOT ESTABLISHED", "full_sphere": False,
                  "error": f"{type(exc).__name__}: {exc}",
                  "caps": len(proposal.get("caps", []))}
    result["source_proposal_sha256"] = source_sha
    result["input_sha256"] = _INPUT_SHA
    result["input_file"] = str(INPUT.relative_to(HERE.parent))
    result["code_sha256"] = _CODE_SHA
    result["batch_seconds"] = time.perf_counter() - started
    save_json(resultpath, result)
    return {k: result.get(k) for k in ["seed", "status", "full_sphere", "caps",
            "certified_caps", "target_margin_lower", "orientation_margin_lower",
            "error", "batch_seconds"]}


def main():
    global _DATA, _INPUT_SHA, _CODE_SHA
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--seeds", type=int, nargs="*")
    parser.add_argument("--force", action="store_true")
    parser.add_argument("--only-new-proposals", action="store_true",
                        help="defer checker-version refreshes until a final ordinary batch")
    parser.add_argument("--include-incomplete", action="store_true",
                        help="also replay all cap inequalities for incomplete proposed covers")
    args = parser.parse_args()
    if not 1 <= args.workers <= 2:
        parser.error("one or two workers supported")
    (HERE / "certificates").mkdir(exist_ok=True)
    (HERE / "results").mkdir(exist_ok=True)
    _CODE_SHA = {p.name: digest(p.read_bytes()) for p in [
        Path(CV.__file__), HERE / "coverage.py", HERE / "weighted.py", CV.VENDOR / "patches.py",
        CV.VENDOR / "wholeball.py", CV.VENDOR / "seedcert.py",
        CV.VENDOR / "tmarb.py", CV.VENDOR / "wholeball_basis.json",
        Path(__file__)]}
    items = []
    for path in sorted((HERE / "proposals").glob("seed_*.json"),
                       key=lambda p: int(p.stem.split("_")[-1])):
        seed = int(path.stem.split("_")[-1])
        if args.seeds is not None and seed not in args.seeds:
            continue
        raw = path.read_bytes()
        candidate = json.loads(raw)
        if not args.include_incomplete and not candidate.get("info", {}).get("numerical_hull", {}).get("covers", False):
            continue
        resultpath = HERE / "results" / path.name
        if resultpath.exists() and not args.force:
            old = json.loads(resultpath.read_text())
            # Scheduling/summary edits do not invalidate the proof.  Compare
            # the actual mathematical checker and every vendored dependency.
            same_proof_code = all(old.get("code_sha256", {}).get(name) == value
                                  for name, value in _CODE_SHA.items()
                                  if name != Path(__file__).name)
            if old.get("source_proposal_sha256") == digest(raw) and (same_proof_code or args.only_new_proposals):
                continue
        items.append((seed, raw))
    print(json.dumps({"pending": len(items), "seeds": [i[0] for i in items]}), flush=True)
    if not items:
        return
    _INPUT_SHA = digest(INPUT.read_bytes())
    with gzip.open(INPUT, "rt") as stream:
        _DATA = json.load(stream)
    # Transfer replay never uses dyadic boxes or the unrelated edge payload.
    # Release these millions of Python objects BEFORE creating any workers.
    _DATA.pop("edge", None)
    for row in _DATA["seeds"]:
        for group in row.get("transfers", []):
            group.pop("boxes", None)
    gc.collect()
    try:
        ctypes.CDLL("libc.so.6").malloc_trim(0)
    except (AttributeError, OSError):
        pass
    gc.freeze()
    with ProcessPoolExecutor(max_workers=args.workers, mp_context=get_context("fork")) as pool:
        futures = [pool.submit(work, item) for item in items]
        with (HERE / "replay_batches.jsonl").open("a") as log:
            for future in as_completed(futures):
                result = future.result()
                line = json.dumps(result)
                print(line, flush=True)
                log.write(line + "\n")
                log.flush()


if __name__ == "__main__":
    main()
