#!/usr/bin/env python3
"""Minimal reconciliation update for export2 (6 Oct 2026): which export2 boxes our runs accepted after the export, and
the status of the 10 pass-1 shards that were unfinished at export.  No geometry is written.

  python3 export2_update.py OUTDIR

Sources (each an exact whole-box acceptance by the module's own verifier):
  frontier_pass1   postE/frontier/receipt_K.json   (ActiveShoulderClosure_v2_frontier verify; shards listed as unfinished)
  frontier_pass2   postE/frontier/receipt2_K.json with pass2_K.pos (same verifier, larger budgets)
  v3_3s            postE/small/v3wide_far2442.jsonl.gz records with ok=true (Patch2442Region_v3 verify, 3 s profile)
Output ids are export2 serial ids (field "id" of export2 records); inventory_row is the global post-E inventory index.
"""
import gzip, json, os, sys
od = sys.argv[1]; os.makedirs(od, exist_ok=True)
E = "export2_2026-10-05"; F = "postE/frontier"
m = json.load(open(E + "/MANIFEST.json")); man = json.load(open(F + "/shards/MANIFEST.json"))["shards"]
unfin = m["pass1_shards_unfinished_counted_open"]
row2id = {}
for s in m["shards"]:
    for l in gzip.open(E + "/" + s["file"], "rt"):
        r = json.loads(l); row2id[r["inventory_row"]] = r["id"]
src_need = {}                                  # frontier source index -> (method, receipt)
unres_src = {}
for k in range(len(man)):
    a = man[k]["first_source_index"]; KK = "%06d" % k
    r1 = F + f"/receipt_{KK}.json"
    if k in unfin:
        if not os.path.exists(r1):
            continue
        bad = set(json.load(open(r1))["unresolved_indices"])
        for i in range(man[k]["boxes"]):
            (unres_src if i in bad else src_need)[a + i] = ("frontier_pass1", f"receipt_{KK}.json")
    r2 = F + f"/receipt2_{KK}.json"; p2 = F + f"/pass2_{KK}.pos"
    if os.path.exists(r2) and os.path.exists(p2):
        pos = [int(x) for x in open(p2)]
        bad2 = set(json.load(open(r2))["unresolved_indices"]) if pos else set()
        for j, q in enumerate(pos):
            if j not in bad2:
                src_need[a + q] = ("frontier_pass2", f"receipt2_{KK}.json")
                unres_src.pop(a + q, None)
src2row = {}
want = set(src_need) | set(unres_src)
for n, line in enumerate(open(F + "/index.txt")):
    if n in want:
        src2row[n] = int(line)
acc = {}
for s, (meth, rec) in src_need.items():
    i = src2row[s]
    if i in row2id:
        acc[row2id[i]] = (i, meth, rec)
try:
    for l in gzip.open("postE/small/v3wide_far2442.jsonl.gz", "rt"):
        r = json.loads(l)
        if r.get("ok") is True and r["id"] in row2id and row2id[r["id"]] not in acc:
            acc[row2id[r["id"]]] = (r["id"], "v3_3s", "postE/small/v3wide_far2442.jsonl.gz")
except (EOFError, OSError, ValueError):
    pass
unres = {row2id[src2row[s]]: src2row[s] for s in unres_src if src2row[s] in row2id and row2id[src2row[s]] not in acc}
with open(od + "/ACCEPTED_SINCE_EXPORT2.tsv", "w") as f:
    f.write("# export2_id\tinventory_row\tmethod\tsource\n")
    for i in sorted(acc):
        f.write(f"{i}\t{acc[i][0]}\t{acc[i][1]}\t{acc[i][2]}\n")
with open(od + "/UNRESOLVED_IN_10_SHARDS.tsv", "w") as f:
    f.write("# export2_id\tinventory_row  (in the 10 shards unfinished at export; pass 1 finished, not accepted)\n")
    for i in sorted(unres):
        f.write(f"{i}\t{unres[i]}\n")
import collections
c = collections.Counter(v[1] for v in acc.values())
print(json.dumps(dict(accepted=len(acc), by_method=dict(c), unresolved_in_10_shards=len(unres),
                      shards_finished=[k for k in unfin if os.path.exists(F + "/receipt_%06d.json" % k)])))
