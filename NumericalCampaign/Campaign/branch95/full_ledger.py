#!/usr/bin/env python3
"""Full post-E ledger (6 Oct 2026): every post-E inventory row gets its first certifying source, or is delegated to the
collaborator, or is open.  Written for the 45.7M-row full run: per-row state is kept in flat arrays, receipts are
parsed in parallel, and no forest is read (each verify receipt is the acceptance record of its module).

  python3 full_ledger.py OUTDIR [--procs N]

Sources, in the order a row is credited (later sources only count overlaps):
  v2               postE/v2.jsonl.gz                       ActiveShoulderClosure_v2 exact containment       (Q)
  sidecover        postE/sidecover.jsonl, postE/small/side_*.jsonl   residual_lift ok: outside_D0 | residual_tube
                   (index + exact level/centre checked against the inventory row)
  frontier_p1/p2/p3  postE/frontier receipt_K / receipt2_K + pass2_K.pos / receipt3_K + pass3_K.pos   frontier (Q)
  hard_frontier    postE/hard receipt_P.json with map.tsv (frontier at 1,800 s per root)                   (Q)
  v3               postE/small/v3fast_*, v3wide_*  (id = inventory row)    no physical completion in strict D0
  hard_F, hard_FG  postE/hard/F results + G (cells matched to rows by exact level and centre)   cover (Q) / PSD
  hard2_frontier   postE/hard2 receipt_K.json (frontier at 7,200 s per root on the hard tail's unresolved boxes)  (Q)
  ball40           ball40/res_*.jsonl.gz: Patch2442Local Radius025Complete (punctured ball 1/40 at the two
                   (2,4,4,2)-class seeds), ok=true with PASS_UNIFORM_BALL; id = inventory row, box checked   strict D0
Outside the inventory: stage-C FAILED leaves (results/certify) rerun one per cell in results/certify_branchP3;
reported as stageC_leaves (all leaves must have a done record with failed == 0).
Delegated (not closed here): ring = class (2,4,4,2) at seed distance <= 0.07 - 1e-6 (release ring-2026-10-04);
export2 = rows listed in export2_2026-10-05 (inventory_row field) and not credited above.
Outputs: OUTDIR/LEDGER.json (counts, input hashes), OUTDIR/open_rows.txt.gz ("row class code seed dist").
"""
import array, collections, glob, gzip, hashlib, json, math, os, sys
from multiprocessing import Pool
HERE = os.path.dirname(os.path.abspath(__file__)); os.chdir(HERE); sys.path.insert(0, HERE)
from postE import RING_MAXD
P = "postE"; FR = P + "/frontier"
NAMES = ["open", "v2", "sidecover", "frontier_p1", "frontier_p2", "frontier_p3", "hard_frontier", "v3", "hard_F",
         "hard_FG", "hard2_frontier", "ball40", "delegated_ring", "delegated_export2"]
CODE = {n: i for i, n in enumerate(NAMES)}


def sha(p):
    h = hashlib.sha256()
    with open(p, "rb") as f:
        for b in iter(lambda: f.read(1 << 22), b""):
            h.update(b)
    return h.hexdigest()


def parse_receipt(args):
    path, pos_path = args
    r = json.load(open(path)); bad = set(r["unresolved_indices"])
    if pos_path is None:
        return path, r["frontier_boxes"], [i for i in range(r["frontier_boxes"]) if i not in bad]
    pos = [int(x) for x in open(pos_path)]
    if r["frontier_boxes"] != len(pos):
        return path, -1, []
    return path, len(pos), [pos[j] for j in range(len(pos)) if j not in bad]


