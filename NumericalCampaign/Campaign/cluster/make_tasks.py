#!/usr/bin/env python3
"""Task files for the two campaign stages.

  python3 make_tasks.py expand [JOBS_PER_TASK]   -> tasks_expand.txt   (stage 1: L6 jobs -> L9 work cells)
  python3 make_tasks.py cells  [CELLS_PER_TASK]  -> cells.txt, layer.txt, coverage.json, tasks_certify.txt, tasks_layer.txt
                                                   (after stage 1)

cells.txt holds every surviving work cell once, in a fixed pseudo-random order (seed 20260928), so that any
prefix of tasks_certify.txt is a uniform random sample of the campaign.  Records are fixed-width
(driver.jl CELLREC = 121 bytes: ID, JOB, LEVEL, θ) so that a task seeks straight to its cells.
"""
import collections, glob, json, os, random, sys

HERE = os.path.dirname(os.path.abspath(__file__))
JOBS = os.path.join(HERE, "jobs_L6.txt")
REC = "%9d %7d %2d %+.17e %+.17e %+.17e %+.17e\n"
RECLEN = 121
ALLOW_MISSING = "--allow-missing" in sys.argv
LAYER_PER_TASK = 4000        # about 5 minutes of the layer prune per task


def expand_tasks(per):
    n = sum(1 for _ in open(JOBS))
    with open(os.path.join(HERE, "tasks_expand.txt"), "w") as f:
        for a in range(1, n + 1, per):
            b = min(a + per - 1, n)
            f.write(f"./run_task.sh expand jobs_L6.txt {a} {b} results/expand/e_{a:07d}.txt "
                    f"&> logs/expand/e_{a:07d}.log\n")
    os.makedirs(os.path.join(HERE, "logs", "expand"), exist_ok=True)
    print(f"{(n + per - 1) // per} expand tasks for {n} jobs")


