#!/usr/bin/env python3
"""Stage B long-tail splitter (3 Oct 2026).  A stage-B task (triple_task.sh A B 13 results/triple/t_X.txt) writes one
independent line per layer leaf A..B, in order, then "#done SECONDS".  For tasks with no output yet:

  split_tail.py plan PER        results/triple_split/tasks.txt: subranges of PER leaves, outputs results/triple_split/
  split_tail.py assemble        for each task whose subrange outputs all exist: concatenate them in order (dropping
                                their #done lines), append "#done SUM", write results/triple_gen/t_X.txt (moved into
                                results/triple/ by post_bc unless the original task has written it meanwhile)

The leaves, code and arguments are those of the original task; only the grouping into processes differs."""
import os, sys
HERE = os.path.dirname(os.path.abspath(__file__)); os.chdir(HERE)
SD = "results/triple_split"


def missing():
    for l in open("tasks_branchBC.txt"):
        g = l.split(" &>")[0].split()
        if g[0] != "./triple_task.sh":
            continue
        a, b, lev, out = int(g[1]), int(g[2]), g[3], g[4]
        if not os.path.exists(out) and not os.path.exists(out.replace("results/triple/", "results/triple_gen/")):
            yield a, b, lev, out


def subs(a, b, per):
    return [(x, min(x + per - 1, b)) for x in range(a, b + 1, per)]


if sys.argv[1] == "plan":
    per = int(sys.argv[2]); os.makedirs(SD, exist_ok=True); n = 0
    with open(f"{SD}/tasks.txt", "w") as t, open(f"{SD}/plan.txt", "w") as p:
        for a, b, lev, out in missing():
            base = os.path.basename(out)[:-4]
            p.write(f"{a} {b} {lev} {out} {per}\n")
            for x, y in subs(a, b, per):
                t.write(f"./triple_task.sh {x} {y} {lev} {SD}/{base}_{x:09d}.txt &> /dev/null\n"); n += 1
    print(n, "subtasks")
else:
    os.makedirs("results/triple_gen", exist_ok=True); done = 0; todo = 0
    for line in open(f"{SD}/plan.txt"):
        a, b, lev, out, per = line.split(); a, b, per = int(a), int(b), int(per)
        base = os.path.basename(out)[:-4]
        parts = [f"{SD}/{base}_{x:09d}.txt" for x, _ in subs(a, b, per)]
        if not all(os.path.exists(q) for q in parts):
            todo += 1; continue
        body, secs = [], 0.0
        for q, (x, y) in zip(parts, subs(a, b, per)):
            L = open(q).read().splitlines()
            assert L[-1].startswith("#done") and len(L) == y - x + 2, q
            secs += float(L[-1].split()[1]); body += L[:-1]
        assert len(body) == b - a + 1
        g = out.replace("results/triple/", "results/triple_gen/")
        with open(g + ".part", "w") as f:
            f.write("\n".join(body) + f"\n#done {secs:.1f}\n")
        os.replace(g + ".part", g); done += 1
    print(f"assembled {done}, incomplete {todo}")
