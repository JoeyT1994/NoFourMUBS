#!/usr/bin/env python3
"""Fill a completed numerical edge pass's gaps with cheap-only seed growth."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import pickle
import subprocess
import sys
import time

import budget_edge as E


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--run", type=Path, required=True)
    p.add_argument("--previous-state", type=Path, required=True)
    p.add_argument("--previous-shards", type=Path, required=True)
    p.add_argument("--pass-id", type=int, required=True)
    p.add_argument("--workers", type=int, default=80)
    args = p.parse_args()
    run = args.run.resolve()
    assert run.name == "run6" and args.pass_id > 0
    previous = json.loads((args.previous_shards/"collected.json").read_text())
    assert previous["failed"] > 0
    assert E.sha(args.previous_state) == previous["state_sha256"]
    assert E.sha(run/"atlas_state.pkl") == previous["state_sha256"]
    assert E.sha(run/"atlas_state_edge.pkl") == previous["state_edge_sha256"]
    gaps = run/"edge_gaps.pkl"
    gap_hash = E.sha(gaps)
    original = pickle.loads(args.previous_state.read_bytes())
    snapshot = run/f"zk2_seed_closed_repair{args.pass_id}.pkl"
    preserved_edge = run/f"zk2_edge_pass{args.pass_id-1}.pkl"
    assert not snapshot.exists() and not preserved_edge.exists()
    started = time.perf_counter()
    for attempt in range(3):
        command = [sys.executable, "-B", "-u", str(E.ROOT/"kernel_atlas/generators/budget_grow.py"),
                   str(run), "--workers", str(args.workers), "--edge", "--xball", ".13", "--hours", ".5"]
        if attempt == 0:
            command += ["--gaps", str(gaps)]
        print(json.dumps(dict(event="seed_gap_recovery", attempt=attempt, command=command)), flush=True)
        subprocess.run(command, check=True)
        raw = (run/"atlas_state.pkl").read_bytes()
        atlas = pickle.loads(raw)
        E.unchanged_targets(original, atlas)
        assert all(b.info.get("zk2", {}).get("rank") in [0, 4] for b in atlas.balls)
        if len(atlas.status) == len(atlas.balls) and all(s == "closed" for s in atlas.status):
            snapshot.write_bytes(raw)
            (run/"atlas_state_edge.pkl").rename(preserved_edge)
            report = dict(status="NUMERICAL seed closure", job_id=os.environ.get("SLURM_JOB_ID"),
                          completed_utc=datetime.now(timezone.utc).isoformat(),
                          seconds=time.perf_counter()-started, balls=len(atlas.balls),
                          added=len(atlas.balls)-len(original.balls), unchanged_target_prefix=len(original.balls),
                          previous_state_sha256=previous["state_sha256"], gaps_sha256=gap_hash,
                          snapshot=str(snapshot), snapshot_sha256=hashlib.sha256(raw).hexdigest(),
                          preserved_edge=str(preserved_edge), preserved_edge_sha256=E.sha(preserved_edge))
            (run/f"zk2_edge_growth{args.pass_id}.json").write_text(json.dumps(report, indent=2)+"\n")
            print(json.dumps(report), flush=True)
            return
    raise RuntimeError("seed gap recovery remains open; state preserved")


if __name__ == "__main__":
    main()
