"""Progress of the 29 September cover-fix runs (results/certify_v2/): the failed-cell retest and the 0.2% sample.
   python3 status_v2.py [--bands] [--v3 | --full]   (--v3: the accelerated cover-only sample; --full: the full run, results/certify_full)
Counts finished cells from .jsonl and .jsonl.part files.  The sample estimate is unbiased only once every sample cell
has finished (--bands also splits it by R at the cell centre, from cells.txt)."""
import glob, json, math, os, re, sys, collections
HERE = os.path.dirname(os.path.abspath(__file__)); RECLEN = 121
NCELLS = os.path.getsize(os.path.join(HERE, "cells.txt")) // RECLEN


def load(sub, base="certify_v2"):
    cells = {}; reasons = collections.Counter(); methods = collections.Counter(); codes = set()
    for fn in glob.glob(os.path.join(HERE, "results", base, sub, "*.jsonl*")):
        try:
            lines = open(fn).read().splitlines()
        except FileNotFoundError:            # renamed from .part while listing
            continue
        for l in lines:
            if not l.strip():
                continue
            r = json.loads(l)
            if r.get("header"):
                codes.add(r["code"]); continue
            if r.get("done"):
                cells[r["cell"]] = (r["failed"], r["t"])
            elif r["status"].startswith("FAILED"):
                reasons[r["status"]] += 1
            elif r["status"] == "certified":
                methods[r["method"]] += 1
    return cells, reasons, methods, codes


def R_centre(ids):
    """R at the cell centre (float, as in the report's R bands)."""
    import cmath
    out = {}
    with open(os.path.join(HERE, "cells.txt"), "rb") as f:
        for i in ids:
            f.seek((i - 1) * RECLEN); g = f.read(RECLEN).split()
            a, b, c, d = (cmath.exp(1j * float(x)) for x in g[3:7])
            E = [[1, 1, 1], [1, a, b], [1, c, d]]
            G = [[(6 if r == s else 0) - sum(E[r][k] * E[s][k].conjugate() for k in range(3)) for s in range(3)] for r in range(3)]
            s_, t_, r_ = G[1][0], G[2][0], G[2][1]
            X, Y, Z = abs(s_) ** 2, abs(t_) ** 2, abs(r_) ** 2
            p = X + Y + Z; J = 2 * (s_ * r_ * t_.conjugate()).real; W = X * Y + X * Z + Y * Z - X * Y * Z
            g_ = 27 - 3 * p + J; eta = 9 - p + J; chi = W - (p - 9) * (p - 18) + (p - 15) * J
            out[i] = 4 * g_ ** 2 * eta - chi ** 2
    return out


def summary(name, cells, reasons, methods, codes, expected=None):
    n = len(cells); nf = sum(1 for f, _ in cells.values() if f)
    ts = sorted(t for _, t in cells.values())
    print(f"{name}: {n}{'' if expected is None else f' of {expected}'} cells finished, code {sorted(codes)}")
    if not n:
        return
    mean = sum(ts) / n
    print(f"  fully certified {n - nf} ({100 * (n - nf) / n:.1f}%), with failed leaves {nf} ({100 * nf / n:.1f}%)")
    print(f"  time per cell: median {ts[n // 2]:.0f} s, mean {mean:.0f} s, p90 {ts[int(0.9 * (n - 1))]:.0f} s, max {ts[-1]:.0f} s;"
          f" at the 2,400 s cap {sum(t >= 2390 for t in ts)}")
    print(f"  certified leaves {dict(methods)}; failed leaves {dict(reasons)}")
    return mean


if __name__ == "__main__":
    if "--full" in sys.argv:
        c, r, m, h = load("", "certify_full"); mean = summary("FULL RUN (results/certify_full)", c, r, m, h, NCELLS)
        if c:
            print(f"  progress {100 * len(c) / NCELLS:.2f}% of {NCELLS:,} cells; task time so far {sum(t for _, t in c.values()) / 3600:,.0f} CPU-h")
    elif "--v3" in sys.argv:
        c, r, m, h = load("sample02b", "certify_v3"); mean = summary("0.2% sample, accelerated cover-only (cells 103,756..121,046)", c, r, m, h, 17291)
    else:
        c, r, m, h = load("retest"); summary("retest (300 cells that failed in the 1% sample)", c, r, m, h, 300)
        c, r, m, h = load("sample02"); mean = summary("0.2% sample (cells 86,465..103,755)", c, r, m, h, 17291)
    if mean:
        print(f"  projection for {NCELLS:,} cells: {mean * NCELLS / 3600:,.0f} CPU-h of task time"
              f" ({'complete' if len(c) >= (NCELLS if '--full' in sys.argv else 17291) else 'provisional: slow cells finish last'})")
    if "--bands" in sys.argv and c:
        R = R_centre(c.keys()); tot = sum(t for _, t in c.values())
        for lo, hi in ((-math.inf, 250), (250, 300), (300, math.inf)):
            ids = [i for i in c if lo <= R[i] < hi]
            if ids:
                t = sum(c[i][1] for i in ids)
                print(f"  R in [{lo}, {hi}): {len(ids)} cells ({100 * len(ids) / len(c):.0f}%), failure "
                      f"{100 * sum(1 for i in ids if c[i][0]) / len(ids):.1f}%, mean {t / len(ids):.0f} s, cost share {100 * t / tot:.0f}%")
