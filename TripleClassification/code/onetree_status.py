#!/usr/bin/env python3
"""The atlas status from the one-tree certificates: one row per seed ball, from its best certificate.

  python onetree_status.py CERT_BASE OUT_DIR [--balls 2775] [--workers 64]

CERT_BASE holds certificate folders <base>/b<ball> for base in BASES (on rusty: .../triples_tc/onetree). A folder is a
candidate when it has tree.json, summary.json and check.json, and its check is not older than its tree. The best
candidate of a ball is a CLOSED one if there is any, then the one with the smallest proof (as status_tmp.py chooses).
For the best one the tree is walked: plane leaves, native leaves and outside nodes are counted, and the proof size is
the size of the files the tree names (not of whatever else is in leaves/). The check's counts must match the tree.

Writes OUT_DIR/balls.tsv (one row per ball) and OUT_DIR/summary.json (the totals publish_status.py renders). Reads
only; never writes into CERT_BASE.
"""
import argparse, json, os, statistics, time
from concurrent.futures import ProcessPoolExecutor

BASES = ('native', 'all', 'sample', 'default', 'hard', '')
NATIVE_ROOT = {'native': '0_0_0_0_0'}
COLS = ('ball', 'verdict', 'scope', 'route', 'source', 'plane_leaves', 'native_leaves', 'outside', 'levels',
        'proof_bytes', 'check_wall_s', 'check_core_s', 'check_workers', 'slowest_leaf_s', 'search_core_h', 'gamma_rechecked')


def load(d):
    try:
        c = json.load(open(os.path.join(d, 'check.json'))); s = json.load(open(os.path.join(d, 'summary.json')))
        if os.path.getmtime(os.path.join(d, 'check.json')) < os.path.getmtime(os.path.join(d, 'tree.json')): return None
        return c, s
    except (OSError, ValueError): return None


def walk(tree, level=0, acc=None):
    acc = acc if acc is not None else dict(plane=[], native=[], outside=0, open=0)
    if 'children' in tree:
        for t in tree['children']: walk(t, level + 1, acc)
    elif 'outside' in tree: acc['outside'] += 1
    elif 'leaf' in tree: acc['plane'].append(tree['leaf'])
    elif 'native' in tree: acc['native'].append(tree['native'])
    else: acc['open'] += 1
    return acc


def size(path):
    try: return os.path.getsize(path)
    except OSError: return 0


