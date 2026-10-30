#!/usr/bin/env python3
"""Close one seed ball with the whole-cell checker alone, on as few dyadic cells as it can.

  python ball_closer.py ROOT BALL OUT [--start L] [--max-level M] [--seconds L:S,...] [--cell L:c0,c1,c2,c3] [--workers W]

ROOT is the pinned checker tree (PR #4: plane_frontier_certificate.py and plane_tree_certificate.py). The root cell is
the ball itself (level 0; --cell picks a sub-cell instead). Cells above --start are split without a search; from
there each cell meeting the closed ball is searched (capped at its level's seconds) and its proposal replayed:
- certified (empty, or every K classified): a leaf;
- not certified, below --max-level: split into its 16 children (those missing the closed ball are leaves 'outside');
- otherwise: open.
Cells run in parallel and children are queued as soon as their parent fails, so a ball costs what its hardest cells
cost. When no cell is open, the cells form one tree (tc-plane-tree-proposal-v1) rooted at the root cell, and
plane_tree_certificate.check replays it once: that replay is the proof, and OUT/b<ball>/closer.json records it.

Each cell keeps only its entry, input, proposal and a small report (the checker's reports are cut to their status
and hashes, and its search cache is removed). A rerun reuses every cell already settled, so runs resume.
"""
import argparse, itertools, json, os, subprocess, sys, time
from concurrent.futures import ThreadPoolExecutor, FIRST_COMPLETED, wait
from pathlib import Path

