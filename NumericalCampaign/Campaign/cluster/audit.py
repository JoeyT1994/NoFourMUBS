#!/usr/bin/env python3
"""Audit of the campaign bookkeeping (not a proof step itself; it checks that the recorded decisions tile the domain).

  python3 audit.py expand            every level-6 job: exactly one #prune record; per-level refinement counts
                                     consistent with 16-ary subdivision; every emitted cell on its level's grid
                                     inside its job cell
  python3 audit.py certify [DIR ...] every work cell of cells.txt has a done line in results/DIR (default certify; the
                                     full run is certify_full, then certify_full_pass2), later DIRs superseding earlier
                                     ones cell by cell; bisection trees complete (each split leaf has 16 child records);
                                     one code hash; and every cell's final status has no failed leaves

Refinement consistency (per job).  Let E(l) be the cells examined at level l (E(6) = 1, the job cell),
P(l) those pruned (by reason, from #prune), W(l) and L(l) those emitted as work or layer cells.  Every examined
cell is pruned, emitted, or refined, so R(l) = E(l) - P(l) - W(l) - L(l) >= 0 and E(l+1) = 16 R(l); at the last
level R = 0.  Together with the grid check, this shows that the pruned, work and layer cells of the job tile
its level-6 cell (up to the enlargement, see README "Cell enlargement").
"""
import collections, glob, json, math, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
JOBLEVEL = 6


def job_cells():
    return [tuple(float(x) for x in l.split()) for l in open(os.path.join(HERE, "jobs_L6.txt"))]


def on_grid(theta, level, job_theta):
    """Centre of a level-`level` descendant of the job cell: offsets are odd multiples of ρ_level."""
    rho = math.pi / 2 ** level
    rho6 = math.pi / 2 ** JOBLEVEL
    for x, c in zip(theta, job_theta):
        k = (x - c) / rho                        # must be an odd integer with |k| < 2^(level-6)
        ki = round(k)
        if abs(k - ki) > 1e-6 or ki % 2 == 0 or abs(ki) >= 2 ** (level - JOBLEVEL):
            return False
        if abs(x - c) > rho6:
            return False
    return True


def audit_expand():
    jobs = job_cells(); nj = len(jobs)
    seen = collections.Counter(); emitted = collections.defaultdict(lambda: collections.Counter())
    pruned = {}; bad = []; totals = collections.Counter()
    for fn in sorted(glob.glob(os.path.join(HERE, "results", "expand", "e_*.txt"))):
        for line in open(fn):
            f = line.split()
            if line.startswith("#prune"):
                job = int(f[1]); seen[job] += 1
                pc = collections.Counter(); kv = {}
                for x in f[2:]:
                    k, v = x.rsplit(":", 1)
                    if k in ("work", "layer"):
                        kv[k] = int(v)
                    else:
                        lev, why = k.split(":"); pc[int(lev)] += int(v); totals["pruned:" + why] += int(v)
                pruned[job] = (pc, kv)
            elif line.startswith("#layer"):
                job, lev = int(f[1]), int(f[2]); th = tuple(map(float, f[3:7]))
                emitted[job][("L", lev)] += 1; totals["layer"] += 1
                if not on_grid(th, lev, jobs[job - 1]):
                    bad.append(("off-grid layer cell", job, lev, th))
            else:
                job, lev = int(f[0]), int(f[1]); th = tuple(map(float, f[2:6]))
                emitted[job][("W", lev)] += 1; totals["work"] += 1
                if not on_grid(th, lev, jobs[job - 1]):
                    bad.append(("off-grid work cell", job, lev, th))
    missing = [j for j in range(1, nj + 1) if seen[j] == 0]
    dup = [j for j, c in seen.items() if c > 1]
    inconsistent = []
    for job, (pc, kv) in pruned.items():
        em = emitted[job]
        if kv.get("work", 0) != sum(v for (t, _), v in em.items() if t == "W") or kv.get("layer", 0) != sum(v for (t, _), v in em.items() if t == "L"):
            inconsistent.append((job, "work/layer totals differ from emitted lines")); continue
        E = 1
        for lev in range(JOBLEVEL, 16):
            R = E - pc.get(lev, 0) - em.get(("W", lev), 0) - em.get(("L", lev), 0)
            if R < 0:
                inconsistent.append((job, f"level {lev}: more decisions than examined cells")); break
            if R == 0:
                if any(pc.get(l, 0) or em.get(("W", l), 0) or em.get(("L", l), 0) for l in range(lev + 1, 16)):
                    inconsistent.append((job, f"records below level {lev} after the tree closed"))
                break
            E = 16 * R
        else:
            inconsistent.append((job, "tree did not close by level 15"))
    pending = set()
    if "--allow-pending" in sys.argv and os.path.exists(os.path.join(HERE, "coverage.json")):
        pending = set(json.load(open(os.path.join(HERE, "coverage.json"))).get("pending_jobs", []))
    missing = [j for j in missing if j not in pending]
    ok = not (missing or dup or inconsistent or bad)
    if pending:
        print(f"  pending jobs (recorded in coverage.json, to be appended): {sorted(pending)}")
    print(f"expand audit: {nj} jobs, {len(pruned)} with #prune records; missing {len(missing)}, duplicated {len(dup)}, "
          f"inconsistent refinement {len(inconsistent)}, off-grid cells {len(bad)}")
    print("  totals:", dict(sorted(totals.items())))
    for x in (missing[:5], dup[:5], inconsistent[:5], bad[:5]):
        if x:
            print("  e.g.", x)
    print("PASS" if ok else "FAIL")
    return ok


