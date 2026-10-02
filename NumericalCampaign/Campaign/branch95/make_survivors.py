"""survivors.txt / survivors_jobs.txt from the run of record's layer outcomes (ok=false) and layer.txt.
   python3 make_survivors.py RUN_DIR [--sample N SEED]"""
import json, os, random, sys, glob
run = sys.argv[1]; REC = 121
ids = []
for fn in sorted(glob.glob(os.path.join(run, "results", "layer", "l_*.jsonl"))):
    for l in open(fn):
        if '"ok": false' in l:
            ids.append(json.loads(l)["cell"])
ids.sort()
if "--sample" in sys.argv:
    i = sys.argv.index("--sample"); n, seed = int(sys.argv[i+1]), int(sys.argv[i+2])
    ids = sorted(random.Random(seed).sample(ids, n))
with open(os.path.join(run, "layer.txt"), "rb") as f, open("survivors.txt", "w") as o, open("survivors_jobs.txt", "w") as oj:
    for k, i in enumerate(ids, 1):
        f.seek((i - 1) * REC); g = f.read(REC).split()
        assert int(g[0]) == i and int(g[2]) == 9, (i, g[:3])
        o.write(f"{k} {i} {int(g[1])} 9 {' '.join(x.decode() for x in g[3:7])}\n")
        oj.write(' '.join(x.decode() for x in g[3:7]) + "\n")
print(len(ids), "survivors written")
