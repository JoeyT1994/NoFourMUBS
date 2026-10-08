#!/usr/bin/env python3
"""Split post-E inventory rows of the small classes into work lists (5 Oct 2026).

  python3 extract_classes.py POSTE_OUT OUTDIR

For every inventory row (index = row id, as in the ledger) of class (4,5,0,3), (0,2,3,0), (0,2,3,2), (0,0,2,4), or
class (2,4,4,2) beyond the exported ring (seed distance > RING_MAXD - 1e-6), writes
  OUTDIR/<name>.rows.txt.gz    "ID <inventory row>"   (for the side cover, postE._side)
  OUTDIR/<name>.boxes.jsonl.gz {"id", "centers", "radii"} exact rationals (for Patch2442Region_v3/verify.py)
with name = 4503, new (the three new classes), far2442.
"""
import gzip, json, os, sys, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from postE import RING_MAXD
out, od = sys.argv[1], sys.argv[2]; os.makedirs(od, exist_ok=True)
NEW = {"0,2,3,0", "0,2,3,2", "0,0,2,4"}
files = {k: (gzip.open(os.path.join(od, k + ".rows.txt.gz"), "wt"), gzip.open(os.path.join(od, k + ".boxes.jsonl.gz"), "wt"))
         for k in ("4503", "new", "far2442")}
cnt = collections.Counter(); i = 0
with gzip.open(os.path.join(out, "inventory.txt.gz"), "rt") as inv, gzip.open(os.path.join(out, "inventory_boxes.jsonl.gz"), "rt") as bx:
    for line in inv:
        if not line.strip() or line.startswith("#"):
            continue
        b = next(bx); r = line.split(); cls = r[7]
        k = ("4503" if cls == "4,5,0,3" else "new" if cls in NEW else
             "far2442" if cls == "2,4,4,2" and float(r[8]) > RING_MAXD - 1e-6 else None)
        if k:
            q = json.loads(b); q = dict(id=i, **q)
            files[k][0].write(f"{i} {line}"); files[k][1].write(json.dumps(q, separators=(",", ":")) + "\n"); cnt[k] += 1
        i += 1
for a, b in files.values():
    a.close(); b.close()
print(json.dumps(dict(rows=i, extracted=dict(cnt))))
