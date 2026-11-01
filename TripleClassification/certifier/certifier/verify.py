"""Verifying certificates: one ball's from its files alone, or the whole atlas's from a manifest.

`verify` checks every node of a certificate's tree on its own, in parallel, and nothing else: no cache, no earlier
run, no search output is trusted. A node is

- outside: cells.outside (exact rationals);
- a native leaf: native_leaf.check;
- a plane leaf: plane_leaf.check.

The tree must be a complete dyadic partition of its root cell (16 children or a resolved node everywhere). The
verdict is CLOSED when every node verifies and the root is the whole ball (CELL CLOSED for a smaller root), else OPEN.
The scope is `minimum-transition` when some plane leaf has an ordering-discharged pattern, else `all`.

`verify_all` verifies the certificates a manifest lists (lines `BALL PATH`, paths relative to the manifest), appending
one JSON line per ball to a results file. A ball already there as CLOSED, with the same certificate digest and the
same checker, is not verified again, so a run can be resumed and split into shards (`--shard I/N`: the balls with
ball % N == I) that share one results file. The atlas is closed when every one of its balls is CLOSED there.
"""
import fcntl, hashlib, json, multiprocessing, os, sys, tempfile, time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path
from . import __version__, cells, native_leaf, overlap, pinned, plane_leaf
from .certificate import Certificate

_CERT = {}                                       # the certificate being verified; forked workers inherit it


def checker_id():
    """SHA-256 of this package's sources and the pinned files' hashes: names the checker that produced a result."""
    here = Path(__file__).resolve().parent; h = hashlib.sha256((pinned.MANIFEST_SHA256 + json.dumps(pinned.APPROVED, sort_keys=True)).encode())
    for p in sorted(here.rglob('*.py')): h.update(str(p.relative_to(here)).encode() + b'\0' + p.read_bytes())
    return h.hexdigest()


def check_node(job):
    """Verify one node; returns (job, status, seconds). A refused node's status starts with FAILED."""
    kind, level, cell = job; cert, ball = _CERT['cert'], _CERT['ball']; t = time.time()
    try:
        if kind == 'outside':
            pinned.require(cells.outside(level, cell), 'outside node meets the ball'); return job, 'OUTSIDE', 0.0
        name = cells.name(level, cell)
        with tempfile.TemporaryDirectory(prefix='certifier.') as td:
            inp = cert.leaf_file(name, '.input.json.gz', td)
            pinned.require(inp is not None or (kind == 'native' and level == 0), 'missing leaf file %s.input.json.gz' % name)
            if kind == 'native': status = native_leaf.check(ball, level, cell, inp)[0]
            else:
                prop = cert.leaf_file(name, '.proposal.json.gz', td)
                pinned.require(prop is not None, 'missing leaf file %s.proposal.json.gz' % name)
                status = plane_leaf.check(ball, level, cell, inp, pinned.frontier.read_json(prop))['status']
        pinned.require_pinned_modules()          # nothing the check imported lazily shadows a pinned file
        return job, status, time.time() - t
    except Exception as e: return job, 'FAILED: %s' % str(e)[:200], time.time() - t
    finally: pinned.tidy_path()


def verify(path, ball=None, workers=8):
    """Verify the certificate at `path` (of `ball`, if given); returns the report (see the module docstring)."""
    t0 = time.time(); cert = Certificate(path); jobs, bad = cert.nodes(ball)
    ball = cert.tree['ball']; root = cert.tree['root']
    _CERT.update(cert=cert, ball=ball)
    pinned.original(ball)                        # loaded once here; forked workers inherit it
    try: overlap._parent(ball)                   # likewise the original ball's normal form
    except ArithmeticError: pass
    counts = {}; core = slow = 0.0
    if workers <= 1 or len(jobs) <= 1: results = map(check_node, jobs)
    else:
        pool = ProcessPoolExecutor(min(workers, len(jobs)), mp_context=multiprocessing.get_context('fork'))
        results = pool.map(check_node, jobs, chunksize=1)
    try:
        for (kind, level, cell), status, sec in results:
            key = 'FAILED' if status.startswith('FAILED') else status
            counts[key] = counts.get(key, 0) + 1; core += sec; slow = max(slow, sec)
            if key == 'FAILED': bad.append((level, cell, status))
    finally:
        if workers > 1 and len(jobs) > 1: pool.shutdown()
    whole = root == [0, [0, 0, 0, 0]]
    return dict(ball=ball, root=root, verdict=('CLOSED' if whole else 'CELL CLOSED') if not bad else 'OPEN',
                scope='minimum-transition' if counts.get(plane_leaf.MIN_TRANSITION) else 'all', counts=counts,
                failed=[[l, list(c), why] for l, c, why in bad], nodes=len(jobs), core_seconds=round(core, 1),
                slowest_node_seconds=round(slow, 1), wall_seconds=round(time.time() - t0, 1), workers=workers,
                checker=dict(version=__version__, id=checker_id(), pinned_manifest=pinned.MANIFEST_SHA256))


