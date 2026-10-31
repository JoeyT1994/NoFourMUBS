#!/usr/bin/env python3
"""Replay, in parallel, every cell of one ball's whole-cell manifest that the live audit's replay cache does not hold
yet (no proof role here: the cache only spares the live audit a serial replay; verify_ball.py replays everything).

  python plane_prereplay.py PLANE_ROOT BALL_DIR BALL [WORKERS] [--part I/K] [--leaves]

Uses exactly the auditor's path: the manifest's cells whose entry and tree files still have the recorded hashes,
PR #4's PlaneManifest on PLANE_ROOT, plane_cache.key for the key, PlaneManifest.close for the replay. Each certified
replay is recorded in BALL_DIR/replay_cache.prereplay.json (one writer: this script; saved every 100 replays), which
plane_cache.load merges with its siblings. Writes BALL_DIR/prereplay.json: counts and the cells that did not certify.
--part I/K (one node each): a stable hash partition, recorded in replay_cache.prereplay.I.json and
prereplay.I.json. Replays are recorded as they finish (a slow cell holds back no other).
--leaves: instead, check every leaf of those cells' trees on its own, in parallel (a tree replays its leaves one after
another, so one large tree is otherwise one long serial job), recording each certified leaf in the leaf cache
(ext_cell_certificate.py, TC_LEAF_CACHE; default BALL_DIR/..); the tree replays that follow then only walk the trees
and look their leaves up. Writes prereplay.leaves[.I].json.
"""
import hashlib, json, os, sys, time
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path

M = None
M_ROOT = None


def owns(identity, part):
    """Ownership cannot change when another node adds cache entries."""
    if part is None: return True
    i, n = part
    if not (type(i) is int and type(n) is int and 0 <= i < n):
        raise ValueError('invalid replay part')
    digest = hashlib.sha256(json.dumps(identity, separators=(',', ':')).encode()).digest()
    return int.from_bytes(digest[:8], 'big') % n == i


def init(root, filtered, ball, leaves_mode=False):
    global M, M_ROOT
    sys.path.insert(0, str(Path(root) / 'TripleClassification/code'))
    from plane_audit_manifest import PlaneManifest
    # Importing the manifest installs an extended checker when present. Leaf
    # workers do not use its cell map. Forked tree workers inherit the validated
    # parent map; close() still rechecks the files before mathematical replay.
    if leaves_mode: return
    if M is None or M.path != Path(filtered) or M.ball != ball or M_ROOT != Path(root):
        M = PlaneManifest(filtered, ball, Path(root))
        M_ROOT = Path(root)


def leaf(job):
    inp, prop = job
    try:
        from plane_column_certificate import read_json, ctx
        import plane_cell_certificate as W
        ctx.prec = 224; r = W.check(Path(inp), read_json(Path(prop)))
        return inp, r.get('status'), bool(r.get('leaf_cache')), ''
    except Exception as e: return inp, None, False, ('%s: %s' % (type(e).__name__, e))[:120]


def one(job):
    level, cell, k = job
    try: return level, cell, k, M.close(level, cell), ''
    except Exception as e: return level, cell, k, False, ('%s: %s' % (type(e).__name__, e))[:120]


