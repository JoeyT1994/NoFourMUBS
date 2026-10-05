#!/usr/bin/env python3
"""postE/frontier/class.txt: one character per frontier source index (S shoulder and other classes, F (2,4,4,2)
beyond the ring, N the three new classes), for run_frontier2b.sh.  5 Oct 2026."""
import gzip
NEW = {"0,2,3,0", "0,2,3,2", "0,0,2,4"}
idx = [int(x) for x in open("postE/frontier/index.txt")]
need = set(idx); cls = {}
with gzip.open("postE/inventory.txt.gz", "rt") as f:
    i = 0
    for line in f:
        if not line.strip() or line.startswith("#"):
            continue
        if i in need:
            c = line.split()[7]; cls[i] = "F" if c == "2,4,4,2" else "N" if c in NEW else "S"
        i += 1
open("postE/frontier/class.txt.part", "w").write("".join(cls[i] for i in idx))
import os, collections
os.replace("postE/frontier/class.txt.part", "postE/frontier/class.txt")
print(dict(collections.Counter(cls[i] for i in idx)))
