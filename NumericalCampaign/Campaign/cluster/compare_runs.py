"""Compare the cell lists of two campaign directories (e.g. the unguarded run and the guarded run of record).
   python3 compare_runs.py OLD_DIR NEW_DIR [--layer-map OUT.tsv [--only-ids IDS.txt]]
Checks that cells.txt and layer.txt hold the same multisets of (JOB, LEVEL, θ1..θ4) records, and that the
coverage.json prune counts agree.  With --layer-map, writes old_id -> new_id for every layer cell (keyed by
the record content), for re-keying branch-layer work done on the old IDs.  Bookkeeping only."""
import collections, hashlib, json, os, sys

RECLEN = 121


def records(path):
    """id -> 8-byte digest of the record text after the ID field (JOB, LEVEL, θ; identical formatting of identical
    floats makes this exact up to digest collisions, which only make the comparison stricter to pass by chance)."""
    out = {}
    with open(path, "rb") as f:
        while True:
            rec = f.read(RECLEN)
            if not rec:
                break
            out[int(rec[:9])] = hashlib.blake2b(rec[9:], digest_size=8).digest()
    return out


def main():
    old, new = sys.argv[1], sys.argv[2]
    ok = True
    for name in ("cells.txt", "layer.txt"):
        a = records(os.path.join(old, name)); b = records(os.path.join(new, name))
        ca = collections.Counter(a.values()); cb = collections.Counter(b.values())
        same = ca == cb
        ok &= same
        print(f"{name}: old {len(a):,} records, new {len(b):,}; identical multisets: {same}"
              + ("" if same else f" (only old {sum((ca - cb).values()):,}, only new {sum((cb - ca).values()):,})"))
        if name == "layer.txt" and "--layer-map" in sys.argv:
            out = sys.argv[sys.argv.index("--layer-map") + 1]
            where = collections.defaultdict(list)
            for i, k in b.items():
                where[k].append(i)
            only = None
            if "--only-ids" in sys.argv:                              # e.g. the survivor IDs of the old layer prune
                only = {int(x.split()[0]) for x in open(sys.argv[sys.argv.index("--only-ids") + 1]) if x.strip() and x.split()[0].isdigit()}
            with open(out, "w") as f, open(os.path.join(old, name), "rb") as lf:
                f.write("old_id\tnew_id\tjob\tlevel\ttheta1\ttheta2\ttheta3\ttheta4\n")
                i = 0
                while True:
                    rec = lf.read(RECLEN)
                    if not rec:
                        break
                    i += 1
                    if only is not None and i not in only:
                        continue
                    k = a[i]; j = where[k].pop() if where.get(k) else 0
                    g = rec.split()
                    f.write(f"{i}\t{j}\t" + "\t".join(x.decode() for x in g[1:7]) + "\n")
            print(f"  wrote {out} (new_id 0 = no matching record)")
    co = json.load(open(os.path.join(old, "coverage.json"))); cn = json.load(open(os.path.join(new, "coverage.json")))
    same = co["pruned"] == cn["pruned"] and co["work_cells"] == cn["work_cells"] and co["layer_cells"] == cn["layer_cells"]
    ok &= same
    print(f"coverage.json prune counts, work and layer totals identical: {same}")
    print("PASS: identical expansion" if ok else "DIFFERENT")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
