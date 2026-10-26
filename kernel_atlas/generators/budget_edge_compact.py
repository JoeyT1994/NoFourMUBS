#!/usr/bin/env python3
"""Losslessly group identical edge transfers before auditing the closed atlas.

All box coordinates and transfer metadata are retained. Per-metadata ordered
box digests, seed payloads and edge-ball payloads are checked before writing.
This changes representation only; it is not independent transfer certification.
"""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import multiprocessing as mp
import os
from pathlib import Path
import pickle
import time

import budget_edge as E
import numpy as np

GROUPS = None


def file_sha(path):
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(8*1024*1024), b""):
            h.update(chunk)
    return h.hexdigest()


def object_sha(value):
    return hashlib.sha256(pickle.dumps(value, protocol=4)).hexdigest()


def freeze(value):
    if isinstance(value, dict):
        return tuple((k, freeze(v)) for k, v in sorted(value.items()))
    if isinstance(value, (list, tuple, np.ndarray)):
        return tuple(freeze(v) for v in value)
    return value.item() if isinstance(value, np.generic) else value


def key(group):
    if set(group) == {"desc", "wind", "boxes"}:
        # The ordinary T1 case has immutable tuples in desc.
        return (group["desc"], tuple(group["wind"]))
    return freeze({k: v for k, v in group.items() if k != "boxes"})


def checked_boxes(group):
    original = np.asarray(group["boxes"])
    boxes = np.asarray(group["boxes"], dtype=np.int16)
    assert boxes.ndim == 2 and boxes.shape[1] == 5
    assert np.array_equal(original, boxes), "box coordinates changed during conversion"
    assert np.all((boxes[:, 0] >= 1) & (boxes[:, 0] <= E.E.MAXLEV))
    assert np.all((boxes[:, 1:] >= 0) & (boxes[:, 1:] < (2**boxes[:, 0])[:, None]))
    return boxes


def compact(groups):
    merged = {}
    leaves = 0
    for group in groups:
        k = key(group)
        if k not in merged:
            merged[k] = dict(meta={n: v for n, v in group.items() if n != "boxes"},
                             rows=[], digest=hashlib.sha256(), count=0)
        item = merged[k]
        boxes = checked_boxes(group)
        item["rows"].extend(group["boxes"])
        item["digest"].update(boxes.astype(np.int64).tobytes())
        item["count"] += len(boxes); leaves += len(boxes)
    result, combined = [], hashlib.sha256()
    for k, item in merged.items():
        group = dict(item["meta"], boxes=np.asarray(item["rows"], dtype=np.int16))
        assert key(group) == k
        boxes = checked_boxes(group)
        assert len(boxes) == item["count"]
        digest = hashlib.sha256(boxes.astype(np.int64).tobytes()).digest()
        assert digest == item["digest"].digest(), "ordered box payload changed"
        combined.update(pickle.dumps(k, protocol=4)); combined.update(digest)
        result.append(group)
        item["rows"].clear()
    assert sum(len(g["boxes"]) for g in result) == leaves
    return result, dict(groups_before=len(groups), groups_after=len(result), leaves=leaves,
                        metadata_and_ordered_boxes_sha256=combined.hexdigest())


def compact_slice(interval):
    lo, hi = interval
    return compact(GROUPS[lo:hi])


def main():
    global GROUPS
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--state", type=Path, required=True)
    p.add_argument("--run", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--workers", type=int, default=8)
    args = p.parse_args()
    run = args.run.resolve()
    assert run.name == "run6" and (run/"zk2_preparation.json").exists()
    assert args.out.resolve().parent == run and not args.out.exists()
    started = time.perf_counter()
    digest = file_sha(args.state)
    with args.state.open("rb") as stream:
        atlas = pickle.load(stream)
    assert digest == file_sha(args.state), "input state changed"
    assert len(atlas.balls) == len(atlas.status) and all(s == "closed" for s in atlas.status)
    assert atlas.edges and not any(e.get("failed") for e in atlas.edges)
    seed_digest = object_sha({k: v for k, v in vars(atlas).items() if k != "edges"})
    edge_digest = object_sha([e["ball"] for e in atlas.edges])
    edges = []
    for index, edge in enumerate(atlas.edges):
        count = len(edge["groups"])
        assert args.workers > 0
        if args.workers > 1:
            GROUPS = edge["groups"]
            intervals = [(count*i//args.workers, count*(i+1)//args.workers) for i in range(args.workers)]
            with mp.get_context("fork").Pool(args.workers) as pool:
                parts = pool.map(compact_slice, intervals)
            GROUPS = None
            edge["groups"], stats = compact([g for groups, _ in parts for g in groups])
            stats["groups_before"] = count
            stats["chunks"] = [s for _, s in parts]
            assert stats["leaves"] == sum(s["leaves"] for _, s in parts)
            del parts
        else:
            edge["groups"], stats = compact(edge["groups"])
        edges.append(stats)
        print(json.dumps(dict(edge=index, **stats)), flush=True)
    assert seed_digest == object_sha({k: v for k, v in vars(atlas).items() if k != "edges"})
    assert edge_digest == object_sha([e["ball"] for e in atlas.edges])
    assert file_sha(run/"atlas_state_edge.pkl") == digest, "live edge state changed"
    with args.out.open("xb") as stream:
        pickle.dump(atlas, stream, protocol=4)
    compact_digest = file_sha(args.out)
    # Keep the raw immutable snapshot; publish the compact representation as
    # the normal export input and as its own distinct immutable audit snapshot.
    temporary = run/"atlas_state_edge.compacting"
    assert not temporary.exists()
    import shutil
    shutil.copyfile(args.out, temporary)
    assert file_sha(temporary) == compact_digest
    temporary.replace(run/"atlas_state_edge.pkl")
    report = dict(status="lossless representation change; coverage remains NUMERICAL",
                  job_id=os.environ.get("SLURM_JOB_ID"), completed_utc=datetime.now(timezone.utc).isoformat(),
                  seconds=time.perf_counter()-started, workers=args.workers, balls=len(atlas.balls), edges=edges,
                  input_state=str(args.state), input_sha256=digest, input_bytes=args.state.stat().st_size,
                  output_state=str(args.out), output_sha256=compact_digest, output_bytes=args.out.stat().st_size,
                  seed_payload_sha256=seed_digest, edge_ball_payload_sha256=edge_digest,
                  source_sha256={str(Path(__file__).relative_to(E.ROOT)): file_sha(Path(__file__))})
    (run/"zk2_compaction.json").write_text(json.dumps(report, indent=2)+"\n")
    print(json.dumps(report), flush=True)


if __name__ == "__main__":
    main()
