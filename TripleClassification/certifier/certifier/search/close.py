"""close: search for a certificate of a ball (or of one cell of it), coarse first. No proof role: `verify` checks
the result from its files alone.

One pool of workers serves every cell of the tree. A cell that misses the ball is outside. Otherwise:
- on the whole ball, the native certifier, within a time cap (most balls close here);
- from level nf_from (default 1) the normal-form witness (search/normal_form.py: 60 s per pattern, and the first
  pattern left open ends the attempt);
- where it fails, on cells of levels 2 to native_to (default 3), the native certifier, within 120 s (where it closes
  such a cell it does so in about a minute; on level-1 cells it rarely does);
- anything else is split into its 16 children, down to max_level (cells still failing there are left open).

BALL is a seed ball's atlas index, or the key of a ball given by its record (pinned.register). Output, OUT/b<BALL>/:
tree.json, leaves.tar (members leaves/<name>.json.gz, appended as leaves are found; certificate.py), journal.jsonl (every
outcome as it happens) and summary.json. An interrupted run resumes from the journal: a journalled cell is not searched
again if its files are in leaves.tar (a partly written tail is cut off).
"""
import io, json, multiprocessing, os, signal, tarfile, tempfile, time
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path
from flint import ctx
from .. import cells, native_leaf, overlap, pinned
from ..certificate import LEAF, SCHEMA, leaf
from . import normal_form

NATIVE_CAPS = {0: 1800}; NATIVE_CAP = 120   # native certifier time caps in seconds, by level
OPT = {}                                    # this run's options, inherited by the forked workers


class TimeCap(Exception): pass


def _alarm(signum, frame): raise TimeCap('time cap')


def capped(seconds, f, *args):
    """f(*args), interrupted by TimeCap after `seconds`."""
    signal.signal(signal.SIGALRM, _alarm); signal.setitimer(signal.ITIMER_REAL, seconds)
    try: return f(*args)
    finally: signal.setitimer(signal.ITIMER_REAL, 0); pinned.tidy_path()


def cell_record(ball, level, cell):
    """The cell's record (the ball's own at level 0; below, frontier.build_record), with the fields of its leaf file."""
    ctx.prec = 224
    rec = pinned.original(ball) if level == 0 else pinned.frontier.build_record(pinned.original(ball), level, list(cell), pinned.ROOT)
    return dict(schema=cells.INPUT_SCHEMA, ball=ball, level=level, cell=list(cell), record=rec, record_sha256=pinned.frontier.jsonsha(rec))


def native_attempt(ball, level, cell):
    """The cell's leaf files if the native certifier closes it within its cap, else None."""
    def attempt():
        files = {}
        with tempfile.TemporaryDirectory(prefix='certifier.native.') as td:
            path = None
            if level > 0:
                files[cells.name(level, cell) + LEAF] = leaf(cell_record(ball, level, cell))
                path = os.path.join(td, 'cell.json.gz'); Path(path).write_bytes(*files.values())
            native_leaf.check(ball, level, cell, path)
        return files
    try: return capped(NATIVE_CAPS.get(level, NATIVE_CAP), attempt)
    except Exception: return None


def search_cell(job):
    """Search one cell: (level, cell, outcome, seconds, reason, files); outcome is outside, native, normal_form or split."""
    ball, level, cell = job; t = time.time()
    if cells.outside(level, cell): return level, cell, 'outside', 0.0, '', {}
    if level == 0 and OPT['native_to'] >= 0:
        files = native_attempt(ball, level, cell)
        if files is not None: return level, cell, 'native', time.time() - t, '', files
    why = 'native certifier only at this level'
    if level >= OPT['nf_from']:
        try:
            data = normal_form.propose_cell(cell_record(ball, level, cell), capped, OPT['nf_cap'])
            return level, cell, 'normal_form', time.time() - t, '', {cells.name(level, cell) + LEAF: data}
        except TimeCap: why = 'a pattern took over %.0f s' % OPT['nf_cap']
        except (ValueError, ArithmeticError, ZeroDivisionError, KeyError, TypeError, IndexError) as e: why = str(e) or type(e).__name__
        finally: pinned.tidy_path()
        if 2 <= level <= OPT['native_to']:
            files = native_attempt(ball, level, cell)
            if files is not None: return level, cell, 'native', time.time() - t, '', files
    return level, cell, 'split', time.time() - t, why[:100], {}


def leaf_members(outcome, level, cell):
    """The tar member a leaf needs: its file, for a normal-form leaf and for a native leaf below level 0."""
    return ['leaves/' + cells.name(level, cell) + LEAF] if outcome == 'normal_form' or outcome == 'native' and level else []


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


def close(ball, out, cell=None, max_level=7, native_to=3, nf_from=1, nf_cap=normal_form.CAP, workers=8):
    out = Path(out).resolve() / ('b%s' % ball); out.mkdir(parents=True, exist_ok=True)
    l0, c0 = cell or (0, [0, 0, 0, 0])
    OPT.update(native_to=native_to, nf_from=nf_from, nf_cap=nf_cap)
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
        p = per.setdefault(level, dict(searched=0, native=0, normal_form=0, outside=0, split=0, open=0, resumed=0))
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
    if isinstance(ball, str): tree['record'] = pinned.original(ball)
    (out / 'tree.json').write_text(json.dumps(tree))
    keep = [m for (l, c), s in state.items() for m in leaf_members(s, l, c)]
    if keep: compact(out / 'leaves.tar', keep)
    else: os.remove(out / 'leaves.tar')                     # no leaf files (a native whole-ball certificate)
    opened = sorted(k for k, s in state.items() if s == 'open')
    summary = dict(ball=ball, root=[l0, list(c0)], verdict='OPEN' if opened else 'CLOSED',
                   leaves=sum(s in ('native', 'normal_form') for s in state.values()), native_leaves=sum(s == 'native' for s in state.values()),
                   normal_form_leaves=sum(s == 'normal_form' for s in state.values()),
                   outside=sum(s == 'outside' for s in state.values()), open=len(opened), per_level={str(k): v for k, v in sorted(per.items())},
                   proof_bytes=(out / 'leaves.tar').stat().st_size if keep else 0, search_core_hours=round(core / 3600, 2),
                   wall_seconds=round(time.time() - t0), open_cells=[[l, list(c), why[(l, c)]] for l, c in opened[:500]])
    (out / 'summary.json').write_text(json.dumps(summary, indent=1))
    print(json.dumps({k: v for k, v in summary.items() if k != 'open_cells'}))
    return 0 if not opened else 1
