#!/usr/bin/env python3
"""One tree per ball: a whole seed ball closed by a single dyadic tree, and checked by walking it.

  python onetree.py close ROOT BALL OUT [--workers N] [--max-level L] [--cell L:c0,c1,c2,c3 [--part]] [--caps L:S,...]
  python onetree.py check ROOT BALL OUT [--workers N]
  python onetree.py join ROOT BALL OUT [--cell L:c0,c1,c2,c3]

On several nodes: run close with --part --cell on each child of a cell (or of the whole ball, level 1: 16 parts) into the same
OUT; each part keeps its own journal, tree and summary (journal.<cell>.jsonl, tree.<cell>.json, summary.<cell>.json)
and they share leaves/. join then writes tree.json for the parent from its 16 parts (a child missing the ball needs no
part) and summary.json; check verifies it as usual.

The certificate of ball B is OUT/b<B>/: tree.json and one leaf per closed cell in leaves/ (<level>_<cell>.input.json.gz,
the cell's H record, and <level>_<cell>.proposal.json.gz, its whole-cell proposal). tree.json is a dyadic partition of
the chart box of B (or of one cell of it, --cell): every node has 16 children, or is {'outside': true} (the closed cell
misses the closed ball), or {'leaf': '<level>_<cell>'}.

check: every node is verified on its own, in parallel. An outside node by exact arithmetic (misses_ball, PR #4). A
leaf: the record names this ball, level and cell; the record's H ball contains the whole closed cell
(plane_frontier_certificate.cell_geometry, Arb); the record's branch is the original ball's (the overlap witness,
branch_overlap.py; native review F1); and the whole-cell check (ext_cell_certificate.check: PR #4's
plane_cell_certificate.check for a proposal with only its witnesses, else with the secant, projector and gamma
witnesses) rebuilds C1, the H normal form, Stage C and the complete K cover from the record and certifies every pattern
excluded or classified, or (a gamma pattern passing only its ordering bound) ORDERING_DISCHARGED. A tree with such
a leaf has restricted, minimum-transition scope (ORDERING_THEOREM.md): it counts only in an assembly that invokes
that reduction with the same invariant Gamma_F; check reports it. Nothing is cached and nothing is trusted from the search.

close: the search, coarse first. A cell that misses the ball is outside; otherwise fast_search.py --gamma proposes a
proof (the gamma witness on each pattern first, then the column search, then secant and projector), with a time cap per
level; a proposal that passes the leaf check above is a leaf, anything else is split into its 16 children, down to
--max-level (cells still failing there are reported open). Writes OUT/b<B>/summary.json, with per-level counts and
search times. Every outcome is appended to OUT/b<B>/journal.jsonl as it happens, so an interrupted run (a preempted
job) resumes where it stopped: journalled cells are not searched again (a journalled leaf must still have its two
files; check verifies everything anyway).
"""
import argparse, gzip, json, os, shutil, subprocess, sys, tempfile, time
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path

HERE = Path(__file__).resolve().parent
CAPS = {0: 150, 1: 150, 2: 150, 3: 450, 4: 450, 5: 300, 6: 300, 7: 300, 8: 300}   # from measured search times: a leaf's
# search takes ~100 s (record, C1, Stage C and cover rebuilt), rarely over 450 s; a capped failure is split instead
SEARCH = ['--gamma', '--projector', '--depth', '6', '--column-nodes', '6000', '--scalar-cap', '2000']   # measured: as many
# leaves as depth 8 / 30000 nodes, fewer time-outs, about half the proof size (--search-args to change)
CERT = ('CERTIFIED_EMPTY_RECORDED_H_CELL', 'CERTIFIED_CLASSIFIED_RECORDED_H_CELL', 'CERTIFIED_MINIMUM_TRANSITION_RECORDED_H_CELL')
W = {}


def name(level, cell): return '%d_%s' % (level, '_'.join(map(str, cell)))


