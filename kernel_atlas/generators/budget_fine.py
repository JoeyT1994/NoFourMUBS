#!/usr/bin/env python3
"""ZK2: screen fine Stage C budgets and confirm each with seedcert.run_stage_c.

The input data are immutable. Failed screens bound only this search, not the
mathematical maximum: clustering and search caps need not behave monotonically.
Each accepted budget is independently checked with the certifier arguments.
"""
import argparse
from datetime import datetime, timezone
import gzip
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

for name in ["OMP_NUM_THREADS", "OPENBLAS_NUM_THREADS", "MKL_NUM_THREADS", "VECLIB_MAXIMUM_THREADS"]:
    os.environ[name] = "1"
os.environ["PYTHONDONTWRITEBYTECODE"] = "1"
ROOT = Path(__file__).resolve().parents[2]
sys.path[:0] = [str(ROOT/"proof/seed_atlas/driver"), str(ROOT/"proof/seed_atlas/cert"), str(ROOT/"proof/atlas")]
import numpy as np
import seedcert as SCERT
import makeball
from c1 import sampled_n
from seed_export import SeedData
from wholeball_cheap_sensitivity import inputs, DEFAULT_ZIP, DEFAULT_OUT

G = {}


def json_default(v):
    if isinstance(v, np.generic):
        return v.item()
    raise TypeError(type(v).__name__)


def load_rows(path):
    op = gzip.open if str(path).endswith(".gz") else open
    with op(path, "rt") as f:
        return {v["j"]: v for v in map(json.loads, f) if v}


def labels(seed):
    own = float.fromhex(seed["label_radius"])
    return [own, .02 if own > .025 else .03]


def stage(seed, n, label, certified=False):
    cache_key = (G.get("current_j"), float(n).hex(), float(label).hex(), certified)
    if cache_key in G.get("trial_cache", {}):
        saved = G["trial_cache"][cache_key]
        return dict(saved, cached=True, cached_seconds=saved["seconds"], seconds=0.)
    started = time.perf_counter()
    try:
        if certified:
            b = SCERT.Ball(dict(seed, n=float(n).hex(), label_radius=float(label).hex()))
            result = SCERT.run_stage_c(b)
        else:
            b = SeedData(seed)
            result = makeball.stage_c_capped(b, b.r, n, label)
        result = {k: v for k, v in result.items() if k in
                  ["ok", "reason", "bins", "labels", "steps", "rcol", "rF", "nN", "stage"]}
        result["ok"] = bool(result.get("ok", False))
    except Exception as e:
        result = dict(ok=False, error=repr(e))
    row = dict(result, n=n, label=label, check="certifier" if certified else "screen",
               seconds=time.perf_counter()-started)
    if os.environ.get("ZK2_TRACE"):
        print(json.dumps(dict(event="trial", j=G.get("current_j"), **row), default=json_default), flush=True)
    return row


def fine_budget(seed, sn, initial_factor=None, tolerance=.02, cap=8.):
    unit = sn*1.05
    history, cache = [], {}
    def test(f, certified=False):
        key = (float(f).hex(), certified)
        if key in cache:
            return cache[key]
        for label in labels(seed):
            row = stage(seed, unit*f, label, certified)
            history.append(dict(row, factor=f))
            if row["ok"]:
                cache[key] = row
                return row
        cache[key] = None
        return None

    lo = min(cap, initial_factor or float.fromhex(seed["n"])/unit)
    lo = max(lo, .125)
    while test(lo) is None and lo > .001:
        lo *= .5
    if test(lo) is None:
        return dict(status="NOT ESTABLISHED", reason="no passing lower screen", history=history)
    hi = min(cap, max(lo*1.5, 1.5))
    failed_hi = None
    while hi > lo:
        if test(hi) is None:
            failed_hi = hi
            break
        lo = hi
        hi = min(cap, hi*1.5)
    if failed_hi is not None:
        hi = failed_hi
        while hi > lo*(1+tolerance):
            mid = (lo+hi)/2
            if test(mid) is None:
                hi = mid
            else:
                lo = mid
    else:
        hi = None
    confirmation = test(lo, True)
    # Usually screening and certifier agree. If they do not, step down by 1%
    # and preserve an actual failed certifier trial above the accepted budget.
    for _ in range(200):
        if confirmation is not None:
            break
        hi = lo
        lo *= .99
        confirmation = test(lo, True)
    if confirmation is None:
        return dict(status="NOT ESTABLISHED", reason="certifier did not confirm a budget", history=history)
    return dict(status="CERTIFIED", n=confirmation["n"], factor=lo, label=confirmation["label"],
                upper_failed_factor=hi, relative_bracket=None if hi is None else hi/lo-1,
                cap_reached=hi is None, confirmation=confirmation, history=history)


def init(archive, rank0, rank4, tolerance, cap, resume_trials=()):
    seeds, basis, coarse, reference, hashes = inputs(archive)
    G.update(seeds=seeds, coarse=coarse, rank0=load_rows(rank0), rank4=load_rows(rank4),
             tolerance=tolerance, cap=cap, trial_cache={})
    for path in resume_trials:
        with open(path) as f:
            for line in f:
                try:
                    row = json.loads(line)
                except json.JSONDecodeError:
                    continue
                if row.get("event") != "trial" or row.get("j") is None:
                    continue
                key = (row["j"], float(row["n"]).hex(), float(row["label"]).hex(), row["check"] == "certifier")
                G["trial_cache"][key] = {k: v for k, v in row.items() if k not in ["event", "j"]}


