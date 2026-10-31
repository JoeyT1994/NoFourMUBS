#!/usr/bin/env python3
"""Close one seed ball with the whole-cell checker alone, on as few dyadic cells as it can.

  python ball_closer.py ROOT BALL OUT [--start L] [--max-level M] [--seconds L:S,...] [--cell L:c0,c1,c2,c3] [--workers W]
                       [--part I/K | --assemble] [--serial-check]

ROOT is the pinned checker tree (PR #4: plane_frontier_certificate.py and plane_tree_certificate.py). The root cell is
the ball itself (level 0; --cell picks a sub-cell instead). Cells above --start are split without a search; from
there each cell meeting the closed ball is searched (capped at its level's seconds) and its proposal replayed:
- certified (empty, or every K classified): a leaf;
- not certified, below --max-level: split into its 16 children (those missing the closed ball are leaves 'outside');
- otherwise: open.
Searches use fast_search.py by default (byte-identical proposals, without the pinned search's two redundant
replays); every proposal is then replayed by the pinned checker in a separate process. Cells run in parallel and
children are queued as soon as their parent fails, so a ball costs what its hardest cells
cost. When no cell is open, the cells form one tree (tc-plane-tree-proposal-v1) rooted at the root cell, and it is
checked: plane_tree_certificate.walk checks that the tree is a complete partition of the root cell (every internal
node has its 16 children, every 'outside' leaf misses the closed ball), then every leaf is replayed by
plane_tree_certificate.check on its own one-leaf tree, in parallel (--serial-check: one check of the whole tree, the
same proof in one process). OUT/b<ball>/closer.json records the result.

Several nodes: --part I/K searches only the start-level cells with index I mod K (and their descendants), into the
same OUT; then --assemble (no search) builds and checks the tree from the cells the parts settled.

Each cell keeps only its entry, input, proposal and a small report (the checker's reports are cut to their status
and hashes, and its search cache is removed). A rerun reuses every cell already settled, so runs resume.
"""
import argparse, importlib.util, inspect, itertools, json, os, subprocess, sys, time
from concurrent.futures import ThreadPoolExecutor, FIRST_COMPLETED, wait
from pathlib import Path

HERE = Path(__file__).resolve().parent
CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')
DEFAULT_SECONDS = {0: 1800, 1: 1800, 2: 1800, 3: 1800, 4: 1800}          # deeper levels: 3600


CHECK_ONE = '''import json, os, sys; from pathlib import Path; sys.path.insert(0, sys.argv[1])
if len(sys.argv) > 4:                       # --ext: the pinned check plus the projector witness
    os.environ['TC_ROOT'] = str(Path(sys.argv[1]).parents[1]); import importlib.util   # by file: keep the pinned tree first
    spec = importlib.util.spec_from_file_location('ext_cell_certificate', Path(sys.argv[4]) / 'ext_cell_certificate.py')
    Ext = importlib.util.module_from_spec(spec); spec.loader.exec_module(Ext); Ext.install()
import plane_tree_certificate as Tree
r = Tree.check(json.loads(sys.argv[2]), Path(sys.argv[3])); print(json.dumps(dict(status=r['status'], counts=r['counts'])))'''


def name(level, cell): return '%d_%s' % (level, '_'.join(map(str, cell)))


