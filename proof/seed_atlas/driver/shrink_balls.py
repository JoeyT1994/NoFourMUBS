#!/usr/bin/env python3
"""ZK2: prepare a separate driver run from certified cheap-bound plans.

Never changes the source state/run. Geometry changes invalidate the source
sphere and every incoming T0/T1 transfer; larger n also invalidates source T3
screens. Edge/record boundary dependencies are explicitly marked for re-cover.
The resulting state is an untrusted driver proposal, not an atlas certificate.
"""
import argparse
from collections import Counter
from datetime import datetime, timezone
import hashlib
import json
import math
import os
from pathlib import Path
import pickle
import shutil
import sys

import numpy as np

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from seed_export import seed_json

GEOMETRY_KEYS = ["theta0", "Mth", "r", "o", "P", "U"]


def geometry_hash(seed):
    return hashlib.sha256(json.dumps({k: seed[k] for k in GEOMETRY_KEYS}, sort_keys=True,
                                    separators=(",", ":")).encode()).hexdigest()


def targets(groups):
    return {int(g["desc"][1]) for g in groups if g["desc"][0] in ["T0", "T1"]}


def affected(A, plans, edges=()):
    shrunk = set()
    raised_t3 = set()
    for j, plan in plans.items():
        if not 0 <= j < len(A.balls):
            raise ValueError(f"invalid ball index {j}")
        b = A.balls[j]
        if (plan.get("status") != "CERTIFIED" or not plan.get("stagec", {}).get("ok") or
                plan["stagec"].get("check") != "certifier"):
            raise ValueError(f"ball {j}: a C1 and Stage C certificate is required")
        if plan["geometry_sha256"] != geometry_hash(seed_json(b, [])):
            raise ValueError(f"ball {j}: source geometry mismatch")
        if not (math.isfinite(plan["r"]) and 0 < plan["r"] <= b.r and
                math.isfinite(plan["n"]) and 0 <= plan["c1"]["n_record"] <= plan["n"]):
            raise ValueError(f"ball {j}: invalid radius or remainder")
        if plan["c1"]["status"] != "CERTIFIED" or plan["rank"] not in [0, 4]:
            raise ValueError(f"ball {j}: unsupported C1 witness")
        if (plan["stagec"]["n"] != plan["n"] or plan["stagec"]["label"] != plan["label"] or
                plan["stagec"]["r"] != plan["r"]):
            raise ValueError(f"ball {j}: Stage C witness does not match stored data")
        if plan["r"] < b.r:
            shrunk.add(j)
        if plan["n"] > b.n and any(g["desc"][0] == "T3" for g in A.groups.get(j, [])):
            raised_t3.add(j)
    incoming = {j for j, groups in A.groups.items() if targets(groups) & shrunk}
    dirty_edges = [i for i, edge in enumerate(edges) if targets(edge.get("groups", [])) & shrunk]
    dirty_record = bool(A.record and targets(A.record.get("groups", [])) & shrunk)
    return dict(shrunk=sorted(shrunk), incoming=sorted(incoming), raised_t3=sorted(raised_t3),
                reopen=sorted(shrunk | incoming | raised_t3), dirty_edges=dirty_edges,
                dirty_record=dirty_record)


def mutate(A, plans, impact):
    for j, plan in plans.items():
        b = A.balls[j]
        before = geometry_hash(seed_json(b, []))
        b.r, b.n, b.label = plan["r"], plan["n"], plan["label"]
        b.k = 3 if b.r <= .05 else 4
        # Prevent the legacy TM safety-factor restaging from undoing the new n.
        from makeball import N_SAFETY
        b.nsafe = N_SAFETY
        b.info = dict(b.info, zk2=dict(rank=plan["rank"], c1_bound=plan["c1"]["n_record"],
                                      source_geometry_sha256=before))
    for j in impact["reopen"]:
        A.groups.pop(j, None)
        A.status[j] = "open"
        A.ncover[j] = 0
        A.log_fail.pop(j, None)
    reopening = set(impact["reopen"])
    A.tries = {k: v for k, v in A.tries.items()
               if k not in reopening and not (isinstance(k, tuple) and k and k[0] in reopening)}
    if impact["dirty_record"]:
        A.record = None
        A.record_rounds = 0
    # A driver-state edge cache must never masquerade as a valid new cover.
    if hasattr(A, "edges"):
        del A.edges
    A.stats["zk2_shrunk"] = A.stats.get("zk2_shrunk", 0)+len(impact["shrunk"])
    A.stats["zk2_reopened"] = A.stats.get("zk2_reopened", 0)+len(impact["reopen"])