HERE = Path(__file__).resolve().parent
CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')
DEFAULT_SECONDS = {0: 1800, 1: 1800, 2: 1800, 3: 1800, 4: 1800}          # deeper levels: 3600


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
    top = Path(a.out).resolve() / ('b%d' % a.ball); (top / 'cells').mkdir(parents=True, exist_ok=True)
    root_entry = dict(ball=a.ball, level=r0, cell=c0, subatlas='none', sub=0, record_sha256='none')
    t0 = time.time()

    def settled(d, level):
        """'leaf' / 'split' when an earlier run settled this cell for good (or at a cap at least this long), else None."""
        try:
            r = json.load(open(d / 'replay.json'))
            if (r.get('status') in CERT and r.get('snapshot_sha256') == digest(d / 'frontier.input.json.gz') and
                    r.get('proposal_sha256') == digest(d / 'frontier.proposal.json.gz') and r.get('entry_sha256') == digest(d / 'entry.json')):
                return 'leaf'
        except (OSError, ValueError, KeyError): pass
        try:
            f = json.load(open(d / 'failed.json'))
            if f.get('kind') == 'not certified' or f.get('seconds', 0) >= cap(level): return 'split'
        except (OSError, ValueError): pass
        return None

    def prove(level, cell):
        """Search, then replay, one cell; returns (level, cell, 'leaf' | 'split', core seconds)."""
        d = top / 'cells' / name(level, cell); d.mkdir(exist_ok=True)
        e = d / 'entry.json'; json.dump(dict(root_entry, level=level, cell=list(cell)), open(e, 'w'))
        s = settled(d, level)
        if s: return level, cell, s, 0.0
        env = dict(os.environ, OMP_NUM_THREADS='1'); ts = time.time()
        for f in ('replay.json', 'failed.json'):
            if (d / f).exists(): (d / f).unlink()
        try:
            subprocess.run([a.py, '-W', 'ignore', str(fc), str(e), '--out', str(d / 'frontier.json')], cwd=root, env=env,
                           capture_output=True, timeout=cap(level))
        except subprocess.TimeoutExpired:
            json.dump(dict(kind='time cap', seconds=cap(level)), open(d / 'failed.json', 'w')); slim_cell(str(d))
            return level, cell, 'split', time.time() - ts
        if (d / 'frontier.input.json.gz').exists() and (d / 'frontier.proposal.json.gz').exists():
            subprocess.run([a.py, '-W', 'ignore', str(fc), str(e), '--input', str(d / 'frontier.input.json.gz'), '--proposal',
                            str(d / 'frontier.proposal.json.gz'), '--out', str(d / 'replay.json')], cwd=root, env=env, capture_output=True)
        slim_cell(str(d))
        if settled(d, level) == 'leaf': return level, cell, 'leaf', time.time() - ts
        try: why = json.load(open(d / 'frontier.json')).get('reason')
        except (OSError, ValueError): why = None
        json.dump(dict(kind='not certified', reason=why), open(d / 'failed.json', 'w'))
        return level, cell, 'split', time.time() - ts

    state = {}; core = 0.0                              # (level, tuple(cell)) -> 'leaf' | 'split' | 'open' | 'outside'
    def expand(level, cell):
        """Cells to search under (level, cell): itself from --start on, else its children's."""
        if Tree.misses_ball(level, cell): state[(level, tuple(cell))] = 'outside'; return []
        if level < a.start: state[(level, tuple(cell))] = 'split'; return [x for k in children(level, cell) for x in expand(*k)]
        return [(level, cell)]
    with ThreadPoolExecutor(max(1, a.workers)) as pool:
        running = {pool.submit(prove, l, c) for l, c in expand(r0, c0)}
        while running:
            done, running = wait(running, return_when=FIRST_COMPLETED)
            for fut in done:
                level, cell, how, sec = fut.result(); core += sec
                if how == 'leaf': state[(level, tuple(cell))] = 'leaf'
                elif level < a.max_level:
                    state[(level, tuple(cell))] = 'split'
                    for l, c in children(level, cell):
                        if Tree.misses_ball(l, c): state[(l, tuple(c))] = 'outside'
                        else: running.add(pool.submit(prove, l, c))
                else: state[(level, tuple(cell))] = 'open'

    def node(level, cell):
        s = state.get((level, tuple(cell)))
        if s == 'outside': return {'outside': True}
        if s == 'leaf':
            rel = Path('cells') / name(level, cell)
            return {k: dict(path=str(rel / ('frontier.%s.json.gz' % k)), sha256=digest(top / rel / ('frontier.%s.json.gz' % k)))
                    for k in ('input', 'proposal')}
        if s == 'split': return {'children': [node(l, c) for l, c in children(level, cell)]}
        return None
    def has_open(level, cell):
        s = state.get((level, tuple(cell)))
        return s == 'open' or s is None or (s == 'split' and any(has_open(l, c) for l, c in children(level, cell)))
    counts = {}
    for (level, _), s in state.items():
        counts.setdefault(level, {}).setdefault(s, 0); counts[level][s] += 1
    res = dict(schema='tc-ball-closer-v1', ball=a.ball, root_cell=dict(level=r0, cell=c0), start=a.start, max_level=a.max_level,
               search_seconds={str(k): cap(k) for k in range(r0, a.max_level + 1)}, checker_sources_sha256=PM.source_hashes(root),
               cells_by_level={str(k): v for k, v in sorted(counts.items())}, search_core_hours=round(core / 3600, 2))
    if has_open(r0, c0):
        res.update(verdict='OPEN', open_cells=sorted([l, list(c)] for (l, c), s in state.items() if s == 'open'))
    else:
        tree = dict(schema='tc-plane-tree-proposal-v1', root_entry_sha256=F.jsonsha(root_entry), tree=node(r0, c0))
        json.dump(root_entry, open(top / 'root_entry.json', 'w')); tmp = top / ('tree.json.%d.new' % os.getpid())
        json.dump(tree, open(tmp, 'w')); os.replace(tmp, top / 'tree.json')
        tc = time.time(); r = Tree.check(root_entry, top / 'tree.json')     # the proof: one replay of the whole tree
        res.update(verdict='CLOSED' if r['status'] in CERT else 'OPEN', status=r['status'], tree_sha256=r['tree_sha256'],
                   tree_counts=r['counts'], replay_seconds=round(time.time() - tc))
    res['wall_seconds'] = round(time.time() - t0)
    tmp = top / ('closer.json.%d.new' % os.getpid()); json.dump(res, open(tmp, 'w'), indent=1); os.replace(tmp, top / 'closer.json')
    print(json.dumps({k: v for k, v in res.items() if k not in ('open_cells', 'checker_sources_sha256')}))


if __name__ == '__main__': main()
