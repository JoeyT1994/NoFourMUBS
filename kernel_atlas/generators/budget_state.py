#!/usr/bin/env python3
"""Audit a frozen run6 state with fresh cheap Arb C1 and certifier Stage C.

Optionally refine the Stage C budget for every changed/new ball. Existing fine
receipts are reused only at the same exact centre, frame and radius. Coverage
statuses are driver evidence, not independent transfer/atlas certification.
"""
import argparse
from collections import Counter
from datetime import datetime, timezone
import hashlib
import json
import multiprocessing as mp
import os
from pathlib import Path
import pickle
import platform
import sys
import time
import traceback

import budget_fine as B
import wholeball_cheap_arb as A
from wholeball_cheap_report import audit_scalars
from wholeball_cheap_sensitivity import inputs, DEFAULT_ZIP
from seed_export import seed_json
from shrink_balls import geometry_hash

G = {}


def init(state, state_hash, archive, fine_paths, refine):
    raw = state.read_bytes()
    if hashlib.sha256(raw).hexdigest() != state_hash:
        raise ValueError("state changed: audit an immutable snapshot")
    atlas = pickle.loads(raw)
    original, basis, _, _, _ = inputs(archive)
    fine = {}
    for path in fine_paths:
        for j, row in B.load_rows(path).items():
            # A prior state audit carries its own refined receipt; Step 1
            # receipts refer to the immutable original archive geometry.
            receipt = row.get("fine_budget") if "c1" in row else row
            if receipt is None or receipt.get("status") != "CERTIFIED":
                continue
            geom_hash = row.get("geometry_sha256")
            if geom_hash is None:
                if j >= len(original) or row.get("r") != float.fromhex(original[j]["r"]):
                    raise ValueError("fine receipt without matching original geometry")
                geom_hash = geometry_hash(original[j])
            key = (j, geom_hash)
            if key in fine:
                raise ValueError("duplicate fine receipt for one geometry")
            fine[key] = receipt
    A.ctx.prec = 224
    G.update(atlas=atlas, original=original, geom=A.geometry(basis), fine=fine, refine=refine)