def digest(path):
    """SHA-256 of a certificate's files: tree.json and leaves.tar, the leaf files of leaves/ in order, or the tar."""
    path = Path(path); h = hashlib.sha256()
    files = ([path] if path.is_file() else [path / 'tree.json'] +
             ([path / 'leaves.tar'] if (path / 'leaves.tar').exists() else sorted((path / 'leaves').glob('*')) if (path / 'leaves').is_dir() else []))
    for f in files:
        h.update(f.name.encode() + b'\0')
        with open(f, 'rb') as g:
            for block in iter(lambda: g.read(1 << 24), b''): h.update(block)
    return h.hexdigest()


def read_manifest(manifest):
    """{ball: path} from lines `BALL PATH` (# comments allowed); paths are relative to the manifest."""
    base = Path(manifest).resolve().parent; out = {}
    for line in Path(manifest).read_text().splitlines():
        line = line.split('#', 1)[0].strip()
        if not line: continue
        b, p = line.split(None, 1); b = int(b)
        if b in out: raise ValueError('ball %d is listed twice' % b)
        out[b] = base / p
    return out


def read_results(results, checker):
    """{ball: the latest result line by this checker}."""
    out = {}
    if os.path.exists(results):
        for line in open(results):
            try: x = json.loads(line)
            except ValueError: continue
            if x.get('checker') == checker: out[x['ball']] = x
    return out


def verify_all(manifest, results=None, shard=(0, 1), workers=8, log=sys.stdout):
    """Verify the manifest's balls of this shard, then summarise the whole atlas from the results file."""
    results = results or str(manifest) + '.results.jsonl'
    paths = read_manifest(manifest); checker = checker_id(); n = pinned.atlas_size()
    done = read_results(results, checker)
    for ball in sorted(b for b in paths if b % shard[1] == shard[0]):
        d = digest(paths[ball]); old = done.get(ball)
        if old and old['verdict'] == 'CLOSED' and old['digest'] == d: continue
        try: r = verify(paths[ball], ball, workers)
        except Exception as e: r = dict(ball=ball, verdict='OPEN', scope=None, failed=[[None, None, 'unreadable: %s' % str(e)[:200]]], counts={})
        line = dict(ball=ball, path=str(paths[ball]), digest=d, checker=checker, verdict=r['verdict'], scope=r['scope'],
                    counts=r['counts'], failed=r['failed'][:20], wall_seconds=r.get('wall_seconds'), core_seconds=r.get('core_seconds'))
        with open(results, 'a') as f:
            fcntl.flock(f, fcntl.LOCK_EX); f.write(json.dumps(line) + '\n'); f.flush(); fcntl.flock(f, fcntl.LOCK_UN)
        print('ball %d: %s%s' % (ball, line['verdict'], ', scope %s' % line['scope'] if line['verdict'] == 'CLOSED' else ''), file=log, flush=True)
    return summary(read_results(results, checker), n)


def summary(done, n):
    """The atlas's state from the result lines: closed balls by scope, balls not closed, balls not yet verified."""
    closed = {b: x for b, x in done.items() if x['verdict'] == 'CLOSED'}
    scopes = {}
    for x in closed.values(): scopes[x['scope']] = scopes.get(x['scope'], 0) + 1
    return dict(atlas_balls=n, closed=len(closed), by_scope=scopes, all_closed=len(closed) == n and set(closed) == set(range(n)),
                not_closed=sorted(b for b, x in done.items() if x['verdict'] != 'CLOSED'),
                not_verified=sorted(set(range(n)) - set(done))[:100], core_hours=round(sum(x.get('core_seconds') or 0 for x in done.values()) / 3600, 2))
