#!/usr/bin/env python3
"""Post-E pipeline helpers (2 Oct 2026).  Every box left open by stage E gets one inventory row; the ledger
(frontier_ledger.py) then requires a recorded certificate source for each row.

  postE.py inventory STAGE_E_DIR OUT     OUT/inventory.txt.gz (shoulder list format) + OUT/inventory_boxes.jsonl.gz
  postE.py v2 OUT                        OUT/v2.jsonl.gz: ActiveShoulderClosure_v2 exact containment, one record per row
  postE.py sidecover OUT NPROC           OUT/sidecover.jsonl: residual_lift.certify_f6 on class-(4,5,0,3) rows not in v2
  postE.py frontier-prep OUT             OUT/frontier/boxes.jsonl.gz + index.txt: rows still open, other classes
  postE.py F-prep OUT PER                OUT/F/cells_F.txt + tasks_F.txt: rows still open after the frontier

Geometry: row i is the closed box with centre the exact binary64 values (driver child rule, as stageD/E/F) and
half-width pi/2^LEVEL + 2^-40.  The exact radius handed to the shoulder modules is radius(LEVEL) below, an outward
rational upper bound (less than 2^-80 above), the same rule as ActiveShoulderClosure_v2.geometry.pilot_radius.
Classes 2,4,4,2 (stationary F3 seed) and 4,5,0,3 are kept out of the frontier driver (that module's README); the
(2,4,4,2) rows go to stage F after all other rows (INCLUDE_2442=0 leaves them out).  Nothing here accepts a box: acceptance is in each module's
own verifier, and the ledger reads only their outputs.
"""
import gzip, json, math, os, sys, collections
from fractions import Fraction as F

HERE = os.path.dirname(os.path.abspath(__file__))
SH = os.environ.get("SHOULDER_ROOT", os.path.expanduser(
    "~/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02"))
SEEDS = [list(map(int, l.split())) for l in open(os.path.join(HERE, "f6_seeds.txt"))]
HEADER = ("# level theta1..theta4 code(P: inf R>1, S: residual) nearest_seed_in_pi/3_units(a,b,c,d) class "
          "sup_circular_distance_rad\n# half-width of every box: pi/2^level + 2^-40 (radians); centres are exact "
          "binary64 values (driver child rule)\n")


def circ(a):
    return abs((a + math.pi) % (2 * math.pi) - math.pi)


def child(c, lev, k):
    h = math.pi / 2 ** lev
    return [c[i] + (h / 2 if (k >> i) & 1 else -h / 2) for i in range(4)]


def pi_up():
    def atan_bounds(q, n=80):
        s = sum((F((-1) ** k, (2 * k + 1) * q ** (2 * k + 1)) for k in range(n)), F(0))
        t = s + F((-1) ** n, (2 * n + 1) * q ** (2 * n + 1))
        return min(s, t), max(s, t)
    a, b = atan_bounds(5); c, d = atan_bounds(239)
    return 16 * b - 4 * c


PI_UP = None


def radius(lev):
    global PI_UP
    PI_UP = PI_UP or pi_up()
    h = PI_UP / 2 ** lev + F(1, 2 ** 40)
    return F((h * 2 ** 80).__floor__() + 1, 2 ** 80)


def rows(out):
    with gzip.open(os.path.join(out, "inventory.txt.gz"), "rt") as f:
        return [l.split() for l in f if l.strip() and not l.startswith("#")]


def closed_ids(out, frontier=False):
    done = set()
    p = os.path.join(out, "v2.jsonl.gz")
    if os.path.exists(p):
        done |= {r["id"] for r in map(json.loads, gzip.open(p, "rt")) if r["ok"] is True}
    p = os.path.join(out, "sidecover.jsonl")
    if os.path.exists(p):
        done |= {r["index"] for r in map(json.loads, open(p)) if r["ok"] is True and r["reason"] == "outside_D0"}
    if frontier:
        fd = os.path.join(out, "frontier"); idx = [int(x) for x in open(os.path.join(fd, "index.txt"))]
        man = json.load(open(os.path.join(fd, "shards", "MANIFEST.json")))
        for k, s in enumerate(man["shards"]):
            p = os.path.join(fd, f"receipt_{k:06d}.json")
            if not os.path.exists(p):
                continue
            r = json.load(open(p))
            if r["frontier_boxes"] != s["boxes"]:
                continue
            bad = set(r["unresolved_indices"])
            done |= {idx[s["first_source_index"] + n] for n in range(s["boxes"]) if n not in bad}
    return done