def apply(source, plans_path, destination, edge_source=None, check_only=False):
    source, destination = source.resolve(), destination.resolve()
    if source.parent == destination or source == destination or destination in source.parents:
        raise ValueError("destination must be a separate run directory")
    if destination.exists() and not check_only:
        raise FileExistsError(f"refusing to replace existing run {destination}")
    raw = source.read_bytes()
    A = pickle.loads(raw)
    rows = [json.loads(v) for v in plans_path.read_text().splitlines() if v.strip()]
    plans = {v["j"]: v for v in rows}
    if len(plans) != len(rows):
        raise ValueError("duplicate plan indices")
    edges = []
    edge_hash = None
    if edge_source:
        edge_raw = edge_source.read_bytes()
        E = pickle.loads(edge_raw)
        edge_hash = hashlib.sha256(edge_raw).hexdigest()
        if len(E.balls) != len(A.balls) or any(geometry_hash(seed_json(a, [])) != geometry_hash(seed_json(b, []))
                                              for a, b in zip(A.balls, E.balls)):
            raise ValueError("edge state has different seed geometry")
        edges = getattr(E, "edges", [])
    impact = affected(A, plans, edges)
    report = dict(status="UNTRUSTED driver state; full atlas certification remains external",
                  source=str(source), source_sha256=hashlib.sha256(raw).hexdigest(),
                  edge_source_sha256=edge_hash, plans_sha256=hashlib.sha256(plans_path.read_bytes()).hexdigest(),
                  destination=str(destination), balls=len(A.balls), plans=len(plans), impact=impact,
                  created_utc=datetime.now(timezone.utc).isoformat())
    if check_only:
        return report
    mutate(A, plans, impact)
    temporary = destination.with_name(destination.name+".zk2-preparing")
    temporary.mkdir(parents=True, exist_ok=False)
    try:
        with (temporary/"atlas_state.pkl").open("wb") as f:
            pickle.dump(A, f, protocol=4)
        # Preserve the exact edge ball; edge_multi must rebuild its boundary.
        edge_ball = source.parent/"edge_ball.pkl"
        if edge_ball.exists():
            shutil.copyfile(edge_ball, temporary/"edge_ball.pkl")
        if edges:
            with (temporary/"edge_balls.pkl").open("wb") as f:
                pickle.dump([e["ball"] for e in edges], f, protocol=4)
        shutil.copyfile(plans_path, temporary/"zk2_plans.jsonl")
        (temporary/"zk2_preparation.json").write_text(json.dumps(report, indent=2)+"\n")
        (temporary/"edge_recover_required.json").write_text(json.dumps(dict(
            required=bool(edges), affected_edges=impact["dirty_edges"], reason="replay against final seed radii"), indent=2)+"\n")
        os.replace(temporary, destination)
    except BaseException:
        # Preserve the incomplete directory for inspection; never touch source.
        raise
    report["new_statuses"] = dict(Counter(A.status))
    return report


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("source", type=Path)
    p.add_argument("plans", type=Path)
    p.add_argument("destination", type=Path)
    p.add_argument("--edge-source", type=Path)
    p.add_argument("--check-only", action="store_true")
    args = p.parse_args()
    result = apply(args.source, args.plans, args.destination, args.edge_source, args.check_only)
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
