#!/usr/bin/env python3
"""Coverage audit of the branch95 pass: every branch-layer survivor's enlarged level-9 cell is tiled by leaves that are
pruned (stage A, production tests), excluded by SideTriplePrune (stage B), certified quartet-free (stage C), shown
R < 0 by r_test (stage D), or explicitly open (stage D posR / residual lists).  Bookkeeping, not a proof step: it
checks that the recorded decisions tile the survivors, exactly as audit.py does for the main expansion.

  python3 branch95_audit.py [--expand DIR] [--triple DIR] [--cells FILE] [--certify DIR ...] [--stageD FILE]
                            [--open-out FILE]

Defaults: results/expand, results/triple, cells_branch.txt, results/certify, no stage D.
  * Stage A: per survivor (job index j of survivors_jobs.txt) exactly one #prune line; the per-level counts satisfy
    E(9)=1, R(l)=E(l)-P(l)-W(l)-L(l) >= 0, E(l+1)=16 R(l), closing by level 15; every work/layer cell lies on its
    level's grid inside the root (offsets odd multiples of rho_l).  Then pruned + work + layer cells tile the root.
  * Stage B: every level-11 #layer cell of stage A has exactly one stage-B line (matched by job and exact centre
    text); its path entries are hex strings, prefix-free, and their 16^-len sum to exactly 1 (a complete subtree).
  * Stage C: cells file records (JOB, LEVEL, centre) equal the stage-A work cells as a multiset; every record id has
    a final done line with failed = 0 (later --certify dirs supersede earlier ones cell by cell); bisection trees are
    complete (each split leaf has 16 children); one code hash.
  * Stage D (optional, --stageD DIR of d_*.txt from stageD.jl): per leaf, the stage-B line with every O replaced by
    R (r_test proves R<0 on the enlarged box: excluded), P (inf R > 1: side-chart target) or S (residual); T entries
    and the path set must be unchanged.
  * Stage E (optional, --stageE DIR of e_*.txt from stageE_psd.py): the stage-D lines with open codes replaced by E
    where SignedCornerPSDPrune excludes the box (or its whole leaf) from strict D0; read instead of stage D.
  * Stage A also checks exact ideal addresses (as cluster/audit_exact.py): every emitted cell is an exact descendant
    of its root, emitted cells are distinct and no emitted cell lies inside another.
"""
import argparse, collections, glob, json, math, os, sys
from fractions import Fraction

HERE = os.path.dirname(os.path.abspath(__file__))
ROOTLEVEL = 9


def on_grid(theta, level, root):
    rho = math.pi / 2 ** level; rho0 = math.pi / 2 ** ROOTLEVEL
    for x, c in zip(theta, root):
        k = (x - c) / rho; ki = round(k)
        if abs(k - ki) > 1e-6 or ki % 2 == 0 or abs(ki) >= 2 ** (level - ROOTLEVEL) or abs(x - c) > rho0:
            return False
    return True


