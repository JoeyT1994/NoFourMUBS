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
import argparse, itertools, json, os, subprocess, sys, time
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

    def settled(d, level):
        """'leaf' / 'split' when an earlier run settled this cell for good (or at a cap at least this long), else None."""
        try:
            r = json.load(open(d / 'replay.json'))
            if (r.get('status') in CERT and r.get('snapshot_sha256') == digest(d / 'frontier.input.json.gz') and
                    r.get('proposal_sha256') == digest(d / 'frontier.proposal.json.gz') and r.get('entry_sha256') == digest(d / 'entry.json')):
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
    if a.assemble:
        for t in first: settle(*t)
        first = []
    with ThreadPoolExecutor(max(1, a.workers)) as pool:
        running = {pool.submit(prove, *t) for t in first}
        while running:
            done, running = wait(running, return_when=FIRST_COMPLETED)
            for fut in done:
                ri, level, cell, how, sec = fut.result(); core += sec
                if how == 'leaf': state[(ri, level, tuple(cell))] = 'leaf'
                elif level < a.max_level:
                    state[(ri, level, tuple(cell))] = 'split'
                    for l, c in children(level, cell):
                        if Tree.misses_ball(l, c): state[(ri, l, tuple(c))] = 'outside'
                        else: running.add(pool.submit(prove, ri, l, c))
                else: state[(ri, level, tuple(cell))] = 'open'

    def node(ri, level, cell):
        s = state.get((ri, level, tuple(cell))); R = roots[ri]
        if s == 'outside': return {'outside': True}
        if s == 'leaf':
            rel = (R['cells'] / name(level, cell)).relative_to(R['dir'])
            return {k: dict(path=str(rel / ('frontier.%s.json.gz' % k)), sha256=digest(R['dir'] / rel / ('frontier.%s.json.gz' % k)))
                    for k in ('input', 'proposal')}
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
        tc = time.time(); verdicts = {}
        if a.serial_check:
            for ri in done_roots:
                r = Tree.check(roots[ri]['entry'], roots[ri]['dir'] / 'tree.json')   # one replay of the whole tree
                verdicts[ri] = (r['status'], r['counts'], [])
        else:
            leaves = []; counts_t = {}                  # each partition checked without replaying leaves, then all leaves
            for ri in done_roots:
                R = roots[ri]
                counts_t[ri] = Tree.walk(trees[ri]['tree'], R['level'], R['cell'], lambda nd, level, cell, ri=ri: leaves.append((ri, level, cell, nd)))
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
            with ThreadPoolExecutor(max(1, a.workers)) as pool: out = list(pool.map(leaf, leaves))
            for ri in done_roots:
                mine = [s for r_, _, _, s in out if r_ == ri]; failed = [[l, list(c), s] for r_, l, c, s in out if r_ == ri and s not in CERT]
                st = None if failed else (CERT[1] if CERT[1] in mine else CERT[0])
                verdicts[ri] = (st, counts_t[ri], failed)
        closed = []
        for ri, (st, cnt, failed) in verdicts.items():
            R = roots[ri]
            if st not in CERT: continue
            closed.append(ri)
            if a.cells_from:                        # what plane_manifest.py lists and caches for the original-ball audit
                ref = dict(ball=a.ball, level=R['level'], cell=R['cell'], status=st, counts=cnt, closer=True,
                           tree_sha256=digest(R['dir'] / 'tree.json'), checker_sources_sha256=PM.source_hashes(root))
                tmp = R['dir'] / ('refined.json.%d.new' % os.getpid()); json.dump(ref, open(tmp, 'w')); os.replace(tmp, R['dir'] / 'refined.json')
        res.update(check='serial' if a.serial_check else 'parallel', check_seconds=round(time.time() - tc),
                   check_failed=[[roots[ri]['level'], roots[ri]['cell'], f] for ri, (st, _, f) in verdicts.items() if f])
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