def children(level, cell):
    return [(level + 1, [2 * c + ((i >> (3 - k)) & 1) for k, c in enumerate(cell)]) for i in range(16)]


def setup(root):
    """Per process: the pinned tree first on sys.path, the extended check loaded from this folder by file."""
    os.environ['TC_ROOT'] = str(root); os.environ.pop('TC_LEAF_CACHE', None)
    for v in ('OMP_NUM_THREADS', 'OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS'): os.environ[v] = '1'
    sys.path[:0] = [str(Path(root) / 'TripleClassification/code')]
    import importlib.util
    import plane_frontier_certificate as F, plane_tree_certificate as T
    sp = importlib.util.spec_from_file_location('ext_cell_certificate', HERE / 'ext_cell_certificate.py')
    E = importlib.util.module_from_spec(sp); sp.loader.exec_module(E)
    sp = importlib.util.spec_from_file_location('fast_search', HERE / 'fast_search.py')   # the search, run in-process
    FS = importlib.util.module_from_spec(sp); sp.loader.exec_module(FS)
    fn = Path(root) / 'proof/theorems/TC_triple_classification/family_neighbourhoods'   # the frozen native certifier
    if str(fn) not in sys.path: sys.path.insert(1, str(fn))
    import run as R, stagec_guard as G
    sp = importlib.util.spec_from_file_location('branch_overlap', HERE / 'branch_overlap.py')   # parent-child branch
    BO = importlib.util.module_from_spec(sp); sp.loader.exec_module(BO); BO.setup(root)          # identification
    W.update(root=Path(root), F=F, T=T, E=E, FS=FS, R=R, G=G, BO=BO, original={}, parent_model={})


NATIVE = ('CERTIFIED', 'CERTIFIED EMPTY')
NATIVE_CAPS = {0: 1800}                     # seconds for a native search (default 600 below level 0)
NATIVE_ON = True; NATIVE_MIN_LEVEL = 3      # native leaves: at level 0 first; deeper where the plane search fails
NATIVE_FIRST = 0                            # levels <= this try the native leaf before any plane search (--native-first)


def native_check(ball, level, cell, inp):
    """A native leaf: the frozen whole-ball certifier (family_neighbourhoods/run.py, run_ball) certifies every
    completing basis K over the cell's record, and Stage C's input preconditions hold for that record
    (stagec_guard.check). At level 0 the record is the original atlas ball and the call is exactly the audited one
    (the pinned atlas, binding aaab342c...); below, it is the cell's record, whose containment of the whole cell is
    proved first (cell_geometry), run as a one-seed sub-atlas the way the audited trees run sub-balls
    (split_select.run). Returns 'NATIVE CERTIFIED' or 'NATIVE CERTIFIED EMPTY', or raises."""
    F, R, G = W['F'], W['R'], W['G']
    if ball not in W['original']: W['original'][ball] = F.original_record(W['root'], ball)
    atlas = W['root'] / 'proof/seed_atlas/results/seed_atlas_certificate.json.gz'
    if level == 0:
        F.require(list(cell) == [0, 0, 0, 0], 'invalid level-0 cell')
        rec = W['original'][ball]; row = R.run_ball(atlas, ball, R.binding(atlas)['id'])
    else:
        data = F.read_json(Path(inp))
        F.require(data.get('schema') == 'tc-h-cell-input-v1' and data['record_sha256'] == F.jsonsha(data['record']) and
                  [data['ball'], data['level'], data['cell']] == [ball, level, list(cell)], 'leaf record is not this cell')
        F.ctx.prec = 224; F.cell_geometry(W['original'][ball], data['record'], level, list(cell))
        overlap(ball, level, cell, data['record'])
        rec = data['record']
        import gzip as _gz, hashlib as _h, tempfile as _t
        with _t.TemporaryDirectory(prefix='native.') as td:
            sub = Path(td) / 'cell.json.gz'
            sub.write_bytes(_gz.compress(json.dumps(dict(seeds=[rec], info=dict(onetree=dict(ball=ball, level=level, cell=list(cell))))).encode(), mtime=0))
            pinned = R.binding
            def binding(at):                 # the sources of the pinned binding, the sub-atlas in place of the atlas
                files = {str(q.relative_to(R.ROOT)): _h.sha256(q.read_bytes()).hexdigest() for q in R.source_paths()}
                v = dict(schema='tc-native-allk-v1+onetree', atlas_sha256=_h.sha256(Path(at).read_bytes()).hexdigest(),
                         sources=files, precision=160)
                v['id'] = _h.sha256(json.dumps(v, sort_keys=True).encode()).hexdigest(); return v
            R.binding = binding
            try: row = R.run_ball(sub, 0, binding(sub)['id'])
            finally: R.binding = pinned
    F.require(row.get('status') in NATIVE, 'native certifier: %s' % row.get('reason', row.get('status')))
    G.check(R, rec)                          # Stage C input preconditions (raises on failure)
    return 'NATIVE ' + row['status'], row