def one(j):
    started = time.perf_counter()
    G["current_j"] = j
    seed, coarse = G["seeds"][j], G["coarse"].get(j, {})
    try:
        sn = coarse.get("sn")
        if sn is None:
            sn = sampled_n(SeedData(seed), float.fromhex(seed["r"]))
        if sn is None or sn <= 0:
            raise ArithmeticError("no positive sampled remainder")
        result = fine_budget(seed, sn, coarse.get("f"), G["tolerance"], G["cap"])
        result.update(sn=sn, r=float.fromhex(seed["r"]), previous_budget=coarse.get("n") if coarse.get("f") else None)
        for rank in [0, 4]:
            row = G[f"rank{rank}"][j]
            n = row.get("n_record") if row["status"] == "CERTIFIED" else None
            fit = bool(n is not None and result["status"] == "CERTIFIED" and n <= result["n"])
            result[f"rank{rank}"] = dict(status=row["status"], n=n, fit=fit,
                                         margin=(result["n"]-n) if fit else None)
    except Exception:
        result = dict(status="NOT ESTABLISHED", error=traceback.format_exc())
    return dict(result, j=j, seconds=time.perf_counter()-started)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--archive", type=Path, default=DEFAULT_ZIP)
    p.add_argument("--rank0", type=Path, default=DEFAULT_OUT/"certified_rank0.jsonl.gz")
    p.add_argument("--rank4", type=Path, default=DEFAULT_OUT/"certified_rank4.jsonl.gz")
    p.add_argument("--choices", type=Path, default=DEFAULT_OUT/"budget_fit.jsonl")
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--workers", type=int, default=1)
    p.add_argument("--indices", type=int, nargs="+")
    p.add_argument("--all", action="store_true")
    p.add_argument("--tolerance", type=float, default=.02)
    p.add_argument("--cap", type=float, default=8.)
    p.add_argument("--shard", type=int, default=0)
    p.add_argument("--shards", type=int, default=1)
    p.add_argument("--resume-trials", type=Path, nargs="*", default=[])
    args = p.parse_args()
    files = [Path(__file__), ROOT/"proof/seed_atlas/cert/seedcert.py", ROOT/"proof/atlas/stagec.py",
             ROOT/"proof/seed_atlas/driver/makeball.py", ROOT/"proof/seed_atlas/driver/c1.py"]
    source_hashes = {str(f.relative_to(ROOT)): hashlib.sha256(f.read_bytes()).hexdigest() for f in files}
    if not 0 < args.tolerance <= .02 or args.cap <= 0:
        raise ValueError("tolerance must be in (0,.02] and cap positive")
    started = time.perf_counter()
    seeds, _, _, _, hashes = inputs(args.archive)
    choices = load_rows(args.choices)
    indices = args.indices if args.indices is not None else list(range(len(seeds))) if args.all else [
        j for j, v in choices.items() if v["choice"] in ["original_Z", "no_verified_fit"]]
    if not 0 <= args.shard < args.shards:
        raise ValueError("invalid shard")
    indices = indices[args.shard::args.shards]
    done = load_rows(args.out) if args.out.exists() else {}
    todo = [j for j in indices if j not in done]
    args.out.parent.mkdir(parents=True, exist_ok=True)
    initializer_args = (args.archive, args.rank0, args.rank4, args.tolerance, args.cap, args.resume_trials)
    with args.out.open("a") as stream:
        with mp.get_context("fork" if sys.platform.startswith("linux") else "spawn").Pool(
                args.workers, initializer=init, initargs=initializer_args) as pool:
            for row in pool.imap_unordered(one, todo):
                stream.write(json.dumps(row, default=json_default, allow_nan=False, separators=(",", ":"))+"\n")
                stream.flush()
                done[row["j"]] = row
                print(json.dumps(dict(j=row["j"], status=row["status"], n=row.get("n"),
                                      rank4_fit=row.get("rank4", {}).get("fit"),
                                      done=len(done), total=len(indices), seconds=time.perf_counter()-started)), flush=True)
    manifest = dict(input_sha256=hashes, source_sha256=source_hashes,
                    seconds=time.perf_counter()-started, workers=args.workers, python=platform.python_version(),
                    job_id=os.environ.get("SLURM_JOB_ID"), node=platform.node(),
                    completed_utc=datetime.now(timezone.utc).isoformat(),
                    shard=args.shard, shards=args.shards,
                    resumed_trial_logs={str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in args.resume_trials},
                    total=len(done), certified=sum(v["status"] == "CERTIFIED" for v in done.values()),
                    rank4_fits=sum(v.get("rank4", {}).get("fit", False) for v in done.values()))
    args.out.with_suffix(".manifest.json").write_text(json.dumps(manifest, indent=2)+"\n")


if __name__ == "__main__":
    main()
