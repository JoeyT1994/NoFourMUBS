#!/usr/bin/env python3
"""Exact-address audit of a campaign run directory.  Additive: audit.py is kept unchanged as the historical
bookkeeping check.  PROOF_OF_RECORD.md §10.1–10.2 shows that audit.py's counters alone pass a job with 16
identical children and a certified cell with no certificate record; this auditor rejects both (see selftest).

  python3 audit_exact.py expand  [--workers N] [--receipt PATH]
  python3 audit_exact.py certify DIR [DIR ...] [--cells CELLS] [--leafpass DIR=CELLS ...] [--workers N] [--receipt PATH]
                                 (--cells: the cell file of the whole-cell passes, default cells.txt; e.g. the
                                  branch95 stage F uses --cells cells_F.txt with DIR stageF)
  python3 audit_exact.py layer   [--workers N] [--receipt PATH]
  python3 audit_exact.py selftest

Run from the run directory (or set NOFOUR_RUN).  Exit status 0 only on PASS.

Ideal addresses.  The phase cube [-π, π]^4 is the level-0 cell; a level-l cell has half-width π/2^l and centre
coordinates -π + (2a+1)π/2^l with integer addresses 0 <= a < 2^l.  A stored binary64 centre x is assigned the
address a only when |x - ideal| <= 2^-44, which is checked in exact integer arithmetic with π to 200 bits.  The
driver enlarges every box by 2^-40 (header "enlarge"), so each enlarged numerical box contains its ideal cell.

expand.  For every level-6 job (jobs_L6.txt): the job centre has a level-6 address and jobs are distinct; there
is exactly one #prune record; every emitted work or layer cell has an exact address at its level whose level-6
ancestor is the job; emitted cells are pairwise distinct and form an antichain (no emitted cell lies inside
another); the per-level counts satisfy E(6) = 1, R(l) = E(l) - P(l) - W(l) - L(l) >= 0, E(l+1) = 16 R(l), closing
with R = 0; and the #prune work/layer totals equal the emitted lines.  Then the emitted ideal cells are disjoint
and the counted prunes account for exactly the remaining volume of the job.  cells.txt and layer.txt are checked
to be the emitted work and layer records exactly (fixed 121-byte records, IDs 1..N in order, equal multisets of
(job, level, binary64 centre)).

certify.  For every cell of cells.txt the authoritative record is the one in the last listed DIR that has it.
Each record block is parsed as a complete preorder certificate tree: a depth-0 root whose centre and radius
equal the cells.txt record bit for bit, whose centre has an exact address at the cell's level; every
"split:*" node followed by exactly 16 child subtrees at depth+1 in the driver's order (first coordinate
fastest), each with radius ρ/2 and centre θ ± ρ/2 bit for bit (the driver's own binary64 operations); leaves
"certified" with method cover_accelerated, a prune status (F_out, R_out, BC_out, D0_out; not at the root) or
FAILED:*; depth <= the header's maxdepth; then exactly one done line whose failed count equals the number of
FAILED leaves.  Every header must carry an approved code hash, accelerated_cover = true, fastmax = 0,
child_fastmax = 0 and enlarge = 2^-40.  PASS requires every cell finished with failed = 0.

layer.  Every record of layer.txt has exactly one row in results/layer/*.jsonl (no .part files) with the same
job, level and centre; ok rows have reason no_side_triple or R_negative; the ok = false rows are the branch input.
"""
import collections, glob, hashlib, json, math, os, sys
from multiprocessing import get_context

RUN = os.environ.get("NOFOUR_RUN", os.getcwd())
JOBLEVEL = 6
REC = 121
TOL_BITS = 44
K = 200                                        # π is carried as floor(π 2^K)
ENLARGE = 2.0 ** -40
PRUNE = {"F_out", "R_out", "BC_out", "D0_out"}
LAYER_OK = {"no_side_triple", "R_negative"}


