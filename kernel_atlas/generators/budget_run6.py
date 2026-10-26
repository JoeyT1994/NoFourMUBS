#!/usr/bin/env python3
"""Re-cover run6 with the unchanged driver and cheap-only new balls.

Each seed-cover pass is followed by the existing edge boundary builder. Edge
gaps feed another seed-growth pass. A closed snapshot is preserved for the
independent cheap C1/Stage C audit; export and full atlas certification remain
separate operations.
"""
import argparse
from collections import Counter
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import pickle
import shutil
import subprocess
import sys
import time

for name in ["OMP_NUM_THREADS", "OPENBLAS_NUM_THREADS", "MKL_NUM_THREADS"]:
    os.environ[name] = "1"
os.environ["PYTHONDONTWRITEBYTECODE"] = "1"
os.environ["SEED_NO_RECORD"] = "1"
ROOT = Path(__file__).resolve().parents[2]
DRIVER = ROOT/"proof/seed_atlas/driver"
sys.path[:0] = [str(DRIVER), str(ROOT/"proof/atlas")]


def inspect(path):
    raw = path.read_bytes()
    atlas = pickle.loads(raw)
    edges = getattr(atlas, "edges", [])
    return dict(balls=len(atlas.balls), statuses=dict(Counter(atlas.status)),
                cheap=sum(b.info.get("zk2", {}).get("rank") in [0, 4] for b in atlas.balls),
                seed_closed=len(atlas.status) == len(atlas.balls) and all(s == "closed" for s in atlas.status),
                edges=len(edges), edge_gaps=sum(len(e.get("failed", [])) for e in edges),
                sha256=hashlib.sha256(raw).hexdigest())


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("run", type=Path)
    p.add_argument("--workers", type=int, default=80)
    p.add_argument("--rounds", type=int, default=6)
    p.add_argument("--hours-per-pass", type=float, default=.75)
    args = p.parse_args()
    run = args.run.resolve()
    if run.name != "run6" or not (run/"zk2_preparation.json").exists():
        raise ValueError("expected the prepared run6 directory")
    started = time.perf_counter()
    gaps = None
    with (run/"zk2_growth_history.jsonl").open("a") as log:
        def record(event, **fields):
            row = dict(event=event, job_id=os.environ.get("SLURM_JOB_ID"),
                       utc=datetime.now(timezone.utc).isoformat(), seconds=time.perf_counter()-started, **fields)
            line = json.dumps(row)
            print(line, flush=True)
            log.write(line+"\n"); log.flush()
        record("start", **inspect(run/"atlas_state.pkl"))
        for round_no in range(args.rounds):
            command = [sys.executable, "-B", "-u", str(ROOT/"kernel_atlas/generators/budget_grow.py"),
                       str(run), "--workers", str(args.workers), "--edge", "--xball", ".13",
                       "--hours", str(args.hours_per_pass)]
            if round_no == 0:
                command.append("--reopen-t2")
            if gaps is not None:
                command.extend(["--gaps", str(gaps)])
            record("seed_pass_start", round=round_no, command=command)
            subprocess.run(command, check=True)
            status = inspect(run/"atlas_state.pkl")
            record("seed_pass_end", round=round_no, **status)
            if status["cheap"] != status["balls"]:
                raise RuntimeError("growth produced a ball without a cheap C1 receipt")
            if not status["seed_closed"]:
                gaps = None
                continue
            command = [sys.executable, "-B", "-u", str(DRIVER/"edge_multi.py"), str(run),
                       "--workers", str(args.workers), "--xball", ".13", "--no-grow", "--rounds", "1"]
            record("edge_pass_start", round=round_no, command=command)
            result = subprocess.run(command)
            if result.returncode not in [0, 3]:
                raise subprocess.CalledProcessError(result.returncode, command)
            edge = inspect(run/"atlas_state_edge.pkl")
            record("edge_pass_end", round=round_no, returncode=result.returncode, **edge)
            if result.returncode == 0 and edge["seed_closed"] and edge["edges"] and not edge["edge_gaps"]:
                snapshot = run/"zk2_closed_state.pkl"
                if snapshot.exists():
                    if hashlib.sha256(snapshot.read_bytes()).hexdigest() != edge["sha256"]:
                        raise FileExistsError("refusing to replace a different closed snapshot")
                else:
                    shutil.copyfile(run/"atlas_state_edge.pkl", snapshot)
                record("closed", snapshot=str(snapshot), **edge)
                return
            gaps = run/"edge_gaps.pkl"
            if not gaps.exists():
                raise FileNotFoundError("edge pass reported gaps without seed proposals")
        raise RuntimeError("run6 is still open after the allotted re-cover passes; state preserved")


if __name__ == "__main__":
    main()