def overlap(ball, level, cell, record):
    """The cell record's branch is the original ball's: the overlap witness of branch_overlap.py (finding F1 of the
    native review). Without it, seed containment (cell_geometry) would not carry the record's certificate to the
    original ball's matrices."""
    if ball not in W['parent_model']: W['parent_model'][ball] = W['BO'].model(W['original'][ball])
    return W['BO'].witness(W['original'][ball], record, level, list(cell), W['parent_model'][ball],
                           W.setdefault('enlarged', {}).setdefault(ball, {}))


def _time_cap(signum, frame): raise TimeoutError('time cap')


def parent_setup(root, ball):
    """Load the checker and this ball's atlas record once, in the parent: forked workers inherit them (each worker
    loading the whole atlas certificate itself made a small tree's check take minutes)."""
    import multiprocessing
    setup(root); W['original'][ball] = W['F'].original_record(W['root'], ball)
    try: W['parent_model'][ball] = W['BO'].model(W['original'][ball])      # the original ball's normal form, once
    except ArithmeticError: pass                                             # (no cell record can then be identified)
    return multiprocessing.get_context('fork')


def leaf_check(ball, level, cell, inp, prop):
    """The leaf check (see the module docstring); returns the status of the whole-cell check, or raises."""
    F, E = W['F'], W['E']
    if ball not in W['original']: W['original'][ball] = F.original_record(W['root'], ball)
    data = F.read_json(Path(inp))
    F.require(data.get('schema') == 'tc-h-cell-input-v1' and data['record_sha256'] == F.jsonsha(data['record']) and
              [data['ball'], data['level'], data['cell']] == [ball, level, list(cell)], 'leaf record is not this cell')
    F.ctx.prec = 224; F.cell_geometry(W['original'][ball], data['record'], level, list(cell))
    overlap(ball, level, cell, data['record'])
    r = E.check(Path(inp), F.read_json(Path(prop)))
    F.require(r['status'] in CERT, 'leaf not certified')
    return r['status']


def leaf_file(path):
    """A leaf file's path: itself, or, for a packed certificate (leaves.tar, see pack), the member extracted to this
    worker's scratch folder."""
    if path is None or os.path.exists(path) or not W.get('tar'): return path
    tar, index = W['tar']; off, size = index['leaves/' + os.path.basename(path)]
    if 'scratch' not in W: W['scratch'] = tempfile.mkdtemp(prefix='onetree.leaf.')
    p = os.path.join(W['scratch'], os.path.basename(path))
    with open(tar, 'rb') as f: f.seek(off); data = f.read(size)
    with open(p, 'wb') as g: g.write(data)
    return p


def check_node(job):
    kind, ball, level, cell, inp, prop = job
    t = time.time()
    try:
        inp, prop = leaf_file(inp), leaf_file(prop)
        if kind == 'outside':
            W['F'].require(W['T'].misses_ball(level, cell), 'outside node meets the ball'); return job[:4], 'OUTSIDE', 0.0
        if kind == 'native': return job[:4], native_check(ball, level, cell, inp)[0], time.time() - t
        return job[:4], leaf_check(ball, level, cell, inp, prop), time.time() - t
    except Exception as e: return job[:4], 'FAILED: %s' % str(e)[:150], time.time() - t


