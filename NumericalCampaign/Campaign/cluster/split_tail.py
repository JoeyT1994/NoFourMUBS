#!/usr/bin/env python3
"""Split the unfinished expand tasks into one task per remaining level-6 job (run after cancelling the tail job).

For every task of tasks_expand.txt whose output is missing: keep the records of the jobs finished in its .part file
(jobs with their closing #prune line; a partially written job is dropped) as the task's output file, and write one
new task per remaining job into tasks_expandjobs.txt.  make_tasks.py and audit.py read every results/expand/e_*.txt
and require each job exactly once, so the split outputs merge consistently."""
import os, re
HERE = os.path.dirname(os.path.abspath(__file__))
R = os.path.join(HERE, "results", "expand")
tasks = open(os.path.join(HERE, "tasks_expand.txt")).read().splitlines()
new = []; kept_jobs = 0
for t in tasks:
    m = re.match(r"\./run_task\.sh expand jobs_L6\.txt (\d+) (\d+) (\S+)", t)
    a, b, out = int(m[1]), int(m[2]), os.path.join(HERE, m[3])
    if os.path.exists(out):
        continue
    done = set(); lines = []
    if os.path.exists(out + ".part"):
        lines = open(out + ".part").read().splitlines()
        done = {int(l.split()[1]) for l in lines if l.startswith("#prune ")}
        jobof = lambda l: int(l.split()[1]) if l.startswith("#") else int(l.split()[0])
        lines = [l for l in lines if l.strip() and jobof(l) in done]
    with open(out + ".tmp", "w") as f:
        f.write("".join(l + "\n" for l in lines))
    os.replace(out + ".tmp", out)
    if os.path.exists(out + ".part"):
        os.remove(out + ".part")
    kept_jobs += len(done)
    for j in range(a, b + 1):
        if j not in done:
            o = f"results/expand/e_{a:07d}_j{j:07d}.txt"
            new.append(f"./run_task.sh expand jobs_L6.txt {j} {j} {o} &> logs/expand/e_{a:07d}_j{j:07d}.log")
open(os.path.join(HERE, "tasks_expandjobs.txt"), "w").write("".join(x + "\n" for x in new))
print(f"kept {kept_jobs} finished jobs from partial tasks; {len(new)} per-job tasks written to tasks_expandjobs.txt")