def children(level, cell):
    return [(level + 1, [2 * c + b for c, b in zip(cell, bits)]) for bits in itertools.product(range(2), repeat=4)]


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('root'); ap.add_argument('ball', type=int); ap.add_argument('out')
    ap.add_argument('--cell', default='0:0,0,0,0', help='root cell LEVEL:c0,c1,c2,c3 (default: the whole ball)')
    ap.add_argument('--start', type=int, default=2, help='first level searched (cells above it are only split)')
    ap.add_argument('--max-level', type=int, default=7, help='deepest level searched; failures there stay open')
    ap.add_argument('--seconds', default='', help='search caps LEVEL:SECONDS,... (default 1800 to level 4, then 3600)')
    ap.add_argument('--workers', type=int, default=int(os.environ.get('SLURM_CPUS_ON_NODE', os.cpu_count() or 1)))
    ap.add_argument('--py', default=sys.executable)
    ap.add_argument('--part', default='0/1', help='I/K: search only the start-level cells with index I mod K')
    ap.add_argument('--assemble', action='store_true', help='no search: build and check the tree from settled cells')
    ap.add_argument('--serial-check', action='store_true', help='check the whole tree in one process')
    ap.add_argument('--search', choices=('fast', 'pinned'), default='fast',
                    help="fast: fast_search.py (the pinned search without its redundant verification; same proposals); "
                         "pinned: the checker's own search")
    ap.add_argument('--search-args', default='', help="extra fast_search.py options, e.g. '--depth 8 --column-nodes 30000 "
                    "--scalar-cap 20000' (search budgets the replay does not apply); a cell that failed under other search "
                    'options is searched again before it is split')
    ap.add_argument('--leaf-check', choices=('receipts', 'replay'), help='final check of each leaf after the partition walk: '
                    "its own replay receipt (default with --assemble), or a second replay (default otherwise)")
    ap.add_argument('--transfer-targets', help='file of ball indices (closed balls): a cell is first tried for a certified '
                    'Hadamard equivalence into one of them (ext_transfer.py); such a cell is a transfer leaf, and the ball '
                    'is closed only once each target is (assemble.py)')
    ap.add_argument('--speculate', action='store_true', help='with idle workers, also search the children of the cells '
                    'being searched longest (used only if the parent fails; a tree never uses a cell under a leaf)')
    ap.add_argument('--ext', action='store_true', help='also use the separable projector witness: searches try it '
                    '(fast_search.py --projector) and replays and checks use ext_cell_certificate.py')
    ap.add_argument('--cells-from', help='file of existing cell directories (entry.json each) to close instead of the ball: '
                    'each is split at once, its descendants go to <dir>/kids (reusing what is settled there), and a '
                    'closed cell gets <dir>/tree.json and refined.json, as plane_manifest.py lists them')
    a = ap.parse_args()
    root = Path(a.root).resolve(); code = root / 'TripleClassification/code'
    sys.path[:0] = [str(code), str(HERE / 'rusty')]
    import plane_tree_certificate as Tree
    import plane_frontier_certificate as F
    import plane_audit_manifest as PM
    from plane_column_certificate import digest
    from plane_slim import slim_cell
    spec_ = importlib.util.spec_from_file_location('ext_transfer', HERE / 'ext_transfer.py')   # by file: the pinned tree stays first
    X = importlib.util.module_from_spec(spec_); spec_.loader.exec_module(X)
    fc = code / 'plane_frontier_certificate.py'
    caps = dict(DEFAULT_SECONDS); caps.update({int(k): float(v) for k, v in (x.split(':') for x in a.seconds.split(',') if x)})
    cap = lambda level: caps.get(level, 3600)
    r0, c0 = a.cell.split(':'); r0 = int(r0); c0 = [int(x) for x in c0.split(',')]
    top = Path(a.out).resolve() / ('b%d' % a.ball); top.mkdir(parents=True, exist_ok=True)
    root_entry = dict(ball=a.ball, level=r0, cell=c0, subatlas='none', sub=0, record_sha256='none')
    if a.cells_from:                    # existing cell directories (entry.json); their descendants go to <dir>/kids
        roots = []
        for line in open(a.cells_from):
            if not line.strip(): continue
            d = Path(line.strip()).resolve(); e = json.load(open(d / 'entry.json'))
            if e['ball'] != a.ball: raise SystemExit('%s: entry names ball %s' % (d, e['ball']))
            roots.append(dict(dir=d, cells=d / 'kids', entry=e, level=e['level'], cell=e['cell'], search_self=False))
    else:
        roots = [dict(dir=top, cells=top / 'cells', entry=root_entry, level=r0, cell=c0, search_self=True)]
    for R in roots: R['cells'].mkdir(exist_ok=True)
    sig = (a.search_args + (' --projector' if a.ext else '')).strip()   # what a recorded failure was searched with
    t0 = time.time()

    _dg = {}
    def dg(p):
        """SHA-256 of a proof file, computed once per run (the walk, the tree and the receipts all need it)."""
        if not a.assemble: return digest(p)     # a search rewrites a cell's files: no memo outside assembly
        k = str(p); v = _dg.get(k)
        if v is None: v = _dg[k] = digest(p)
        return v

    def settled(d, level):
        """'leaf' / 'transfer' / 'split' when an earlier run settled this cell for good (or at a cap at least this long),
        else None."""
        if transfer_targets is not None:        # closed by an equivalence into a ball still allowed (checked at the end)
            try:
                sp = json.load(open(d / 'transfer.json'))
                if sp['target'] in transfer_targets or sp.get('region') == 'image': return 'transfer'   # region: audited
            except (OSError, ValueError, KeyError, TypeError): pass
        try:
            r = json.load(open(d / 'replay.json'))
            if (r.get('status') in CERT and r.get('snapshot_sha256') == dg(d / 'frontier.input.json.gz') and
                    r.get('proposal_sha256') == dg(d / 'frontier.proposal.json.gz') and r.get('entry_sha256') == dg(d / 'entry.json')):
                return 'leaf'
        except (OSError, ValueError, KeyError): pass
        try:                            # a failure counts only under the same search options
            f = json.load(open(d / 'failed.json'))
            if f.get('search_args', '') == sig and (f.get('kind') == 'not certified' or f.get('seconds', 0) >= cap(level)):
                return 'split'
            return None
        except (OSError, ValueError): pass
        try:                            # an earlier pinned search (plane_refine.py) that failed on a pattern
            f = json.load(open(d / 'frontier.json'))
            if not sig and f.get('status') == 'NOT_ESTABLISHED' and 'pattern remains' in str(f.get('reason')): return 'split'
        except (OSError, ValueError): pass
        return None

    def prove(ri, level, cell):
        """Search, then replay, one cell; returns (ri, level, cell, 'leaf' | 'split', core seconds)."""
        R = roots[ri]; d = R['cells'] / name(level, cell); d.mkdir(exist_ok=True)
        e = d / 'entry.json'; ent = dict(R['entry'], level=level, cell=list(cell))
        try: same = json.load(open(e)) == ent
        except (OSError, ValueError): same = False
        if not same: json.dump(ent, open(e, 'w'))
        s = settled(d, level)
        if s in ('leaf', 'transfer'): return ri, level, cell, s, 0.0
        if transfer_targets:                    # a certified equivalence into an allowed (closed) ball: also for a cell
            ts = time.time()                    # that failed before (it closes the whole subtree at once)
            try: spec = X.find(root, a.ball, level, list(cell), transfer_targets)
            except Exception: spec = None
            if spec:
                tmp = d / ('transfer.json.%d.new' % os.getpid()); json.dump(spec, open(tmp, 'w')); os.replace(tmp, d / 'transfer.json')
                return ri, level, cell, 'transfer', time.time() - ts
        if s: return ri, level, cell, s, 0.0
        env = dict(os.environ, OMP_NUM_THREADS='1'); ts = time.time()
        for f in ('replay.json', 'failed.json'):
            if (d / f).exists(): (d / f).unlink()
        try:
            search = ([a.py, '-W', 'ignore', str(HERE / 'fast_search.py'), str(root), str(e)] if a.search == 'fast' else
                      [a.py, '-W', 'ignore', str(fc), str(e)])
            subprocess.run(search + ['--out', str(d / 'frontier.json')] + a.search_args.split() + (['--projector'] if a.ext else []),
                           cwd=root, env=env, capture_output=True,
                           timeout=cap(level))
        except subprocess.TimeoutExpired:
            json.dump(dict(kind='time cap', seconds=cap(level), search_args=sig), open(d / 'failed.json', 'w')); slim_cell(str(d))
            return ri, level, cell, 'split', time.time() - ts
        if (d / 'frontier.input.json.gz').exists() and (d / 'frontier.proposal.json.gz').exists():
            replay = [a.py, '-W', 'ignore', str(HERE / 'ext_replay.py'), str(root)] if a.ext else [a.py, '-W', 'ignore', str(fc)]
            subprocess.run(replay + [str(e), '--input', str(d / 'frontier.input.json.gz'), '--proposal',
                            str(d / 'frontier.proposal.json.gz'), '--out', str(d / 'replay.json')], cwd=root, env=env, capture_output=True)
        slim_cell(str(d))
        if settled(d, level) == 'leaf': return ri, level, cell, 'leaf', time.time() - ts
        try: why = json.load(open(d / 'frontier.json')).get('reason')
        except (OSError, ValueError): why = None
        json.dump(dict(kind='not certified', reason=why, search_args=sig), open(d / 'failed.json', 'w'))
        return ri, level, cell, 'split', time.time() - ts

    state = {}; core = 0.0                    # (root, level, tuple(cell)) -> 'leaf' | 'split' | 'open' | 'outside'
    def expand(ri, level, cell):
        """Cells to search under (level, cell): itself from --start on (a listed cell: its children), else its children's."""
        if Tree.misses_ball(level, cell): state[(ri, level, tuple(cell))] = 'outside'; return []
        R = roots[ri]
        if level < a.start or (level == R['level'] and not R['search_self']):
            state[(ri, level, tuple(cell))] = 'split'; return [x for k in children(level, cell) for x in expand(ri, *k)]
        return [(ri, level, cell)]
    pi, pk = (int(x) for x in a.part.split('/'))
    transfer_targets = ({int(x) for x in open(a.transfer_targets).read().split()} - {a.ball}) if a.transfer_targets else None
    leaf_check = a.leaf_check or ('receipts' if a.assemble else 'replay')
    if pk == 1 and a.cells_from and a.ext and 'TripleClassification/code/ext_cell_certificate.py' not in PM.source_hashes(root):
        raise SystemExit('--ext trees need a checker tree that pins the extension (pr4ext, make_ext_root.sh)')
    first = [x for n, x in enumerate(t for ri, R in enumerate(roots) for t in expand(ri, R['level'], R['cell'])) if n % pk == pi]
    def settle(ri, level, cell):
        """--assemble: the state of every cell under (level, cell) from what earlier runs settled; no search."""
        d = roots[ri]['cells'] / name(level, cell); s = settled(d, level) if d.is_dir() else None
        if s == 'leaf': state[(ri, level, tuple(cell))] = 'leaf'
        elif s == 'split' and level < a.max_level:
            state[(ri, level, tuple(cell))] = 'split'
            for l, c in children(level, cell):
                if Tree.misses_ball(l, c): state[(ri, l, tuple(c))] = 'outside'
                else: settle(ri, l, c)
        else: state[(ri, level, tuple(cell))] = 'open'
    if a.assemble:                              # level by level, many cells at once (each needs file hashes on disk)
        frontier = list(first)
        def look(t):
            d = roots[t[0]]['cells'] / name(t[1], t[2])
            return t, (settled(d, t[1]) if d.is_dir() else None)
        with ThreadPoolExecutor(max(1, a.workers)) as pool:
            while frontier:
                nxt = []
                for (ri, level, cell), sv in pool.map(look, frontier):
                    if sv in ('leaf', 'transfer'): state[(ri, level, tuple(cell))] = sv
                    elif sv == 'split' and level < a.max_level:
                        state[(ri, level, tuple(cell))] = 'split'
                        for l, c in children(level, cell):
                            if Tree.misses_ball(l, c): state[(ri, l, tuple(c))] = 'outside'
                            else: nxt.append((ri, l, c))
                    else: state[(ri, level, tuple(cell))] = 'open'
                frontier = nxt
        first = []
    def pruned(ri, level, cell):
        """True when an ancestor is already a leaf: this cell's result is no longer needed."""
        l, c = level, list(cell)
        while l > roots[ri]['level']:
            l, c = l - 1, [x // 2 for x in c]
            if state.get((ri, l, tuple(c))) in ('leaf', 'transfer'): return True
        return False
    with ThreadPoolExecutor(max(1, a.workers)) as pool:
        info = {}; spawned = set()
        def submit(ri, l, c):
            f = pool.submit(prove, ri, l, c); info[f] = (ri, l, tuple(c), time.time()); return f
        def spawn(ri, level, cell):                 # a cell's children, once
            if (ri, level, tuple(cell)) in spawned or level >= a.max_level: return []
            spawned.add((ri, level, tuple(cell))); out = []
            for l, c in children(level, cell):
                if Tree.misses_ball(l, c): state[(ri, l, tuple(c))] = 'outside'
                else: out.append(submit(ri, l, c))
            return out
        running = {submit(*t) for t in first}
        while running:
            done, running = wait(running, return_when=FIRST_COMPLETED)
            for fut in done:
                ri, level, cell, how, sec = fut.result(); core += sec; info.pop(fut, None)
                if how in ('leaf', 'transfer'): state[(ri, level, tuple(cell))] = how
                elif level < a.max_level:
                    state[(ri, level, tuple(cell))] = 'split'
                    if not pruned(ri, level, cell): running.update(spawn(ri, level, cell))
                else: state[(ri, level, tuple(cell))] = 'open'
            if a.speculate:                         # idle workers: the children of the longest-running searches
                for f in sorted(running, key=lambda f: info[f][3]):
                    if len(running) >= a.workers: break
                    ri, l, c, _ = info[f]
                    if l < a.max_level and (ri, l, c) not in spawned and not pruned(ri, l, c):
                        running.update(spawn(ri, l, list(c)))

    def node(ri, level, cell):
        s = state.get((ri, level, tuple(cell))); R = roots[ri]
        if s == 'outside': return {'outside': True}
        if s == 'leaf':
            rel = (R['cells'] / name(level, cell)).relative_to(R['dir'])
            return {k: dict(path=str(rel / ('frontier.%s.json.gz' % k)), sha256=dg(R['dir'] / rel / ('frontier.%s.json.gz' % k)))
                    for k in ('input', 'proposal')}
        if s == 'transfer': return {'transfer': json.load(open(R['cells'] / name(level, cell) / 'transfer.json'))}
        if s == 'split': return {'children': [node(ri, l, c) for l, c in children(level, cell)]}
        return None
    def has_open(ri, level, cell):
        s = state.get((ri, level, tuple(cell)))
        return s == 'open' or s is None or (s == 'split' and any(has_open(ri, l, c) for l, c in children(level, cell)))
    counts = {}
    for (_, level, _), s in state.items():
        counts.setdefault(level, {}).setdefault(s, 0); counts[level][s] += 1
    res = dict(schema='tc-ball-closer-v1', ball=a.ball, roots=len(roots), start=a.start, max_level=a.max_level,
               search_seconds={str(k): cap(k) for k in range(min(R['level'] for R in roots), a.max_level + 1)},
               checker_sources_sha256=PM.source_hashes(root), cells_by_level={str(k): v for k, v in sorted(counts.items())},
               search_core_hours=round(core / 3600, 2))
    if not a.cells_from: res['root_cell'] = dict(level=r0, cell=c0)
    opened = lambda: sorted([l, list(c)] for (_, l, c), s in state.items() if s == 'open')
    if pk > 1:
        res.update(verdict='PART %d/%d DONE' % (pi, pk), open_cells=opened())
    else:
        done_roots = [ri for ri, R in enumerate(roots) if not has_open(ri, R['level'], R['cell'])]
        trees = {}
        for ri in done_roots:                       # each closed root: its tree, written whole, then renamed
            R = roots[ri]; trees[ri] = dict(schema='tc-plane-tree-proposal-v1', root_entry_sha256=F.jsonsha(R['entry']),
                                            tree=node(ri, R['level'], R['cell']))
            if not a.cells_from: json.dump(R['entry'], open(top / 'root_entry.json', 'w'))
            tmp = R['dir'] / ('tree.json.%d.new' % os.getpid()); json.dump(trees[ri], open(tmp, 'w')); os.replace(tmp, R['dir'] / 'tree.json')
        tc = time.time(); verdicts = {}; targets = {}
        if a.serial_check:
            for ri in done_roots:
                r = Tree.check(roots[ri]['entry'], roots[ri]['dir'] / 'tree.json')   # one replay of the whole tree
                verdicts[ri] = (r['status'], r['counts'], []); targets[ri] = r.get('transfer_targets', [])
        else:
            leaves = []; counts_t = {}; tleaves = []    # each partition checked without replaying leaves, then all leaves
            for ri in done_roots:
                R = roots[ri]; kw = {}
                if any(s_ == 'transfer' for (r_, _, _), s_ in state.items() if r_ == ri):
                    if 'check_transfer' not in inspect.signature(Tree.walk).parameters:
                        raise SystemExit('transfer leaves need the extended checker tree (pr4ext)')
                    kw['check_transfer'] = lambda spec, level, cell, ri=ri: tleaves.append((ri, level, cell, spec))
                counts_t[ri] = Tree.walk(trees[ri]['tree'], R['level'], R['cell'], lambda nd, level, cell, ri=ri: leaves.append((ri, level, cell, nd)), **kw)
            src = PM.source_hashes(root); fsha = digest(fc)
            ext_keys = ('TripleClassification/code/ext_cell_certificate.py', 'TripleClassification/code/projector/')
            def receipt(job):
                """The leaf's own replay receipt, instead of a second replay: certified, bound by SHA-256 to this leaf's entry,
                input and proposal, for this cell of this ball, by this checker version (an extension only if this tree
                pins the same files). The same evidence plane_manifest.py accepts for a cell's own job replay."""
                ri, level, cell, nd = job; R = roots[ri]; d = R['cells'] / name(level, cell); ent = dict(R['entry'], level=level, cell=list(cell))
                try:
                    r = json.load(open(d / 'replay.json')); deps = r.get('dependencies_sha256') or {}
                    e_ = json.load(open(d / 'entry.json'))  # the cell, not the legacy metadata (the H record is rebuilt)
                    ok = (r.get('status') in CERT and [e_.get(k) for k in ('ball', 'level', 'cell')] == [a.ball, level, list(cell)]
                          and r.get('entry_sha256') == dg(d / 'entry.json')
                          and r.get('snapshot_sha256') == dg(d / 'frontier.input.json.gz') == nd['input']['sha256']
                          and r.get('proposal_sha256') == dg(d / 'frontier.proposal.json.gz') == nd['proposal']['sha256']
                          and r.get('original_atlas_sha256') == F.PIN and r.get('ball') == a.ball
                          and r['geometry']['level'] == level and r['geometry']['cell'] == list(cell) and r.get('checker_sha256') == fsha
                          and all(deps[k] == v for k, v in src.items() if k in deps)
                          and all(src.get(k) == v for k, v in deps.items() if k.startswith(ext_keys)))
                    return ri, level, cell, r['status'] if ok else 'RECEIPT_MISMATCH'
                except (OSError, ValueError, KeyError, TypeError): return ri, level, cell, 'RECEIPT_MISSING'
            def leaf(job):
                ri, level, cell, nd = job; R = roots[ri]; d = R['cells'] / name(level, cell); ent = dict(R['entry'], level=level, cell=cell)
                one = dict(schema='tc-plane-tree-proposal-v1', root_entry_sha256=F.jsonsha(ent),
                           tree={k: dict(path='frontier.%s.json.gz' % k, sha256=nd[k]['sha256']) for k in ('input', 'proposal')})
                json.dump(one, open(d / 'leaf_tree.json', 'w'))
                q = subprocess.run([a.py, '-W', 'ignore', '-c', CHECK_ONE, str(code), json.dumps(ent), str(d / 'leaf_tree.json')] +
                                   ([str(HERE)] if a.ext else []),
                                   capture_output=True, text=True, env=dict(os.environ, OMP_NUM_THREADS='1'))
                try: return ri, level, cell, json.loads(q.stdout.strip().splitlines()[-1])['status']
                except (ValueError, IndexError, KeyError): return ri, level, cell, 'CHECK_FAILED: ' + (q.stderr.strip().splitlines() or [''])[-1][:100]
            def transfer(job):                  # the atlas transfer check (ext_transfer.check): the target it needs closed
                ri, level, cell, spec = job
                try: return ri, level, cell, 'TRANSFER', X.check(root, a.ball, level, list(cell), spec)
                except (ValueError, ArithmeticError, ZeroDivisionError, KeyError, TypeError) as e:
                    return ri, level, cell, 'TRANSFER_FAILED: %s' % str(e)[:80], None
            with ThreadPoolExecutor(max(1, a.workers)) as pool:
                out = list(pool.map(receipt if leaf_check == 'receipts' else leaf, leaves)); tout = list(pool.map(transfer, tleaves))
            for ri in done_roots:
                mine = [s for r_, _, _, s in out if r_ == ri]; failed = [[l, list(c), s] for r_, l, c, s in out if r_ == ri and s not in CERT]
                failed += [[l, list(c), s] for r_, l, c, s, _ in tout if r_ == ri and s != 'TRANSFER']
                targets[ri] = sorted({t for r_, _, _, s, t in tout if r_ == ri and s == 'TRANSFER'})
                st = None if failed else (CERT[1] if CERT[1] in mine or targets[ri] else CERT[0])
                verdicts[ri] = (st, counts_t[ri], failed)
        closed = []
        for ri, (st, cnt, failed) in verdicts.items():
            R = roots[ri]
            if st not in CERT: continue
            closed.append(ri)
            if a.cells_from and a.ext and 'TripleClassification/code/ext_cell_certificate.py' not in PM.source_hashes(root):
                raise SystemExit('--ext trees need a checker tree that pins the extension (pr4ext, make_ext_root.sh): '
                                 'refined.json must name the checker that certifies them')
            if a.cells_from:                        # what plane_manifest.py lists and caches for the original-ball audit
                ref = dict(ball=a.ball, level=R['level'], cell=R['cell'], status=st, counts=cnt, closer=True,
                           leaf_check='serial' if a.serial_check else leaf_check, transfer_targets=targets.get(ri, []),
                           tree_sha256=digest(R['dir'] / 'tree.json'), checker_sources_sha256=PM.source_hashes(root))
                tmp = R['dir'] / ('refined.json.%d.new' % os.getpid()); json.dump(ref, open(tmp, 'w')); os.replace(tmp, R['dir'] / 'refined.json')
        res.update(check='serial' if a.serial_check else 'parallel', leaf_check=None if a.serial_check else leaf_check, check_seconds=round(time.time() - tc),
                   check_failed=[[roots[ri]['level'], roots[ri]['cell'], f] for ri, (st, _, f) in verdicts.items() if f])
        res['transfer_targets'] = sorted({t for ri in closed for t in targets.get(ri, [])})
        if a.cells_from:
            res.update(verdict='CLOSED %d OF %d CELLS' % (len(closed), len(roots)),
                       open_roots=[[R['level'], R['cell']] for ri, R in enumerate(roots) if ri not in closed], open_cells=opened())
        elif closed:
            st, cnt, _ = verdicts[0]
            res.update(verdict='CLOSED', status=st, tree_sha256=digest(top / 'tree.json'), tree_counts=cnt)
        else:
            res.update(verdict='OPEN', open_cells=opened())
    res['wall_seconds'] = round(time.time() - t0)
    tmp = top / ('closer.json.%d.new' % os.getpid()); json.dump(res, open(tmp, 'w'), indent=1); os.replace(tmp, top / 'closer.json')
    print(json.dumps({k: v for k, v in res.items() if k not in ('open_cells', 'checker_sources_sha256', 'open_roots')}))


if __name__ == '__main__': main()
