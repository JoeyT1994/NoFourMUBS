#!/usr/bin/env python3
"""Freeze the unresolved frontier of the run of record with exact geometry (run from the run directory).

  python3 freeze_frontier.py OUTDIR BRANCH_DIR

Writes:
  OUTDIR/workcells_open.jsonl      every work-cell obligation without a complete accepting tree yet
  OUTDIR/branch_survivors.tsv.gz   the 623,187 branch-layer obligations (input of the branch95 pass)
  OUTDIR/geometry.json             coordinate conventions and the exact containment lemma, checked here

Coordinates: theta = (theta11, theta12, theta21, theta22), radians, in [-pi, pi]^4 with periodic
identification.  A level-l ideal cell with integer address a (0 <= a_i < 2^l) is the closed box
    prod_i [pi*(2 a_i/2^l - 1), pi*((2 a_i + 2)/2^l - 1)],
an exact "q*pi" box.  The tested enclosure is the closed box with centre c (the stored binary64 value, an exact
dyadic rational) and half-width r = fl(pi/2^l) + 2^-40 in every coordinate (the driver's enl(rho); the
certificate arithmetic is outward from these endpoints).  For every record we check exactly that
|c_i - ideal centre_i| <= 2^-44 (audit_exact.address).  geometry.json proves r >= pi/2^l + 2^-44 for all l used,
with pi bounded above by an integer Machin enclosure, so every tested enclosure contains its ideal cell.
"""
import gzip, json, math, os, sys, glob
from fractions import Fraction as Fr
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from audit_exact import address, read_records, nrecords, _pi_fixed

OUT, BRANCH = sys.argv[1], sys.argv[2]
os.makedirs(OUT, exist_ok=True)
K = 200; PI = _pi_fixed(K); PI_UP = Fr(PI + 1, 2 ** K); PI_LO = Fr(PI, 2 ** K)


def dy(x):
    n, d = float(x).as_integer_ratio()
    return f"{n}/{d}"


def cell(job, lev, th):
    a = [address(x, lev) for x in th]
    assert None not in a, (job, lev, th)
    return dict(level=lev, address=a, centre_dyadic=[dy(x) for x in th], centre_hex=[float.hex(x) for x in th],
                ideal_cell_pi=[[str(Fr(2 * ai, 2 ** lev) - 1), str(Fr(2 * ai + 2, 2 ** lev) - 1)] for ai in a],
                tested_halfwidth_dyadic=dy(math.pi / 2 ** lev + 2.0 ** -40))


# geometry lemma: r_f >= pi/2^l + 2^-44 for the levels in use
lem = {}
for lev in range(6, 21):
    r = Fr(math.pi / 2 ** lev + 2.0 ** -40)
    lem[lev] = dict(r=dy(math.pi / 2 ** lev + 2.0 ** -40), margin_ok=r >= PI_UP / 2 ** lev + Fr(1, 2 ** 44))
assert all(v["margin_ok"] for v in lem.values())
json.dump(dict(coordinates="theta = (theta11, theta12, theta21, theta22) radians, periodic [-pi,pi]^4",
               ideal_cell="level l, address a: prod [pi(2a/2^l - 1), pi((2a+2)/2^l - 1)]",
               tested_box="centre c (exact dyadic), half-width r = fl(pi/2^l) + 2^-40 (exact dyadic), outward arithmetic",
               centre_tolerance="|c - ideal centre| <= 2^-44, checked exactly per record",
               pi_bounds=[str(PI_LO), str(PI_UP)], containment_lemma=lem,
               halfwidths=dict(production_level9="pi/512 + 2^-40", pilot_level13="pi/8192 + 2^-40",
                               note="seed half-widths in radians; matrix/projector tube radii are different quantities")),
          open(os.path.join(OUT, "geometry.json"), "w"), indent=1, default=str)

# ---- work cells
N = nrecords("cells.txt")
def final_blocks(sub, pattern="c_*.jsonl"):
    res = {}
    for fn in glob.glob(os.path.join("results", sub, pattern)):
        recs = []
        for line in open(fn):
            r = json.loads(line)
            if r.get("header"):
                continue
            if r.get("done"):
                res[r["cell"]] = (r["failed"], [x for x in recs if x["status"].startswith("FAILED")]); recs = []
            else:
                recs.append(r)
    return res
p1 = final_blocks("certify"); p2 = final_blocks("certify_pass2")
leafdone = {}
for tag in ("pass3a", "pass3b"):
    cf = f"cells_{tag}.txt"
    if not os.path.exists(cf):
        continue
    recs = read_records(cf); fin = final_blocks("certify_pass3", f"{tag}_*.jsonl")
    for k, (parent, lev, th) in enumerate(recs, 1):
        leafdone[(lev, th)] = (tag, k, fin.get(k, (None, []))[0])
open_cells = []
for cid, (nf, _) in p1.items():
    if nf == 0:
        continue
    job, lev, th = read_records("cells.txt", cid, cid)[0]
    hist = ["pass1: %d FAILED leaves (time cap)" % nf]
    if cid not in p2:
        part = os.path.exists(f"results/certify_pass2/c_{cid:09d}.jsonl.part")
        open_cells.append(dict(id=f"work:{cid}", kind="work_cell", job=job, status="running: pass 2 rerun (previous attempt killed by node OOM)" if part else "missing pass 2",
                               attempted=hist + ["pass2 (CELLMAX 14400, MAXDEPTH 3, COVERBUDGET 1e8): killed, resubmitted"], **cell(job, lev, th)))
        continue
    nf2, fl2 = p2[cid]
    if nf2 == 0:
        continue
    for x in fl2:
        llev = lev + x["depth"]; key = (llev, tuple(x["theta"]))
        st = leafdone.get(key)
        if st and st[2] == 0:
            continue
        open_cells.append(dict(id=f"work:{cid}/leaf@{llev}", kind="work_leaf", parent=f"work:{cid}", job=job,
                               status=("running: " + st[0]) if st and st[2] is None else ("FAILED again in " + st[0]) if st else "no pass-3 task",
                               attempted=hist + ["pass2: this depth-%d leaf hit the 4 h cell cap (FAILED:time_limit)" % x["depth"]] +
                               ([f"{st[0]} record {st[1]} (CELLMAX 43200, MAXDEPTH 4, COVERBUDGET 2e8)"] if st else []),
                               **cell(job, llev, tuple(x["theta"]))))
with open(os.path.join(OUT, "workcells_open.jsonl"), "w") as f:
    for r in open_cells:
        f.write(json.dumps(r) + "\n")

# ---- branch survivors
with gzip.open(os.path.join(OUT, "branch_survivors.tsv.gz"), "wt") as f:
    f.write("# branch_index\tlayer_id\tjob\tlevel\ta1\ta2\ta3\ta4\tc1_hex\tc2_hex\tc3_hex\tc4_hex\tstatus\n")
    for line in open(os.path.join(BRANCH, "survivors.txt")):
        g = line.split(); bi, lid, job, lev = map(int, g[:4]); th = tuple(float(x) for x in g[4:8])
        a = [address(x, lev) for x in th]; assert None not in a
        f.write("\t".join(map(str, [bi, lid, job, lev, *a, *[float.hex(x) for x in th]])) +
                "\tin branch95: first-pass SideTriplePrune unresolved; stage A done, B/C running\n")
print(json.dumps(dict(workcells_open=len(open_cells), by_status={s: sum(r["status"] == s for r in open_cells) for s in {r["status"] for r in open_cells}})))