def native_search(ball, level, cell, out):
    """Try a native leaf for the cell, within its time cap; True if it is certified (its files written)."""
    import signal, gzip as _gz
    n = name(level, cell); inp = out / 'leaves' / (n + '.input.json.gz')
    signal.signal(signal.SIGALRM, _time_cap); signal.setitimer(signal.ITIMER_REAL, NATIVE_CAPS.get(level, 600))
    try:
        if level > 0:                        # the cell's record, as fast_search writes it
            F = W['F']
            if ball not in W['original']: W['original'][ball] = F.original_record(W['root'], ball)
            F.ctx.prec = 224; rec = F.build_record(W['original'][ball], level, list(cell), W['root'])
            data = dict(schema='tc-h-cell-input-v1', record=rec, record_sha256=F.jsonsha(rec), ball=ball, level=level,
                        cell=list(cell), subatlas='none', sub=0, legacy_record_sha256='none')
            tmp = inp.with_name(inp.name + '.%d.new' % os.getpid()); tmp.write_bytes(_gz.compress(json.dumps(data).encode(), mtime=0))
            os.replace(tmp, inp)
        st, row = native_check(ball, level, cell, inp)
    except (TimeoutError, Exception):
        if level > 0 and inp.exists() and not (out / 'leaves' / (n + '.proposal.json.gz')).exists(): inp.unlink()
        return False
    finally:
        signal.setitimer(signal.ITIMER_REAL, 0)
        seen = set(); sys.path[:] = [p_ for p_ in sys.path if not (p_ in seen or seen.add(p_))]
    keep = {k: row[k] for k in ('index', 'status', 'binding', 'seed_sha256', 'radius_hex', 'claim', 'seconds') if k in row}
    keep['patterns'] = [{k: x[k] for k in ('number', 'status') if k in x} for x in row.get('patterns', [])]
    json.dump(dict(keep, onetree=dict(ball=ball, level=level, cell=list(cell), verdict=st)), open(out / 'leaves' / (n + '.native.json'), 'w'))
    return True


def search_cell(job):
    """Search one cell; ('outside' | 'leaf' | 'native' | 'split', seconds, reason)."""
    ball, level, cell, out, py, tmpd = job; t = time.time()
    if W['T'].misses_ball(level, cell): return job[:3], 'outside', 0.0, ''
    if NATIVE_ON and level <= NATIVE_FIRST and native_search(ball, level, cell, out): return job[:3], 'native', time.time() - t, ''
    tmp = Path(tempfile.mkdtemp(prefix='onetree.', dir=str(tmpd)))
    try:
        e = tmp / 'entry.json'
        json.dump(dict(ball=ball, level=level, cell=list(cell), subatlas='none', sub=0, record_sha256='none'), open(e, 'w'))
        import signal                         # in this worker process (imports and the atlas loaded once per worker:
        signal.signal(signal.SIGALRM, _time_cap)   # a fresh process per search on a busy node took 12 times longer)
        signal.setitimer(signal.ITIMER_REAL, CAPS.get(level, 1800))
        try: W['FS'].main([str(W['root']), str(e), '--out', str(tmp / 'f.json')] + SEARCH)
        except TimeoutError: why = 'time cap'
        else: why = None
        finally:
            signal.setitimer(signal.ITIMER_REAL, 0)
            seen = set(); sys.path[:] = [p_ for p_ in sys.path if not (p_ in seen or seen.add(p_))]   # build_record prepends
        inp, prop = tmp / 'f.input.json.gz', tmp / 'f.proposal.json.gz'
        if why is None and not prop.exists():
            try: why = json.load(open(tmp / 'f.json')).get('reason', '') or 'no proposal'
            except (OSError, ValueError): why = 'no proposal'
        if why is not None:                  # a persistent pattern or a capped search: the native certifier, then split
            if NATIVE_ON and level >= NATIVE_MIN_LEVEL and ('pattern remains' in why or why == 'time cap') \
                    and native_search(ball, level, cell, out): return job[:3], 'native', time.time() - t, ''
            return job[:3], 'split', time.time() - t, str(why)[:100]
        try: leaf_check(ball, level, cell, inp, prop)
        except Exception as ex: return job[:3], 'split', time.time() - t, 'check: %s' % str(ex)[:100]
        n = name(level, cell)
        shutil.copyfile(inp, out / 'leaves' / (n + '.input.json.gz')); shutil.copyfile(prop, out / 'leaves' / (n + '.proposal.json.gz'))
        return job[:3], 'leaf', time.time() - t, ''
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def leaf_bytes(out):
    """Size of the leaf files. Parts of one ball share the leaves folder, so a file may vanish while it is listed."""
    total = 0
    for f in (out / 'leaves').iterdir():
        try: total += f.stat().st_size
        except FileNotFoundError: pass
    return total


