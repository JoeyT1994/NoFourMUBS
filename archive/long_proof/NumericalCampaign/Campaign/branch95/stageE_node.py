#!/usr/bin/env python3
"""Stage E, pooled (4 Oct 2026): the same computation as stageE_psd.py, scheduled for a whole node.

  python3 stageE_node.py TASKFILE FIRST LAST [--workers N]

Takes lines FIRST..LAST of TASKFILE ("./stageE_task.sh OUT IN1 IN2 ..." as written by post_d.sh).  Every stage-D
line of every listed task goes into one pool (unordered); each OUT is written, in input order and byte-identical
to stageE_psd.py (same process() function, same trailer), as soon as all of its lines are done.  Tasks whose OUT
exists are skipped, so a rerun resumes.  stageE_psd.py gives every task one core: with about 200,000 leaves per
task and a heavy per-leaf tail, that cannot finish within a walltime.
"""
import os, sys
from multiprocessing import get_context
HERE = os.path.dirname(os.path.abspath(__file__)); os.chdir(HERE)
os.environ.setdefault("NOFOUR_ROOT", os.path.join(HERE, "code"))
from stageE_psd import process


def _run(item):
    t, i, line = item
    return t, i, process(line)


if __name__ == "__main__":
    a = sys.argv[1:]
    workers = int(a[a.index("--workers") + 1]) if "--workers" in a else os.cpu_count()
    taskfile, first, last = a[0], int(a[1]), int(a[2])
    tasks = []
    for k, l in enumerate(open(taskfile), 1):
        if first <= k <= last:
            g = l.split(" &>")[0].split()
            if not os.path.exists(g[1]):
                tasks.append((g[1], g[2:]))
    lines = [[l for fn in ins for l in open(fn) if l.strip()] for _, ins in tasks]
    left = [len(x) for x in lines]; res = [[None] * len(x) for x in lines]; cpu = [0.0] * len(tasks)
    items = [(t, i, l) for t, x in enumerate(lines) for i, l in enumerate(x)]
    print(f"{len(tasks)} tasks, {len(items)} lines, {workers} workers", flush=True)
    with get_context("spawn").Pool(workers) as pool:
        for t, i, (text, c) in pool.imap_unordered(_run, items, chunksize=1):
            res[t][i] = text; cpu[t] += c; left[t] -= 1
            if left[t] == 0:
                out = tasks[t][0]
                with open(out + ".part", "w") as f:
                    for x in res[t]:
                        f.write(x + "\n")
                    f.write(f"#stageE lines {len(res[t])} cpu_seconds {cpu[t]:.1f}\n")
                os.replace(out + ".part", out); res[t] = None
                print(f"done {out} cpu_h {cpu[t] / 3600:.1f}", flush=True)
