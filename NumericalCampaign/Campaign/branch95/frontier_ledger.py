#!/usr/bin/env python3
"""Frontier ledger: every box left open by stage E must be closed by exactly one recorded certificate source.

  python3 frontier_ledger.py --inventory BOXES.txt.gz
        [--v2 pilot_boxes.jsonl.gz] [--sidecover sidecover.jsonl] [--frontier DIR]
        [--stageF DIR --cellsF cells_F.txt --stageG DIR] [--receipt OUT.json] [--open-out OPEN.txt]

Inventory: the open-box list in the shoulder list format ("LEVEL θ1..θ4 CODE SEED CLASS DIST", one box per line,
comment lines skipped).  Box i (zero-based, in file order) is identified by its exact binary64 centre and level;
half-width π/2^LEVEL + 2^-40.  Sources, each giving a certified statement for whole boxes:

  v2        ActiveShoulderClosure_v2 predicate outcomes (one record per inventory index, ok=True: exact
            containment in its replayed certified subset).  Statement: Q (H+ not a quartet edge on strict D0;
            R=0 maximal corners by A1/F6), per that module's PROOF.md.
  sidecover residual_lift.certify_f6 records with "index" and ok=True reason outside_D0: no physical completion
            with that maximal leading corner (reconstruction-free side exhaustion), including R=0.
  frontier  ActiveShoulderClosure_v2_frontier verify.py receipts (DIR/receipt_K.json for shard K of
            DIR/shards/MANIFEST.json, DIR/index.txt = inventory index of each frontier source line): a box closes when
            its shard receipt lists all shard boxes and its position is not in unresolved_indices.  Statement: Q, per
            that module's PROOF.md.
  stageF/G  production cover trees for cells_F.txt records (matched to inventory boxes by exact level and centre),
            failed = 0 (stage F) or every FAILED leaf PSD-excluded (stage G).  Statements: H+ not a quartet edge on
            the cover leaves (A3/MC5); outside strict D0 on the PSD leaves.

A box is CLOSED when at least one source closes it; the first source in the order above is recorded as its
terminal, and the others are counted as overlaps.  Every unmatched source record is an error.  The receipt lists
the SHA-256 of every input.  Exit 0 only if no box is open and there are no errors.
"""
import argparse, gzip, hashlib, json, math, os, sys, collections, glob


def opener(p):
    return gzip.open(p, "rt") if p.endswith(".gz") else open(p)


def sha(p):
    return hashlib.sha256(open(p, "rb").read()).hexdigest()


ap = argparse.ArgumentParser()
ap.add_argument("--inventory", required=True); ap.add_argument("--v2"); ap.add_argument("--sidecover")
ap.add_argument("--stageF"); ap.add_argument("--cellsF"); ap.add_argument("--stageG")
ap.add_argument("--frontier"); ap.add_argument("--receipt"); ap.add_argument("--open-out")
a = ap.parse_args()

inv = [l.split() for l in opener(a.inventory) if l.strip() and not l.startswith("#")]
key = {}
for i, r in enumerate(inv):
    k = (int(r[0]), tuple(float(x) for x in r[1:5]))
    if k in key:
        sys.exit(f"inventory box {i} duplicates box {key[k]}")
    key[k] = i
N = len(inv); closed = {}; overlaps = collections.Counter(); errors = []; inputs = {a.inventory: sha(a.inventory)}


def close(i, method):
    if i in closed:
        overlaps[method] += 1
    else:
        closed[i] = method


if a.v2:
    inputs[a.v2] = sha(a.v2)
    for r in map(json.loads, opener(a.v2)):
        if not 0 <= r["id"] < N:
            errors.append(("v2 id out of range", r["id"])); continue
        if r.get("ok") is True:
            close(r["id"], "v2_shoulder_Q")
