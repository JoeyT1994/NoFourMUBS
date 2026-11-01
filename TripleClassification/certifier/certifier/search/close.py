"""close: search for a certificate of a ball (or of one cell of it), coarse first. No proof role: every leaf it keeps
has passed the same leaf check `verify` runs, and `verify` checks the result again from its files.

A cell that misses the ball is outside. Otherwise:
- at levels <= native_first (default 0, the whole ball) the native certifier is tried first;
- then a plane proposal (search/plane.py) within a time cap per level, kept if plane_leaf.check accepts it;
- where the plane search meets a persistent pattern or its time cap (from level 3), the native certifier is tried;
- anything else is split into its 16 children, down to max_level (cells still failing there are left open).

Output, OUT/b<BALL>/: tree.json, leaves.tar (members leaves/<name>.json.gz, appended as leaves are found;
certificate.py), journal.jsonl (every outcome as it happens) and summary.json. An interrupted run resumes from the
journal: a journalled cell is not searched again if its files are in leaves.tar (a partly written tail is cut off).
"""
import io, json, multiprocessing, os, signal, tarfile, tempfile, time
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path
from .. import cells, native_leaf, overlap, pinned, plane_leaf
from ..certificate import LEAF, SCHEMA, leaf
from . import plane

# Time caps in seconds, by level. A plane search takes about 100 s (it rebuilds the record, C1, Stage C and the cover)
# and rarely more than 450 s; a capped search is split instead.
CAPS = {0: 150, 1: 150, 2: 150, 3: 450, 4: 450, 5: 300, 6: 300, 7: 300, 8: 300}; CAP = 1800
NATIVE_CAPS = {0: 1800}; NATIVE_CAP = 600
NATIVE_AFTER_PLANE = 3                  # from this level, a native attempt where the plane search fails
OPT = {}                                # this run's options, inherited by the forked workers


class TimeCap(Exception): pass


def _alarm(signum, frame): raise TimeCap('time cap')


def capped(seconds, f, *args):
    """f(*args), interrupted by TimeCap after `seconds`."""
    signal.signal(signal.SIGALRM, _alarm); signal.setitimer(signal.ITIMER_REAL, seconds)
    try: return f(*args)
    finally: signal.setitimer(signal.ITIMER_REAL, 0); pinned.tidy_path()


def native_attempt(ball, level, cell):
    """The cell's leaf files if the native certifier closes it within its cap, else None."""
    def attempt():
        files = {}
        with tempfile.TemporaryDirectory(prefix='certifier.native.') as td:
            path = None
            if level > 0:
                files[cells.name(level, cell) + LEAF] = leaf(plane.cell_record(ball, level, cell))
                path = os.path.join(td, 'cell.json.gz'); Path(path).write_bytes(*files.values())
            native_leaf.check(ball, level, cell, path)
        return files
    try: return capped(OPT['native_caps'].get(level, NATIVE_CAP), attempt)
    except Exception: return None


def search_cell(job):
    """Search one cell: (level, cell, outcome, seconds, reason, files); outcome is outside, native, leaf or split."""
    ball, level, cell = job; t = time.time(); native = OPT['native']
    if cells.outside(level, cell): return level, cell, 'outside', 0.0, '', {}
    if native and level <= OPT['native_first']:
        files = native_attempt(ball, level, cell)
        if files is not None: return level, cell, 'native', time.time() - t, '', files
    try: data = capped(OPT['caps'].get(level, CAP), plane.propose_cell, ball, level, cell)
    except TimeCap: why = 'time cap'
    except (ValueError, ArithmeticError, ZeroDivisionError, KeyError, TypeError) as e: why = str(e) or type(e).__name__
    else: why = None
    if why is not None:
        if native and level >= NATIVE_AFTER_PLANE and ('pattern remains' in why or why == 'time cap'):
            files = native_attempt(ball, level, cell)
            if files is not None: return level, cell, 'native', time.time() - t, '', files
        return level, cell, 'split', time.time() - t, why[:100], {}
    try:
        with tempfile.TemporaryDirectory(prefix='certifier.check.') as td:
            path = os.path.join(td, 'cell.json.gz'); Path(path).write_bytes(data)
            plane_leaf.check(ball, level, cell, path)
    except Exception as e: return level, cell, 'split', time.time() - t, 'check: %s' % str(e)[:100], {}
    finally: pinned.tidy_path()
    return level, cell, 'leaf', time.time() - t, '', {cells.name(level, cell) + LEAF: data}


def leaf_members(outcome, level, cell):
    """The tar member a leaf needs: its file, for a plane leaf and for a native leaf below level 0."""
    return ['leaves/' + cells.name(level, cell) + LEAF] if outcome == 'leaf' or outcome == 'native' and level else []


def compact(path, keep):
    """Rewrite leaves.tar with exactly the members `keep`, if it holds others or repeats (from an interrupted run)."""
    with tarfile.open(path) as t: names = [m.name for m in t]
    if len(names) == len(set(names)) and set(names) == set(keep): return
    new = path.with_name(path.name + '.new')
    with tarfile.open(path) as t, tarfile.open(new, 'w', format=tarfile.PAX_FORMAT) as u:
        last = {m.name: m for m in t}
        for name in sorted(keep): u.addfile(last[name], t.extractfile(last[name]))
    os.replace(new, path)


