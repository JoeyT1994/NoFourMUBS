#!/usr/bin/env python3
"""The atlas status from the one-tree certificates: one row per seed ball, from its best certificate.

  python onetree_status.py CERT_BASE OUT_DIR [--balls 2775] [--workers 64]

CERT_BASE holds certificate folders <base>/b<ball>, for base CERT_BASE itself and each folder directly under it (on
rusty: .../triples_tc/onetree/{native,all,sample,default,hard,...}; a new folder is picked up). A folder is a candidate
when it has tree.json, summary.json and check.json for this ball's whole chart box, and its check is not older than its
tree. For a ball's best candidate (below) the tree is walked: plane leaves, native leaves and outside nodes are counted, and the proof size is
the size of the files the tree names (not of whatever else is in leaves/), read from leaves/ or, for a packed
certificate, from leaves.tar's index. The check's counts must match the tree.

The check is authoritative, and it must come from the final checker (gamma rows on the ordering bound only): a
certificate counts as *final-checked* when its check.json is stamped (checker_sha256) with an approved checker (FINAL:
onetree.py, branch_overlap.py, whose overlap witness every leaf below level 0 needs (NATIVE_REVIEW.md F1),
ext_cell_certificate.py and gamma_exact.py).
A ball's best candidate is CLOSED first, then final-checked, then the fewest plane leaves, then the smallest proof: a
native-only certificate wins where there is one. Closed balls whose counting certificate is not final-checked are
listed in summary.json (not_final_checked); publish_status.py --final refuses them.

The 39 split balls of the earlier Fourier-neighbourhood theorem (GAMMA_PROOF.md (Γ3); SPLIT39) must not count
through that theorem. The certifier no longer uses it, so this is an assertion that should always pass: the counting
certificate of each of them has no gamma row with bound at most 19/50. Each one's certificate is recorded
(summary.json split39); a violation is listed in split39_violations and the run exits with status 3 after writing
its outputs.
"""
import argparse, gzip, json, os, re, statistics, sys, time
from concurrent.futures import ProcessPoolExecutor

NATIVE_ROOT = {'native': '0_0_0_0_0'}
FINAL = {     # the approved checker versions: a check counts when every file here has one of its approved hashes
    'TripleClassification/code/onetree.py': ('a49e829abc66942ca556489de68cd97fc0584e6c383abf63d132e76e0f5d9578',
                                             '64ac802ad2ff809044b96c19e6c7c02b772a2db7af27f96b9f8e0e7dbd10960c',    # 39da80af3
                                             '64588c3f32992264eec21315b3ad9081b5ebdd5bc0e627ef7bc196776fd809d8'),   # 37d169179 (pack)
    'TripleClassification/code/branch_overlap.py': ('487b905a5e33a616c34e23181059005cd226d075f937b8605b96a6b12d4495fd',
                                                    '6939d311c6f586e4b69b25ac8d85f85f0320ae3c7a4d8f9d29a930e6f0a5ddbb'),   # 39da80af3
    'TripleClassification/code/ext_cell_certificate.py': ('cb2d3e20a57cb3f51b9cf92f6ec6342ed24e71cdee535a97284bc38784cb7953',),
    'TripleClassification/code/gamma_exact.py': ('e6413eba58fe16d41bbc8add08ce6c32deec8133943f91cb461a3e04a40672a3',),
}
SPLIT39 = (989, 1107, 1148, 1169, 1282, 1286, 1320, 1441, 1460, 1470, 1492, 1538, 1545, 1568, 1591, 1610, 1628, 1630, 1692,
           1730, 1753, 1756, 1760, 1766, 1812, 1886, 1887, 1888, 1895, 1901, 1902, 2248, 2344, 2490, 2499, 2531, 2545, 2546,
           2606)                     # TC_questions_3_4_results REPORT.md §7 (fourier_neighbourhood_certificate.json)
COLS = ('ball', 'verdict', 'scope', 'route', 'source', 'plane_leaves', 'native_leaves', 'outside', 'levels',
        'proof_bytes', 'check_wall_s', 'check_core_s', 'check_workers', 'slowest_leaf_s', 'search_core_h', 'gamma_rechecked',
        'final_checked')


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