def inventory(src, out):
    os.makedirs(out, exist_ok=True)
    import glob
    n = 0; cnt = collections.Counter()
    with gzip.open(os.path.join(out, "inventory.txt.gz"), "wt") as o, \
            gzip.open(os.path.join(out, "inventory_boxes.jsonl.gz"), "wt") as b:
        o.write(HEADER)
        for fn in sorted(glob.glob(os.path.join(src, "e_*.txt"))):
            for line in open(fn):
                if line.startswith("#") or not line.strip():
                    continue
                g = line.split(" |")[0].split(); lev = int(g[1]); th = [float(x) for x in g[2:6]]
                for e in g[6:]:
                    p, c = e.rsplit(":", 1)
                    if c not in ("P", "S"):
                        continue
                    cc, l = th, lev
                    for ch in p:
                        cc = child(cc, l, int(ch, 16)); l += 1
                    d, s = min((max(circ(cc[i] - s[5 + i] * math.pi / 3) for i in range(4)), tuple(s[1:9]))
                               for s in SEEDS)
                    cls, sd = s[:4], s[4:]
                    o.write(f"{l} {' '.join(repr(x) for x in cc)} {c} {','.join(map(str, sd))} "
                            f"{','.join(map(str, cls))} {d:.6f}\n")
                    r = str(radius(l))
                    b.write(json.dumps(dict(centers=[str(F(x)) for x in cc], radii=[r] * 4),
                                       separators=(",", ":")) + "\n")
                    n += 1; cnt[(c, ",".join(map(str, cls)))] += 1
    print(json.dumps(dict(boxes=n, by_code_class={" ".join(k): v for k, v in sorted(cnt.items())})))


def v2(out):
    sys.path.insert(0, os.path.join(SH, "ProvenResults", "ActiveShoulderClosure_v2"))
    from predicate import certify_box
    n = ok = 0; reasons = collections.Counter()
    with gzip.open(os.path.join(out, "v2.jsonl.gz.part"), "wt") as f:
        for i, r in enumerate(rows(out)):
            q = certify_box([F(float(x)) for x in r[1:5]], [radius(int(r[0]))] * 4)
            f.write(json.dumps(dict(id=i, **q), sort_keys=True) + "\n")
            n += 1; ok += q["ok"] is True; reasons[q["reason"]] += 1
    os.replace(os.path.join(out, "v2.jsonl.gz.part"), os.path.join(out, "v2.jsonl.gz"))
    print(json.dumps(dict(rows=n, closed=ok, reasons=dict(reasons))))


def _orders(seed):
    import itertools
    for r1, r2 in itertools.permutations(range(1, 6), 2):
        for c1, c2 in itertools.permutations(range(1, 6), 2):
            if [(r1 * c1) % 6, (r1 * c2) % 6, (r2 * c1) % 6, (r2 * c2) % 6] == list(seed):
                return ((0, r1, r2) + tuple(x for x in range(1, 6) if x not in (r1, r2)),
                        (0, c1, c2) + tuple(x for x in range(1, 6) if x not in (c1, c2)))


def _side(item):
    import time
    sys.path.insert(0, os.path.join(SH, "ProvenResults", "FourierNeighbourhood", "SeedLifting"))
    from flint import arb
    from residual_lift import certify_f6
    i, r = item
    o = _orders(tuple(int(x) for x in r[6].split(",")))
    lev = int(r[0]); t = time.process_time()
    if o is None:
        return dict(index=i, theta=[float(x) for x in r[1:5]], level=lev, seed=r[6], ok=False, reason="no_F6_order")
    h = arb.pi() / 2 ** lev + arb(2) ** -40
    try:
        res = certify_f6([arb(float(r[k])) for k in range(1, 5)], [h] * 4, rows=o[0], cols=o[1], maxlabels=20000,
                         budget=2000000, pair_budget=20000000, triple_budget=20000000)
        ok, why = res["ok"], res.get("reason")
    except Exception as e:
        ok, why = False, "exception:" + type(e).__name__
    return dict(index=i, theta=[float(x) for x in r[1:5]], level=lev, seed=r[6], rows=o[0], cols=o[1], ok=ok,
                reason=why, cpu=round(time.process_time() - t, 2))


