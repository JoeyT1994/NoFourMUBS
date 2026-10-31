#!/usr/bin/env python3
"""One tree per ball: a whole seed ball closed by a single dyadic tree, and checked by walking it.

  python onetree.py close ROOT BALL OUT [--workers N] [--max-level L] [--cell L:c0,c1,c2,c3]
  python onetree.py check ROOT BALL OUT [--workers N]

The certificate of ball B is OUT/b<B>/: tree.json and one leaf per closed cell in leaves/ (<level>_<cell>.input.json.gz,
the cell's H record, and <level>_<cell>.proposal.json.gz, its whole-cell proposal). tree.json is a dyadic partition of
the chart box of B (or of one cell of it, --cell): every node has 16 children, or is {'outside': true} (the closed cell
misses the closed ball), or {'leaf': '<level>_<cell>'}.

check: every node is verified on its own, in parallel. An outside node by exact arithmetic (misses_ball, PR #4). A
leaf: the record names this ball, level and cell; the record's H ball contains the whole closed cell
(plane_frontier_certificate.cell_geometry, Arb); and the whole-cell check (ext_cell_certificate.check: PR #4's
plane_cell_certificate.check for a proposal with only its witnesses, else with the secant, projector and gamma
witnesses) rebuilds C1, the H normal form, Stage C and the complete K cover from the record and certifies every pattern
excluded or classified. Nothing is cached and nothing is trusted from the search.

close: the search, coarse first. A cell that misses the ball is outside; otherwise fast_search.py --gamma proposes a
proof (the gamma witness on each pattern first, then the column search, then secant and projector), with a time cap per
level; a proposal that passes the leaf check above is a leaf, anything else is split into its 16 children, down to
--max-level (cells still failing there are reported open). Writes OUT/b<B>/summary.json.
"""
import argparse, gzip, json, os, shutil, subprocess, sys, tempfile, time
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path

HERE = Path(__file__).resolve().parent
CAPS = {0: 300, 1: 300, 2: 300, 3: 600, 4: 900, 5: 1200, 6: 1800, 7: 1800, 8: 1800}
SEARCH = ['--gamma', '--projector', '--depth', '8', '--column-nodes', '30000', '--scalar-cap', '20000']
CERT = ('CERTIFIED_EMPTY_RECORDED_H_CELL', 'CERTIFIED_CLASSIFIED_RECORDED_H_CELL')
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
    W.update(root=Path(root), F=F, T=T, E=E, original={})


def leaf_check(ball, level, cell, inp, prop):
    """The leaf check (see the module docstring); returns the status of the whole-cell check, or raises."""
    F, E = W['F'], W['E']
    if ball not in W['original']: W['original'][ball] = F.original_record(W['root'], ball)
    data = F.read_json(Path(inp))
    F.require(data.get('schema') == 'tc-h-cell-input-v1' and data['record_sha256'] == F.jsonsha(data['record']) and
              [data['ball'], data['level'], data['cell']] == [ball, level, list(cell)], 'leaf record is not this cell')
    F.ctx.prec = 224; F.cell_geometry(W['original'][ball], data['record'], level, list(cell))
    r = E.check(Path(inp), F.read_json(Path(prop)))
    F.require(r['status'] in CERT, 'leaf not certified')
    return r['status']


def check_node(job):
    kind, ball, level, cell, inp, prop = job
    t = time.time()
    try:
        if kind == 'outside':
            W['F'].require(W['T'].misses_ball(level, cell), 'outside node meets the ball'); return job[:4], 'OUTSIDE', 0.0
        return job[:4], leaf_check(ball, level, cell, inp, prop), time.time() - t
    except Exception as e: return job[:4], 'FAILED: %s' % str(e)[:150], time.time() - t