def recover(tar):
    """The members fully present in a (possibly interrupted) leaves.tar; the file is cut after the last of them and
    ends with an end-of-archive marker again (so new members can be appended)."""
    names, end = set(), 0
    if not tar.exists(): return names
    size = tar.stat().st_size
    try:
        with tarfile.open(tar) as t:
            for m in t:
                stop = m.offset_data + -(-m.size // 512) * 512
                if stop > size: break
                names.add(m.name); end = stop
    except tarfile.TarError: pass
    with open(tar, 'r+b') as f: f.truncate(end); f.seek(end); f.write(bytes(2 * tarfile.BLOCKSIZE))
    return names


def close(ball, out, cell=None, max_level=7, native_first=0, native=True, caps=None, native_caps=None, workers=8):
    out = Path(out).resolve() / ('b%d' % ball); out.mkdir(parents=True, exist_ok=True)
    l0, c0 = cell or (0, [0, 0, 0, 0])
    OPT.update(native=native, native_first=native_first, caps=dict(CAPS, **(caps or {})), native_caps=dict(NATIVE_CAPS, **(native_caps or {})))
    known = {}
    if (out / 'journal.jsonl').exists():
        for line in open(out / 'journal.jsonl'):
            try: x = json.loads(line); known[(x['level'], tuple(x['cell']))] = x
            except (ValueError, KeyError): pass
    present = recover(out / 'leaves.tar')
    tar = tarfile.open(out / 'leaves.tar', 'a' if present else 'w', format=tarfile.PAX_FORMAT)
    journal = open(out / 'journal.jsonl', 'a')
    state, why, per, core, t0 = {}, {}, {}, 0.0, time.time()

    def settle(level, cell, outcome, seconds, reason, new):
        nonlocal core
        p = per.setdefault(level, dict(searched=0, leaf=0, native=0, outside=0, split=0, open=0, resumed=0))
        p['searched'] += outcome != 'outside'; p['resumed'] += not new; core += seconds if new else 0
        if outcome == 'split' and level >= max_level: outcome = 'open'; why[(level, tuple(cell))] = reason
        state[(level, tuple(cell))] = outcome; p[outcome] += 1
        return cells.children(level, cell) if outcome == 'split' else []

    pinned.original(ball)                                   # loaded once here; forked workers inherit them
    try: overlap._parent(ball)
    except ArithmeticError: pass
    with ProcessPoolExecutor(workers, mp_context=multiprocessing.get_context('fork')) as pool:
        queue, live = [(l0, c0)], set()
        while queue or live:
            while queue:                                    # journalled cells settle at once; the rest are searched
                level, c = queue.pop(); x = known.get((level, tuple(c)))
                if x and all(m in present for m in leaf_members(x['status'], level, c)):
                    queue.extend(settle(level, c, x['status'], x.get('seconds', 0.0), x.get('reason', ''), False))
                else: live.add(pool.submit(search_cell, (ball, level, c)))
            if not live: break
            done = next(as_completed(live)); live.remove(done)
            level, c, outcome, seconds, reason, files = done.result()
            for name, data in sorted(files.items()):        # the leaf's files first, then its journal line
                info = tarfile.TarInfo('leaves/' + name); info.size = len(data); info.mtime = int(time.time())
                tar.addfile(info, io.BytesIO(data)); present.add(info.name)
            tar.fileobj.flush()
            journal.write(json.dumps(dict(level=level, cell=list(c), status=outcome, seconds=round(seconds, 1), reason=reason)) + '\n'); journal.flush()
            queue.extend(settle(level, c, outcome, seconds, reason, True))
            if len(state) % 200 == 0: print('%.0f s: %s' % (time.time() - t0, per), flush=True)
    tar.close(); journal.close()

    def node(level, c):
        s = state[(level, tuple(c))]
        if s == 'split': return {'children': [node(*k) for k in cells.children(level, c)]}
        return {'outside': True} if s == 'outside' else {'open': True} if s == 'open' else {s: cells.name(level, c)}
    tree = dict(schema=SCHEMA, ball=ball, root=[l0, list(c0)], tree=node(l0, c0))
    (out / 'tree.json').write_text(json.dumps(tree))
    keep = [m for (l, c), s in state.items() for m in leaf_members(s, l, c)]
    if keep: compact(out / 'leaves.tar', keep)
    else: os.remove(out / 'leaves.tar')                     # no leaf files (a native whole-ball certificate)
    opened = sorted(k for k, s in state.items() if s == 'open')
    summary = dict(ball=ball, root=[l0, list(c0)], verdict='OPEN' if opened else 'CLOSED',
                   leaves=sum(s in ('leaf', 'native') for s in state.values()), native_leaves=sum(s == 'native' for s in state.values()),
                   outside=sum(s == 'outside' for s in state.values()), open=len(opened), per_level={str(k): v for k, v in sorted(per.items())},
                   proof_bytes=(out / 'leaves.tar').stat().st_size if keep else 0, search_core_hours=round(core / 3600, 2),
                   wall_seconds=round(time.time() - t0), open_cells=[[l, list(c), why[(l, c)]] for l, c in opened[:500]])
    (out / 'summary.json').write_text(json.dumps(summary, indent=1))
    print(json.dumps({k: v for k, v in summary.items() if k != 'open_cells'}))
    return 0 if not opened else 1