def cells(per):
    njobs = sum(1 for _ in open(JOBS))
    seen, cellv, counts, layer = set(), [], {}, []
    # Canonical order before the fixed-seed shuffles: cells are grouped by job (stable within a job, i.e. in the
    # driver's emission order), so cells.txt and layer.txt do not depend on how jobs were grouped into tasks.
    byjob_w, byjob_l = collections.defaultdict(list), collections.defaultdict(list)
    for fn in sorted(glob.glob(os.path.join(HERE, "results", "expand", "e_*.txt"))):
        for line in open(fn):
            if line.startswith("#layer"):
                rec = line[len("#layer "):].rstrip("\n"); byjob_l[int(rec.split(None, 1)[0])].append(rec)
            elif line.startswith("#prune"):
                f = line.split()
                job = int(f[1])
                if job in seen:
                    sys.exit(f"job {job} expanded twice")
                seen.add(job)
                for kv in f[2:]:
                    if kv.startswith(("work:", "layer:")):
                        continue
                    lev, why, c = kv.split(":")
                    counts[f"{lev}:{why}"] = counts.get(f"{lev}:{why}", 0) + int(c)
            else:
                rec = line.rstrip("\n"); byjob_w[int(rec.split(None, 1)[0])].append(rec)
    for job in sorted(byjob_w):
        cellv.extend(byjob_w.pop(job))                                    # compact: one string per cell
    for job in sorted(byjob_l):
        layer.extend(byjob_l.pop(job))
    missing = sorted(set(range(1, njobs + 1)) - seen)
    if missing and not ALLOW_MISSING:
        sys.exit(f"{len(missing)} of {njobs} jobs have no expansion yet (use --allow-missing to merge the rest; "
                 f"append the pending jobs later with: make_tasks.py append)")
    random.Random(20260928).shuffle(cellv)
    levels = {}
    with open(os.path.join(HERE, "cells.txt"), "w") as f:
        for i, line in enumerate(cellv, 1):
            g = line.split(); job, lev = int(g[0]), int(g[1])
            rec = REC % (i, job, lev, *map(float, g[2:6]))
            assert len(rec) == RECLEN, rec
            f.write(rec); levels[lev] = levels.get(lev, 0) + 1
    n = len(cellv); del cellv
    with open(os.path.join(HERE, "tasks_certify.txt"), "w") as f:
        for a in range(1, n + 1, per):
            b = min(a + per - 1, n)
            f.write(f"./run_task.sh batch cells.txt {a} {b} results/certify/c_{a:09d}.jsonl "
                    f"&> logs/certify/c_{a:09d}.log\n")
    os.makedirs(os.path.join(HERE, "logs", "certify"), exist_ok=True)
    # branch-layer cells (H₊ has a branch point on them): not certified; the layer stage tries the
    # reconstruction-free prune on them.  Same fixed-width records as cells.txt, in the same shuffled order.
    lay = layer
    random.Random(20260929).shuffle(lay)
    with open(os.path.join(HERE, "layer.txt"), "w") as f:
        for i, line in enumerate(lay, 1):
            g = line.split()
            rec = REC % (i, int(g[0]), int(g[1]), *map(float, g[2:6])); assert len(rec) == RECLEN, rec; f.write(rec)
    with open(os.path.join(HERE, "tasks_layer.txt"), "w") as f:
        for a in range(1, len(lay) + 1, LAYER_PER_TASK):
            b = min(a + LAYER_PER_TASK - 1, len(lay))
            f.write(f"./run_layer.sh layer.txt {a} {b} results/layer/l_{a:09d}.jsonl &> logs/layer/l_{a:09d}.log\n")
    os.makedirs(os.path.join(HERE, "logs", "layer"), exist_ok=True)
    cov = {"jobs": njobs, "pending_jobs": missing, "work_cells": n, "layer_cells": len(layer), "layer_tasks": (len(layer) + LAYER_PER_TASK - 1) // LAYER_PER_TASK, "work_cells_by_level": dict(sorted(levels.items())), "pruned": dict(sorted(counts.items())), "cells_per_task": per,
           "certify_tasks": (n + per - 1) // per}
    json.dump(cov, open(os.path.join(HERE, "coverage.json"), "w"), indent=1)
    print(json.dumps(cov, indent=1))


def sample_tasks(ntasks64, per):
    """tasks_certify1pct.txt: the cells of the first ntasks64 lines of tasks_certify.txt (64 cells each), in tasks of
    `per` cells (short tasks balance the load of a small sample).  The full run then starts at task ntasks64 + 1."""
    n = ntasks64 * 64
    N = os.path.getsize(os.path.join(HERE, "cells.txt")) // RECLEN
    n = min(n, N)
    with open(os.path.join(HERE, "tasks_certify1pct.txt"), "w") as f:
        for a in range(1, n + 1, per):
            b = min(a + per - 1, n)
            f.write(f"./run_task.sh batch cells.txt {a} {b} results/certify/c_{a:09d}.jsonl &> logs/certify/c_{a:09d}.log\n")
    print(f"{(n + per - 1) // per} sample tasks for cells 1..{n}; the full run starts at line {ntasks64 + 1} of tasks_certify.txt")


def append_pending(per):
    """Append the cells of jobs that were pending at the merge (coverage.json pending_jobs) once their expansion
    files exist: new IDs after the current end of cells.txt / layer.txt, and new task lines."""
    cov = json.load(open(os.path.join(HERE, "coverage.json")))
    pend = set(cov.get("pending_jobs", [])); done = set(); work = []; lay = []; counts = cov["pruned"]
    for fn in sorted(glob.glob(os.path.join(HERE, "results", "expand", "e_*.txt"))):
        for line in open(fn):
            f = line.split()
            if line.startswith("#prune") and int(f[1]) in pend:
                done.add(int(f[1]))
                for kv in f[2:]:
                    if not kv.startswith(("work:", "layer:")):
                        lev, why, c = kv.split(":"); counts[f"{lev}:{why}"] = counts.get(f"{lev}:{why}", 0) + int(c)
            elif line.startswith("#layer") and int(f[1]) in pend:
                lay.append((int(f[1]), int(f[2]), f[3:7]))
            elif not line.startswith("#") and int(f[0]) in pend:
                work.append((int(f[0]), int(f[1]), f[2:6]))
    work = [w for w in work if w[0] in done]; lay = [l for l in lay if l[0] in done]
    n0 = os.path.getsize(os.path.join(HERE, "cells.txt")) // RECLEN; l0 = os.path.getsize(os.path.join(HERE, "layer.txt")) // RECLEN
    with open(os.path.join(HERE, "cells.txt"), "a") as f:
        for i, (job, lev, th) in enumerate(work, n0 + 1): f.write(REC % (i, job, lev, *map(float, th)))
    with open(os.path.join(HERE, "layer.txt"), "a") as f:
        for i, (job, lev, th) in enumerate(lay, l0 + 1): f.write(REC % (i, job, lev, *map(float, th)))
    with open(os.path.join(HERE, "tasks_certify_append.txt"), "w") as f:
        for a in range(n0 + 1, n0 + len(work) + 1, per):
            b = min(a + per - 1, n0 + len(work))
            f.write(f"./run_task.sh batch cells.txt {a} {b} results/certify/c_{a:09d}.jsonl &> logs/certify/c_{a:09d}.log\n")
    with open(os.path.join(HERE, "tasks_layer_append.txt"), "w") as f:
        for a in range(l0 + 1, l0 + len(lay) + 1, LAYER_PER_TASK):
            b = min(a + LAYER_PER_TASK - 1, l0 + len(lay))
            f.write(f"./run_layer.sh layer.txt {a} {b} results/layer/l_{a:09d}.jsonl &> logs/layer/l_{a:09d}.log\n")
    cov["pending_jobs"] = sorted(pend - done); cov["work_cells"] += len(work); cov["layer_cells"] += len(lay)
    cov["appended"] = cov.get("appended", []) + [dict(jobs=sorted(done), work=len(work), layer=len(lay))]
    json.dump(cov, open(os.path.join(HERE, "coverage.json"), "w"), indent=1)
    print(f"appended {len(done)} jobs: {len(work)} work cells, {len(lay)} layer cells; still pending {sorted(pend - done)}")


if __name__ == "__main__":
    what = sys.argv[1]
    if what == "expand":
        expand_tasks(int(sys.argv[2]) if len(sys.argv) > 2 else 500)
    elif what == "append":
        append_pending(int(sys.argv[2]) if len(sys.argv) > 2 and sys.argv[2].isdigit() else 64)
    elif what == "sample":
        sample_tasks(int(sys.argv[2]), int(sys.argv[3]) if len(sys.argv) > 3 else 8)
    elif what == "cells":
        cells(int(sys.argv[2]) if len(sys.argv) > 2 and sys.argv[2].isdigit() else 64)
    else:
        sys.exit(__doc__)