class Leaves:
    """A certificate's leaf files: the folder leaves/, or a packed certificate's leaves.tar (members leaves/<file>,
    `onetree.py pack`), indexed once."""
    def __init__(self, d, index=None):
        self.dir = os.path.join(d, 'leaves'); self.tar = os.path.join(d, 'leaves.tar'); self.index = index
        if index is None and not os.path.isdir(self.dir) and os.path.exists(self.tar):
            import tarfile
            with tarfile.open(self.tar) as t: self.index = {m.name[len('leaves/'):]: (m.offset_data, m.size) for m in t if m.isfile()}
    def size(self, name):
        if self.index is not None: return self.index.get(name, (0, 0))[1]
        try: return os.path.getsize(os.path.join(self.dir, name))
        except OSError: return 0
    def read(self, name):
        if self.index is None: return open(os.path.join(self.dir, name), 'rb').read()
        off, n = self.index[name]
        with open(self.tar, 'rb') as f: f.seek(off); return f.read(n)


def size(path):
    try: return os.path.getsize(path)
    except OSError: return 0


def fourier_leaves(L, plane):
    """Plane leaves with a gamma row whose bound is at most 19/50."""
    n = 0
    for leaf in plane:
        try: p = json.loads(gzip.decompress(L.read(leaf + '.proposal.json.gz')))
        except (OSError, ValueError, KeyError): continue          # a missing leaf fails the check anyway
        n += any('gamma' in w and float.fromhex(w['gamma']['g_up_hex']) <= 19 / 50 for w in p.get('witnesses', []))
    return n


def ball_row(job):
    base_dir, ball, bases, FINAL = job
    cands = []
    for base in bases:
        d = os.path.join(base_dir, base, 'b%d' % ball)
        x = load(d, ball)
        if x:
            plane = sum(v for k, v in x[0].get('counts', {}).items() if k.startswith('CERTIFIED_'))
            stamp = x[0].get('checker_sha256') or {}
            final = all(stamp.get(k) in v for k, v in FINAL.items())
            cands.append(((x[0].get('verdict') == 'CLOSED', final, -plane, -x[1].get('proof_bytes', 0)), base, d, x))
    if not cands: return dict(ball=ball, verdict='NONE')
    (_, final, _, _), base, d, (c, s) = max(cands, key=lambda t: t[0])
    tree = json.load(open(os.path.join(d, 'tree.json')))
    acc = walk(tree['tree'], tree['root'][0])
    lv = sorted({int(n.split('_')[0]) for n in acc['plane'] + acc['native']})
    L = Leaves(d)
    pb = sum(L.size(n + '.input.json.gz') + L.size(n + '.proposal.json.gz') for n in acc['plane'])
    pb += sum(L.size(n + '.input.json.gz') + L.size(n + '.native.json') for n in acc['native'])
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
                final_checked=int(final), counts=counts,
                fourier_leaves=fourier_leaves(L, acc['plane']) if ball in SPLIT39 else None)


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('base'); ap.add_argument('out')
    ap.add_argument('--balls', type=int, default=2775); ap.add_argument('--workers', type=int, default=64)
    a = ap.parse_args(); t0 = time.time(); final = FINAL
    bases = [''] + sorted(e.name for e in os.scandir(a.base) if e.is_dir() and not re.fullmatch(r'b[0-9]+', e.name))
    with ProcessPoolExecutor(a.workers) as pool:
        rows = list(pool.map(ball_row, [(a.base, b, bases, final) for b in range(a.balls)], chunksize=4))
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
                   final_checker={k: sorted(v) for k, v in final.items()},
                   not_final_checked=sorted(r['ball'] for r in closed if not r['final_checked']),
                   not_final_checked_trees=sorted(r['ball'] for r in closed if not r['final_checked'] and r['route'] == 'tree'),
                   split39={str(r['ball']): dict(verdict=r['verdict'], source=r.get('source'), scope=r.get('scope'),
                                                 fourier_leaves=r.get('fourier_leaves')) for r in rows if r['ball'] in SPLIT39},
                   split39_violations=sorted(r['ball'] for r in rows if r['ball'] in SPLIT39 and r.get('fourier_leaves')),
                   seconds=round(time.time() - t0))
    tmp = os.path.join(a.out, 'summary.json.new'); json.dump(summary, open(tmp, 'w'), indent=1)
    os.replace(tmp, os.path.join(a.out, 'summary.json'))
    print(json.dumps(dict({k: summary[k] for k in ('generated', 'closed', 'not_closed', 'total', 'split39_violations', 'seconds')},
                          not_final_checked=len(summary['not_final_checked']))))
    if summary['split39_violations']:
        print('FAIL: split balls counted through Fourier gamma rows: %s' % summary['split39_violations'], file=sys.stderr); sys.exit(3)


if __name__ == '__main__': main()
