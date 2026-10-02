#!/usr/bin/env python3
"""Stage G: SignedCornerPSDPrune on every FAILED leaf of the stage-F certificate trees.

  python3 stageG_psd.py OUT FILE1.jsonl [FILE2.jsonl ...] [--workers N]

For each finished stage-F cell (a block ending in its done line) and each leaf with status FAILED:*, the leaf box
(its exact binary64 centre and level, half-width radius_for_level(level), an outward rational upper bound of
pi/2^level + 2^-40) is passed to predicate.predicate (bounded default profile).  Output lines:
    ID LEVEL c1 c2 c3 c4 (float.hex) E|O REASON
E: the whole closed leaf box has no physical strict-D0 completion (deterministic; replay by rerunning the predicate).
O: still open; it goes to the shoulder module or a later pass.  Cells whose stage-F block is unfinished are not read.
An exception is inconclusive (O), never an exclusion.  OUT is written via OUT.part.
"""
import json, math, os, sys, time
from multiprocessing import get_context

ROOT = os.environ.get("NOFOUR_ROOT", os.path.join(os.path.dirname(os.path.abspath(__file__)), "code"))
sys.path.insert(0, os.path.join(ROOT, "ProvenResults", "SignedCornerPSDPrune"))


def level_of(rho):
    l = round(math.log2(math.pi / rho))
    assert math.pi / 2 ** l == rho, rho
    return l


def run(item):
    from predicate import predicate, radius_for_level
    cid, lev, th = item
    try:
        r = predicate(th, [radius_for_level(lev)] * 4)
        ok, why = r["ok"] is True, r.get("reason", "")
    except Exception as e:
        ok, why = False, "exception:" + type(e).__name__
    return f"{cid} {lev} " + " ".join(float.hex(x) for x in th) + f" {'E' if ok else 'O'} {why}"


if __name__ == "__main__":
    args = sys.argv[1:]
    workers = int(args[args.index("--workers") + 1]) if "--workers" in args else 1
    files = [a for i, a in enumerate(args) if not a.startswith("--") and (i == 0 or args[i - 1] != "--workers")]
    out, ins = files[0], files[1:]
    if os.path.exists(out):
        sys.exit(0)
    items = []
    for fn in ins:
        block = []
        for line in open(fn):
            r = json.loads(line)
            if r.get("header"):
                continue
            if r.get("done"):
                if r["failed"]:
                    items += [(r["cell"], level_of(x["rho"]), x["theta"]) for x in block if x["status"].startswith("FAILED")]
                block = []
            else:
                block.append(r)
    t = time.process_time()
    with get_context("spawn").Pool(workers) as pool, open(out + ".part", "w") as f:
        for line in pool.imap(run, items, chunksize=4):
            f.write(line + "\n")
        f.write(f"#stageG leaves {len(items)}\n")
    os.replace(out + ".part", out)