def audit_certify():
    """certify [DIR ...]: later directories supersede earlier ones cell by cell (a second pass with larger caps
    rerunning the cells that had failed leaves).  The final status of every cell must be failed = 0."""
    subs = sys.argv[2:] or ["certify"]
    cells = os.path.join(HERE, "cells.txt"); N = os.path.getsize(cells) // 121
    final = {}; codes = set(); split_missing = []; bad_status = collections.Counter(); dup = []; not_needed = []
    for k, sub in enumerate(subs):
        seen = collections.Counter(); here = {}
        for fn in glob.glob(os.path.join(HERE, "results", sub, "c_*.jsonl")):
            recs = collections.defaultdict(list)
            for line in open(fn):
                try:
                    r = json.loads(line)
                except ValueError:
                    continue
                if r.get("header"):
                    codes.add(r["code"]); continue
                if r.get("done"):
                    seen[r["cell"]] += 1; here[r["cell"]] = r["failed"]
                else:
                    recs[r["cell"]].append(r)
                    st = r["status"]
                    if not (st == "certified" or st.startswith("split:") or st in ("F_out", "R_out", "BC_out", "D0_out") or st.startswith("FAILED")):
                        bad_status[st] += 1
            for cid, rs in recs.items():
                # each split leaf at depth d must be followed by 16 records at depth d+1 (any status)
                for i, r in enumerate(rs):
                    if r["status"].startswith("split:"):
                        nk = 0                              # children: depth d+1 records before the next record at depth <= d
                        for x in rs[i + 1:]:
                            if x["depth"] <= r["depth"]:
                                break
                            nk += x["depth"] == r["depth"] + 1
                        if nk != 16:
                            split_missing.append((sub, cid, r["depth"], nk))
        dup += [(sub, c) for c, v in seen.items() if v > 1]
        if k > 0:
            not_needed += [c for c in here if final.get(c, 1) == 0]   # rerun of a cell that had already passed
        final.update(here)
        print(f"  results/{sub}: {len(here):,} cells, {sum(1 for v in here.values() if v):,} with failed leaves")
    finished = len(final); failed = sorted(c for c, v in final.items() if v)
    out_of_range = [c for c in final if not 1 <= c <= N]
    print(f"certify audit of {' + '.join('results/' + x for x in subs)}: {finished}/{N} cells finished; final cells with failed "
          f"leaves {len(failed)}; duplicated done lines {len(dup)}; out-of-range ids {len(out_of_range)}; incomplete bisections "
          f"{len(split_missing)}; unknown leaf statuses {dict(bad_status)}; reruns of passed cells {len(not_needed)}; code hashes {sorted(codes)}")
    if failed:
        print("  failed cells (first 20):", failed[:20])
    ok = not dup and not split_missing and len(codes) <= 1 and not out_of_range and not bad_status
    print("FAIL" if not ok else "PASS" if finished == N and not failed else
          f"PASS so far (partial: {finished}/{N} finished" + (f", {len(failed)} with failed leaves)" if failed else ")"))
    return ok and finished == N and not failed


if __name__ == "__main__":
    sys.exit(0 if {"expand": audit_expand, "certify": audit_certify}[sys.argv[1]]() else 1)