def ball_row(job):
    base_dir, ball = job
    cands = []
    for base in BASES:
        d = os.path.join(base_dir, base, 'b%d' % ball)
        x = load(d)
        if x: cands.append(((x[0].get('verdict') == 'CLOSED', -x[1].get('proof_bytes', 0)), base, d, x))
    if not cands: return dict(ball=ball, verdict='NONE')
    _, base, d, (c, s) = max(cands, key=lambda t: t[0])
    tree = json.load(open(os.path.join(d, 'tree.json')))
    acc = walk(tree['tree'], tree['root'][0])
    lv = sorted({int(n.split('_')[0]) for n in acc['plane'] + acc['native']})
    leaves = os.path.join(d, 'leaves')
    pb = sum(size(os.path.join(leaves, n + '.input.json.gz')) + size(os.path.join(leaves, n + '.proposal.json.gz')) for n in acc['plane'])
    pb += sum(size(os.path.join(leaves, n + '.input.json.gz')) + size(os.path.join(leaves, n + '.native.json')) for n in acc['native'])
    pb += size(os.path.join(d, 'tree.json'))
    counts = c.get('counts', {})
    certified = sum(v for k, v in counts.items() if k != 'OUTSIDE')
    consistent = certified == len(acc['plane']) + len(acc['native']) and counts.get('OUTSIDE', 0) == acc['outside'] and not acc['open']
    verdict = c.get('verdict') if consistent or c.get('verdict') != 'CLOSED' else 'INCONSISTENT'   # a CLOSED check must match the tree
    if tree.get('tree') == NATIVE_ROOT and tree.get('root') == [0, [0, 0, 0, 0]]:
        route = 'native-empty' if counts.get('NATIVE CERTIFIED EMPTY') else 'native-classified'
    else: route = 'tree'
    return dict(ball=ball, verdict=verdict, scope=c.get('scope', ''), route=route, source=base or '.', plane_leaves=len(acc['plane']),
                native_leaves=len(acc['native']), outside=acc['outside'], levels='%d-%d' % (lv[0], lv[-1]) if lv else '',
                proof_bytes=pb, check_wall_s=c.get('wall_seconds', 0), check_core_s=c.get('check_core_seconds', 0),
                check_workers=c.get('workers', 0), slowest_leaf_s=c.get('slowest_leaf_seconds', 0),
                search_core_h=s.get('search_core_hours', 0), gamma_rechecked=int(os.path.exists(os.path.join(d, 'check.float.json'))),
                counts=counts)


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('base'); ap.add_argument('out')
    ap.add_argument('--balls', type=int, default=2775); ap.add_argument('--workers', type=int, default=64)
    a = ap.parse_args(); t0 = time.time()
    with ProcessPoolExecutor(a.workers) as pool:
        rows = list(pool.map(ball_row, [(a.base, b) for b in range(a.balls)], chunksize=4))
    os.makedirs(a.out, exist_ok=True)
    tmp = os.path.join(a.out, 'balls.tsv.new')
    with open(tmp, 'w') as f:
        f.write('\t'.join(COLS) + '\n')
        for r in rows: f.write('\t'.join(str(r.get(k, '')) for k in COLS) + '\n')
    os.replace(tmp, os.path.join(a.out, 'balls.tsv'))
    closed = [r for r in rows if r['verdict'] == 'CLOSED']
    tree = [r for r in closed if r['route'] == 'tree']
    pat = lambda rs: dict(balls=len(rs), plane_leaves=sum(r['plane_leaves'] for r in rs), native_leaves=sum(r['native_leaves'] for r in rs),
                          outside=sum(r['outside'] for r in rs), proof_bytes=sum(r['proof_bytes'] for r in rs),
                          check_core_hours=round(sum(r['check_core_s'] for r in rs) / 3600, 1),
                          search_core_hours=round(sum(r['search_core_h'] for r in rs), 1),
                          check_wall_max_s=max((r['check_wall_s'] for r in rs), default=0),
                          check_wall_median_s=statistics.median([r['check_wall_s'] for r in rs]) if rs else 0)
    hard = sorted(closed, key=lambda r: -r['proof_bytes'])[:12]
    summary = dict(schema='tc-onetree-status-v1', generated=time.strftime('%Y-%m-%d %H:%M'), cert_base=a.base, balls=a.balls,
                   closed=len(closed), not_closed=sorted(r['ball'] for r in rows if r['verdict'] != 'CLOSED'),
                   not_closed_why={str(r['ball']): r['verdict'] for r in rows if r['verdict'] != 'CLOSED'},
                   native_empty=pat([r for r in closed if r['route'] == 'native-empty']),
                   native_classified=pat([r for r in closed if r['route'] == 'native-classified']),
                   tree_all=pat([r for r in tree if r['scope'] == 'all']),
                   tree_min=pat([r for r in tree if r['scope'] == 'minimum-transition']),
                   total=pat(closed),
                   tree_with_native_leaves=sum(1 for r in tree if r['native_leaves']),
                   gamma_rechecked=sum(r['gamma_rechecked'] for r in closed),
                   by_source={b or '.': sum(1 for r in closed if r['source'] == (b or '.')) for b in BASES},
                   hardest=[{k: r[k] for k in COLS} for r in hard], seconds=round(time.time() - t0))
    tmp = os.path.join(a.out, 'summary.json.new'); json.dump(summary, open(tmp, 'w'), indent=1)
    os.replace(tmp, os.path.join(a.out, 'summary.json'))
    print(json.dumps({k: summary[k] for k in ('generated', 'closed', 'not_closed', 'total', 'seconds')}))


if __name__ == '__main__': main()