def close(a, root):
    out = Path(a.out).resolve() / ('b%d' % a.ball)
    if (out / 'leaves.tar').exists() and not (out / 'leaves').is_dir():      # a packed certificate: resuming would see no
        sys.exit('b%d is packed (leaves.tar): unpack it before close' % a.ball)   # leaf and search the whole tree again
    (out / 'leaves').mkdir(parents=True, exist_ok=True)
    l0, c0 = (int(a.cell.split(':')[0]), [int(x) for x in a.cell.split(':')[1].split(',')]) if a.cell else (0, [0, 0, 0, 0])
    tag = '.' + name(l0, c0) if a.part else ''     # a part (--part --cell) keeps its own journal, tree and summary
    tmpd = out / ('tmp' + tag); tmpd.mkdir(exist_ok=True)
    if a.caps: CAPS.update({int(k): float(v) for k, v in (x.split(':') for x in a.caps.split(','))})
    if a.search_args: SEARCH[:] = a.search_args.split()
    global NATIVE_ON, NATIVE_FIRST
    if a.no_native: NATIVE_ON = False
    NATIVE_FIRST = a.native_first
    if a.native_caps: NATIVE_CAPS.update({int(k): float(v) for k, v in (x.split(':') for x in a.native_caps.split(','))})
    if a.requeue_refused and (out / 'refused.json').exists():   # leaves the last check refused: set their files aside
        aside = out / 'leaves_refused'; aside.mkdir(exist_ok=True); moved = 0     # (moved, never deleted), so the
        for level, cell, why_ in json.load(open(out / 'refused.json')):          # resume below searches them again
            if not why_.startswith('FAILED'): continue
            for s_ in ('.input.json.gz', '.proposal.json.gz', '.native.json'):
                f_ = out / 'leaves' / (name(level, cell) + s_)
                if f_.exists(): os.replace(f_, aside / f_.name); moved += 1
        print('requeued the refused leaves (%d files set aside)' % moved, flush=True)
    known = {}                                   # an earlier, interrupted run's outcomes
    try:
        for line in open(out / ('journal%s.jsonl' % tag)):
            try: x = json.loads(line); known[(x['level'], tuple(x['cell']))] = x
            except (ValueError, KeyError): pass
    except OSError: pass
    journal = open(out / ('journal%s.jsonl' % tag), 'a')
    state = {}; why = {}; core = 0.0; t0 = time.time(); per = {}; times = {}
    with ProcessPoolExecutor(a.workers, mp_context=parent_setup(str(root), a.ball)) as pool:
        live = set(); queue = [(l0, c0)]
        def record(level, cell, st, sec, reason, new):
            nonlocal core
            if new:
                journal.write(json.dumps(dict(level=level, cell=list(cell), status=st, seconds=round(sec, 1), reason=reason)) + '\n'); journal.flush()
                core += sec; times.setdefault(level, []).append((st, sec))
            p = per.setdefault(level, dict(searched=0, leaf=0, native=0, outside=0, split=0, open=0, resumed=0)); p['searched'] += st != 'outside'
            p['resumed'] += not new
            if st == 'split' and level >= a.max_level: st = 'open'; why[name(level, cell)] = reason
            state[(level, tuple(cell))] = st; p[st] += 1
            if st == 'split': queue.extend(children(level, cell))
        while queue or live:
            while queue:                         # journalled cells are settled at once; the rest are searched
                level, cell = queue.pop(); x = known.get((level, tuple(cell)))
                n_ = name(level, cell)
                files_ = {'leaf': ('.input.json.gz', '.proposal.json.gz'), 'native': ('.native.json',) + (('.input.json.gz',) if level else ())}
                if x and all((out / 'leaves' / (n_ + s_)).exists() for s_ in files_.get(x['status'], ())):
                    record(level, cell, x['status'], x.get('seconds', 0.0), x.get('reason', ''), False)
                else: live.add(pool.submit(search_cell, (a.ball, level, cell, out, sys.executable, tmpd)))
            if not live: break
            done = next(as_completed(live)); live.remove(done)
            (ball, level, cell), st, sec, reason = done.result()
            record(level, cell, st, sec, reason, True)
            if len(state) % 200 == 0:
                print('%.0fs: %s' % (time.time() - t0, {l: v for l, v in sorted(per.items())}), flush=True)
    journal.close()
    def node(level, cell):
        st = state[(level, tuple(cell))]
        if st == 'outside': return {'outside': True}
        if st == 'leaf': return {'leaf': name(level, cell)}
        if st == 'native': return {'native': name(level, cell)}
        if st == 'open': return {'open': True}
        return {'children': [node(*k) for k in children(level, cell)]}
    tree = dict(schema='onetree-v1', ball=a.ball, root=[l0, c0], tree=node(l0, c0))
    json.dump(tree, open(out / ('tree%s.json' % tag), 'w'))
    shutil.rmtree(tmpd, ignore_errors=True)
    opened = sorted(k for k, s in state.items() if s == 'open')
    size = leaf_bytes(out)
    res = dict(ball=a.ball, root=[l0, c0], verdict='CLOSED' if not opened else 'OPEN', leaves=sum(s in ('leaf', 'native') for s in state.values()), native_leaves=sum(s == 'native' for s in state.values()),
               outside=sum(s == 'outside' for s in state.values()), open=len(opened), per_level={str(k): v for k, v in sorted(per.items())},
               proof_bytes=size, search_core_hours=round(core / 3600, 2), wall_seconds=round(time.time() - t0),
               search_seconds={str(l): stats(v) for l, v in sorted(times.items())}, caps={str(k): v for k, v in sorted(CAPS.items())},
               open_cells=[[l, list(c), why.get(name(l, c), '')] for l, c in opened[:500]])
    json.dump(res, open(out / ('summary%s.json' % tag), 'w'), indent=1)
    print(json.dumps({k: v for k, v in res.items() if k != 'open_cells'}))


