#!/usr/bin/env python3
"""Shard the unchanged edge_multi.cover_box routine over a frozen seed atlas.

Each start box is checkpointed separately. Collection requires every start
box exactly once and writes the same numerical edge-cover format as edge_multi.
Independent transfer certification remains a separate operation.
"""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import multiprocessing as mp
import os
from pathlib import Path
import pickle
import sys
import time

for name in ["OMP_NUM_THREADS", "OPENBLAS_NUM_THREADS", "MKL_NUM_THREADS"]:
    os.environ[name] = "1"
os.environ["PYTHONDONTWRITEBYTECODE"] = "1"
ROOT = Path(__file__).resolve().parents[2]
sys.path[:0] = [str(ROOT/"proof/seed_atlas/driver"), str(ROOT/"proof/atlas")]
import edge_multi as E


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def load(args):
    atlas = pickle.loads(args.state.read_bytes())
    assert len(atlas.balls) == len(atlas.status) and all(s == "closed" for s in atlas.status)
    assert all(b.info.get("zk2", {}).get("rank") in [0, 4] for b in atlas.balls)
    edges = pickle.loads(args.edges.read_bytes())
    assert len(edges) == 1 and edges[0].r == .13 and edges[0].exclusion == "X"
    boxes = E.CV.level_boxes(3)
    jobs = [(3, list(map(int, box)), e) for e in range(len(edges)) for box in boxes]
    sources = [Path(__file__), Path(E.__file__), Path(E.EP.__file__), Path(E.CV.__file__), Path(E.SG.__file__)]
    metadata = dict(state_sha256=sha(args.state), edges_sha256=sha(args.edges),
                    source_sha256={str(p.relative_to(ROOT)): sha(p) for p in sources},
                    jobs_sha256=hashlib.sha256(json.dumps(jobs).encode()).hexdigest(),
                    total=len(jobs), balls=len(atlas.balls), shards=args.shards)
    return atlas, edges, jobs, metadata


def one(task):
    index, job = task
    return index, E.cover_box(job)


def run(args, atlas, edges, jobs, metadata):
    assert 0 <= args.shard < args.shards
    started = time.perf_counter()
    out = args.out/f"shard_{args.shard}"
    out.mkdir(parents=True, exist_ok=True)
    selected = list(range(args.shard, len(jobs), args.shards))
    inputs = dict(metadata, selected=selected)
    receipt = out/"inputs.json"
    if receipt.exists():
        assert json.loads(receipt.read_text()) == inputs
    else:
        assert not list(out.glob("*.pkl"))
        receipt.write_text(json.dumps(inputs, indent=2)+"\n")
    done = {int(p.stem) for p in out.glob("*.pkl")}
    assert done <= set(selected)
    snap = atlas.snap(); snap.pop("tries", None)
    with mp.get_context("fork").Pool(args.workers, initializer=E.init, initargs=(snap, edges)) as pool:
        for index, result in pool.imap_unordered(one, ((j, jobs[j]) for j in selected if j not in done), chunksize=1):
            target = out/f"{index}.pkl"
            temporary = target.with_suffix(".tmp")
            temporary.write_bytes(pickle.dumps(dict(index=index, job=jobs[index], result=result), protocol=4))
            temporary.replace(target)
            done.add(index)
            if len(done) % 10 == 0 or len(done) == len(selected):
                print(json.dumps(dict(done=len(done), total=len(selected), seconds=time.perf_counter()-started)), flush=True)
    manifest = dict(inputs, job_id=os.environ.get("SLURM_JOB_ID"), seconds=time.perf_counter()-started,
                    completed_utc=datetime.now(timezone.utc).isoformat(), workers=args.workers,
                    results_sha256={p.name: sha(p) for p in sorted(out.glob("*.pkl"))})
    (out/"manifest.json").write_text(json.dumps(manifest, indent=2)+"\n")


def collect(args, atlas, edges, jobs, metadata):
    assert args.run is not None and args.run.resolve().name == "run6"
    assert (args.run/"zk2_preparation.json").exists()
    assert sha(args.run/"atlas_state.pkl") == metadata["state_sha256"], "live seed state changed"
    found, groups, gaps, manifests = set(), {i: [] for i in range(len(edges))}, {i: [] for i in range(len(edges))}, []
    for shard in range(args.shards):
        out = args.out/f"shard_{shard}"
        m = json.loads((out/"manifest.json").read_text())
        assert all(m[k] == v for k, v in metadata.items())
        assert m["selected"] == list(range(shard, len(jobs), args.shards))
        assert set(m["results_sha256"]) == {f"{j}.pkl" for j in m["selected"]}
        for j in m["selected"]:
            p = out/f"{j}.pkl"
            assert j not in found and sha(p) == m["results_sha256"][p.name]
            row = pickle.loads(p.read_bytes())
            assert row["index"] == j and row["job"] == jobs[j]
            e, covered, failed = row["result"]
            assert e == jobs[j][2]
            groups[e].extend(covered); gaps[e].extend(failed); found.add(j)
        manifests.append(m)
    assert found == set(range(len(jobs)))
    atlas.edges = [dict(ball=edges[e], groups=groups[e], failed=gaps[e]) for e in range(len(edges))]
    atlas.record = None
    target = args.run/"atlas_state_edge.pkl"
    assert not target.exists(), "refusing to overwrite an existing edge result"
    raw = pickle.dumps(atlas, protocol=4)
    target.write_bytes(raw)
    failed = sum(len(v) for v in gaps.values())
    report = dict(metadata, status="NUMERICAL", edges=len(edges),
                  groups=sum(len(v) for v in groups.values()), failed=failed,
                  state_edge_sha256=hashlib.sha256(raw).hexdigest(),
                  shard_jobs=[m["job_id"] for m in manifests],
                  shard_wall_seconds=[m["seconds"] for m in manifests])
    if failed:
        proposals = [q for values in gaps.values() for _, q in values if q is not None]
        (args.run/"edge_gaps.pkl").write_bytes(pickle.dumps(E.EP.gap_proposals(proposals), protocol=4))
    else:
        closed = args.run/"zk2_closed_state.pkl"
        assert not closed.exists()
        closed.write_bytes(raw)
    (args.out/"collected.json").write_text(json.dumps(report, indent=2)+"\n")
    print(json.dumps(report), flush=True)
    if failed:
        raise SystemExit(3)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--state", type=Path, required=True)
    p.add_argument("--edges", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--shards", type=int, default=4)
    p.add_argument("--shard", type=int, default=0)
    p.add_argument("--workers", type=int, default=80)
    p.add_argument("--collect", action="store_true")
    p.add_argument("--run", type=Path)
    args = p.parse_args()
    assert args.shards > 0
    atlas, edges, jobs, metadata = load(args)
    (collect if args.collect else run)(args, atlas, edges, jobs, metadata)


if __name__ == "__main__":
    main()
