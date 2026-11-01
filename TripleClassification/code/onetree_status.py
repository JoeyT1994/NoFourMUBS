#!/usr/bin/env python3
"""The atlas status from the one-tree certificates: one row per seed ball, from its best certificate.

  python onetree_status.py CERT_BASE OUT_DIR [--balls 2775] [--workers 64]

CERT_BASE holds certificate folders <base>/b<ball>, for base CERT_BASE itself and each folder directly under it (on
rusty: .../triples_tc/onetree/{native,all,sample,default,hard,...}; a new folder is picked up). A folder is a candidate
when it has tree.json, summary.json and check.json for this ball's whole chart box, and its check is not older than its
tree. The best
candidate of a ball is a CLOSED one if there is any, then the one with the smallest proof (as status_tmp.py chooses).
For the best one the tree is walked: plane leaves, native leaves and outside nodes are counted, and the proof size is
the size of the files the tree names (not of whatever else is in leaves/). The check's counts must match the tree.

The 39 split balls that the Fourier-neighbourhood theorem assumes closed (GAMMA_PROOF.md (Γ3); SPLIT39) must not
count through a certificate that uses that theorem: for them a candidate counts only if none of its plane leaves has a
gamma row with bound at most 19/50 (a Fourier row). Every such ball's counting certificate is recorded in summary.json
(split39); if one of them is closed only by certificates with Fourier rows, it is reported not closed, listed in
split39_blocked, and the run exits with status 3 after writing its outputs.

Writes OUT_DIR/balls.tsv (one row per ball) and OUT_DIR/summary.json (the totals publish_status.py renders). Reads
only; never writes into CERT_BASE.
"""
import argparse, gzip, json, os, re, statistics, sys, time
from concurrent.futures import ProcessPoolExecutor

NATIVE_ROOT = {'native': '0_0_0_0_0'}
SPLIT39 = (989, 1107, 1148, 1169, 1282, 1286, 1320, 1441, 1460, 1470, 1492, 1538, 1545, 1568, 1591, 1610, 1628, 1630, 1692,
           1730, 1753, 1756, 1760, 1766, 1812, 1886, 1887, 1888, 1895, 1901, 1902, 2248, 2344, 2490, 2499, 2531, 2545, 2546,
           2606)                     # TC_questions_3_4_results REPORT.md §7 (fourier_neighbourhood_certificate.json)
COLS = ('ball', 'verdict', 'scope', 'route', 'source', 'plane_leaves', 'native_leaves', 'outside', 'levels',
        'proof_bytes', 'check_wall_s', 'check_core_s', 'check_workers', 'slowest_leaf_s', 'search_core_h', 'gamma_rechecked')


def load(d, ball):
    try:
        c = json.load(open(os.path.join(d, 'check.json'))); s = json.load(open(os.path.join(d, 'summary.json')))
        if c.get('ball') != ball or c.get('root') != [0, [0, 0, 0, 0]]: return None
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


def fourier_leaves(d, tree):
    """Plane leaves of the tree with a gamma row whose bound is at most 19/50 (a Fourier row)."""
    n = 0
    for leaf in walk(tree['tree'])['plane']:
        try: p = json.loads(gzip.decompress(open(os.path.join(d, 'leaves', leaf + '.proposal.json.gz'), 'rb').read()))
        except (OSError, ValueError): continue          # a missing leaf fails the check anyway
        n += any('gamma' in w and float.fromhex(w['gamma']['g_up_hex']) <= 19 / 50 for w in p.get('witnesses', []))
    return n


def ball_row(job):
    base_dir, ball, bases = job
    cands = []
    for base in bases:
        d = os.path.join(base_dir, base, 'b%d' % ball)
        x = load(d, ball)
        if x: cands.append(((x[0].get('verdict') == 'CLOSED', -x[1].get('proof_bytes', 0)), base, d, x))
    if not cands: return dict(ball=ball, verdict='NONE')
    rejected = []
    if ball in SPLIT39:                  # (Γ3) must not be used to close the balls it assumes closed
        for cand in sorted(cands, key=lambda t: t[0], reverse=True):
            f = fourier_leaves(cand[2], json.load(open(os.path.join(cand[2], 'tree.json'))))
            if not f: break
            rejected.append([cand[1] or '.', f])
        else:
            return dict(ball=ball, verdict='OPEN (only certificates with Fourier rows)', split39_rejected=rejected)
        cands = [cand]
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
                counts=counts, split39_rejected=rejected)


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('base'); ap.add_argument('out')
    ap.add_argument('--balls', type=int, default=2775); ap.add_argument('--workers', type=int, default=64)
    a = ap.parse_args(); t0 = time.time()
    bases = [''] + sorted(e.name for e in os.scandir(a.base) if e.is_dir() and not re.fullmatch(r'b[0-9]+', e.name))
    with ProcessPoolExecutor(a.workers) as pool:
        rows = list(pool.map(ball_row, [(a.base, b, bases) for b in range(a.balls)], chunksize=4))
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
                   by_source={b or '.': sum(1 for r in closed if r['source'] == (b or '.')) for b in bases},
                   hardest=[{k: r[k] for k in COLS} for r in hard],
                   split39={str(r['ball']): dict(verdict=r['verdict'], source=r.get('source'), fourier_rows_in_rejected=r.get('split39_rejected', []))
                            for r in rows if r['ball'] in SPLIT39},
                   split39_blocked=sorted(r['ball'] for r in rows if r['ball'] in SPLIT39 and r['verdict'] != 'CLOSED' and r.get('split39_rejected')),
                   seconds=round(time.time() - t0))
    tmp = os.path.join(a.out, 'summary.json.new'); json.dump(summary, open(tmp, 'w'), indent=1)
    os.replace(tmp, os.path.join(a.out, 'summary.json'))
    print(json.dumps({k: summary[k] for k in ('generated', 'closed', 'not_closed', 'total', 'split39_blocked', 'seconds')}))
    if summary['split39_blocked']:
        print('FAIL: split balls closed only through the Fourier-neighbourhood theorem they support: %s' % summary['split39_blocked'], file=sys.stderr)
        sys.exit(3)


if __name__ == '__main__': main()
