#!/usr/bin/env python3
"""Retain an original radius whenever its certified fine budget fits cheap C1.

Stage C clustering is not monotone in n. A failed rerun at a smaller proposed
remainder must not force a radius reduction when an accepted larger endpoint
already certifies the original ball. Preserve all original plans as receipts;
write separate corrected inputs for run6 preparation.
"""
import argparse
import hashlib
import json
from pathlib import Path
import sys

from budget_collect import rows
from wholeball_cheap_sensitivity import inputs, DEFAULT_ZIP, DEFAULT_OUT
from wholeball_cheap_report import audit_scalars

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT/"proof/seed_atlas/driver"))
from shrink_balls import geometry_hash


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--plans", type=Path, nargs="+", required=True)
    p.add_argument("--fine", type=Path, nargs="+", required=True)
    p.add_argument("--archive", type=Path, default=DEFAULT_ZIP)
    p.add_argument("--rank0", type=Path, default=DEFAULT_OUT/"certified_rank0.jsonl.gz")
    p.add_argument("--rank4", type=Path, default=DEFAULT_OUT/"certified_rank4.jsonl.gz")
    p.add_argument("--out", type=Path, required=True)
    args = p.parse_args()
    seeds, _, _, _, hashes = inputs(args.archive)
    fine = {}
    for path in args.fine:
        chunk = rows(path)
        if set(chunk) & set(fine):
            raise ValueError("duplicate fine budgets")
        fine.update(chunk)
    bounds = {0: rows(args.rank0), 4: rows(args.rank4)}
    for path in [args.rank0, args.rank4]:
        manifest = json.loads(path.with_name(path.name.removesuffix(".jsonl.gz")+"_manifest.json").read_text())
        if manifest["input_sha256"] != hashes or manifest["results_sha256"] != hashlib.sha256(path.read_bytes()).hexdigest():
            raise ValueError("C1 inputs do not match the archive")
    plans = {}
    for path in args.plans:
        chunk = rows(path)
        if set(chunk) & set(plans):
            raise ValueError("duplicate plans")
        plans.update(chunk)
    if set(plans) != set(fine) or len(fine) != 577:
        raise ValueError("expected plans and fine budgets for all 577 leftover balls")
    changed = []
    for j, plan in plans.items():
        f = fine[j]
        radius = float.fromhex(seeds[j]["r"])
        if plan["geometry_sha256"] != geometry_hash(seeds[j]) or f["r"] != radius:
            raise ValueError("original geometry mismatch")
        if f["status"] != "CERTIFIED":
            raise ValueError("unconfirmed fine budget")
        candidates = [rank for rank in [0, 4] if bounds[rank][j]["status"] == "CERTIFIED" and
                      bounds[rank][j]["n_record"] <= f["n"]]
        if not candidates:
            continue
        rank = candidates[0]
        if plan["r"] == radius and plan["rank"] == rank:
            continue
        if f["confirmation"].get("r", radius) != radius:
            raise ValueError("fine Stage C receipt has a different radius")
        confirmation = dict(f["confirmation"], r=radius)
        if (not confirmation["ok"] or confirmation["check"] != "certifier" or
                confirmation["n"] != f["n"] or confirmation["label"] != f["label"]):
            raise ValueError("fine endpoint does not match its Stage C receipt")
        c1 = bounds[rank][j]
        audit_scalars(c1, radius)
        correction = dict(j=j, previous_r=plan["r"], restored_r=radius,
                          previous_rank=plan["rank"], rank=rank, n=f["n"])
        changed.append(correction)
        plans[j] = dict(plan, r=radius, factor=1., n=f["n"], label=f["label"], rank=rank,
                       c1=c1, stagec=confirmation, status="CERTIFIED", retained_fine_endpoint=correction)
        plans[j].pop("fine_budget", None)
    data = "".join(json.dumps(plans[j], separators=(",", ":"), allow_nan=False)+"\n" for j in sorted(plans))
    with args.out.open("x") as f:
        f.write(data)
    report = dict(input_sha256=hashes, total=len(plans), corrections=changed,
                  shrunk=sum(p["factor"] < 1 for p in plans.values()),
                  unchanged=sum(p["factor"] == 1 for p in plans.values()),
                  sources_sha256={str(p): hashlib.sha256(p.read_bytes()).hexdigest()
                                  for p in [Path(__file__), *args.plans, *args.fine]},
                  results_sha256=hashlib.sha256(args.out.read_bytes()).hexdigest())
    args.out.with_suffix(".manifest.json").write_text(json.dumps(report, indent=2)+"\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
