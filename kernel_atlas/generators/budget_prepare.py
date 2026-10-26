#!/usr/bin/env python3
"""Merge complete, certified cheap plans and prepare run6 without changing run5."""
import argparse
import hashlib
import json
from pathlib import Path
import pickle
import sys

ROOT = Path(__file__).resolve().parents[2]
sys.path[:0] = [str(ROOT/"proof/seed_atlas/driver"), str(ROOT/"proof/atlas")]
from budget_collect import rows
from wholeball_cheap_report import audit_scalars
from shrink_balls import apply


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--plans", type=Path, nargs="+", required=True)
    p.add_argument("--source", type=Path, required=True)
    p.add_argument("--edge-source", type=Path, required=True)
    p.add_argument("--combined", type=Path, required=True)
    p.add_argument("--run", type=Path, required=True)
    p.add_argument("--check-only", action="store_true")
    args = p.parse_args()
    plans = {}
    for path in args.plans:
        chunk = rows(path)
        if set(plans) & set(chunk):
            raise ValueError("duplicate plan indices")
        plans.update(chunk)
    atlas = pickle.loads(args.source.read_bytes())
    if set(plans) != set(range(len(atlas.balls))):
        raise ValueError("every original ball needs exactly one cheap plan")
    for j, plan in plans.items():
        c = plan["c1"]
        if plan["status"] != "CERTIFIED" or c["status"] != "CERTIFIED":
            raise ValueError(f"uncertified plan {j}")
        witness_rank = (c.get("majorant_witness") or {}).get("rank", 0)
        if witness_rank != plan["rank"] or plan["rank"] not in [0, 4]:
            raise ValueError(f"non-cheap or mismatched rank {j}")
        if c["strict_R_lower"] <= 0 or not all(o["ok"] and o["margin_lower"] > 0 for o in c["orientation"].values()):
            raise ValueError(f"missing strict chart/orientation bounds {j}")
        audit_scalars(c, plan["r"])
    data = "".join(json.dumps(plans[j], separators=(",", ":"), allow_nan=False)+"\n" for j in sorted(plans))
    if args.combined.exists():
        if args.combined.read_text() != data:
            raise FileExistsError("refusing to replace different combined plans")
    else:
        with args.combined.open("x") as f:
            f.write(data)
    report = apply(args.source, args.combined, args.run, args.edge_source, args.check_only)
    report["plan_inputs_sha256"] = {str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in args.plans}
    report["exact_scalar_audits"] = len(plans)
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