def _atan_inv(n, one):
    s = t = one // n; n2 = n * n; k = 1
    while t:
        t //= n2; k += 2
        s += (-t // k) if (k // 2) % 2 else t // k
    return s


_K = 200
_PI = (16 * _atan_inv(5, 1 << (_K + 32)) - 4 * _atan_inv(239, 1 << (_K + 32))) >> 32


def address(x, level):
    """Exact ideal address a (centre -pi + (2a+1) pi/2^level) of a binary64 coordinate within 2^-44, else None
    (as cluster/audit_exact.py)."""
    a = int(round(((x + math.pi) * 2 ** level / math.pi - 1) / 2))
    if not 0 <= a < 2 ** level:
        return None
    n, d = x.as_integer_ratio()
    diff = ((2 * a + 1) * _PI - (_PI << level)) * d - (n << (_K + level))
    return a if abs(diff) <= d << (_K + level - 44) else None


def exact_desc(th, lev, root_addr):
    a = tuple(address(x, lev) for x in th)
    if None in a or root_addr is None or any(x >> (lev - ROOTLEVEL) != y for x, y in zip(a, root_addr)):
        return None
    return a


def child_centre(c, lev, k):
    """Centre of child k (driver order: first coordinate fastest) with the same float arithmetic as triple_leaves.py."""
    h = math.pi / 2 ** lev
    return [ci + (1 if (k >> i) & 1 else -1) * h / 2 for i, ci in enumerate(c)]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--expand", default="results/expand"); ap.add_argument("--triple", default="results/triple")
    ap.add_argument("--cells", default="cells_branch.txt"); ap.add_argument("--certify", nargs="+", default=["results/certify"])
    ap.add_argument("--stageD", help="directory of stage-D d_*.txt files")
    ap.add_argument("--stageE", help="directory of stage-E e_*.txt files (stage-D lines with PSD exclusions E); replaces --stageD"); ap.add_argument("--open-out")
    a = ap.parse_args()
    os.chdir(HERE)
    roots = [tuple(float(x) for x in l.split()) for l in open("survivors_jobs.txt")]; N = len(roots)
    root_addr = [tuple(address(x, ROOTLEVEL) for x in r) for r in roots]
    root_addr = [None if None in r else r for r in root_addr]
    keys = collections.defaultdict(set)
    problems = collections.Counter(); examples = collections.defaultdict(list)
    def bad(kind, ex):
        problems[kind] += 1
        if len(examples[kind]) < 3: examples[kind].append(ex)

    # ---------------- stage A
    seen = collections.Counter(); pc = {}; kvs = {}; em = collections.defaultdict(collections.Counter)
    work = collections.Counter(); layer = {}
    for fn in sorted(glob.glob(os.path.join(a.expand, "e_*.txt"))):
        for line in open(fn):
            f = line.split()
            if not f:
                continue
            if line.startswith("#prune"):
                j = int(f[1]); seen[j] += 1; c = collections.Counter(); kv = {}
                for x in f[2:]:
                    k, v = x.rsplit(":", 1)
                    if k in ("work", "layer"): kv[k] = int(v)
                    else: c[int(k.split(":")[0])] += int(v)
                pc[j] = c; kvs[j] = kv
            elif line.startswith("#layer"):
                j, lev = int(f[1]), int(f[2]); th = tuple(map(float, f[3:7]))
                em[j][("L", lev)] += 1
                if not on_grid(th, lev, roots[j - 1]): bad("A: off-grid layer cell", (j, lev))
                ea = exact_desc(th, lev, root_addr[j - 1])
                if ea is None: bad("A: layer cell not an exact descendant of its root", (j, lev))
                elif (lev, ea) in keys[j]: bad("A: duplicate emitted cell", (j, lev))
                else: keys[j].add((lev, ea))
                key = (j, lev, tuple(f[3:7]))
                if key in layer: bad("A: duplicate layer cell", key)
                layer[key] = th
            else:
                j, lev = int(f[0]), int(f[1]); th = tuple(map(float, f[2:6]))
                em[j][("W", lev)] += 1
                if not on_grid(th, lev, roots[j - 1]): bad("A: off-grid work cell", (j, lev))
                ea = exact_desc(th, lev, root_addr[j - 1])
                if ea is None: bad("A: work cell not an exact descendant of its root", (j, lev))
                elif (lev, ea) in keys[j]: bad("A: duplicate emitted cell", (j, lev))
                else: keys[j].add((lev, ea))
                work[(j, lev, th)] += 1
    for j, ks in keys.items():
        for lev, ea in ks:
            if any((up, tuple(x >> (lev - up) for x in ea)) in ks for up in range(ROOTLEVEL, lev)):
                bad("A: emitted cell inside another emitted cell", (j, lev)); break
    for j in range(1, N + 1):
        if seen[j] != 1:
            bad("A: survivor without exactly one #prune", (j, seen[j])); continue
        c, kv, e = pc[j], kvs[j], em[j]
        if kv.get("work", 0) != sum(v for (t, _), v in e.items() if t == "W") or kv.get("layer", 0) != sum(v for (t, _), v in e.items() if t == "L"):
            bad("A: work/layer totals differ", j); continue
        E = 1
        for lev in range(ROOTLEVEL, 16):
            R = E - c.get(lev, 0) - e.get(("W", lev), 0) - e.get(("L", lev), 0)
            if R < 0: bad("A: more decisions than cells", (j, lev)); break
            if R == 0:
                if any(c.get(l, 0) or e.get(("W", l), 0) or e.get(("L", l), 0) for l in range(lev + 1, 16)):
                    bad("A: records after tree closed", (j, lev))
                break
            E = 16 * R
        else:
            bad("A: tree not closed by level 15", j)
    vol = collections.Counter()                       # in units of one survivor cell (exact fractions)
    for (j, lev, th), n in work.items(): vol["A_work"] += Fraction(n, 16 ** (lev - ROOTLEVEL))
    for (j, lev, _) in layer: vol["A_layer"] += Fraction(1, 16 ** (lev - ROOTLEVEL))
    vol["A_pruned"] = N - vol["A_work"] - vol["A_layer"]

    # ---------------- stage B
    trip = {}; open_boxes = []
    for fn in sorted(glob.glob(os.path.join(a.triple, "t_*.txt"))):
        for line in open(fn):
            if line.startswith("#") or not line.strip():
                continue
            f = line.split(); j, lev = int(f[0]), int(f[1]); key = (j, lev, tuple(f[2:6]))
            if key in trip: bad("B: duplicate leaf line", key); continue
            trip[key] = f[6:]
    for key, th in layer.items():
        if key not in trip:
            bad("B: layer leaf without stage-B line", key[:2]); vol["B_missing"] += Fraction(1, 16 ** (key[1] - ROOTLEVEL)); continue
        ents = trip[key]; paths = []
        for e in ents:
            p, code = e.rsplit(":", 1)
            if code not in ("T", "O") or any(ch not in "0123456789abcdef" for ch in p): bad("B: malformed entry", (key[:2], e)); continue
            paths.append((p, code))
        ps = [p for p, _ in paths]
        if len(set(ps)) != len(ps) or any(q != p and q.startswith(p) for p in ps for q in ps):
            bad("B: paths not prefix-free", key[:2])
        if sum(Fraction(1, 16 ** len(p)) for p in ps) != 1:
            bad("B: paths do not tile the leaf", key[:2])
        w0 = Fraction(1, 16 ** (key[1] - ROOTLEVEL))
        for p, code in paths:
            w = w0 * Fraction(1, 16 ** len(p))
            if code == "T": vol["B_excluded"] += w
            else:
                c = list(th)
                for d, ch in enumerate(p): c = child_centre(c, key[1] + d, int(ch, 16))
                open_boxes.append((key[0], key[1] + len(p), c, w))
    extra = [k for k in trip if k not in layer]
    if extra: bad("B: stage-B line for a cell that is not a layer leaf", len(extra))

    # ---------------- stage C
    recs = {}; RECLEN = 121
    if os.path.exists(a.cells):
        cw = collections.Counter()
        with open(a.cells, "rb") as fc:
            while True:
                r = fc.read(RECLEN)
                if not r: break
                g = r.split(); cid = int(g[0]); key = (int(g[1]), int(g[2]), tuple(float(x) for x in g[3:7]))
                recs[cid] = key; cw[key] += 1
        if cw != work: bad("C: cells file differs from stage-A work cells", (sum(cw.values()), sum(work.values())))
    final = {}; codes = set()
    for d in a.certify:
        here = {}
        for fn in glob.glob(os.path.join(d, "c_*.jsonl")):
            rs = collections.defaultdict(list)
            for line in open(fn):
                try: r = json.loads(line)
                except ValueError: continue
                if r.get("header"): codes.add(r["code"]); continue
                if r.get("done"): here[r["cell"]] = r["failed"]
                else: rs[r["cell"]].append(r)
            for cid, lst in rs.items():
                for i, r in enumerate(lst):
                    if r["status"].startswith("split:"):
                        nk = 0
                        for x in lst[i + 1:]:
                            if x["depth"] <= r["depth"]: break
                            nk += x["depth"] == r["depth"] + 1
                        if nk != 16: bad("C: incomplete bisection", (d, cid))
        final.update(here)
    for cid, (j, lev, th) in recs.items():
        w = Fraction(1, 16 ** (lev - ROOTLEVEL))
        if cid not in final: vol["C_unfinished"] += w
        elif final[cid]: vol["C_failed"] += w
        else: vol["C_certified"] += w
    if len(codes) > 1: bad("C: more than one code hash", sorted(codes))

    # ---------------- stage D (per leaf: the stage-B line with every O replaced by R, P or S)
    if a.stageE:
        a.stageD = a.stageE
    if a.stageD:
        dl = {}
        for fn in sorted(glob.glob(os.path.join(a.stageD, "e_*.txt" if a.stageE else "d_*.txt"))):
            for line in open(fn):
                if line.startswith("#") or not line.strip(): continue
                body = line.split(" |nearest=")[0]; f = body.split()
                key = (int(f[0]), int(f[1]), tuple(f[2:6]))
                if key in dl: bad("D: duplicate leaf line", key[:2])
                dl[key] = dict(e.rsplit(":", 1) for e in f[6:])
        for key, ents in trip.items():
            if key not in layer: continue
            if not any(e.endswith(":O") for e in ents): continue
            dd = dl.get(key)
            if dd is None:
                bad("D: leaf with open boxes but no stage-D line", key[:2])
                for e in ents:
                    p, code = e.rsplit(":", 1)
                    if code == "O": vol["D_missing"] += Fraction(1, 16 ** (key[1] - ROOTLEVEL + len(p)))
                continue
            for e in ents:
                p, code = e.rsplit(":", 1); w = Fraction(1, 16 ** (key[1] - ROOTLEVEL + len(p))); v = dd.get(p)
                if code == "T":
                    if v != "T": bad("D: stage-D line changes a T entry", key[:2])
                elif v == "R": vol["D_Rneg_excluded"] += w
                elif v == "P": vol["open_posR"] += w
                elif v == "S": vol["open_resid"] += w
                elif v == "E" and a.stageE: vol["E_psd_excluded"] += w
                else: bad("D: open box without R/P/S verdict", (key[:2], p))
            if set(dd) != {e.rsplit(":", 1)[0] for e in ents}: bad("D: stage-D paths differ from stage B", key[:2])
    else:
        for (_, _, _, w) in open_boxes: vol["open_unclassified"] += w

    if a.open_out:
        with open(a.open_out, "w") as o:
            for (j, lev, c, w) in open_boxes: o.write(f"{j} {lev} {' '.join(repr(x) for x in c)}\n")
    closed = vol["A_pruned"] + vol["B_excluded"] + vol["C_certified"] + vol["D_Rneg_excluded"] + vol["E_psd_excluded"]
    print(f"branch95 audit: {N} survivors; {len(layer)} level-11 singular leaves; {sum(work.values())} work cells; "
          f"{len(open_boxes)} open stage-B boxes; code hashes {sorted(codes)}")
    for k in sorted(vol): print(f"  {k:22s} {float(vol[k]) / N:.6f}")
    print(f"  {'CLOSED':22s} {float(closed) / N:.6f}")
    for k, v in sorted(problems.items()): print(f"  PROBLEM {k}: {v}  e.g. {examples[k]}")
    ok = not problems
    print("PASS (bookkeeping consistent)" if ok else "FAIL")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