if a.sidecover:
    inputs[a.sidecover] = sha(a.sidecover)
    for r in map(json.loads, opener(a.sidecover)):
        i = r["index"]
        if not 0 <= i < N or (int(inv[i][0]), tuple(float(x) for x in inv[i][1:5])) != (r["level"], tuple(r["theta"])):
            errors.append(("sidecover record does not match its inventory box", i)); continue
        if r.get("ok") is True and r.get("reason") == "outside_D0":
            close(i, "sidecover_outside_D0")
if a.frontier:
    ip = os.path.join(a.frontier, "index.txt"); mp = os.path.join(a.frontier, "shards", "MANIFEST.json")
    inputs[ip] = sha(ip); inputs[mp] = sha(mp)
    idx = [int(x) for x in open(ip)]; man = json.load(open(mp))
    if man["boxes"] != len(idx):
        errors.append(("frontier manifest/index length mismatch", man["boxes"]))
    else:
        for k, s in enumerate(man["shards"]):
            rp = os.path.join(a.frontier, f"receipt_{k:06d}.json")
            if not os.path.exists(rp):
                continue
            inputs[rp] = sha(rp); r = json.load(open(rp))
            if r.get("frontier_boxes") != s["boxes"]:
                errors.append(("frontier receipt box count", k)); continue
            bad = set(r["unresolved_indices"])
            for n in range(s["boxes"]):
                if n not in bad:
                    close(idx[s["first_source_index"] + n], "frontier_Q")
if a.stageF:
    REC = 121; inputs[a.cellsF] = sha(a.cellsF)
    cells = {}
    with open(a.cellsF, "rb") as f:
        data = f.read()
    for k in range(len(data) // REC):
        g = data[k * REC:(k + 1) * REC].split()
        cells[int(g[0])] = (int(g[2]), tuple(float(x) for x in g[3:7]))
    fin = {}
    for fn in sorted(glob.glob(os.path.join(a.stageF, "c_*.jsonl"))):
        inputs[fn] = sha(fn); block = []
        for line in open(fn):
            r = json.loads(line)
            if r.get("header"):
                continue
            if r.get("done"):
                fin[r["cell"]] = [(round(math.log2(math.pi / x["rho"])), tuple(x["theta"])) for x in block if x["status"].startswith("FAILED")]
                block = []
            else:
                block.append(r)
    g = {}
    for fn in sorted(glob.glob(os.path.join(a.stageG or "", "g_*.txt"))):
        inputs[fn] = sha(fn)
        for line in open(fn):
            if not line.startswith("#"):
                f = line.split(); g[(int(f[0]), int(f[1]), tuple(float.fromhex(x) for x in f[2:6]))] = f[6]
    for cid, (lev, th) in cells.items():
        i = key.get((lev, th))
        if i is None:
            errors.append(("stage-F cell matches no inventory box", cid)); continue
        if cid not in fin:
            continue
        rest = [x for x in fin[cid] if g.get((cid, x[0], x[1])) != "E"]
        if not fin[cid]:
            close(i, "stageF_cover_H+")
        elif not rest:
            close(i, "stageFG_cover_H+_and_PSD")
opened = [i for i in range(N) if i not in closed]
res = dict(inventory=N, closed=len(closed), open=len(opened), by_terminal=dict(collections.Counter(closed.values())),
           overlaps=dict(overlaps), errors=len(errors), error_examples=errors[:10],
           open_by_class=dict(collections.Counter(inv[i][5] + " " + inv[i][7] for i in opened)), inputs_sha256=inputs,
           ledger_sha256=hashlib.sha256(open(os.path.abspath(__file__), "rb").read()).hexdigest())
res["status"] = "PASS" if not opened and not errors else "OPEN" if not errors else "FAIL"
txt = json.dumps(res, indent=1)
print(txt)
if a.receipt:
    open(a.receipt, "w").write(txt + "\n")
if a.open_out:
    with open(a.open_out, "w") as f:
        for i in opened:
            f.write(str(i) + " " + " ".join(inv[i]) + "\n")
sys.exit(0 if res["status"] == "PASS" else 2 if res["status"] == "OPEN" else 1)