def stats(v):
    """Per level: leaf search times (median, 90th percentile, max) and the mean time of a search that split."""
    ok = sorted(s for st, s in v if st == 'leaf'); bad = [s for st, s in v if st == 'split']
    q = lambda f: round(ok[min(len(ok) - 1, int(f * len(ok)))], 1) if ok else None
    return dict(leaf_p50=q(.5), leaf_p90=q(.9), leaf_max=q(1.0), split_mean=round(sum(bad) / len(bad), 1) if bad else None)


def join(a, root):
    """tree.json for a cell (default: the whole ball) from the trees of its 16 children's parts."""
    out = Path(a.out).resolve() / ('b%d' % a.ball); sys.path[:0] = [str(root / 'TripleClassification/code')]
    import plane_tree_certificate as T
    l0, c0 = (int(a.cell.split(':')[0]), [int(x) for x in a.cell.split(':')[1].split(',')]) if a.cell else (0, [0, 0, 0, 0])
    kids = []; parts = []
    for k in children(l0, c0):
        f = out / ('tree.%s.json' % name(*k))
        if not f.exists():
            if not T.misses_ball(*k): raise SystemExit('part %s missing' % name(*k))
            kids.append({'outside': True}); continue
        x = json.load(open(f))
        if x.get('schema') != 'onetree-v1' or x.get('ball') != a.ball or x.get('root') != [k[0], list(k[1])]: raise SystemExit('part %s is not this cell' % name(*k))
        kids.append(x['tree']); parts.append(json.load(open(out / ('summary.%s.json' % name(*k)))))
    json.dump(dict(schema='onetree-v1', ball=a.ball, root=[l0, c0], tree={'children': kids}), open(out / 'tree.json', 'w'))
    tot = lambda k: sum(p[k] for p in parts)
    res = dict(ball=a.ball, root=[l0, c0], joined_parts=len(parts), verdict='CLOSED' if not tot('open') else 'OPEN', leaves=tot('leaves'),
               outside=tot('outside'), open=tot('open'), proof_bytes=leaf_bytes(out),
               search_core_hours=round(tot('search_core_hours'), 2), wall_seconds=max(p['wall_seconds'] for p in parts) if parts else 0,
               open_cells=[c for p in parts for c in p['open_cells']][:500])
    json.dump(res, open(out / 'summary.json', 'w'), indent=1); print(json.dumps({k: v for k, v in res.items() if k != 'open_cells'}))


