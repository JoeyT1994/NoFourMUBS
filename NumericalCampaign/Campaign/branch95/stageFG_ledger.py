#!/usr/bin/env python3
"""Ledger of stages F and G: what each stage-E open box became, and the exact list still open.

  python3 stageFG_ledger.py [--open-out open_after_FG.txt]

For every record of cells_F.txt: the stage-F tree (results/stageF) must exist and be complete; the cell is CLOSED_F
when failed = 0, CLOSED_FG when every FAILED leaf has an E line in results/stageG (matched by cell id, level and
exact centre), and otherwise OPEN.  The open leaves (exact level and centre) are written for the shoulder module or a
later pass.  Tree completeness and geometry are checked by cluster/audit_exact.py certify with --cells cells_F.txt;
this script does the bookkeeping across the two stages.
"""
import glob, json, math, os, sys, collections
HERE = os.path.dirname(os.path.abspath(__file__)); os.chdir(HERE)
REC = 121
N = os.path.getsize("cells_F.txt") // REC
fin = {}
for fn in glob.glob("results/stageF/c_*.jsonl"):
    block = []
    for line in open(fn):
        r = json.loads(line)
        if r.get("header"):
            continue
        if r.get("done"):
            fl = [(round(math.log2(math.pi / x["rho"])), tuple(x["theta"])) for x in block if x["status"].startswith("FAILED")]
            fin[r["cell"]] = fl; block = []
        else:
            block.append(r)
g = {}
for fn in glob.glob("results/stageG/g_*.txt"):
    for line in open(fn):
        if line.startswith("#"):
            continue
        f = line.split()
        g[(int(f[0]), int(f[1]), tuple(float.fromhex(x) for x in f[2:6]))] = f[6]
st = collections.Counter(); open_leaves = []
for cid in range(1, N + 1):
    if cid not in fin:
        st["UNFINISHED_F"] += 1; continue
    fl = fin[cid]
    if not fl:
        st["CLOSED_F"] += 1; continue
    rest = [x for x in fl if g.get((cid, x[0], x[1])) != "E"]
    if not rest:
        st["CLOSED_FG"] += 1
    else:
        st["OPEN"] += 1; open_leaves += [(cid, lev, th) for lev, th in rest]
print(json.dumps(dict(cells=N, **st, open_leaves=len(open_leaves))))
if "--open-out" in sys.argv:
    with open(sys.argv[sys.argv.index("--open-out") + 1], "w") as f:
        for cid, lev, th in open_leaves:
            f.write(f"{cid} {lev} " + " ".join(float.hex(x) for x in th) + "\n")
