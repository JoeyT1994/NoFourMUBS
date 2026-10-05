#!/usr/bin/env python3
"""Leftover diagnosis (5 Oct 2026): census of the boxes the frontier has not closed, and a hard-tail sample.

  python3 diag_collect.py OUTDIR [SAMPLE=2000]

Reads postE/frontier: pass2_K.pos (pass-1 leftovers of shard K, as positions in the shard) and receipt2_K.json
(pass-2 result on them, when present).  Maps every leftover to its inventory row through shards/MANIFEST.json and
index.txt, then streams postE/inventory.txt.gz once.  Writes
  OUTDIR/census.json          leftovers after pass 1 and after pass 2, by class, code and seed-distance band
  OUTDIR/sample.boxes.jsonl   SAMPLE random hard-tail boxes {"id"=inventory row, centers, radii} (exact)
  OUTDIR/sample.rows.txt      "ID <inventory row>" for the same boxes
  OUTDIR/sample.cells.txt     121-byte stage-F cell records for the same boxes
"""
import collections, glob, gzip, json, os, random, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from postE import radius
from fractions import Fraction as Fr
od = sys.argv[1]; N = int(sys.argv[2]) if len(sys.argv) > 2 else 2000; os.makedirs(od, exist_ok=True)
F = "postE/frontier"; man = json.load(open(F + "/shards/MANIFEST.json"))
first = {i: s["first_source_index"] for i, s in enumerate(man["shards"])}
left1 = []; hard = []; shards_done = 0; shards2 = 0
for p in sorted(glob.glob(F + "/pass2_*.pos")):
    k = int(p.split("_")[-1].split(".")[0]); shards_done += 1
    pos = [int(x) for x in open(p)]
    src = [first[k] + q for q in pos]; left1 += src
    r2 = F + "/receipt2_%06d.json" % k
    if os.path.exists(r2):
        shards2 += 1; bad = set(json.load(open(r2))["unresolved_indices"])
        hard += [src[j] for j in range(len(src)) if j in bad]
need1 = set(left1); needh = set(hard)
# frontier source index -> inventory row
want = {}
for n, line in enumerate(open(F + "/index.txt")):
    if n in need1:
        want[n] = int(line)
inv_need = set(want.values())
rows = {}
with gzip.open("postE/inventory.txt.gz", "rt") as f:
    i = 0
    for line in f:
        if not line.strip() or line.startswith("#"):
            continue
        if i in inv_need:
            rows[i] = line.split()
        i += 1


def band(d):
    d = float(d)
    for b in (0.02, 0.05, 0.1, 0.2, 0.4):
        if d <= b:
            return f"<={b}"
    return ">0.4"


def census(src):
    c = collections.Counter(); s = collections.Counter()
    for n in src:
        r = rows[want[n]]
        c[(r[7], r[5], band(r[8]))] += 1; s[(r[7], r[6])] += 1
    return dict(total=len(src), by_class_code_distance={" ".join(k): v for k, v in sorted(c.items(), key=lambda x: -x[1])},
                by_class_seed={" ".join(k): v for k, v in sorted(s.items(), key=lambda x: -x[1])[:20]})


json.dump(dict(pass1_shards_with_leftover_lists=shards_done, pass2_shards_done=shards2,
               after_pass1=census(left1), after_pass2_in_done_shards=census(hard)), open(od + "/census.json", "w"), indent=1)
random.seed(20261005); smp = sorted(random.sample(hard, min(N, len(hard))))
with open(od + "/sample.boxes.jsonl", "w") as b, open(od + "/sample.rows.txt", "w") as rr, open(od + "/sample.cells.txt", "w") as cf:
    for k, n in enumerate(smp, 1):
        i = want[n]; r = rows[i]; lev = int(r[0]); c = [float(x) for x in r[1:5]]
        b.write(json.dumps(dict(id=i, centers=[str(Fr(x)) for x in c], radii=[str(radius(lev))] * 4), separators=(",", ":")) + "\n")
        rr.write(f"{i} {' '.join(r)}\n")
        rec = f"{k:9d} {i % 10**7:7d} {lev:2d} " + " ".join(f"{x:+.17e}" for x in c)
        cf.write(rec.ljust(120) + "\n")
print(json.dumps(dict(after_pass1=len(left1), hard=len(hard), sample=len(smp), shards=shards_done, shards2=shards2)))
