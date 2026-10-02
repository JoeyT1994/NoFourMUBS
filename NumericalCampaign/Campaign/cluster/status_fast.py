"""Fast progress of the full run: reads only the per-cell done lines (grep-level), not every leaf record.
   python3 status_fast.py [RESULTS_SUBDIR=certify_full]"""
import glob, os, re, sys
HERE = os.path.dirname(os.path.abspath(__file__)); N = os.path.getsize(os.path.join(HERE, "cells.txt")) // 121
sub = sys.argv[1] if len(sys.argv) > 1 else "certify_full"
pat = re.compile(rb'\{"cell":(\d+),"done":true,"failed":(\d+),"t":([0-9.eE+-]+)\}')
n = nf = 0; tot = 0.0; cap = 0; failed = []
for fn in glob.glob(os.path.join(HERE, "results", sub, "c_*.jsonl*")):
    try:
        data = open(fn, "rb").read()
    except FileNotFoundError:
        continue
    for m in pat.finditer(data):
        n += 1; t = float(m.group(3)); tot += t; cap += t >= 2390
        if m.group(2) != b"0":
            nf += 1; failed.append(int(m.group(1)))
print(f"{n:,} of {N:,} cells finished ({100 * n / N:.2f}%); fully certified {n - nf:,}; with failed leaves {nf} "
      f"({100 * nf / max(n, 1):.4f}%); at the cell cap {cap}; mean {tot / max(n, 1):.1f} s; task time {tot / 3600:,.0f} CPU-h; "
      f"projection {tot / max(n, 1) * N / 3600:,.0f} CPU-h")
if "--failed" in sys.argv:
    print("failed cells:", " ".join(map(str, sorted(failed))))
