"""Sub-balls with patterns no certifier or score receipt closed, as lines "SUBATLAS SUB P1,P2,..." (from gamma_v3),
deepest level first, listing only the patterns the ball's anchored receipt files (b<ball>.jsonl, b<ball>.chain.jsonl)
do not cover yet. A pattern counts as undischarged if any score receipt for its sub-ball leaves it open (a rerun row
may leave open a pattern an earlier, aborted row had certified).

  python3 anchored_list.py OUT.txt BALL..."""
import json, os, sys
B = "/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc"
out = open(sys.argv[1], "w"); n = 0
for b in sys.argv[2:]:
    done = set()
    for rp in (B + "/selective/anchored_v1/b%s.jsonl" % b, B + "/selective/anchored_v1/b%s.chain.jsonl" % b):
        if not os.path.exists(rp): continue
        for l in open(rp):
            try:
                x = json.loads(l); done.add((x["subatlas"], x["sub"], x["pattern"]))
            except (ValueError, KeyError):
                pass
    want = {}
    for l in open(B + "/selective/gamma_v3/b%s.jsonl" % b):
        try:
            g = json.loads(l)
        except ValueError:
            continue
        if "error" in g: continue
        und = [p["pattern"] for p in g["patterns"] if not (p.get("fourier") or p.get("ordering"))
               and (g["subatlas"], g["sub"], p["pattern"]) not in done]
        if not und: continue
        lv = int(g["subatlas"].split("_l")[1].split(".")[0])
        for d in ("selective", "selective2"):
            p = os.path.join(B, d, "children" if lv == 3 else "l%d" % lv, g["subatlas"])
            if os.path.exists(p): break
        else:
            continue
        want.setdefault((-lv, p, g["sub"]), set()).update(und)
    for k in sorted(want):
        out.write("%s %d %s\n" % (k[1], k[2], ",".join(map(str, sorted(want[k]))))); n += 1
print(n)
