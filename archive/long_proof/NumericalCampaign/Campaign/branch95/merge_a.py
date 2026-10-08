"""After stage A: layer_leaves.txt (IDX LEVEL θ) and cells_branch.txt (121-byte records ID JOB=IDX LEVEL θ), plus task files.
   python3 merge_a.py LEAVES_PER_TASK CELLS_PER_TASK"""
import glob, os, sys
lpt, cpt = int(sys.argv[1]), int(sys.argv[2])
leaves, cells, pr = [], [], 0
for fn in sorted(glob.glob("results/expand/e_*.txt")):
    for l in open(fn):
        if l.startswith("#layer "):
            g = l.split(); leaves.append(f"{g[1]} {g[2]} {' '.join(g[3:7])}")
        elif l.startswith("#prune "):
            pr += 1
        elif l.strip():
            g = l.split(); cells.append((int(g[0]), int(g[1]), [float(x) for x in g[2:6]]))
open("layer_leaves.txt", "w").write("".join(x + "\n" for x in leaves))
with open("cells_branch.txt", "w") as f:
    for i, (idx, lev, th) in enumerate(cells, 1):
        rec = "%9d %7d %2d %+.17e %+.17e %+.17e %+.17e\n" % (i, idx, lev, *th)
        assert len(rec) == 121; f.write(rec)
with open("tasks_branchtriple.txt", "w") as f:
    for a in range(1, len(leaves) + 1, lpt):
        b = min(a + lpt - 1, len(leaves)); f.write(f"./triple_task.sh {a} {b} 13 results/triple/t_{a:09d}.txt &> logs/triple/t_{a:09d}.log\n")
with open("tasks_branchcert.txt", "w") as f:
    for a in range(1, len(cells) + 1, cpt):
        b = min(a + cpt - 1, len(cells)); f.write(f"./run_task.sh batch cells_branch.txt {a} {b} results/certify/c_{a:09d}.jsonl &> logs/certify/c_{a:09d}.log\n")
print(f"{pr} survivors expanded; {len(leaves)} level-11 singular leaves; {len(cells)} work cells")
