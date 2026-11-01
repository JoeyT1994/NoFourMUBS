#!/usr/bin/env python3
"""Probe (no proof role): can the leaves of a certificate that use a given witness kind be closed without it?

  python reclose_probe.py ROOT STATUS_DIR OUT_DIR BALL... [--kind gamma-F] [--workers 120]

For each BALL, the best certificate named by STATUS_DIR (onetree_status.py) is read, and every plane leaf with a pattern
of --kind (gamma-F: a gamma witness whose own bound is at most 19/50) is searched again on its own cell with
onetree.search_cell and the search without --gamma (so no gamma witness at all), the native certifier tried on any
persistent pattern from level 1. Results go to OUT_DIR only (OUT_DIR/b<ball>/leaves, and OUT_DIR/probe.json: per cell
leaf / native / split and the reason); no certificate is read for writing and no tree is made.
"""
import argparse, collections, gzip, json, os, sys, time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path

sys.path.insert(0, os.environ.get('ONETREE_DIR', str(Path(__file__).resolve().parent)))
import onetree as O


def has_kind(p, kind):
    if kind == 'gamma-F':
        return any('gamma' in w and float.fromhex(w['gamma']['g_up_hex']) <= 19 / 50 for w in p.get('witnesses', []))
    raise SystemExit('unknown kind')


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('root'); ap.add_argument('status'); ap.add_argument('out'); ap.add_argument('balls', nargs='+', type=int)
    ap.add_argument('--kind', default='gamma-F'); ap.add_argument('--workers', type=int, default=120)
    a = ap.parse_args(); t0 = time.time()
    s = json.load(open(Path(a.status) / 'summary.json'))
    import csv
    rows = {int(r['ball']): r for r in csv.DictReader(open(Path(a.status) / 'balls.tsv'), delimiter='\t')}
    out = Path(a.out).resolve(); jobs = []; total = collections.Counter()
    for b in a.balls:
        d = Path(s['cert_base']) / ('' if rows[b]['source'] == '.' else rows[b]['source']) / ('b%d' % b)
        plane = []
        def walk(t):
            if 'children' in t: [walk(c) for c in t['children']]
            elif 'leaf' in t: plane.append(t['leaf'])
        walk(json.load(open(d / 'tree.json'))['tree']); total[b] = len(plane)
        ob = out / ('b%d' % b); (ob / 'leaves').mkdir(parents=True, exist_ok=True); (ob / 'tmp').mkdir(exist_ok=True)
        for n in plane:
            if has_kind(json.loads(gzip.decompress((d / 'leaves' / (n + '.proposal.json.gz')).read_bytes())), a.kind):
                lv, *cell = map(int, n.split('_'))
                jobs.append((b, lv, cell, ob, sys.executable, ob / 'tmp'))
    print('%d cells of %d leaves to probe (%.0fs)' % (len(jobs), sum(total.values()), time.time() - t0), flush=True)
    O.SEARCH[:] = [x for x in O.SEARCH if x != '--gamma']; O.NATIVE_MIN_LEVEL = 1
    ctx = O.parent_setup(str(Path(a.root).resolve()), a.balls[0])
    for b in a.balls: O.W['original'][b] = O.W['F'].original_record(O.W['root'], b)
    res = []
    with ProcessPoolExecutor(a.workers, mp_context=ctx) as pool:
        for (ball, level, cell), st, sec, why in pool.map(O.search_cell, jobs, chunksize=1):
            res.append(dict(ball=ball, level=level, cell=list(cell), status=st, seconds=round(sec, 1), reason=why))
    by = collections.defaultdict(collections.Counter)
    for r in res: by[r['ball']][r['status']] += 1
    summary = dict(search=O.SEARCH, kind=a.kind, cells=len(res), leaves_total=dict(total), by_ball={str(k): dict(v) for k, v in by.items()},
                   by_status=dict(collections.Counter(r['status'] for r in res)), core_hours=round(sum(r['seconds'] for r in res) / 3600, 1),
                   seconds=round(time.time() - t0), cells_detail=res)
    json.dump(summary, open(out / 'probe.json', 'w'), indent=1)
    print(json.dumps({k: v for k, v in summary.items() if k != 'cells_detail'}))


if __name__ == '__main__': main()