def checker_sha256():
    """The files this check ran: this file and the extended whole-cell check's (gamma_test, gamma_exact, the witnesses).
    The pinned checker tree is named by its commit (PR #4, 914919b)."""
    import hashlib
    d = {'TripleClassification/code/' + f: hashlib.sha256((HERE / f).read_bytes()).hexdigest() for f in ('onetree.py', 'branch_overlap.py')}
    d.update(W['E'].extension_sha256()); return d


def check(a, root):
    out = Path(a.out).resolve() / ('b%d' % a.ball); tree = json.load(open(out / 'tree.json')); t0 = time.time()
    assert tree.get('schema') == 'onetree-v1' and tree.get('ball') == a.ball, 'not a tree of this ball'
    jobs = []; bad = []
    def walk(node, level, cell):
        if 'children' in node:
            assert set(node) == {'children'} and len(node['children']) == 16, 'incomplete partition'
            for child, k in zip(node['children'], children(level, cell)): walk(child, *k)
        elif node == {'outside': True}: jobs.append(('outside', a.ball, level, cell, None, None))
        elif set(node) == {'leaf'} and node['leaf'] == name(level, cell):
            jobs.append(('leaf', a.ball, level, cell, str(out / 'leaves' / (node['leaf'] + '.input.json.gz')),
                         str(out / 'leaves' / (node['leaf'] + '.proposal.json.gz'))))
        elif set(node) == {'native'} and node['native'] == name(level, cell):
            jobs.append(('native', a.ball, level, cell, None if level == 0 else str(out / 'leaves' / (node['native'] + '.input.json.gz')), None))
        else: bad.append([level, cell, 'unresolved node'])
    walk(tree['tree'], *tree['root'])
    if not (out / 'leaves').is_dir() and (out / 'leaves.tar').exists():      # a packed certificate: index it once
        import tarfile
        with tarfile.open(out / 'leaves.tar') as t_: W['tar'] = (str(out / 'leaves.tar'), {m.name: (m.offset_data, m.size) for m in t_ if m.isfile()})
    counts = {}; core = 0.0; slow = 0.0
    with ProcessPoolExecutor(a.workers, mp_context=parent_setup(str(root), a.ball)) as pool:
        for (kind, ball, level, cell), st, sec in pool.map(check_node, jobs, chunksize=1):
            key = st if not st.startswith('FAILED') else 'FAILED'; counts[key] = counts.get(key, 0) + 1; core += sec; slow = max(slow, sec)
            if key == 'FAILED': bad.append([level, cell, st])
    whole = tree['root'] == [0, [0, 0, 0, 0]]
    scope = 'minimum-transition' if counts.get('CERTIFIED_MINIMUM_TRANSITION_RECORDED_H_CELL') else 'all'   # ORDERING_THEOREM.md
    res = dict(ball=a.ball, root=tree['root'], verdict=('CLOSED' if whole else 'CELL CLOSED') if not bad else 'OPEN', scope=scope, counts=counts,
               failed=bad[:50], check_core_seconds=round(core), slowest_leaf_seconds=round(slow), wall_seconds=round(time.time() - t0),
               workers=a.workers, checker_sha256=checker_sha256())
    json.dump(res, open(out / 'check.json', 'w'), indent=1); print(json.dumps(res))
    json.dump(bad, open(out / 'refused.json', 'w'))                  # every refused node (check.json lists 50)
    return 0 if not bad else 1


