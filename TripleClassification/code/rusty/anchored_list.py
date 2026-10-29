"""Sub-balls with patterns no certifier or score receipt closed, as lines "SUBATLAS SUB P1,P2,..." (from gamma_v3),
deepest level first, skipping sub-balls the ball's anchored receipt files (b<ball>.jsonl, b<ball>.chain.jsonl)
already hold.

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
                x = json.loads(l); done.add((x["subatlas"], x["sub"]))
            except (ValueError, KeyError):
                pass
    lines = []
    for l in open(B + "/selective/gamma_v3/b%s.jsonl" % b):
        try:
            g = json.loads(l)
        except ValueError:
            continue
        if "error" in g or (g["subatlas"], g["sub"]) in done: continue
        und = [p["pattern"] for p in g["patterns"] if not (p.get("fourier") or p.get("ordering"))]
        if not und: continue
        lv = int(g["subatlas"].split("_l")[1].split(".")[0])
        for d in ("selective", "selective2"):
            p = os.path.join(B, d, "children" if lv == 3 else "l%d" % lv, g["subatlas"])
            if os.path.exists(p): break
        else:
            continue
        lines.append((-lv, p, g["sub"], ",".join(map(str, sorted(set(und))))))
    for k in sorted(set(lines)):
        out.write("%s %d %s\n" % k[1:]); n += 1
print(n)