def main():
    global M, M_ROOT
    args = sys.argv[1:]; part = None
    if '--part' in args:
        i = args.index('--part'); part = tuple(int(x) for x in args[i + 1].split('/')); del args[i:i + 2]
        owns([], part)                       # validate before any expensive file work
    leaves_mode = '--leaves' in args
    if leaves_mode: args.remove('--leaves')
    root, d, ball = Path(args[0]).resolve(), Path(args[1]).resolve(), int(args[2])
    w = int(args[3]) if len(args) > 3 else int(os.environ.get('SLURM_CPUS_ON_NODE', '8'))
    tag = '' if part is None else '.%d' % part[0]
    os.environ.setdefault('TC_LEAF_CACHE', str(Path(args[1]).resolve().parent))   # workers inherit it
    here = Path(__file__).resolve().parent
    sys.path[:0] = [str(root / 'TripleClassification/code')]; sys.path += [str(here), str(here.parent)]   # checker tree first
    import plane_cache
    from plane_audit_manifest import PlaneManifest
    from plane_column_certificate import digest
    t0 = time.time(); doc = json.load(open(d / 'manifest.json'))
    keep = [it for it in doc['cells'] if all((d / it[k]['path']).is_file() and digest(d / it[k]['path']) == it[k]['sha256']
                                              for k in ('entry', 'tree'))]
    filtered = d / ('manifest.prereplay.%d.json' % os.getpid())
    filtered.write_text(json.dumps(dict(doc, cells=keep)))
    try:
        m = PlaneManifest(filtered, ball, root)
        M = m
        M_ROOT = root
        have = plane_cache.load(d / 'replay_cache.json'); src = doc['checker_sources_sha256']
        from concurrent.futures import ThreadPoolExecutor
        ents = list(m.entries.items())
        with ThreadPoolExecutor(32) as tp:            # every leaf file is hashed: I/O-bound, in threads
            keys = list(tp.map(lambda x: plane_cache.key(x[1][2], x[1][1], src, x[0][0], x[0][1]), ents))
        jobs = [(level, list(cell), k) for ((level, cell), _), k in zip(ents, keys) if have.get(k) != 'certified']
        cached_before = len(keep) - len(jobs)
        if leaves_mode:                        # every leaf of the uncached cells, each once
            want = {(level, tuple(cell)) for level, cell, _ in jobs}; ls = {}
            def walk(node, tree_path):
                if isinstance(node, dict):
                    if 'input' in node and 'proposal' in node:
                        q = [Path(node[k]['path']) for k in ('input', 'proposal')]
                        identity = tuple(node[k]['sha256'] for k in ('input', 'proposal'))
                        ls.setdefault(identity, tuple(str(x if x.is_absolute() else tree_path.parent / x) for x in q))
                    for v in node.get('children', []): walk(v, tree_path)
            for (level, cell), (entry, tree_path, item) in m.entries.items():
                if (level, tuple(cell)) in want: walk(json.load(open(tree_path))['tree'], Path(tree_path))
            todo = [job for identity, job in sorted(ls.items()) if owns(identity, part)]; stat = {}; failed = []
            with ProcessPoolExecutor(w, initializer=init, initargs=(str(root), str(filtered), ball, True)) as pool:
                for f in as_completed([pool.submit(leaf, j) for j in todo]):
                    inp, st, hit, err = f.result(); key = 'cached' if hit else (st or 'error')
                    stat[key] = stat.get(key, 0) + 1
                    if st not in ('CERTIFIED_EMPTY_RECORDED_H_CELL', 'CERTIFIED_CLASSIFIED_RECORDED_H_CELL'): failed.append(dict(input=inp, status=st, error=err))
            res = dict(ball=ball, cells=len(want), leaves=len(ls), checked=len(todo), counts=stat,
                       failed_count=len(failed), failed=failed[:200], seconds=round(time.time() - t0))
            if part: res['part'] = '%d/%d' % part
            tmp = d / ('prereplay.json.%d.new' % os.getpid()); json.dump(res, open(tmp, 'w')); os.replace(tmp, d / ('prereplay.leaves%s.json' % tag))
            print(json.dumps({k: v for k, v in res.items() if k != 'failed'})); return
        jobs = [job for job in jobs if owns(job[:2], part)]
        out = d / ('replay_cache.prereplay%s.json' % tag)
        try: mine = json.load(open(out))
        except (OSError, ValueError): mine = {}
        failed = []; n = 0
        with ProcessPoolExecutor(w, initializer=init, initargs=(str(root), str(filtered), ball)) as pool:
            for f in as_completed([pool.submit(one, j) for j in jobs]):
                level, cell, k, ok, err = f.result()
                n += 1
                if ok: mine[k] = 'certified'
                else: failed.append(dict(level=level, cell=cell, error=err))
                if n % 100 == 0: plane_cache.save(out, mine)
        plane_cache.save(out, mine)
    finally:
        filtered.unlink()
    res = dict(ball=ball, manifest_cells=len(doc['cells']), dropped=len(doc['cells']) - len(keep), cached_before=cached_before,
               replayed=len(jobs), certified=len(jobs) - len(failed), failed=failed, seconds=round(time.time() - t0))
    if part: res['part'] = '%d/%d' % part
    tmp = d / ('prereplay.json.%d.new' % os.getpid()); json.dump(res, open(tmp, 'w')); os.replace(tmp, d / ('prereplay%s.json' % tag))
    print(json.dumps({k: v for k, v in res.items() if k != 'failed'}))


if __name__ == '__main__': main()
