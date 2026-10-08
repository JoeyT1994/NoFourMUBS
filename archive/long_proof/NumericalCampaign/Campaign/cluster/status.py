#!/usr/bin/env python3
"""Campaign progress: python3 status.py [--failed]

Stage 1 (expand): jobs expanded, work cells found, prune counts.
Stage 2 (certify): cells done, clean / bisected / failed, CPU time used, projection for the whole campaign,
ray counts and quartet-candidate counts of certified leaves.  --failed lists the failed leaves
(the residual set that needs the fold certificate or a local exclusion).
"""
import collections, glob, json, os, statistics, sys

HERE = os.path.dirname(os.path.abspath(__file__))
R = os.path.join(HERE, "results")


def expand_status():
    files = glob.glob(os.path.join(R, "expand", "e_*.txt")) + glob.glob(os.path.join(R, "expand", "e_*.txt.part"))
    if not files:
        return None
    njobs = sum(1 for _ in open(os.path.join(HERE, "jobs_L6.txt")))
    jobs = work = layer = 0
    for fn in files:
        try:
            lines = open(fn).readlines()
        except FileNotFoundError:          # a .part file renamed while we listed: count it next time
            continue
        for line in lines:
            if line.startswith("#prune"):
                jobs += 1
                kv = dict(x.split(":", 1) for x in line.split()[2:] if x.startswith(("work:", "layer:")))
                work += int(kv.get("work", 0)); layer += int(kv.get("layer", 0))
    print(f"expand : {jobs}/{njobs} jobs ({100 * jobs / njobs:.1f}%), {work} work cells and {layer} branch-layer cells so far"
          + (f"; projected {work * njobs / jobs:.3g} and {layer * njobs / jobs:.3g}" if jobs else ""))
    return jobs == njobs


def certify_status(show_failed):
    files = glob.glob(os.path.join(R, "certify", "c_*.jsonl")) + glob.glob(os.path.join(R, "certify", "c_*.jsonl.part"))
    if not files:
        print("certify: no results yet")
        return
    cov = json.load(open(os.path.join(HERE, "coverage.json")))
    status = collections.Counter(); rays = collections.Counter(); reasons = collections.Counter(); method = collections.Counter()
    times = []; failed = []; nV = collections.Counter(); hosts = collections.defaultdict(list); codes = set()
    finished_files = 0
    for fn in files:
        finished_files += fn.endswith(".jsonl")
        host = "?"; leaves = []
        try:
            lines = open(fn).readlines()
        except FileNotFoundError:
            continue
        for line in lines:
            try:
                r = json.loads(line)
            except ValueError:
                continue                      # a line cut by a kill; its cell has no done line and is redone
            if r.get("header"):
                host = r["cpu"]; codes.add(r["code"]); continue
            if r.get("done"):
                times.append(r["t"]); hosts[host].append(r["t"])
                depth = max((x["depth"] for x in leaves), default=0)
                status["failed" if r["failed"] else ("bisected" if depth else "clean")] += 1
                for x in leaves:
                    st = x["status"]
                    if st == "certified":
                        method[x.get("method", "rays")] += 1
                        if x.get("method", "rays") == "rays":
                            rays[x["rays"]] += 1; nV[x["nV"]] += 1
                    elif st.startswith("FAILED"):
                        reasons[st] += 1; failed.append(x)
                    elif st.startswith("split:"):
                        reasons[st] += 1
                leaves = []
            else:
                leaves.append(r)
    n = len(times); N = cov["work_cells"]
    cpu = sum(times) / 3600
    print(f"certify: {n}/{N} cells ({100 * n / N:.2f}%), {finished_files}/{cov['certify_tasks']} tasks finished")
    print("  status:", dict(status), " rates:", {k: f"{100 * v / n:.2f}%" for k, v in status.items()})
    ts = sorted(times)
    print(f"  time per cell: median {ts[n // 2]:.0f} s, mean {statistics.mean(ts):.0f} s, "
          f"p90 {ts[int(0.9 * n)]:.0f} s, p99 {ts[int(0.99 * n)]:.0f} s, max {ts[-1]:.0f} s")
    print(f"  CPU used {cpu:.4g} h; projected whole campaign {statistics.mean(ts) * N / 3600:.3g} CPU-h "
          f"(budget 6e5)")
    print("  certified leaves by method:", dict(method))
    print("  certified-leaf ray counts (rays method):", dict(sorted(rays.items())))
    print("  quartet candidate bases per certified leaf (nV):", dict(sorted(nV.items())))
    print("  split / failure reasons:", dict(reasons))
    for h, v in sorted(hosts.items()):
        print(f"  {h}: {len(v)} cells, mean {statistics.mean(v):.0f} s")
    if len(codes) > 1:
        print("  WARNING: results from more than one code version:", codes)
    if show_failed:
        for x in failed:
            print(json.dumps(x))


def layer_status(show_failed):
    files = glob.glob(os.path.join(R, "layer", "l_*.jsonl")) + glob.glob(os.path.join(R, "layer", "l_*.jsonl.part"))
    if not files:
        return
    cov = json.load(open(os.path.join(HERE, "coverage.json")))
    n = ok = 0; t = 0.0; why = collections.Counter(); left = []
    for fn in files:
        try:
            lines = open(fn).readlines()
        except FileNotFoundError:
            continue
        for line in lines:
            try:
                r = json.loads(line)
            except ValueError:
                continue
            n += 1; t += r["t"]; ok += r["ok"]; why[(r["ok"], r["reason"])] += 1
            if not r["ok"]:
                left.append(r)
    N = cov["layer_cells"]
    print(f"layer  : {n}/{N} cells ({100 * n / max(N, 1):.1f}%), excluded {ok} ({100 * ok / max(n, 1):.1f}%), "
          f"{t / 3600:.3g} CPU-h; outcomes {dict(why)}")
    if show_failed:
        for r in left:
            print(json.dumps(r))


if __name__ == "__main__":
    expand_status()
    if os.path.exists(os.path.join(HERE, "coverage.json")):
        layer_status("--layer-left" in sys.argv)
    if os.path.exists(os.path.join(HERE, "coverage.json")):
        certify_status("--failed" in sys.argv)