def one(j):
    started = time.perf_counter()
    B.G["current_j"] = j
    b = G["atlas"].balls[j]
    seed = seed_json(b, [])
    gh = geometry_hash(seed)
    row = dict(j=j, r=b.r, n=b.n, label=b.label, geometry_sha256=gh)
    try:
        rank = b.info.get("zk2", {}).get("rank", 4)
        if rank not in [0, 4]:
            raise ValueError("state requests a non-cheap bound")
        A.ctx.prec = 224
        c1 = A.certify(seed, G["geom"], rank=rank)
        row.update(rank=rank, c1=c1)
        if c1["status"] != "CERTIFIED" or c1["n_record"] > b.n:
            raise ArithmeticError("fresh cheap C1 does not fit stored n")
        audit_scalars(c1, b.r)
        stagec = B.stage(seed, b.n, b.label, True)
        row["stagec"] = stagec
        if not stagec["ok"]:
            raise ArithmeticError("stored enclosure failed certifier Stage C")
        changed = j >= len(G["original"]) or gh != geometry_hash(G["original"][j])
        fine = G["fine"].get((j, gh))
        if fine is None and changed and G["refine"]:
            sn = B.sampled_n(B.SeedData(seed), b.r)
            if sn is None or sn <= 0:
                raise ArithmeticError("no positive sampled remainder")
            fine = B.fine_budget(seed, sn, known=stagec)
            fine["sn"] = sn
        if fine is not None:
            confirmation = fine["confirmation"]
            # Early Step 1 receipts predate the explicit radius field; their
            # geometry is bound to the immutable original archive above.
            if (fine["status"] != "CERTIFIED" or not confirmation["ok"] or
                    confirmation["check"] != "certifier" or confirmation["n"] != fine["n"] or
                    confirmation.get("r", b.r) != b.r or fine["n"] < c1["n_record"]):
                raise ArithmeticError("fine budget does not certify the current cheap bound")
            if not fine["cap_reached"] and not 0 <= fine["relative_bracket"] <= .02000000001:
                raise ArithmeticError("fine budget bracket exceeds 2%")
            row.update(fine_budget=fine, budget=fine["n"], budget_kind="fine")
        else:
            if changed and G["refine"]:
                raise ArithmeticError("changed ball lacks its refined budget")
            row.update(budget=b.n, budget_kind="certifier-confirmed stored enclosure")
        row.update(status="CERTIFIED", changed=changed, margin=row["budget"]-c1["n_record"],
                   stored_margin=b.n-c1["n_record"])
    except Exception:
        row.update(status="NOT ESTABLISHED", error=traceback.format_exc())
    row["seconds"] = time.perf_counter()-started
    return row


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--state", type=Path, required=True, help="immutable copy, never the live driver state")
    p.add_argument("--archive", type=Path, default=DEFAULT_ZIP)
    p.add_argument("--fine", type=Path, nargs="*", default=[])
    p.add_argument("--refine-changed", action="store_true")
    p.add_argument("--changed-only", action="store_true")
    p.add_argument("--require-closed", action="store_true")
    p.add_argument("--indices", type=int, nargs="+")
    p.add_argument("--workers", type=int, default=1)
    p.add_argument("--shard", type=int, default=0)
    p.add_argument("--shards", type=int, default=1)
    p.add_argument("--out", type=Path, required=True)
    args = p.parse_args()
    started = time.perf_counter()
    raw = args.state.read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    atlas = pickle.loads(raw)
    statuses = dict(Counter(atlas.status))
    edges = getattr(atlas, "edges", [])
    closed = (len(atlas.status) == len(atlas.balls) and all(s == "closed" for s in atlas.status)
              and bool(edges) and not any(e.get("failed") for e in edges))
    if args.require_closed and not closed:
        raise ValueError("state is not closed, including all edge boundaries")
    original, _, _, _, hashes = inputs(args.archive)
    indices = args.indices if args.indices is not None else list(range(len(atlas.balls)))
    if args.changed_only:
        indices = [j for j in indices if j >= len(original) or geometry_hash(seed_json(atlas.balls[j], [])) != geometry_hash(original[j])]
    if not 0 <= args.shard < args.shards:
        raise ValueError("invalid shard")
    indices = indices[args.shard::args.shards]
    input_hashes = dict(state=digest, archive=hashes,
                        fine={str(f): hashlib.sha256(f.read_bytes()).hexdigest() for f in args.fine})
    sources = [Path(__file__), Path(B.__file__), Path(A.__file__),
               B.ROOT/"kernel_atlas/generators/wholeball_cheap_report.py",
               B.ROOT/"proof/seed_atlas/driver/shrink_balls.py",
               B.ROOT/"proof/seed_atlas/cert/seedcert.py", B.ROOT/"proof/atlas/stagec.py"]
    source_hashes = {str(f.relative_to(B.ROOT)): hashlib.sha256(f.read_bytes()).hexdigest() for f in sources}
    # A resume must name the same immutable input and code, even after a
    # Slurm timeout before the final manifest was written.
    metadata = dict(input_sha256=input_hashes, source_sha256=source_hashes, selected=indices,
                    refine_changed=args.refine_changed)
    start_path = args.out.with_suffix(".inputs.json")
    args.out.parent.mkdir(parents=True, exist_ok=True)
    if start_path.exists():
        if json.loads(start_path.read_text()) != metadata:
            raise ValueError("refusing to mix different state-audit runs")
    else:
        if args.out.exists():
            raise ValueError("output has no matching input receipt")
        start_path.write_text(json.dumps(metadata, indent=2)+"\n")
    done = B.load_rows(args.out) if args.out.exists() else {}
    todo = [j for j in indices if j not in done]
    with args.out.open("a") as stream, mp.get_context("fork" if sys.platform.startswith("linux") else "spawn").Pool(
            args.workers, initializer=init,
            initargs=(args.state, digest, args.archive, args.fine, args.refine_changed)) as pool:
        for row in pool.imap_unordered(one, todo):
            stream.write(json.dumps(row, default=B.json_default, separators=(",", ":"), allow_nan=False)+"\n")
            stream.flush()
            done[row["j"]] = row
            print(json.dumps(dict(j=row["j"], status=row["status"], done=len(done), total=len(indices),
                                  seconds=time.perf_counter()-started)), flush=True)
    manifest = dict(**metadata, results_sha256=hashlib.sha256(args.out.read_bytes()).hexdigest(),
                    seconds=time.perf_counter()-started, completed_utc=datetime.now(timezone.utc).isoformat(),
                    workers=args.workers, job_id=os.environ.get("SLURM_JOB_ID"), node=platform.node(),
                    balls=len(atlas.balls), statuses=statuses, edges=len(edges),
                    driver_closed=closed, total=len(done),
                    certified=sum(v["status"] == "CERTIFIED" for v in done.values()))
    args.out.with_suffix(".manifest.json").write_text(json.dumps(manifest, indent=2)+"\n")
    if manifest["certified"] != len(indices):
        raise SystemExit(1)


if __name__ == "__main__":
    main()
