"""Third pass, leaf by leaf: every FAILED leaf of the final record of a cell (results/SRC, default certify_pass2,
over results/certify) becomes its own cell, rerun with larger caps into results/DST (same frozen code; only
resource limits change).  The leaf keeps its exact centre and radius: cells_pass3.txt records are
"ID PARENT LEVEL θ" (121 bytes, JOB field = parent cell id, LEVEL = parent level + leaf depth, θ printed with
%+.17e so it parses back bit for bit), so the pass-3 tree of record k replaces exactly that FAILED leaf.
   python3 make_pass3.py [SRC=certify_pass2] [DST=certify_pass3] [TAG=pass3] -> cells_TAG.txt, tasks_certifyTAG.txt
Only finished files of SRC are read (.part files are skipped), so it can be run again later with a new TAG for
cells that finish afterwards; a TAG run skips parents already listed in an earlier cells_pass3*.txt."""
import glob, json, os, sys
HERE = os.path.dirname(os.path.abspath(__file__))
SRC = sys.argv[1] if len(sys.argv) > 1 else "certify_pass2"
DST = sys.argv[2] if len(sys.argv) > 2 else "certify_pass3"
TAG = sys.argv[3] if len(sys.argv) > 3 else "pass3"            # cells_TAG.txt, tasks_certifyTAG.txt
REC = 121
def level_of(cid):
    with open(os.path.join(HERE, "cells.txt"), "rb") as f:
        f.seek((cid - 1) * REC); g = f.read(REC).split()
    assert int(g[0]) == cid
    return int(g[2])
leaves = []
done_parents = set()
for fn in glob.glob(os.path.join(HERE, "cells_pass3*.txt")):
    if os.path.basename(fn) != f"cells_{TAG}.txt":
        done_parents |= {int(l.split()[1]) for l in open(fn)}
for fn in sorted(glob.glob(os.path.join(HERE, "results", SRC, "c_*.jsonl"))):
    block = []
    for line in open(fn):
        r = json.loads(line)
        if r.get("header"):
            continue
        if r.get("done"):
            if r["failed"] and r["cell"] not in done_parents:
                lev = level_of(r["cell"])
                fl = [x for x in block if x["status"].startswith("FAILED")]
                assert len(fl) == r["failed"]
                leaves += [(r["cell"], lev + x["depth"], x["theta"], x["rho"]) for x in fl]
            block = []
        else:
            block.append(r)
caps = "CERT_CELLMAX=43200 CERT_CERTMAX=7200 CERT_MAXDEPTH=4 CERT_COVERBUDGET=200000000"
os.makedirs(os.path.join(HERE, "results", DST), exist_ok=True); os.makedirs(os.path.join(HERE, "logs", DST), exist_ok=True)
import math
with open(os.path.join(HERE, f"cells_{TAG}.txt"), "w") as f, open(os.path.join(HERE, f"tasks_certify{TAG}.txt"), "w") as t:
    for k, (cell, lev, th, rho) in enumerate(leaves, 1):
        assert rho == math.pi / 2 ** lev
        line = f"{k:9d} {cell:7d} {lev:2d} " + " ".join(f"{x:+.17e}" for x in th)
        assert len(line) <= REC - 1 and [float(x) for x in line.split()[3:]] == th
        f.write(line.ljust(REC - 1) + "\n")
        t.write(f"{caps} ./run_task.sh batch cells_{TAG}.txt {k} {k} results/{DST}/{TAG}_{k:09d}.jsonl &> logs/{DST}/{TAG}_{k:09d}.log\n")
print(f"{len(leaves)} FAILED leaves of {len({c for c, *_ in leaves})} cells -> cells_{TAG}.txt, tasks_certify{TAG}.txt ({caps})")
