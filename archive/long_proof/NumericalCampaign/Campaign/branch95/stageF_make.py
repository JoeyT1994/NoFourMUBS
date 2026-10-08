#!/usr/bin/env python3
"""Stage F setup: every box left open (P or S) by stage E becomes a cell for the production accelerated cover.

  python3 stageF_make.py [STAGE_E_DIR=results/stageE] [PER_TASK=16]
      -> cells_F.txt (121-byte records "ID J LEVEL θ", J = survivor index, LEVEL = leaf level + path length),
         map_F.tsv ("ID<TAB>stageE file<TAB>line number<TAB>path"), tasks_branchF.txt

The centre of each box is built with the driver's binary64 child rule (first coordinate fastest), as in stageD.jl and
stageE_psd.py, so the cell record is bit-identical to the box the earlier stages classified; its half-width is
pi/2^LEVEL, enlarged by the driver by 2^-40.  Stage F certifies with the same frozen code and acceptance rule as the
work cells (cover only, CERT_FASTMAX = CERT_CHILD_FASTMAX = 0); only resource limits differ.  Its FAILED leaves go to
stage G (stageG_psd.py).  The statement certified by a stage-F tree is the work cells' statement: no point of the
box gives a quartet edge H_+ (positive sheet; the campaign reduction, A3/MC5).
"""
import glob, math, os, sys
HERE = os.path.dirname(os.path.abspath(__file__))
os.chdir(HERE)
SRC = sys.argv[1] if len(sys.argv) > 1 else "results/stageE"
PER = int(sys.argv[2]) if len(sys.argv) > 2 else 16
REC = 121
CAPS = "CERT_COVER0=30 CERT_MAXDEPTH=3 CERT_CELLMAX=1800 CERT_CERTMAX=600"


def child(c, lev, k):
    h = math.pi / 2 ** lev
    return [c[i] + (h / 2 if (k >> i) & 1 else -h / 2) for i in range(4)]


n = 0
with open("cells_F.txt", "w") as cf, open("map_F.tsv", "w") as mf:
    for fn in sorted(glob.glob(os.path.join(SRC, "e_*.txt"))):
        for ln, line in enumerate(open(fn), 1):
            if line.startswith("#") or not line.strip():
                continue
            g = line.split(" |")[0].split()
            j, lev, th = int(g[0]), int(g[1]), [float(x) for x in g[2:6]]
            for e in g[6:]:
                p, code = e.rsplit(":", 1)
                if code not in ("P", "S"):
                    continue
                c, l = th, lev
                for ch in p:
                    c = child(c, l, int(ch, 16)); l += 1
                n += 1
                rec = f"{n:9d} {j:7d} {l:2d} " + " ".join(f"{x:+.17e}" for x in c)
                assert len(rec) <= REC - 1 and [float(x) for x in rec.split()[3:]] == c
                cf.write(rec.ljust(REC - 1) + "\n")
                mf.write(f"{n}\t{fn}\t{ln}\t{p}\n")
os.makedirs("results/stageF", exist_ok=True); os.makedirs("logs/stageF", exist_ok=True)
with open("tasks_branchF.txt", "w") as t:
    for a in range(1, n + 1, PER):
        b = min(a + PER - 1, n)
        t.write(f"{CAPS} ./run_task.sh batch cells_F.txt {a} {b} results/stageF/c_{a:09d}.jsonl &> logs/stageF/c_{a:09d}.log\n")
print(f"{n} open boxes -> cells_F.txt, map_F.tsv, tasks_branchF.txt ({(n + PER - 1) // PER} tasks of {PER}; {CAPS})")
