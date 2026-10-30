#!/usr/bin/env python3
"""Keep whole-cell run directories small (no proof role: proofs are the input and proposal files, which are untouched).

  python plane_slim.py DIR [WORKERS]          slim everything under DIR (recursively), report bytes saved

- frontier.json and replay.json (the checker's reports, from ~300 kB to hundreds of MB each, mostly per-pattern detail) are cut
  (over 64 kB) to their small top-level fields: status, reason, hashes, geometry, counts, timings, everything the pipeline reads.
  Each slimmed report records the SHA-256 and size of the full one and the keys it dropped.
- frontier.columns.json.gz (the search's own column cache, never read by a replay) is removed once the cell's replay
  certified it.
plane_ball.py and plane_refine.py call slim_cell() on each cell as soon as its search and replay end.
"""
import hashlib, json, os, sys
from concurrent.futures import ThreadPoolExecutor

LIMIT = int(os.environ.get('TC_SLIM_LIMIT', 1 << 16))   # reports above 64 kB are slimmed
KEEP = int(os.environ.get('TC_SLIM_KEEP', 4096))                         # top-level values whose JSON is at most this long are kept
CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')
NEED = ('status', 'reason', 'snapshot_sha256', 'proposal_sha256', 'entry_sha256', 'record_sha256', 'original_atlas_sha256',
        'ball', 'geometry', 'checker_sha256', 'dependencies_sha256', 'counts')   # kept whatever their size


def slim(path):
    """Slim one report in place (whole, then renamed); returns the bytes saved."""
    try: n = os.path.getsize(path)
    except OSError: return 0
    if n <= LIMIT: return 0
    h = hashlib.sha256()
    with open(path, 'rb') as f:
        for c in iter(lambda: f.read(1 << 20), b''): h.update(c)
    try: doc = json.load(open(path))
    except ValueError: return 0                        # being written: left for the next pass
    if not isinstance(doc, dict) or 'slim' in doc: return 0
    out = {k: v for k, v in doc.items() if k in NEED or len(json.dumps(v)) <= KEEP}
    out['slim'] = dict(full_sha256=h.hexdigest(), full_bytes=n, dropped=sorted(set(doc) - set(out)))
    tmp = '%s.%d.slim' % (path, os.getpid())
    with open(tmp, 'w') as f: json.dump(out, f, indent=1)
    os.replace(tmp, path)
    return n - os.path.getsize(path)


def slim_cell(d):
    """Slim one cell directory (not its kids); returns the bytes saved."""
    saved = slim(os.path.join(d, 'frontier.json')) + slim(os.path.join(d, 'replay.json'))
    col = os.path.join(d, 'frontier.columns.json.gz')
    if os.path.exists(col):
        try: done = json.load(open(os.path.join(d, 'replay.json'))).get('status') in CERT
        except (OSError, ValueError): done = False
        if done:
            saved += os.path.getsize(col); os.remove(col)
    return saved


def main():
    top, w = sys.argv[1], int(sys.argv[2]) if len(sys.argv) > 2 else 16
    cells = [r for r, _, fs in os.walk(top) if 'entry.json' in fs]
    with ThreadPoolExecutor(w) as pool: saved = sum(pool.map(slim_cell, cells))
    print(json.dumps(dict(dir=top, cells=len(cells), saved_bytes=saved)))


if __name__ == '__main__': main()