if __name__ == "__main__":
    od = sys.argv[1]; procs = int(sys.argv[sys.argv.index("--procs") + 1]) if "--procs" in sys.argv else 64
    os.makedirs(od, exist_ok=True); inputs = {}; errors = []; overlaps = collections.Counter()
    # inventory: class, code, distance per row; exact keys only for rows referenced later
    cls_of = {}; cls = bytearray(); dist = array.array("f"); keys_needed_rows = set()
    with gzip.open(P + "/inventory.txt.gz", "rt") as f:
        for line in f:
            if not line.strip() or line.startswith("#"):
                continue
            r = line.split(); c = r[7] + " " + r[5]
            if c not in cls_of:
                cls_of[c] = len(cls_of)
            cls.append(cls_of[c]); dist.append(float(r[8]))
    N = len(cls); state = bytearray(N); names_c = {v: k for k, v in cls_of.items()}
    inputs[P + "/inventory.txt.gz"] = sha(P + "/inventory.txt.gz")

    def credit(i, name):
        if state[i] == 0:
            state[i] = CODE[name]
        else:
            overlaps[name] += 1
    # v2
    for l in gzip.open(P + "/v2.jsonl.gz", "rt"):
        r = json.loads(l)
        if r.get("ok") is True:
            credit(r["id"], "v2")
    inputs[P + "/v2.jsonl.gz"] = sha(P + "/v2.jsonl.gz")
    # side cover: keep records, check geometry against the inventory in a second pass
    side = []
    for p in [P + "/sidecover.jsonl"] + sorted(glob.glob(P + "/small/side_*.jsonl")):
        if not os.path.exists(p):
            continue
        inputs[p] = sha(p)
        for l in open(p):
            r = json.loads(l)
            if r.get("ok") is True and r.get("reason") in ("outside_D0", "residual_tube"):
                side.append((r["index"], r["level"], tuple(r["theta"])))
    # hard F cells: exact (level, centre) -> row
    cell_key = {}
    if os.path.exists(P + "/hard/cells.txt"):
        data = open(P + "/hard/cells.txt", "rb").read(); inputs[P + "/hard/cells.txt"] = sha(P + "/hard/cells.txt")
        for k in range(len(data) // 121):
            g = data[k * 121:(k + 1) * 121].split(); cell_key[int(g[0])] = (int(g[2]), tuple(float(x) for x in g[3:7]))
    want_geom = {i for i, _, _ in side}; key_to_row = {}; geom = {}
    keyset = set(cell_key.values())
    with gzip.open(P + "/inventory.txt.gz", "rt") as f:
        i = 0
        for line in f:
            if not line.strip() or line.startswith("#"):
                continue
            if i in want_geom or keyset:
                r = line.split(); key = (int(r[0]), tuple(float(x) for x in r[1:5]))
                if i in want_geom:
                    geom[i] = key
                if key in keyset:
                    key_to_row[key] = i
            i += 1
    for i, lev, th in side:
        if geom.get(i) == (lev, th):
            credit(i, "sidecover")
        else:
            errors.append(("sidecover geometry mismatch", i))
    # frontier passes
    man = json.load(open(FR + "/shards/MANIFEST.json")); inputs[FR + "/shards/MANIFEST.json"] = sha(FR + "/shards/MANIFEST.json")
    idx = array.array("l", (int(x) for x in open(FR + "/index.txt"))); inputs[FR + "/index.txt"] = sha(FR + "/index.txt")
    if len(idx) != man["boxes"]:
        errors.append(("index/manifest length", len(idx)))
    jobs = []
    for k in range(len(man["shards"])):
        KK = "%06d" % k
        for name, rec, pos in (("frontier_p1", f"receipt_{KK}.json", None), ("frontier_p2", f"receipt2_{KK}.json", f"pass2_{KK}.pos"),
                               ("frontier_p3", f"receipt3_{KK}.json", f"pass3_{KK}.pos")):
            if os.path.exists(FR + "/" + rec) and (pos is None or os.path.exists(FR + "/" + pos)):
                jobs.append((name, k, FR + "/" + rec, None if pos is None else FR + "/" + pos))
    shard_of = {(j[2]): (j[0], j[1]) for j in jobs}; p1_missing = [k for k in range(len(man["shards"]))
                                                                  if not os.path.exists(FR + "/receipt_%06d.json" % k)]
    with Pool(procs) as pool:
        for path, n, acc in pool.imap_unordered(parse_receipt, [(j[2], j[3]) for j in jobs], chunksize=4):
            name, k = shard_of[path]; first = man["shards"][k]["first_source_index"]
            if n < 0 or (name == "frontier_p1" and n != man["shards"][k]["boxes"]):
                errors.append(("frontier receipt size", path)); continue
            for q in acc:
                credit(idx[first + q], name)
    for p in sorted(glob.glob(FR + "/receipt*_*.json")):
        inputs[p] = os.path.getsize(p)          # sizes only for the 2,600 receipts; hashes in the release bundle
    # hard tail frontier
    if os.path.exists(P + "/hard/map.tsv"):
        parts = collections.defaultdict(list)
        for l in open(P + "/hard/map.tsv"):
            s, i, k, q, p = map(int, l.split()); parts[p].append(i)
        for p, rows in parts.items():
            rp = P + f"/hard/receipt_{p}.json"
            if not os.path.exists(rp):
                continue
            r = json.load(open(rp)); inputs[rp] = sha(rp)
            if r["frontier_boxes"] != len(rows):
                errors.append(("hard receipt size", rp)); continue
            bad = set(r["unresolved_indices"])
            for j, i in enumerate(rows):
                if j not in bad:
                    credit(i, "hard_frontier")
    # v3 (whole boxes, id = inventory row)
    for p in sorted(glob.glob(P + "/small/v3fast_*.jsonl.gz") + glob.glob(P + "/small/v3wide_*.jsonl.gz")):
        try:
            for l in gzip.open(p, "rt"):
                r = json.loads(l)
                if r.get("ok") is True:
                    credit(r["id"], "v3")
        except (EOFError, OSError, ValueError):
            errors.append(("v3 file truncated (complete records counted)", p))
        inputs[p] = sha(p)
    # hard stage F / G
    fin = {}
    for fn in glob.glob(P + "/hard/F/results/c_*.jsonl"):
        block = []
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
    for fn in glob.glob(P + "/hard/G/g_*.txt"):
        for line in open(fn):
            if not line.startswith("#"):
                x = line.split(); g[(int(x[0]), int(x[1]), tuple(float.fromhex(y) for y in x[2:6]))] = x[6]
    for cid, fl in fin.items():
        i = key_to_row.get(cell_key.get(cid))
        if i is None:
            errors.append(("hard F cell without row", cid)); continue
        if not fl:
            credit(i, "hard_F")
        elif all(g.get((cid, a, b)) == "E" for a, b in fl):
            credit(i, "hard_FG")
    # hard2: unresolved boxes of the hard receipts in part order, dealt to 2 parts (close_rest.sh)
    if os.path.exists(P + "/hard/map.tsv"):
        seq = []
        for p in range(10):
            rp = P + f"/hard/receipt_{p}.json"
            if os.path.exists(rp):
                bad = sorted(set(json.load(open(rp))["unresolved_indices"])); seq += [parts[p][j] for j in bad]
        for k in range(2):
            rp = P + f"/hard2/receipt_{k}.json"
            if not os.path.exists(rp):
                continue
            rows = seq[k::2]; r = json.load(open(rp)); inputs[rp] = sha(rp)
            if r["frontier_boxes"] != len(rows):
                errors.append(("hard2 receipt size", rp)); continue
            bad = set(r["unresolved_indices"])
            for j, i in enumerate(rows):
                if j not in bad:
                    credit(i, "hard2_frontier")
    # 1/40 punctured ball: whole-box exact membership after a full PASS_UNIFORM_BALL replay
    from fractions import Fraction as Fq
    ballrec = {}
    for p in sorted(glob.glob("ball40/res_*.jsonl.gz")):
        v = json.load(open(p + ".verification.json"))
        if v["status"] != "PASS_UNIFORM_BALL":
            errors.append(("ball40 replay not PASS", p)); continue
        inputs[p] = sha(p)
        for l in gzip.open(p, "rt"):
            r = json.loads(l)
            if r.get("ok") is True and r.get("proof_status") == "PASS_UNIFORM_BALL":
                ballrec[r["input_record"]["id"]] = r["input_record"]["centers"]
    if ballrec:
        with gzip.open(P + "/inventory.txt.gz", "rt") as f:
            i = 0
            for line in f:
                if not line.strip() or line.startswith("#"):
                    continue
                if i in ballrec:
                    if [Fq(x) for x in ballrec[i]] == [Fq(float(x)) for x in line.split()[1:5]]:
                        credit(i, "ball40")
                    else:
                        errors.append(("ball40 geometry mismatch", i))
                i += 1
    # stage-C FAILED leaves (not inventory rows)
    sc = None
    if os.path.exists("cells_branchP3.txt"):
        nleaf = sum(1 for _ in open("cells_branchP3.txt")); done = {}
        for fn in glob.glob("results/certify_branchP3/c_*.jsonl"):
            for line in open(fn):
                r = json.loads(line)
                if r.get("done"):
                    done[r["cell"]] = r["failed"]
        sc = dict(leaves=nleaf, done=len(done), closed=sum(1 for v in done.values() if v == 0),
                  open=nleaf - sum(1 for v in done.values() if v == 0))
    # delegation
    ring_c = {c for k, c in cls_of.items() if k.startswith("2,4,4,2 ")}
    e2 = set()
    for s in json.load(open("export2_2026-10-05/MANIFEST.json"))["shards"]:
        for l in gzip.open("export2_2026-10-05/" + s["file"], "rt"):
            e2.add(json.loads(l)["inventory_row"])
    for i in range(N):
        if state[i] == 0:
            if cls[i] in ring_c and dist[i] <= RING_MAXD - 1e-6:
                state[i] = CODE["delegated_ring"]
            elif i in e2:
                state[i] = CODE["delegated_export2"]
    cnt = collections.Counter(NAMES[s] for s in state)
    open_by = collections.Counter(names_c[cls[i]] for i in range(N) if state[i] == 0)
    deleg_by = collections.Counter((NAMES[state[i]], names_c[cls[i]]) for i in range(N) if NAMES[state[i]].startswith("delegated"))
    with gzip.open(od + "/open_rows.txt.gz", "wt") as f:
        for i in range(N):
            if state[i] == 0:
                f.write(f"{i} {names_c[cls[i]]} {dist[i]:.6f}\n")
    res = dict(rows=N, by_source={n: cnt.get(n, 0) for n in NAMES}, overlaps=dict(overlaps),
               open_by_class_code=dict(open_by), delegated_by_class={" | ".join(k): v for k, v in deleg_by.items()},
               frontier_pass1_shards_missing=p1_missing, stageC_leaves=sc, errors=len(errors), error_examples=errors[:20],
               inputs=inputs, ledger_sha256=sha(os.path.abspath(__file__)))
    json.dump(res, open(od + "/LEDGER.json", "w"), indent=1)
    print(json.dumps({k: res[k] for k in ("rows", "by_source", "open_by_class_code", "stageC_leaves", "errors")}))
