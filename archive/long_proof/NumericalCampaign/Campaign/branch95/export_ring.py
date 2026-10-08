#!/usr/bin/env python3
"""Export every open full-run box whose nearest F6 seed class is (2,4,4,2), for the collaborator (4 Oct 2026).

  python3 export_ring.py OUTDIR [--procs N] [--files GLOB] [--per-shard K]

Source: the frozen stage-D outputs results/stageD/d_*.txt of nofourmubs_branch95_full_2026-10-01 (run of record
nofourmubs_rescaled_2026-09-30, approved code 577018eb...).  Each line is a level-LEV layer leaf with
"path:code" entries; codes P and S are the open boxes after stage D.  Box centres come from the driver's binary64
child rule (as stageD.jl, stageE_psd.py and postE.py), so a centre is an exact dyadic; its exact rational string
is written.  The radius is radius(level), an outward rational bound of pi/2^level + 2^-40, less than 2^-80 above it
(the rule of ActiveShoulderClosure_v2.geometry.pilot_radius and postE.radius).  A box is exported when its own
nearest seed (sup circular distance over f6_seeds.txt, the rule of the pilot inventory) has class (2,4,4,2) and
that distance is at most MAXD = 0.07 rad (pilot ring: 0.0413-0.0467).
Lines are prefiltered on the leaf's own nearest-seed field; the manifest records the rule.
Records are numbered in (file, line, entry) order.  pilot_id is the pilot inventory index when the exact box
equals a pilot ring box.
"""
import glob, gzip, hashlib, json, math, os, sys
from fractions import Fraction as F
from multiprocessing import Pool
HERE = os.path.dirname(os.path.abspath(__file__)); os.chdir(HERE)
sys.path.insert(0, HERE)
from postE import child, circ, radius, SEEDS

RING_SEEDS = ("2,4,4,2", "4,2,2,4")
MAXD = 0.07     # the ring: sup circular distance of the box centre to its (2,4,4,2)-class seed


def scan(fn):
    out = []
    for ln, line in enumerate(open(fn), 1):
        if line.startswith("#") or "|nearest=" not in line:
            continue
        near = line.split("|nearest=")[1].split()[0].split(":")      # KIND:a,b,c,d:dist of the leaf centre
        if len(near) < 3 or near[1] not in RING_SEEDS or float(near[2]) > MAXD + 0.005:
            continue                                               # boxes lie within 0.0016 of their leaf centre
        g = line.split(" |")[0].split(); j, lev, th = int(g[0]), int(g[1]), [float(x) for x in g[2:6]]
        for e in g[6:]:
            p, c = e.rsplit(":", 1)
            if c not in ("P", "S"):
                continue
            cc, l = th, lev
            for ch in p:
                cc = child(cc, l, int(ch, 16)); l += 1
            d, s = min((max(circ(cc[i] - s[5 + i] * math.pi / 3) for i in range(4)), tuple(s[1:9])) for s in SEEDS)
            if s[:4] != (2, 4, 4, 2) or d > MAXD:
                continue
            out.append((os.path.basename(fn), ln, j, p, l, cc, c, s[4:], d))
    return fn, out


if __name__ == "__main__":
    a = sys.argv[1:]; outdir = a[0]
    procs = int(a[a.index("--procs") + 1]) if "--procs" in a else os.cpu_count()
    pat = a[a.index("--files") + 1] if "--files" in a else "results/stageD/d_*.txt"
    per = int(a[a.index("--per-shard") + 1]) if "--per-shard" in a else 250000
    os.makedirs(outdir, exist_ok=False)
    pilot = {}
    pp = os.path.join(HERE, "pilot_ring_all_2354.jsonl.gz")
    if os.path.exists(pp):
        for l in gzip.open(pp, "rt"):
            r = json.loads(l); pilot[(tuple(r["centers"]), r["radii"][0])] = r["id"]
    files = sorted(glob.glob(pat)); rid = 0; shards = []; f = None; seeds = {}; levels = {}; matched = 0
    rad = {}

    def sha(p):
        h = hashlib.sha256()
        with open(p, "rb") as x:
            for b in iter(lambda: x.read(1 << 20), b""):
                h.update(b)
        return h.hexdigest()
    with Pool(procs) as pool:
        for fn, rows in pool.imap(scan, files, chunksize=1):
            for (base, ln, j, p, l, cc, code, sd, d) in rows:
                if f is None or shards[-1]["records"] == per:
                    if f is not None:
                        f.close(); shards[-1]["sha256"] = sha(shards[-1]["path_abs"])
                    path = os.path.join(outdir, f"full_ring_remaining_{len(shards):04d}.jsonl.gz")
                    f = gzip.open(path, "wt", compresslevel=6)
                    shards.append(dict(file=os.path.basename(path), path_abs=path, first_id=rid, records=0))
                if l not in rad:
                    rad[l] = str(radius(l))
                cen = [str(F(x)) for x in cc]
                rec = dict(id=rid, centers=cen, radii=[rad[l]] * 4, level=l, code=code,
                           seed=",".join(map(str, sd)), seed_distance_rad=round(d, 6),
                           source=dict(stageD_file=base, line=ln, leaf=j, path=p))
                pid = pilot.get((tuple(cen), rad[l]))
                if pid is not None:
                    rec["pilot_id"] = pid; matched += 1
                f.write(json.dumps(rec, separators=(",", ":")) + "\n")
                shards[-1]["records"] += 1; rid += 1
                seeds[rec["seed"]] = seeds.get(rec["seed"], 0) + 1; levels[l] = levels.get(l, 0) + 1
    if f is not None:
        f.close(); shards[-1]["sha256"] = sha(shards[-1]["path_abs"])
    for s in shards:
        del s["path_abs"]
    print(json.dumps(dict(records=rid, shards=len(shards), seeds=seeds, levels=levels, pilot_matches=matched)))
    json.dump(dict(records=rid, shards=shards, seeds=seeds, levels=levels, pilot_matches=matched),
              open(os.path.join(outdir, "export_summary.json"), "w"), indent=1)
