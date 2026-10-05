#!/usr/bin/env python3
"""Second export for the collaborator (5 Oct 2026): the (2,4,4,2)-class rows beyond the ring and the three new
classes, still open after everything run so far.

  python3 export2.py OUTDIR [--procs N]

Open = frontier pass-1 unresolved (receipt_K.json), minus pass-2 accepted (receipt2_K.json with pass2_K.pos), minus
v3 accepted (postE/small/v3fast_*, v3wide_*), minus side-cover ok (postE/small/side_new.jsonl).  Rows of these classes
that never entered the frontier cannot exist: frontier-prep sent every one of them there.  Records follow the
ring export schema (FULL_RING_MANIFEST conventions): id, centers, radii (exact rationals; radius(level), outward),
level, code, class, seed, seed_distance_rad, inventory_row.
"""
import glob, gzip, hashlib, json, os, sys
from multiprocessing import Pool
from fractions import Fraction as Fr
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from postE import radius, RING_MAXD
F = "postE/frontier"; NEW = {"0,2,3,0", "0,2,3,2", "0,0,2,4"}


def unresolved(k):
    r = json.load(open(F + "/receipt_%06d.json" % k)); return k, r["frontier_boxes"], r["unresolved_indices"]


def okids(path, key="id"):
    s = set()
    try:
        for l in gzip.open(path, "rt") if path.endswith(".gz") else open(path):
            r = json.loads(l)
            if r.get("ok") is True and (key == "id" or r.get("reason") in ("outside_D0", "residual_tube")):
                s.add(r[key])
    except (EOFError, OSError, ValueError):
        pass                                           # a file still being written: read what is complete
    return s


if __name__ == "__main__":
    od = sys.argv[1]; procs = int(sys.argv[sys.argv.index("--procs") + 1]) if "--procs" in sys.argv else 64
    os.makedirs(od, exist_ok=False)
    man = json.load(open(F + "/shards/MANIFEST.json")); K = len(man["shards"])
    open_src = set(); missing = []
    with Pool(procs) as pool:
        for k, n, bad in pool.imap_unordered(unresolved, [k for k in range(K) if os.path.exists(F + "/receipt_%06d.json" % k)]):
            first = man["shards"][k]["first_source_index"]
            if n != man["shards"][k]["boxes"]:
                missing.append(k); continue
            r2 = F + "/receipt2_%06d.json" % k
            if os.path.exists(r2) and os.path.exists(F + "/pass2_%06d.pos" % k):
                pos = [int(x) for x in open(F + "/pass2_%06d.pos" % k)]
                bad2 = set(json.load(open(r2))["unresolved_indices"])
                bad = [pos[j] for j in range(len(pos)) if j in bad2]
            open_src.update(first + i for i in bad)
    missing += [k for k in range(K) if not os.path.exists(F + "/receipt_%06d.json" % k)]
    inv_open = {}
    for n, line in enumerate(open(F + "/index.txt")):
        if n in open_src:
            inv_open[int(line)] = n
    closed = set()
    for k in ("far2442", "new"):
        closed |= okids(f"postE/small/v3fast_{k}.jsonl.gz") | okids(f"postE/small/v3wide_{k}.jsonl.gz")
    closed |= okids("postE/small/side_new.jsonl", key="index")
    shards = []; out = None; rid = 0; per = 250000; counts = {}

    def sha(p):
        return hashlib.sha256(open(p, "rb").read()).hexdigest()
    with gzip.open("postE/inventory.txt.gz", "rt") as f:
        i = 0
        for line in f:
            if not line.strip() or line.startswith("#"):
                continue
            if i in inv_open and i not in closed:
                r = line.split(); cls = r[7]
                if cls in NEW or (cls == "2,4,4,2" and float(r[8]) > RING_MAXD - 1e-6):
                    if out is None or shards[-1]["records"] == per:
                        if out:
                            out.close(); shards[-1]["sha256"] = sha(os.path.join(od, shards[-1]["file"]))
                        shards.append(dict(file="remaining_%04d.jsonl.gz" % len(shards), first_id=rid, records=0))
                        out = gzip.open(os.path.join(od, shards[-1]["file"]), "wt")
                    lev = int(r[0]); c = [float(x) for x in r[1:5]]
                    out.write(json.dumps(dict(id=rid, centers=[str(Fr(x)) for x in c], radii=[str(radius(lev))] * 4,
                                              level=lev, code=r[5], seed=r[6], **{"class": cls},
                                              seed_distance_rad=float(r[8]), inventory_row=i), separators=(",", ":")) + "\n")
                    shards[-1]["records"] += 1; rid += 1; counts[cls] = counts.get(cls, 0) + 1
            i += 1
    if out:
        out.close(); shards[-1]["sha256"] = sha(os.path.join(od, shards[-1]["file"]))
    m = dict(title="NoFourMUBS second export: (2,4,4,2)-class boxes beyond the ring and three new seed classes, still open",
             campaign="nofourmubs_branch95_full_2026-10-01 post-E (code 577018eb...)",
             selection=("post-E inventory rows of class (2,4,4,2) with seed distance > 0.07 - 1e-6 rad, or of class "
                        "(0,2,3,0), (0,2,3,2), (0,0,2,4); not closed by frontier pass 1, pass 2 (where run), "
                        "Patch2442Region_v3, or the residual-lift side cover at the time of export"),
             conventions="as FULL_RING_MANIFEST.json of release ring-2026-10-04 (exact rational binary64 centres in [-pi,pi]; "
                         "radius(level) outward bound of pi/2^level + 2^-40); inventory_row = post-E inventory index",
             caveat=("our frontier pass 2 and v3 keep running overnight on these boxes; a list of ids they close will follow, "
                     "so either side may skip boxes the other has certified"),
             pass1_shards_missing=sorted(missing), records=rid, by_class=counts, shards=shards)
    json.dump(m, open(os.path.join(od, "MANIFEST.json"), "w"), indent=1)
    print(json.dumps(dict(records=rid, by_class=counts, shards=len(shards), pass1_missing=len(missing))))
