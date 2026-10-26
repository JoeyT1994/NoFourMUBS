#!/usr/bin/env python3
"""ZK2: select cheap C1/Stage C records, shrinking only when needed."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import math
import multiprocessing as mp
import os
from pathlib import Path
import platform
import sys
import time
import traceback

import budget_fine as B
import wholeball_cheap_arb as A
from wholeball_cheap_sensitivity import inputs, DEFAULT_ZIP, DEFAULT_OUT
from shrink_balls import geometry_hash

G = {}
FACTORS = [1., .975, .95, .925, .9, .875, .85, .825, .8, .775, .75, .7, .65, .6,
           .55, .5, .45, .4, .35, .3, .25, .2, .15, .1, .075, .05, .025, .01]


def init(archive, rank0, rank4, fine_files, shrink, refine):
    seeds, basis, coarse, _, hashes = inputs(archive)
    fine = {}
    for path in fine_files:
        for j, row in B.load_rows(path).items():
            if j in fine:
                raise ValueError(f"duplicate fine budget {j}")
            fine[j] = row
    A.ctx.prec = 224
    G.update(seeds=seeds, geom=A.geometry(basis), coarse=coarse, fine=fine,
             rank0=B.load_rows(rank0), rank4=B.load_rows(rank4), shrink=shrink, refine=refine)


def one(j):
    started = time.perf_counter()
    B.G["current_j"] = j
    seed = G["seeds"][j]
    radius = float.fromhex(seed["r"])
    fine = G["fine"].get(j)
    coarse = G["coarse"].get(j, {})
    target = fine["n"] if fine and fine["status"] == "CERTIFIED" else coarse.get("n") if coarse.get("f") else None
    trials = []
    try:
        for factor in FACTORS if G["shrink"] else [1.]:
            r = radius if factor == 1 else math.nextafter(radius*factor, 0.)
            proposed = dict(seed, r=r.hex())
            candidates = []
            if factor == 1:
                for rank in [0, 4]:
                    c1 = G[f"rank{rank}"][j]
                    if c1["status"] == "CERTIFIED" and (target is None or c1["n_record"] <= target):
                        candidates.append((rank, c1))
            else:
                A.ctx.prec = 224
                c1 = A.certify(proposed, G["geom"], rank=4)
                trials.append(dict(kind="C1", factor=factor, r=r, status=c1["status"], n=c1.get("n_record")))
                if c1["status"] == "CERTIFIED" and (target is None or c1["n_record"] <= target*.995):
                    candidates.append((4, c1))
            for rank, c1 in candidates:
                n = math.nextafter(c1["n_record"]*(1+2**-20), math.inf)
                for label in B.labels(proposed):
                    trial = B.stage(proposed, n, label, True)
                    trials.append(dict(trial, factor=factor))
                    if not trial["ok"]:
                        continue
                    result = dict(j=j, status="CERTIFIED", geometry_sha256=geometry_hash(seed),
                                  old_r=radius, r=r, factor=factor, n=n, label=label, rank=rank,
                                  c1=c1, stagec=trial, trials=trials,
                                  source_budget=target, source_fine_status=fine.get("status") if fine else None)
                    if factor < 1 and G["refine"]:
                        sn = B.sampled_n(B.SeedData(proposed), r)
                        if sn is None or sn <= 0:
                            raise ArithmeticError("no positive sampled remainder at shrunk radius")
                        result["fine_budget"] = B.fine_budget(proposed, sn, known=trial)
                        if result["fine_budget"]["status"] != "CERTIFIED" or result["fine_budget"]["n"] < n:
                            raise ArithmeticError("shrunk fine budget failed to retain the known passing bound")
                    result["seconds"] = time.perf_counter()-started
                    return result
            if factor == 1 and candidates and fine and fine["status"] == "CERTIFIED":
                # Clustering is not monotone in n: failure at the smaller C1
                # enclosure cannot invalidate the already accepted endpoint.
                rank, c1 = candidates[0]
                if fine["confirmation"].get("r", radius) != radius:
                    raise ValueError("fine Stage C receipt has a different radius")
                confirmation = dict(fine["confirmation"], r=radius)
                if (fine["r"] != radius or not confirmation["ok"] or
                        confirmation["check"] != "certifier" or confirmation["n"] != fine["n"] or
                        confirmation["label"] != fine["label"]):
                    raise ValueError("fine endpoint does not match the original ball")
                return dict(j=j, status="CERTIFIED", geometry_sha256=geometry_hash(seed),
                            old_r=radius, r=radius, factor=1., n=fine["n"], label=fine["label"],
                            rank=rank, c1=c1, stagec=confirmation, trials=trials,
                            source_budget=target, source_fine_status="CERTIFIED", reused_fine_endpoint=True,
                            seconds=time.perf_counter()-started)
        return dict(j=j, status="NOT ESTABLISHED", reason="no allowed radius passed cheap C1 and Stage C", trials=trials,
                    seconds=time.perf_counter()-started)
    except Exception:
        return dict(j=j, status="NOT ESTABLISHED", error=traceback.format_exc(), trials=trials,
                    seconds=time.perf_counter()-started)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--archive", type=Path, default=DEFAULT_ZIP)
    p.add_argument("--rank0", type=Path, default=DEFAULT_OUT/"certified_rank0.jsonl.gz")
    p.add_argument("--rank4", type=Path, default=DEFAULT_OUT/"certified_rank4.jsonl.gz")
    p.add_argument("--choices", type=Path, default=DEFAULT_OUT/"budget_fit.jsonl")
    p.add_argument("--fine", type=Path, nargs="*", default=[])
    p.add_argument("--selection", choices=["original", "leftover", "all", "fine"], default="leftover")
    p.add_argument("--indices", type=int, nargs="+")
    p.add_argument("--shrink", action="store_true")
    p.add_argument("--refine", action="store_true")
    p.add_argument("--shard", type=int, default=0)
    p.add_argument("--shards", type=int, default=1)
    p.add_argument("--workers", type=int, default=1)
    p.add_argument("--out", type=Path, required=True)
    args = p.parse_args()
    started = time.perf_counter()
    _, _, _, _, hashes = inputs(args.archive)
    for path in [args.rank0, args.rank4]:
        manifest_path = path.with_name(path.name.removesuffix(".jsonl.gz")+"_manifest.json")
        receipt = json.loads(manifest_path.read_text())
        if receipt["input_sha256"] != hashes or receipt["results_sha256"] != hashlib.sha256(path.read_bytes()).hexdigest():
            raise ValueError("C1 receipts do not match the input archive")
    if not 0 <= args.shard < args.shards:
        raise ValueError("invalid shard")
    source_files = [Path(__file__), Path(B.__file__), Path(A.__file__), B.ROOT/"proof/seed_atlas/driver/shrink_balls.py",
                    B.ROOT/"proof/seed_atlas/cert/seedcert.py", B.ROOT/"proof/atlas/stagec.py"]
    sources = {str(f.relative_to(B.ROOT)): hashlib.sha256(f.read_bytes()).hexdigest() for f in source_files}
    choices = B.load_rows(args.choices)
    fine_rows = {}
    for path in args.fine:
        rows = B.load_rows(path)
        if set(rows) & set(fine_rows):
            raise ValueError("duplicate fine budget inputs")
        fine_rows.update(rows)
    if args.selection == "fine" and any(v["status"] != "CERTIFIED" for v in fine_rows.values()):
        raise ValueError("fine selection requires certifier-confirmed budgets")
    selected = args.indices if args.indices is not None else sorted(fine_rows) if args.selection == "fine" else [j for j, v in choices.items() if args.selection == "all" or
                    (v["choice"] in ["cheap_rank0", "cheap_rank4"]) == (args.selection == "original")]
    selected = selected[args.shard::args.shards]
    done = B.load_rows(args.out) if args.out.exists() else {}
    todo = [j for j in selected if j not in done]
    args.out.parent.mkdir(parents=True, exist_ok=True)
    with args.out.open("a") as stream, mp.get_context("fork" if sys.platform.startswith("linux") else "spawn").Pool(
        args.workers, initializer=init, initargs=(args.archive, args.rank0, args.rank4, args.fine, args.shrink, args.refine)) as pool:
        for row in pool.imap_unordered(one, todo):
            stream.write(json.dumps(row, default=B.json_default, separators=(",", ":"), allow_nan=False)+"\n")
            stream.flush()
            done[row["j"]] = row
            print(json.dumps(dict(event="plan", j=row["j"], status=row["status"], factor=row.get("factor"),
                                  rank=row.get("rank"), done=len(done), total=len(selected),
                                  seconds=time.perf_counter()-started)), flush=True)
    manifest = dict(input_sha256=hashes, source_sha256=sources,
                    fine_sha256={str(f): hashlib.sha256(f.read_bytes()).hexdigest() for f in args.fine},
                    results_sha256=hashlib.sha256(args.out.read_bytes()).hexdigest(),
                    seconds=time.perf_counter()-started,
                    workers=args.workers, job_id=os.environ.get("SLURM_JOB_ID"),
                    completed_utc=datetime.now(timezone.utc).isoformat(), node=platform.node(),
                    total=len(done), certified=sum(r["status"] == "CERTIFIED" for r in done.values()),
                    shrunk=sum(r.get("factor", 1) < 1 for r in done.values()))
    args.out.with_suffix(".manifest.json").write_text(json.dumps(manifest, indent=2)+"\n")


if __name__ == "__main__":
    main()
