#!/usr/bin/env python3
"""Side cover (residual_lift.certify_f6, postE._side) on an extracted row list, in parallel (5 Oct 2026).

  python3 sidecover_rows.py ROWS.txt.gz OUT.jsonl NPROC

ROWS lines are "ID <inventory row>".  Output records carry the inventory index, exact level and centre (checked by
frontier_ledger.py --sidecover) and ok/reason; only ok=True with reason outside_D0 closes a box.
"""
import gzip, json, os, sys, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from multiprocessing import get_context
from postE import _side
if __name__ == "__main__":
    src, out, n = sys.argv[1], sys.argv[2], int(sys.argv[3])
    items = []
    for l in gzip.open(src, "rt"):
        g = l.split(); items.append((int(g[0]), g[1:]))
    c = collections.Counter()
    with get_context("spawn").Pool(n) as pool, open(out + ".part", "w") as f:
        for k, q in enumerate(pool.imap_unordered(_side, items, chunksize=8), 1):
            f.write(json.dumps(q) + "\n"); c[(q["ok"], q["reason"])] += 1
            if k % 10000 == 0:
                print(json.dumps(dict(done=k, of=len(items), outcomes={f"{a} {b}": v for (a, b), v in c.items()})), flush=True)
    os.replace(out + ".part", out)
    print(json.dumps(dict(done=len(items), outcomes={f"{a} {b}": v for (a, b), v in c.items()})))
