"""Verifying certificates: one ball's from its files alone, or the whole atlas's from a manifest.

`verify` checks every node of a certificate's tree on its own, in parallel, and nothing else: no cache, no earlier
run, no search output is trusted. A node is

- outside: cells.outside (exact rationals);
- a native leaf: native_leaf.check;
- a normal-form leaf: normal_form_leaf.check.

The tree must be a complete dyadic partition of its root cell (16 children or a resolved node everywhere). The
verdict is CLOSED when every node verifies and the root is the whole ball (CELL CLOSED for a smaller root), else OPEN.
CLOSED means: for every H in the ball, every third basis K completing (I, H/√6) is of known type, or there is none; with
scope `minimum-transition` (some pattern discharged by the ordering witness), this holds for every triple whose
H-transition has the least Gamma_F of its three transitions, which classifies every triple (README).

`verify_all` verifies the certificates a manifest lists (lines `BALL PATH`, paths relative to the manifest), appending
one JSON line per ball to a results file. A ball already there as CLOSED, with the same certificate digest and the
same checker, is not verified again, so a run can be resumed and split into shards (`--shard I/N`: the balls with
ball % N == I) that share one results file. The atlas is closed when the manifest lists every one of its balls and each
is CLOSED there, by this checker, for the digest of the certificate the manifest now names; result lines for other
balls or other certificates are not counted.
"""
import fcntl, hashlib, json, multiprocessing, os, sys, tempfile, time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path
from . import __version__, cells, native_leaf, normal_form_leaf, overlap, pinned
from .certificate import LEAF, Certificate, leaf_source

_CERT = {}                                       # the certificate being verified; forked workers inherit it


def checker_id():
    """SHA-256 of the checking code (this package's sources except the search, search/) and the pinned files' hashes:
    names the checker that produced a result."""
    here = Path(__file__).resolve().parent; h = hashlib.sha256((pinned.MANIFEST_SHA256 + json.dumps(pinned.APPROVED, sort_keys=True)).encode())
    for p in sorted(here.rglob('*.py')):
        if p.relative_to(here).parts[0] != 'search': h.update(str(p.relative_to(here)).encode() + b'\0' + p.read_bytes())
    return h.hexdigest()


def check_node(job):
    """Verify one node; returns (job, status, seconds). A refused node's status starts with FAILED."""
    kind, level, cell = job; cert, ball = _CERT['cert'], _CERT['ball']; t = time.time()
    try:
        if kind == 'outside':
            pinned.require(cells.outside(level, cell), 'outside node meets the ball'); return job, 'OUTSIDE', 0.0
        name = cells.name(level, cell)
        with tempfile.TemporaryDirectory(prefix='certifier.') as td:
            path = cert.extract(name + LEAF, td)
            pinned.require(path is not None or (kind == 'native' and level == 0), 'missing leaf file %s%s' % (name, LEAF))
            if kind == 'native': status = native_leaf.check(ball, level, cell, path)[0]
            else: status = normal_form_leaf.check(ball, level, cell, path)[0]
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
                scope='minimum-transition' if counts.get(normal_form_leaf.MIN_TRANSITION) else 'all', counts=counts,
                failed=[[l, list(c), why] for l, c, why in bad], nodes=len(jobs), core_seconds=round(core, 1),
                slowest_node_seconds=round(slow, 1), wall_seconds=round(time.time() - t0, 1), workers=workers,
                checker=dict(version=__version__, id=checker_id(), pinned_manifest=pinned.MANIFEST_SHA256))


def digest(path):
    """SHA-256 of a certificate's files: tree.json and leaves.tar, the leaf files of leaves/ in order, or the tar."""
    path = Path(path); h = hashlib.sha256()
    if path.is_file(): files = [path]
    else:
        source = leaf_source(path)                # the same files Certificate reads
        files = [path / 'tree.json'] + ([path / 'leaves.tar'] if source == 'tar' else
                                        sorted((path / 'leaves').glob('*')) if source == 'dir' else [])
    for f in files:
        h.update(f.name.encode() + b'\0')
        with open(f, 'rb') as g:
            for block in iter(lambda: g.read(1 << 24), b''): h.update(block)
    return h.hexdigest()


def _digest(path):
    """digest(path), or None for an unreadable certificate (which then matches no result line)."""
    try: return digest(path)
    except (OSError, ValueError): return None


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
        d = _digest(paths[ball]); old = done.get(ball)
        if old and old['verdict'] == 'CLOSED' and old['digest'] == d: continue
        try: r = verify(paths[ball], ball, workers)
        except Exception as e: r = dict(ball=ball, verdict='OPEN', failed=[[None, None, 'unreadable: %s' % str(e)[:200]]], counts={})
        line = dict(ball=ball, path=str(paths[ball]), digest=d, checker=checker, verdict=r['verdict'], scope=r.get('scope'),
                    counts=r['counts'], failed=r['failed'][:20], wall_seconds=r.get('wall_seconds'), core_seconds=r.get('core_seconds'))
        with open(results, 'a') as f:
            fcntl.flock(f, fcntl.LOCK_EX); f.write(json.dumps(line) + '\n'); f.flush(); fcntl.flock(f, fcntl.LOCK_UN)
        print('ball %d: %s' % (ball, line['verdict']), file=log, flush=True)
    return summary(read_results(results, checker), n, {b: _digest(p) for b, p in paths.items()})


def summary(done, n, digests):
    """The atlas's state for the manifest's certificates (`digests`: {ball: digest}): a result line counts only for a ball
    the manifest lists and only for the certificate it now names. Closed balls, balls not closed, balls not verified."""
    done = {b: x for b, x in done.items() if digests.get(b) is not None and x['digest'] == digests[b]}
    closed = {b: x for b, x in done.items() if x['verdict'] == 'CLOSED'}
    scopes = {}
    for x in closed.values(): scopes[x.get('scope')] = scopes.get(x.get('scope'), 0) + 1
    return dict(atlas_balls=n, manifest_balls=len(digests), closed=len(closed), scopes=scopes,
                all_closed=set(digests) == set(range(n)) and set(closed) == set(range(n)),
                not_closed=sorted(b for b, x in done.items() if x['verdict'] != 'CLOSED'),
                not_in_manifest=sorted(set(range(n)) - set(digests))[:100],
                not_verified=sorted(set(digests) - set(done))[:100],
                core_hours=round(sum(x.get('core_seconds') or 0 for x in done.values()) / 3600, 2))
