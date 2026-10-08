#!/usr/bin/env python3
"""Layer stage: reconstruction-free D0 exclusion of branch-layer cells (ProvenResults/CornerBounds/SideTriplePrune).

  python layer_prune.py LAYER.txt FIRST LAST OUT.jsonl

LAYER.txt has fixed-width records like cells.txt (ID, JOB, LEVEL, θ; 121 bytes).  Each cell is the closed box
centre ± Float64(π/2^LEVEL), enlarged by 2^-40 so that it contains the campaign's cell.  prune_box is tried at
depth 8, then 10.  ok = true is a proof that the box contains no point of D0 (for every physical completion;
no reconstruction input is used).  One JSON line per cell; resumable from OUT.part like the batch stage.
"""
import json, math, os, sys, time
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, "code", "CornerBounds", "SideTriplePrune"))
from triple_prune import prune_box, arb          # noqa: E402  (also imports ../SideColumnPrune/prune.py)
RECLEN = 121

def main():
    cf, a, b, out = sys.argv[1], int(sys.argv[2]), int(sys.argv[3]), sys.argv[4]
    if os.path.exists(out):
        return
    done = set()
    if os.path.exists(out + ".part"):
        for line in open(out + ".part"):
            try:
                done.add(json.loads(line)["cell"])
            except (ValueError, KeyError):
                pass
    with open(cf) as f, open(out + ".part", "a") as o:
        f.seek((a - 1) * RECLEN)
        for cid in range(a, b + 1):
            rec = f.read(RECLEN)
            if len(rec) < RECLEN:
                break
            fl = rec.split()
            assert int(fl[0]) == cid, f"layer record {cid} is out of place"
            if cid in done:
                continue
            lev = int(fl[2]); th = [float(x) for x in fl[3:7]]
            radii = [arb(math.pi / 2**lev) + arb(2)**-40] * 4
            t = time.time(); res = None; depth = None
            for depth in (8, 10):
                try:
                    res = prune_box([arb(x) for x in th], radii, depth=depth)
                except Exception as e:                     # never an exclusion
                    res = dict(ok=False, reason="error:" + type(e).__name__)
                if res["ok"]:
                    break
            o.write(json.dumps(dict(cell=cid, job=int(fl[1]), level=lev, theta=th, ok=bool(res["ok"]),
                                    reason=str(res.get("reason", "")), R_cap=res.get("R_cap"), depth=depth,
                                    t=round(time.time() - t, 4))) + "\n")
            o.flush()
    os.rename(out + ".part", out)

if __name__ == "__main__":
    main()
