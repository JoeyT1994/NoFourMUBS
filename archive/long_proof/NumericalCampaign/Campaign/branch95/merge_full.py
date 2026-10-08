"""Full pass, after stage A: layer_leaves.txt, cells_branch.txt (121-byte records, JOB = survivor index) and the
combined stage-B/C task file tasks_branchBC.txt (C = cover certification first, then B = side-triple to level 13).
   python3 merge_full.py LEAVES_PER_TASK CELLS_PER_TASK"""
import glob, sys
lpt, cpt = int(sys.argv[1]), int(sys.argv[2])
nl = nc = ns = 0
with open("layer_leaves.txt", "w") as fl, open("cells_branch.txt", "w") as fc:
    for fn in sorted(glob.glob("results/expand/e_*.txt")):
        for l in open(fn):
            if l.startswith("#layer "):
                g = l.split(); fl.write(f"{g[1]} {g[2]} {' '.join(g[3:7])}\n"); nl += 1
            elif l.startswith("#prune "):
                ns += 1
            elif l.strip():
                g = l.split(); nc += 1
                rec = "%9d %7d %2d %+.17e %+.17e %+.17e %+.17e\n" % (nc, int(g[0]), int(g[1]), *map(float, g[2:6]))
                assert len(rec) == 121; fc.write(rec)
with open("tasks_branchBC.txt", "w") as f:
    for a in range(1, nc + 1, cpt):
        b = min(a + cpt - 1, nc)
        f.write(f"CERT_COVER0=30 ./run_task.sh batch cells_branch.txt {a} {b} results/certify/c_{a:09d}.jsonl &> logs/certify/c_{a:09d}.log\n")
    for a in range(1, nl + 1, lpt):
        b = min(a + lpt - 1, nl)
        f.write(f"./triple_task.sh {a} {b} 13 results/triple/t_{a:09d}.txt &> /dev/null\n")
print(f"{ns} survivors expanded; {nl} level-11 singular leaves; {nc} work cells; "
      f"{(nc + cpt - 1)//cpt} certify tasks + {(nl + lpt - 1)//lpt} triple tasks")
