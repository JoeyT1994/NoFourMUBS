#!/usr/bin/env python3
"""Stage E: SignedCornerPSDPrune on the open boxes left by stage D.

  python3 stageE_psd.py OUT IN1 [IN2 ...] [--workers N]

Reads stage-D lines "J LEV θ1..θ4 path:code ... |nearest=..." and writes each line back with every open code
(P or S) replaced by E when ProvenResults/SignedCornerPSDPrune/predicate.predicate returns ok = True on that
box: the whole closed box (centre from the driver's binary64 child construction, every half-width
radius_for_level(level) = an outward upper bound of π/2^level + 2^-40) has no physical strict-D0 completion.
First the whole level-LEV leaf is tried; if it is excluded, every open code becomes E (the leaf contains all of
its sub-boxes).  The default bounded profile (extra=True, seed_depth=8) is used.  ok = False changes nothing.
A trailing field "|psd=leaf" or "|psd=boxes:k/n" records what was excluded; the predicate is deterministic,
so the record is replayed by rerunning it.  OUT is written via OUT.part.
"""
import math, os, sys, time
from multiprocessing import get_context

ROOT = os.environ.get("NOFOUR_ROOT", os.path.join(os.path.dirname(os.path.abspath(__file__)), "code"))
sys.path.insert(0, os.path.join(ROOT, "ProvenResults", "SignedCornerPSDPrune"))


def child(c, lev, k):
    h = math.pi / 2 ** lev
    return [c[i] + (h / 2 if (k >> i) & 1 else -h / 2) for i in range(4)]


def excluded(theta, level):
    from predicate import predicate, radius_for_level
    try:
        return predicate(theta, [radius_for_level(level)] * 4)["ok"] is True
    except Exception:
        return False                                   # an exception is inconclusive, never an exclusion


def process(line):
    main, bar, rest = line.rstrip("\n").partition("|")
    g = main.split()
    if len(g) < 6 or main.startswith("#"):
        return line.rstrip("\n"), 0.0
    t = time.process_time()
    lev = int(g[1]); th = [float(x) for x in g[2:6]]
    ents = [e.split(":") for e in g[6:]]
    opened = [i for i, (_, c) in enumerate(ents) if c in ("P", "S")]
    tag = ""
    if opened:
        if excluded(th, lev):
            for i in opened:
                ents[i][1] = "E"
            tag = "|psd=leaf"
        else:
            k = 0
            for i in opened:
                c, l = th, lev
                for ch in ents[i][0]:
                    c = child(c, l, int(ch, 16)); l += 1
                if excluded(c, l):
                    ents[i][1] = "E"; k += 1
            tag = f"|psd=boxes:{k}/{len(opened)}"
    out = " ".join(g[:6] + [p + ":" + c for p, c in ents]) + (" " + bar + rest if bar else "") + tag
    return out, time.process_time() - t


if __name__ == "__main__":
    args = sys.argv[1:]
    workers = int(args[args.index("--workers") + 1]) if "--workers" in args else 1
    files = [a for i, a in enumerate(args) if not a.startswith("--") and (i == 0 or args[i - 1] != "--workers")]
    out, ins = files[0], files[1:]
    if os.path.exists(out):
        sys.exit(0)
    lines = [l for fn in ins for l in open(fn) if l.strip()]
    cpu = 0.0
    with get_context("spawn").Pool(workers) as pool, open(out + ".part", "w") as f:
        for text, c in pool.imap(process, lines, chunksize=4):
            f.write(text + "\n"); cpu += c
        f.write(f"#stageE lines {len(lines)} cpu_seconds {cpu:.1f}\n")
    os.replace(out + ".part", out)