def sidecover(out, nproc):
    from multiprocessing import get_context
    R = rows(out); done = closed_ids(out)
    todo = [(i, r) for i, r in enumerate(R) if i not in done and r[7] == "4,5,0,3"]
    c = collections.Counter()
    with get_context("spawn").Pool(nproc) as pool, open(os.path.join(out, "sidecover.jsonl.part"), "w") as f:
        for q in pool.imap_unordered(_side, todo, chunksize=4):
            f.write(json.dumps(q) + "\n"); c[(q["ok"], q["reason"])] += 1
    os.replace(os.path.join(out, "sidecover.jsonl.part"), os.path.join(out, "sidecover.jsonl"))
    print(json.dumps(dict(attempted=len(todo), outcomes={f"{k[0]} {k[1]}": v for k, v in c.items()})))


def frontier_prep(out):
    fd = os.path.join(out, "frontier"); os.makedirs(fd, exist_ok=True)
    R = rows(out); done = closed_ids(out); n = 0
    test = int(os.environ.get("FRONTIER_TEST_SAMPLE", "0"))   # rehearsal only: also feed N closed rows
    boxes = gzip.open(os.path.join(out, "inventory_boxes.jsonl.gz"), "rt")
    with gzip.open(os.path.join(fd, "boxes.jsonl.gz"), "wt") as f, open(os.path.join(fd, "index.txt"), "w") as x:
        for i, (r, b) in enumerate(zip(R, boxes)):
            take = i not in done and r[7] not in ("2,4,4,2", "4,5,0,3")
            if not take and test and i in done and r[7] == "1,2,2,4" and i % 97 == 0 and n < test:
                take = True
            if take:
                f.write(b); x.write(f"{i}\n"); n += 1
    print(json.dumps(dict(frontier_boxes=n)))


def F_prep(out, per):
    fd = os.path.join(out, "F"); os.makedirs(os.path.join(fd, "results"), exist_ok=True)
    os.makedirs(os.path.join(fd, "logs"), exist_ok=True)
    R = rows(out); done = closed_ids(out, frontier=os.path.exists(os.path.join(out, "frontier", "index.txt")))
    inc = os.environ.get("INCLUDE_2442", "1") == "1"
    REC = 121; n = 0; caps = "CERT_COVER0=30 CERT_MAXDEPTH=3 CERT_CELLMAX=1800 CERT_CERTMAX=600"
    rel = os.path.relpath(fd, HERE)
    # Other classes first, then (2,4,4,2): disBatch runs tasks in file order and stage F is cut off at its walltime,
    # so the (2,4,4,2) rows only use what is left of the budget.
    order = [i for i, r in enumerate(R) if r[7] != "2,4,4,2"] + ([i for i, r in enumerate(R) if r[7] == "2,4,4,2"] if inc else [])
    with open(os.path.join(fd, "cells_F.txt"), "w") as cf, open(os.path.join(fd, "map_F.tsv"), "w") as mf:
        for i in order:
            r = R[i]
            if i in done:
                continue
            n += 1; c = [float(x) for x in r[1:5]]
            rec = f"{n:9d} {0:7d} {int(r[0]):2d} " + " ".join(f"{x:+.17e}" for x in c)
            assert len(rec) <= REC - 1 and [float(x) for x in rec.split()[3:]] == c
            cf.write(rec.ljust(REC - 1) + "\n"); mf.write(f"{n}\t{i}\n")
    with open(os.path.join(fd, "tasks_F.txt"), "w") as t:
        for a in range(1, n + 1, per):
            b = min(a + per - 1, n)
            t.write(f"{caps} ./run_task.sh batch {rel}/cells_F.txt {a} {b} {rel}/results/c_{a:09d}.jsonl "
                    f"&> {rel}/logs/c_{a:09d}.log\n")
    print(json.dumps(dict(F_cells=n, tasks=(n + per - 1) // per)))


if __name__ == "__main__":
    cmd, a = sys.argv[1], sys.argv[2:]
    {"inventory": lambda: inventory(a[0], a[1]), "v2": lambda: v2(a[0]),
     "sidecover": lambda: sidecover(a[0], int(a[1])), "frontier-prep": lambda: frontier_prep(a[0]),
     "F-prep": lambda: F_prep(a[0], int(a[1]))}[cmd]()