def search_cell(job):
    """Search one cell; ('outside' | 'leaf' | 'split', seconds, reason)."""
    ball, level, cell, out, py = job; t = time.time()
    if W['T'].misses_ball(level, cell): return job[:3], 'outside', 0.0, ''
    tmp = Path(tempfile.mkdtemp(prefix='onetree.', dir=str(out / 'tmp')))
    try:
        e = tmp / 'entry.json'
        json.dump(dict(ball=ball, level=level, cell=list(cell), subatlas='none', sub=0, record_sha256='none'), open(e, 'w'))
        try:
            subprocess.run([py, '-W', 'ignore', str(HERE / 'fast_search.py'), str(W['root']), str(e), '--out', str(tmp / 'f.json')] + SEARCH,
                           cwd=str(W['root']), capture_output=True, timeout=CAPS.get(level, 1800))
        except subprocess.TimeoutExpired: return job[:3], 'split', time.time() - t, 'time cap'
        inp, prop = tmp / 'f.input.json.gz', tmp / 'f.proposal.json.gz'
        if not prop.exists():
            try: why = json.load(open(tmp / 'f.json')).get('reason', '')
            except (OSError, ValueError): why = 'no proposal'
            return job[:3], 'split', time.time() - t, str(why)[:100]
        try: leaf_check(ball, level, cell, inp, prop)
        except Exception as ex: return job[:3], 'split', time.time() - t, 'check: %s' % str(ex)[:100]
        n = name(level, cell)
        shutil.copyfile(inp, out / 'leaves' / (n + '.input.json.gz')); shutil.copyfile(prop, out / 'leaves' / (n + '.proposal.json.gz'))
        return job[:3], 'leaf', time.time() - t, ''
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def close(a, root):
    out = Path(a.out).resolve() / ('b%d' % a.ball); (out / 'leaves').mkdir(parents=True, exist_ok=True); (out / 'tmp').mkdir(exist_ok=True)
    l0, c0 = (int(a.cell.split(':')[0]), [int(x) for x in a.cell.split(':')[1].split(',')]) if a.cell else (0, [0, 0, 0, 0])
    state = {}; why = {}; core = 0.0; t0 = time.time(); per = {}
    with ProcessPoolExecutor(a.workers, initializer=setup, initargs=(str(root),)) as pool:
        live = {pool.submit(search_cell, (a.ball, l0, c0, out, sys.executable))}
        while live:
            done = next(as_completed(live)); live.remove(done)
            (ball, level, cell), st, sec, reason = done.result(); core += sec
            p = per.setdefault(level, dict(searched=0, leaf=0, outside=0, split=0, open=0)); p['searched'] += st != 'outside'
            if st == 'split' and level >= a.max_level: st = 'open'; why[name(level, cell)] = reason
            state[(level, tuple(cell))] = st; p[st] += 1
            if st == 'split':
                for k in children(level, cell): live.add(pool.submit(search_cell, (a.ball, k[0], k[1], out, sys.executable)))
            if len(state) % 200 == 0:
                print('%.0fs: %s' % (time.time() - t0, {l: v for l, v in sorted(per.items())}), flush=True)
    def node(level, cell):
        st = state[(level, tuple(cell))]
        if st == 'outside': return {'outside': True}
        if st == 'leaf': return {'leaf': name(level, cell)}
        if st == 'open': return {'open': True}
        return {'children': [node(*k) for k in children(level, cell)]}
    tree = dict(schema='onetree-v1', ball=a.ball, root=[l0, c0], tree=node(l0, c0))
    json.dump(tree, open(out / 'tree.json', 'w'))
    shutil.rmtree(out / 'tmp', ignore_errors=True)
    opened = sorted(k for k, s in state.items() if s == 'open')
    size = sum(f.stat().st_size for f in (out / 'leaves').iterdir())
    res = dict(ball=a.ball, root=[l0, c0], verdict='CLOSED' if not opened else 'OPEN', leaves=sum(s == 'leaf' for s in state.values()),
               outside=sum(s == 'outside' for s in state.values()), open=len(opened), per_level={str(k): v for k, v in sorted(per.items())},
               proof_bytes=size, search_core_hours=round(core / 3600, 2), wall_seconds=round(time.time() - t0),
               open_cells=[[l, list(c), why.get(name(l, c), '')] for l, c in opened[:500]])
    json.dump(res, open(out / 'summary.json', 'w'), indent=1)
    print(json.dumps({k: v for k, v in res.items() if k != 'open_cells'}))


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
        else: bad.append([level, cell, 'unresolved node'])
    walk(tree['tree'], *tree['root'])
    counts = {}; core = 0.0; slow = 0.0
    with ProcessPoolExecutor(a.workers, initializer=setup, initargs=(str(root),)) as pool:
        for (kind, ball, level, cell), st, sec in pool.map(check_node, jobs, chunksize=1):
            key = st if not st.startswith('FAILED') else 'FAILED'; counts[key] = counts.get(key, 0) + 1; core += sec; slow = max(slow, sec)
            if key == 'FAILED': bad.append([level, cell, st])
    whole = tree['root'] == [0, [0, 0, 0, 0]]
    res = dict(ball=a.ball, root=tree['root'], verdict=('CLOSED' if whole else 'CELL CLOSED') if not bad else 'OPEN', counts=counts,
               failed=bad[:50], check_core_seconds=round(core), slowest_leaf_seconds=round(slow), wall_seconds=round(time.time() - t0),
               workers=a.workers)
    json.dump(res, open(out / 'check.json', 'w'), indent=1); print(json.dumps(res))
    return 0 if not bad else 1


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('cmd', choices=('close', 'check')); ap.add_argument('root'); ap.add_argument('ball', type=int); ap.add_argument('out')
    ap.add_argument('--workers', type=int, default=8); ap.add_argument('--max-level', type=int, default=7); ap.add_argument('--cell')
    a = ap.parse_args(); root = Path(a.root).resolve()
    sys.exit(close(a, root) or 0 if a.cmd == 'close' else check(a, root))


if __name__ == '__main__': main()
