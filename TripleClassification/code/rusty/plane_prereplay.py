#!/usr/bin/env python3
"""Replay, in parallel, every cell of one ball's whole-cell manifest that the live audit's replay cache does not hold
yet (no proof role here: the cache only spares the live audit a serial replay; verify_ball.py replays everything).

  python plane_prereplay.py PLANE_ROOT BALL_DIR BALL [WORKERS]

Uses exactly the auditor's path: the manifest's cells whose entry and tree files still have the recorded hashes,
PR #4's PlaneManifest on PLANE_ROOT, plane_cache.key for the key, PlaneManifest.close for the replay. Each certified
replay is recorded in BALL_DIR/replay_cache.prereplay.json (one writer: this script; saved every 100 replays), which
plane_cache.load merges with its siblings. Writes BALL_DIR/prereplay.json: counts and the cells that did not certify.
"""
import json, os, sys, time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path

M = None


def init(root, filtered, ball):
    global M
    sys.path.insert(0, str(Path(root) / 'TripleClassification/code'))
    from plane_audit_manifest import PlaneManifest
    M = PlaneManifest(filtered, ball, Path(root))


def one(job):
    level, cell, k = job
    try: return level, cell, k, M.close(level, cell), ''
    except Exception as e: return level, cell, k, False, ('%s: %s' % (type(e).__name__, e))[:120]


def main():
    root, d, ball = Path(sys.argv[1]).resolve(), Path(sys.argv[2]).resolve(), int(sys.argv[3])
    w = int(sys.argv[4]) if len(sys.argv) > 4 else int(os.environ.get('SLURM_CPUS_ON_NODE', '8'))
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
        have = plane_cache.load(d / 'replay_cache.json'); src = doc['checker_sources_sha256']
        jobs = []
        for (level, cell), (entry, tree_path, item) in m.entries.items():
            k = plane_cache.key(item, tree_path, src, level, cell)
            if have.get(k) != 'certified': jobs.append((level, list(cell), k))
        out = d / 'replay_cache.prereplay.json'
        try: mine = json.load(open(out))
        except (OSError, ValueError): mine = {}
        failed = []; n = 0
        with ProcessPoolExecutor(w, initializer=init, initargs=(str(root), str(filtered), ball)) as pool:
            for level, cell, k, ok, err in pool.map(one, jobs, chunksize=1):
                n += 1
                if ok: mine[k] = 'certified'
                else: failed.append(dict(level=level, cell=cell, error=err))
                if n % 100 == 0: plane_cache.save(out, mine)
        plane_cache.save(out, mine)
    finally:
        filtered.unlink()
    res = dict(ball=ball, manifest_cells=len(doc['cells']), dropped=len(doc['cells']) - len(keep), cached_before=len(keep) - len(jobs),
               replayed=len(jobs), certified=len(jobs) - len(failed), failed=failed, seconds=round(time.time() - t0))
    tmp = d / ('prereplay.json.%d.new' % os.getpid()); json.dump(res, open(tmp, 'w')); os.replace(tmp, d / 'prereplay.json')
    print(json.dumps({k: v for k, v in res.items() if k != 'failed'}))


if __name__ == '__main__': main()