def _atan_inv(n, one):
    s = t = one // n; n2 = n * n; k = 1
    while t:
        t //= n2; k += 2
        s += (-t // k) if (k // 2) % 2 else t // k
    return s


def _pi_fixed(bits):
    g = 32; one = 1 << (bits + g)
    return (16 * _atan_inv(5, one) - 4 * _atan_inv(239, one)) >> g


PI = _pi_fixed(K)
assert abs(PI / 2 ** K - math.pi) < 1e-15


def address(x, level):
    """Exact ideal address of a binary64 centre coordinate at `level`, or None if it is not within 2^-44."""
    a = int(round(((x + math.pi) * 2 ** level / math.pi - 1) / 2))
    if not 0 <= a < 2 ** level:
        return None
    n, d = x.as_integer_ratio()
    diff = ((2 * a + 1) * PI - (PI << level)) * d - (n << (K + level))     # 2^(K+level) d (ideal - x), up to π's last bit
    if abs(diff) > d << (K + level - TOL_BITS):
        return None
    return a


def addr4(theta, level):
    a = tuple(address(x, level) for x in theta)
    return None if None in a else a


def canon(job, level, theta):
    return f"{job} {level} " + " ".join(float.hex(float(t)) for t in theta)


def mhash(items):
    """Order-independent multiset digest (sum of SHA-256 values mod 2^256) and count."""
    s = 0; n = 0
    for it in items:
        s = (s + int.from_bytes(hashlib.sha256(it.encode()).digest(), "big")) % (1 << 256); n += 1
    return s, n


def read_records(path, a=1, b=None):
    """Fixed-width records ID JOB LEVEL θ1..θ4 (121 bytes) for IDs a..b; checks ID = position."""
    out = []
    with open(path, "rb") as f:
        size = os.fstat(f.fileno()).st_size
        if size % REC:
            raise ValueError(f"{path}: size {size} is not a multiple of {REC}")
        n = size // REC; b = n if b is None else min(b, n)
        f.seek((a - 1) * REC); buf = f.read((b - a + 1) * REC)
    for i in range(b - a + 1):
        line = buf[i * REC:(i + 1) * REC]
        if line[-1:] != b"\n":
            raise ValueError(f"{path}: record {a + i} lacks its newline")
        g = line.split()
        if int(g[0]) != a + i:
            raise ValueError(f"{path}: record {a + i} has ID {int(g[0])}")
        out.append((int(g[1]), int(g[2]), tuple(float(x) for x in g[3:7])))
    return out


def nrecords(path):
    return os.path.getsize(path) // REC


# ---------------------------------------------------------------- expand

def _expand_file(args):
    fn, jobs = args
    per = collections.defaultdict(lambda: {"W": [], "L": [], "prune": [], "lines": []})
    for line in open(fn):
        f = line.split()
        if not f:
            continue
        if line.startswith("#prune"):
            per[int(f[1])]["prune"].append(f[2:])
        elif line.startswith("#layer"):
            per[int(f[1])]["L"].append((int(f[2]), tuple(map(float, f[3:7]))))
        else:
            per[int(f[0])]["W"].append((int(f[1]), tuple(map(float, f[2:6]))))
    bad = []; levels = collections.Counter(); reasons = collections.Counter()
    hw = [0, 0]; hl = [0, 0]
    for job, d in per.items():
        if not 1 <= job <= len(jobs):
            bad.append(("job id out of range", job)); continue
        if len(d["prune"]) != 1:
            bad.append(("#prune records", job, len(d["prune"]))); continue
        A6 = addr4(jobs[job - 1], JOBLEVEL); nb = len(bad)
        keys = set(); em = collections.Counter()
        for kind in ("W", "L"):
            for lev, th in d[kind]:
                a = addr4(th, lev) if JOBLEVEL <= lev <= 20 else None
                if a is None or A6 is None or any(x >> (lev - JOBLEVEL) != y for x, y in zip(a, A6)):
                    bad.append(("cell not an exact descendant of its job", job, kind, lev, th)); continue
                if (lev, a) in keys:
                    bad.append(("duplicate cell", job, kind, lev, th)); continue
                keys.add((lev, a)); em[(kind, lev)] += 1; levels[(kind, lev)] += 1
                s, n = mhash([canon(job, lev, th)])
                tgt = hw if kind == "W" else hl
                tgt[0] = (tgt[0] + s) % (1 << 256); tgt[1] += n
        for lev, a in keys:
            for up in range(JOBLEVEL, lev):
                if (up, tuple(x >> (lev - up) for x in a)) in keys:
                    bad.append(("emitted cell inside another emitted cell", job, lev, a)); break
        pc = collections.Counter(); kv = {}
        for x in d["prune"][0]:
            k, v = x.rsplit(":", 1)
            if k in ("work", "layer"):
                kv[k] = int(v)
            else:
                lev, why = k.split(":"); pc[int(lev)] += int(v); reasons[why] += int(v)
        if kv.get("work") != len(d["W"]) or kv.get("layer") != len(d["L"]):
            bad.append(("work/layer totals differ from emitted lines", job)); continue
        nb = len(bad)
        E = 1; closed = False
        for lev in range(JOBLEVEL, 21):
            R = E - pc.get(lev, 0) - em.get(("W", lev), 0) - em.get(("L", lev), 0)
            if R < 0:
                bad.append(("more decisions than examined cells", job, lev)); break
            if R == 0:
                if any(pc.get(l, 0) or em.get(("W", l), 0) or em.get(("L", l), 0) for l in range(lev + 1, 21)):
                    bad.append(("records below the closed tree", job, lev))
                closed = True; break
            E = 16 * R
        if not closed and len(bad) == nb:
            bad.append(("tree did not close", job))
    return dict(jobs=sorted(per), bad=bad[:50], nbad=len(bad), levels=dict(levels), reasons=dict(reasons), hw=hw, hl=hl)


def _records_hash(args):
    path, a, b = args
    s = 0; n = 0
    for job, lev, th in read_records(path, a, b):
        x, m = mhash([canon(job, lev, th)]); s = (s + x) % (1 << 256); n += m
    return s, n


def chunks(n, size=200000):
    return [(a, min(a + size - 1, n)) for a in range(1, n + 1, size)]


def audit_expand(workers):
    jobs = [tuple(float(x) for x in l.split()) for l in open(os.path.join(RUN, "jobs_L6.txt"))]
    A = [addr4(t, JOBLEVEL) for t in jobs]
    bad = [("job centre not on the level-6 grid", i + 1) for i, a in enumerate(A) if a is None]
    if len(set(A)) != len(A):
        bad.append(("duplicate jobs", len(A) - len(set(A))))
    files = sorted(glob.glob(os.path.join(RUN, "results", "expand", "e_*.txt")))
    parts = glob.glob(os.path.join(RUN, "results", "expand", "*.part"))
    if parts:
        bad.append(("unfinished .part files", len(parts)))
    seen = collections.Counter(); levels = collections.Counter(); reasons = collections.Counter()
    hw = [0, 0]; hl = [0, 0]; nbad = len(bad)
    with get_context("fork").Pool(workers) as pool:
        for r in pool.imap_unordered(_expand_file, [(f, jobs) for f in files], chunksize=8):
            for j in r["jobs"]:
                seen[j] += 1
            bad += r["bad"]; nbad += r["nbad"]
            for k, v in r["levels"].items():
                levels[k] += v
            for k, v in r["reasons"].items():
                reasons[k] += v
            for tgt, src in ((hw, r["hw"]), (hl, r["hl"])):
                tgt[0] = (tgt[0] + src[0]) % (1 << 256); tgt[1] += src[1]
        missing = [j for j in range(1, len(jobs) + 1) if seen[j] == 0]
        dupjobs = [j for j, c in seen.items() if c > 1]
        inv = {}
        for name, h in (("cells.txt", hw), ("layer.txt", hl)):
            path = os.path.join(RUN, name); n = nrecords(path)
            s = 0; m = 0
            for x, k in pool.imap_unordered(_records_hash, [(path, a, b) for a, b in chunks(n)]):
                s = (s + x) % (1 << 256); m += k
            inv[name] = dict(records=m, emitted=h[1], equal=(s == h[0] and m == h[1]))
            if not inv[name]["equal"]:
                bad.append((f"{name} is not exactly the emitted records", m, h[1])); nbad += 1
    nbad += len(missing) + len(dupjobs)
    res = dict(mode="expand", run=RUN, jobs=len(jobs), missing_jobs=len(missing), duplicated_job_records=len(dupjobs),
               violations=nbad, examples=bad[:20],
               work_cells=sum(v for (k, _), v in levels.items() if k == "W"),
               layer_cells=sum(v for (k, _), v in levels.items() if k == "L"),
               by_level={f"{k}{l}": v for (k, l), v in sorted(levels.items())}, pruned=dict(sorted(reasons.items())),
               inventory=inv)
    res["status"] = "PASS" if nbad == 0 else "FAIL"
    return res


# ---------------------------------------------------------------- certify

def code_hash(code_dir):
    """driver.jl's code_hash(): its CERT is Campaign/../Certification, which decides the sort order."""
    cert = os.path.join(code_dir, "Campaign", "..", "Certification")
    files = sorted([os.path.join(cert, f) for f in os.listdir(cert) if f.endswith(".jl")] +
                   [os.path.join(code_dir, "Campaign", "driver.jl")])
    return hashlib.sha256(b"\0".join(open(f, "rb").read() for f in files)).hexdigest()[:16]


def header_problems(h, approved):
    p = []
    if h.get("code") not in approved:
        p.append("unapproved code hash " + str(h.get("code")))
    if h.get("accelerated_cover") is not True:
        p.append("accelerated_cover not true")
    if h.get("fastmax") != 0 or h.get("child_fastmax") != 0:
        p.append("a ray-first acceptance path is enabled")
    if h.get("enlarge") != ENLARGE:
        p.append("enlarge != 2^-40")
    return p


def children(theta, rho):
    h = rho / 2
    return [tuple(theta[i] + (h if (k >> i) & 1 else -h) for i in range(4)) for k in range(16)]


class TreeError(Exception):
    pass


def parse_tree(recs, i, theta, rho, depth, maxdepth, cid):
    """Consume one subtree starting at recs[i]; return (next index, failed leaves, certified leaves)."""
    if i >= len(recs):
        raise TreeError("missing record")
    r = recs[i]
    if r.get("depth") != depth or r.get("rho") != rho or tuple(r.get("theta", ())) != theta:
        raise TreeError(f"record {i} is not the expected node (depth {depth})")
    st = r.get("status", "")
    if st.startswith("split:"):
        if depth >= maxdepth:
            raise TreeError("split beyond maxdepth")
        j = i + 1; nf = nc = 0
        for c in children(theta, rho):
            j, f, k = parse_tree(recs, j, c, rho / 2, depth + 1, maxdepth, cid); nf += f; nc += k
        return j, nf, nc
    if st == "certified":
        if r.get("method") != "cover_accelerated":
            raise TreeError("certified by an unapproved method " + str(r.get("method")))
        return i + 1, 0, 1
    if st in PRUNE:
        if depth == 0:
            raise TreeError("prune status at the root")
        return i + 1, 0, 1
    if st.startswith("FAILED"):
        return i + 1, 1, 0
    raise TreeError("unknown status " + st)


def _certify_file(args):
    fn, cells_path, approved = args
    lines = open(fn).read().splitlines()
    out = []; bad = []; headers = collections.Counter(); hdr = None; nrec = 0
    blocks = []; cur = []
    for k, line in enumerate(lines):
        try:
            r = json.loads(line)
        except ValueError:
            bad.append(("unparseable line", fn, k)); continue
        if r.get("header"):
            if cur:
                bad.append(("header inside a cell block", fn, k)); cur = []
            hdr = r; headers[json.dumps({x: r.get(x) for x in ("code", "cover0", "cellmax", "maxdepth", "coverbudget")}, sort_keys=True)] += 1
            for p in header_problems(r, approved):
                bad.append(("header: " + p, fn, k))
            continue
        if hdr is None:
            bad.append(("record before any header", fn, k)); continue
        if r.get("done"):
            blocks.append((r, cur, hdr)); cur = []
        else:
            cur.append(r)
    if cur:
        bad.append(("trailing records without a done line", fn, len(cur)))
    ids = [d["cell"] for d, _, _ in blocks]
    if not ids:
        return dict(file=fn, cells=[], bad=bad, nbad=len(bad), headers=dict(headers), records=0)
    lo, hi = min(ids), max(ids)
    cells = read_records(cells_path, lo, hi)
    for d, recs, h in blocks:
        cid = d["cell"]
        job, lev, theta = cells[cid - lo]
        try:
            if any(r.get("cell") != cid for r in recs):
                raise TreeError("records of another cell inside the block")
            if not recs:
                raise TreeError("done line without a certificate tree")
            if addr4(theta, lev) is None:
                raise TreeError("cells.txt centre not on its level's grid")
            j, nf, nc = parse_tree(recs, 0, theta, math.pi / 2 ** lev, 0, h.get("maxdepth", 0), cid)
            if j != len(recs):
                raise TreeError("records after the end of the tree")
            if d.get("failed") != nf:
                raise TreeError(f"done failed={d.get('failed')} but the tree has {nf} FAILED leaves")
            nrec += len(recs)
            fl = [(lev + r["depth"], tuple(r["theta"])) for r in recs if r["status"].startswith("FAILED")]
            out.append((cid, nf, fl, job))
        except TreeError as e:
            bad.append((str(e), fn, cid)); out.append((cid, -1, [], job))
    return dict(file=fn, cells=out, bad=bad[:50], nbad=len(bad), headers=dict(headers), records=nrec)


def _run_pass(pool, sub, cells_path, approved, pattern="*.jsonl"):
    files = sorted(glob.glob(os.path.join(RUN, "results", sub, pattern)))
    here = {}; dup = 0; recs = 0; bad = []; nbad = 0; headers = collections.Counter()
    for r in pool.imap_unordered(_certify_file, [(f, cells_path, approved) for f in files], chunksize=4):
        bad += r["bad"][:5]; nbad += r.get("nbad", len(r["bad"])); recs += r["records"]
        for hk, v in r["headers"].items():
            headers[hk] += v
        for cid, nf, fl, job in r["cells"]:
            if cid in here:
                dup += 1
            here[cid] = (nf, fl, job)
    return files, here, dup, recs, bad, nbad, headers


def audit_certify(dirs, workers, leafpasses=(), cells="cells.txt"):
    """dirs: whole-cell passes over cells.txt, later superseding earlier cell by cell.  leafpasses: (DIR, CELLS)
    pairs, in order; each record of CELLS is one FAILED leaf (exact level and centre) of an earlier final tree,
    and its tree in DIR replaces exactly that leaf.  Its own FAILED leaves may be replaced by a later leaf pass."""
    cells_path = os.path.join(RUN, cells); N = nrecords(cells_path)
    approved = {code_hash(os.path.join(RUN, "code"))}
    final = {}; passes = []; bad = []; nbad = 0; headers = collections.Counter()
    with get_context("fork").Pool(workers) as pool:
        for k, sub in enumerate(dirs):
            files, here, dup, recs, b, nb, hd = _run_pass(pool, sub, cells_path, approved, "c_*.jsonl")
            bad += b; nbad += nb; headers.update(hd)
            out_of_range = sum(1 for c in here if not 1 <= c <= N)
            reruns_of_passed = sum(1 for c in here if c in final and final[c][0] == 0) if k else 0
            nbad += dup + out_of_range
            final.update(here)
            passes.append(dict(dir=sub, files=len(files), cells=len(here), records=recs, duplicate_cells=dup,
                               out_of_range=out_of_range, failed_cells=sum(1 for v in here.values() if v[0] > 0),
                               malformed_cells=sum(1 for v in here.values() if v[0] < 0), reruns_of_passed=reruns_of_passed,
                               unfinished_part_files=len(glob.glob(os.path.join(RUN, "results", sub, "*.part")))))
        unfinished = N - sum(1 for c in final if 1 <= c <= N)
        malformed = sorted(c for c, v in final.items() if v[0] < 0)
        open_leaves = {fl: c for c, v in final.items() if v[0] > 0 for fl in v[1]}       # (level, θ) -> top cell
        for sub, cfile in leafpasses:
            base = os.path.basename(cfile)
            pattern = (base[len("cells_"):-len(".txt")] + "_*.jsonl") if base.startswith("cells_") and base.endswith(".txt") else "*.jsonl"
            files, here, dup, recs, b, nb, hd = _run_pass(pool, sub, os.path.join(RUN, cfile), approved, pattern)
            bad += b; nbad += nb + dup; headers.update(hd)
            recs_in = read_records(os.path.join(RUN, cfile)); unmatched = 0; resolved = 0; newopen = {}
            missing_records = len(recs_in) - len(here)
            for rid, (nf, fl, job) in here.items():
                parent_job, lev, th = recs_in[rid - 1]
                key = (lev, th)
                if key not in open_leaves or (open_leaves[key] != parent_job and parent_job not in final):
                    unmatched += 1; bad.append(("leaf record matches no open FAILED leaf", sub, rid)); continue
                top = open_leaves.pop(key)
                if nf < 0:
                    malformed.append(top)
                elif nf == 0:
                    resolved += 1
                else:
                    for x in fl:
                        newopen[x] = top
            open_leaves.update(newopen)
            nbad += unmatched + max(missing_records, 0)
            passes.append(dict(dir=sub, cells_file=cfile, leaf_records=len(recs_in), finished=len(here),
                               missing_records=missing_records, resolved_leaves=resolved, unmatched=unmatched,
                               new_failed_leaves=len(newopen), records=recs,
                               unfinished_part_files=len(glob.glob(os.path.join(RUN, "results", sub, "*.part")))))
    open_cells = sorted(set(open_leaves.values()) | set(malformed))
    res = dict(mode="certify", run=RUN, cells=N, approved_code=sorted(approved), passes=passes, unfinished_cells=unfinished,
               open_failed_leaves=len(open_leaves), cells_not_closed=len(open_cells), open_examples=open_cells[:20],
               violations=nbad, examples=bad[:20], headers=dict(headers))
    res["status"] = "PASS" if nbad == 0 and unfinished == 0 and not open_cells else "FAIL"
    return res


# ---------------------------------------------------------------- layer

def _layer_file(args):
    fn, layer_path = args
    rows = [json.loads(l) for l in open(fn)]
    if not rows:
        return dict(ids=[], bad=[], surv=[], reasons={})
    lo = min(r["cell"] for r in rows); hi = max(r["cell"] for r in rows)
    recs = read_records(layer_path, lo, hi); bad = []; ids = []; surv = []; reasons = collections.Counter()
    for r in rows:
        job, lev, th = recs[r["cell"] - lo]
        if (r["job"], r["level"], tuple(r["theta"])) != (job, lev, th):
            bad.append(("row does not match layer.txt", fn, r["cell"]))
        if r["ok"] is True and r["reason"] not in LAYER_OK:
            bad.append(("ok row with an unapproved reason", fn, r["cell"], r["reason"]))
        if r["ok"] is not True:
            surv.append(r["cell"])
        reasons[(r["ok"], r["reason"])] += 1; ids.append(r["cell"])
    return dict(ids=ids, bad=bad, surv=surv, reasons={json.dumps(k): v for k, v in reasons.items()})


def audit_layer(workers):
    layer_path = os.path.join(RUN, "layer.txt"); N = nrecords(layer_path)
    files = sorted(glob.glob(os.path.join(RUN, "results", "layer", "l_*.jsonl")))
    parts = glob.glob(os.path.join(RUN, "results", "layer", "*.part"))
    seen = bytearray(N + 1); dup = 0; bad = []; surv = []; reasons = collections.Counter(); oor = 0
    with get_context("fork").Pool(workers) as pool:
        for r in pool.imap_unordered(_layer_file, [(f, layer_path) for f in files], chunksize=8):
            bad += r["bad"]; surv += r["surv"]
            for k, v in r["reasons"].items():
                reasons[k] += v
            for c in r["ids"]:
                if not 1 <= c <= N:
                    oor += 1
                elif seen[c]:
                    dup += 1
                else:
                    seen[c] = 1
    missing = N - sum(seen)
    surv.sort()
    digest = hashlib.sha256("\n".join(map(str, surv)).encode()).hexdigest()
    nbad = len(bad) + dup + oor + missing + len(parts)
    return dict(mode="layer", run=RUN, layer_cells=N, missing=missing, duplicates=dup, out_of_range=oor,
                unfinished_part_files=len(parts), violations=nbad, examples=bad[:20], outcomes=dict(reasons),
                survivors=len(surv), survivor_ids_sha256=digest, status="PASS" if nbad == 0 else "FAIL")


# ---------------------------------------------------------------- selftest

def selftest():
    """Synthetic run directories: one valid, and one per defect, each of which must FAIL."""
    import shutil, tempfile
    global RUN
    saved = RUN; results = {}
    rho6 = math.pi / 64
    job = tuple(-math.pi + (2 * a + 1) * rho6 for a in (40, 41, 42, 43))
    kids = children(job, rho6)                                    # level-7 centres, driver order

    def rec(i, j, l, th):
        return f"{i:9d} {j:7d} {l:2d} " + " ".join(f"{x:+.17e}" for x in th)

    def build(root, expand_lines, cell_lines, certs, code_ok=True):
        os.makedirs(os.path.join(root, "results", "expand")); os.makedirs(os.path.join(root, "results", "certify"))
        os.makedirs(os.path.join(root, "code", "Certification")); os.makedirs(os.path.join(root, "code", "Campaign"))
        open(os.path.join(root, "code", "Certification", "x.jl"), "w").write("x\n")
        open(os.path.join(root, "code", "Campaign", "driver.jl"), "w").write("d\n")
        open(os.path.join(root, "jobs_L6.txt"), "w").write(" ".join(repr(x) for x in job) + "\n")
        open(os.path.join(root, "results", "expand", "e_0000001.txt"), "w").write("".join(l + "\n" for l in expand_lines))
        open(os.path.join(root, "cells.txt"), "w").write("".join(l.ljust(120) + "\n" for l in cell_lines))
        open(os.path.join(root, "layer.txt"), "w").write("")
        code = code_hash(os.path.join(root, "code")) if code_ok else "0000000000000000"
        hdr = dict(header=True, code=code, accelerated_cover=True, fastmax=0.0, child_fastmax=0.0, enlarge=ENLARGE, maxdepth=2)
        with open(os.path.join(root, "results", "certify", "c_000000001.jsonl"), "w") as f:
            f.write(json.dumps(hdr) + "\n")
            for line in certs:
                f.write(json.dumps(line) + "\n")

    def node(cid, th, rho, d, st, method=""):
        return {"cell": cid, "theta": list(th), "rho": rho, "depth": d, "status": st, "method": method}

    rho7 = math.pi / 128
    good_expand = [f"1 7 " + " ".join(repr(x) for x in kids[k]) for k in range(16)] + ["#prune 1 work:16 layer:0"]
    good_cells = [rec(k + 1, 1, 7, kids[k]) for k in range(16)]
    gc = []
    for k in range(16):
        if k == 3:
            gc.append(node(4, kids[3], rho7, 0, "split:time"))
            for c in children(kids[3], rho7):
                gc.append(node(4, c, rho7 / 2, 1, "certified", "cover_accelerated"))
        else:
            gc.append(node(k + 1, kids[k], rho7, 0, "certified", "cover_accelerated"))
        gc.append({"cell": k + 1, "done": True, "failed": 0})

    def drop_child(c):
        c = [dict(x) for x in c]; i = next(i for i, x in enumerate(c) if x.get("depth") == 1); del c[i]; return c

    def move_child(c):
        c = [dict(x) for x in c]; i = next(i for i, x in enumerate(c) if x.get("depth") == 1)
        c[i]["theta"] = list(c[i + 1]["theta"]); return c

    def strip_tree(c):
        return [x for x in c if not (x.get("cell") == 1 and not x.get("done"))]

    def fail_unreported(c):
        c = [dict(x) for x in c]; c[0]["status"] = "FAILED:time"; return c

    dup_expand = [f"1 7 " + " ".join(repr(x) for x in kids[0])] * 16 + ["#prune 1 work:16 layer:0"]   # PROOF_OF_RECORD §10.1
    nest_expand = good_expand[:15] + [f"1 8 " + " ".join(repr(x) for x in children(kids[0], rho7)[0])] + ["#prune 1 work:16 layer:0"]
    off_expand = [f"1 7 " + " ".join(repr(x + 1e-9) for x in kids[0])] + good_expand[1:]
    cases = {
        "valid": (good_expand, good_cells, gc, True, "PASS"),
        "16 identical children (§10.1)": (dup_expand, [rec(k + 1, 1, 7, kids[0]) for k in range(16)], gc, True, "FAIL"),
        "emitted cell nested in another": (nest_expand, good_cells, gc, True, "FAIL"),
        "off-grid cell": (off_expand, good_cells, gc, True, "FAIL"),
        "cells.txt differs from expansion": (good_expand, good_cells[:15] + [rec(16, 1, 7, kids[0])], gc, True, "FAIL"),
        "done line with no tree (§10.2)": (good_expand, good_cells, strip_tree(gc), True, "FAIL"),
        "split with a missing child": (good_expand, good_cells, drop_child(gc), True, "FAIL"),
        "split with a misplaced child": (good_expand, good_cells, move_child(gc), True, "FAIL"),
        "FAILED leaf reported as failed=0": (good_expand, good_cells, fail_unreported(gc), True, "FAIL"),
        "unapproved code hash": (good_expand, good_cells, gc, False, "FAIL"),
        "missing cell": (good_expand, good_cells, gc[:-2], True, "FAIL"),
    }
    ok = True
    for name, (ex, cl, ce, code_ok, want) in cases.items():
        root = tempfile.mkdtemp(prefix="audit_exact_")
        try:
            build(root, ex, cl, ce, code_ok); RUN = root
            e = audit_expand(2)["status"]; c = audit_certify(["certify"], 2)["status"]
            got = "PASS" if e == c == "PASS" else "FAIL"
            results[name] = dict(expand=e, certify=c, expected=want, ok=got == want)
            ok &= got == want
        finally:
            shutil.rmtree(root); RUN = saved
    # leaf passes: cell 4's split has one FAILED child; a leaf pass replaces exactly that child
    def leafcase(shift, certified):
        ce = [dict(x) for x in gc]
        i = next(i for i, x in enumerate(ce) if x.get("cell") == 4 and x.get("depth") == 1)
        ce[i]["status"] = "FAILED:time_limit"; ce[i]["method"] = ""
        j = next(j for j, x in enumerate(ce) if x.get("cell") == 4 and x.get("done")); ce[j]["failed"] = 1
        leaf = tuple(ce[i]["theta"]); lt = tuple(x + shift for x in leaf)
        root = tempfile.mkdtemp(prefix="audit_exact_")
        try:
            build(root, good_expand, good_cells, ce); os.makedirs(os.path.join(root, "results", "pass3"))
            open(os.path.join(root, "cells_p3.txt"), "w").write(rec(1, 4, 8, lt).ljust(120) + "\n")
            hdr = dict(header=True, code=code_hash(os.path.join(root, "code")), accelerated_cover=True, fastmax=0.0,
                       child_fastmax=0.0, enlarge=ENLARGE, maxdepth=4)
            with open(os.path.join(root, "results", "pass3", "p3_000000001.jsonl"), "w") as f:
                f.write(json.dumps(hdr) + "\n")
                f.write(json.dumps(node(1, lt, math.pi / 256, 0, "certified" if certified else "FAILED:time_limit", "cover_accelerated" if certified else "")) + "\n")
                f.write(json.dumps({"cell": 1, "done": True, "failed": 0 if certified else 1}) + "\n")
            RUN_ = root
            globals()["RUN"] = RUN_
            without = audit_certify(["certify"], 2)["status"]
            withp = audit_certify(["certify"], 2, [("pass3", "cells_p3.txt")])["status"]
            return without, withp
        finally:
            shutil.rmtree(root); globals()["RUN"] = saved
    w, p3 = leafcase(0.0, True)
    results["leaf pass replaces a FAILED leaf"] = dict(without=w, with_leafpass=p3, ok=(w == "FAIL" and p3 == "PASS"))
    w, p3 = leafcase(2 ** -30, True)
    results["leaf pass at a shifted centre"] = dict(with_leafpass=p3, ok=p3 == "FAIL")
    w, p3 = leafcase(0.0, False)
    results["leaf pass that itself fails"] = dict(with_leafpass=p3, ok=p3 == "FAIL")
    ok &= all(results[k]["ok"] for k in ("leaf pass replaces a FAILED leaf", "leaf pass at a shifted centre", "leaf pass that itself fails"))
    # the address test itself: exact centres pass, a 2^-40 displacement fails
    x = -math.pi + 77 * math.pi / 2 ** 9
    results["address"] = dict(ok=address(x, 9) == 38 and address(x + 2 ** -40, 9) is None)
    ok &= results["address"]["ok"]
    return dict(mode="selftest", cases=results, status="PASS" if ok else "FAIL")


if __name__ == "__main__":
    args = sys.argv[1:]
    workers = int(args[args.index("--workers") + 1]) if "--workers" in args else os.cpu_count()
    receipt = args[args.index("--receipt") + 1] if "--receipt" in args else None
    leafpasses = [tuple(args[i + 1].split("=", 1)) for i, a in enumerate(args) if a == "--leafpass"]
    cellsfile = args[args.index("--cells") + 1] if "--cells" in args else "cells.txt"
    pos = [a for i, a in enumerate(args) if not a.startswith("--") and (i == 0 or args[i - 1] not in ("--workers", "--receipt", "--leafpass", "--cells"))]
    mode = pos[0]
    res = {"expand": lambda: audit_expand(workers), "certify": lambda: audit_certify(pos[1:] or ["certify"], workers, leafpasses, cellsfile),
           "layer": lambda: audit_layer(workers), "selftest": selftest}[mode]()
    res["auditor_sha256"] = hashlib.sha256(open(os.path.abspath(__file__), "rb").read()).hexdigest()
    text = json.dumps(res, indent=1, default=str)
    if receipt:
        if os.path.exists(receipt):
            sys.exit(f"{receipt} exists")
        open(receipt, "w").write(text + "\n")
    print(text)
    sys.exit(0 if res["status"] == "PASS" else 1)