def pack(a, root):
    """Pack a CLOSED certificate's leaves/ into leaves.tar (uncompressed; members leaves/<file>), so the certificate is a
    handful of files: tree.json, leaves.tar, journal, summary and check. The tar is checked to hold every leaf file
    before leaves/ is removed; the search's leftovers (tmp*, leaves_refused/) are removed too. check reads it as is."""
    import tarfile
    out = Path(a.out).resolve() / ('b%d' % a.ball)
    c = json.load(open(out / 'check.json')); assert c['verdict'] in ('CLOSED', 'CELL CLOSED'), 'only a closed certificate is packed'
    leaves = out / 'leaves'; names = sorted(os.listdir(leaves)); tmp = out / 'leaves.tar.new'
    with tarfile.open(tmp, 'w', format=tarfile.PAX_FORMAT) as t_:
        for n_ in names: t_.add(leaves / n_, arcname='leaves/' + n_, recursive=False)
    with tarfile.open(tmp) as t_: got = sorted(m.name[len('leaves/'):] for m in t_ if m.isfile())
    assert got == names, 'leaves.tar does not hold every leaf file'
    os.replace(tmp, out / 'leaves.tar'); shutil.rmtree(leaves)
    for x in sorted(os.listdir(out)):
        if (x.startswith('tmp') or x == 'leaves_refused') and (out / x).is_dir(): shutil.rmtree(out / x)
    print(json.dumps(dict(ball=a.ball, packed=len(names), files_now=len(os.listdir(out)))))
    return 0


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('cmd', choices=('close', 'check', 'join', 'pack')); ap.add_argument('root'); ap.add_argument('ball', type=int); ap.add_argument('out')
    ap.add_argument('--workers', type=int, default=8); ap.add_argument('--max-level', type=int, default=7); ap.add_argument('--cell')
    ap.add_argument('--search-args', help='fast_search.py options (default %s)' % ' '.join(SEARCH))
    ap.add_argument('--no-native', action='store_true', help='plane leaves only (no native whole-cell certifier leaves)')
    ap.add_argument('--requeue-refused', action='store_true', help='search again the leaves the last check refused (refused.json)')
    ap.add_argument('--native-first', type=int, default=0, help='try the native leaf before any plane search at levels <= this (default 0)')
    ap.add_argument('--native-caps', help='native search time caps by level, L:S,... (default %s, 600 elsewhere)' % ','.join('%d:%d' % kv for kv in sorted(NATIVE_CAPS.items())))
    ap.add_argument('--part', action='store_true', help='close --cell as one part of a larger tree (see join)')
    ap.add_argument('--caps', help='search time caps by level, L:S,... (default %s)' % ','.join('%d:%d' % kv for kv in sorted(CAPS.items())))
    a = ap.parse_args(); root = Path(a.root).resolve()
    sys.exit(close(a, root) or 0 if a.cmd == 'close' else join(a, root) or 0 if a.cmd == 'join' else pack(a, root) if a.cmd == 'pack' else check(a, root))


if __name__ == '__main__': main()
