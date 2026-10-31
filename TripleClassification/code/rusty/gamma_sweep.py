#!/usr/bin/env python3
"""Close open cells of a ball with the gamma witness, coarsest first, in a directory of its own (nothing in the plane
cell directories is touched; rusty/ag_place.py places the certified cells afterwards).

  python gamma_sweep.py ROOT BALL CELLS MIN_LEVEL OUT [--workers N]

CELLS: one open cell per line, 'level c0,c1,c2,c3'. Every ancestor of an open cell at levels MIN_LEVEL.. is a
candidate; level by level, the candidates not inside a cell already certified are searched (fast_search.py
--gamma-only) and replayed by the extended check (ext_replay.py), each in OUT/<ball>/<ball>_<level>_<cell>/ with
entry.json, frontier.input.json.gz, frontier.proposal.json.gz and replay.json. A failure leaves only frontier.json.
Writes OUT/<ball>/sweep.json: per level the cells tried and certified, and the open cells no certified cell covers."""
import argparse, json, os, subprocess, sys, time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

HERE = Path(__file__).resolve().parent
CODE = HERE if (HERE / 'fast_search.py').exists() else HERE.parent
CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL', 'CERTIFIED_MINIMUM_TRANSITION_DYADIC_CELL')


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('root'); ap.add_argument('ball', type=int); ap.add_argument('cells')
    ap.add_argument('min_level', type=int); ap.add_argument('out'); ap.add_argument('--workers', type=int, default=8)
    a = ap.parse_args(); root = Path(a.root).resolve(); out = Path(a.out).resolve() / str(a.ball); out.mkdir(parents=True, exist_ok=True)
    env = dict(os.environ, OMP_NUM_THREADS='1', OPENBLAS_NUM_THREADS='1')
    cells = []
    for line in open(a.cells):
        if line.strip():
            l, c = line.split(); cells.append((int(l), tuple(int(x) for x in c.split(','))))
    anc = lambda L, c, l: (l, tuple(x >> (L - l) for x in c))
    closed = set(); log = dict(levels={})

    def one(lc):
        level, cell = lc; d = out / ('%d_%d_%s' % (a.ball, level, '_'.join(map(str, cell))))
        try:
            if json.load(open(d / 'replay.json')).get('status') in CERT: return lc, True
        except (OSError, ValueError): pass
        d.mkdir(exist_ok=True)
        json.dump(dict(ball=a.ball, level=level, cell=list(cell), subatlas='none', sub=0, record_sha256='none'), open(d / 'entry.json', 'w'))
        subprocess.run([sys.executable, '-W', 'ignore', str(CODE / 'fast_search.py'), str(root), str(d / 'entry.json'),
                        '--out', str(d / 'frontier.json'), '--gamma-only'], cwd=root, env=env, capture_output=True)
        try: ok = json.load(open(d / 'frontier.json')).get('status') == 'PROPOSED'
        except (OSError, ValueError): ok = False
        if not ok: return lc, False
        subprocess.run([sys.executable, '-W', 'ignore', str(CODE / 'ext_replay.py'), str(root), str(d / 'entry.json'),
                        '--input', str(d / 'frontier.input.json.gz'), '--proposal', str(d / 'frontier.proposal.json.gz'),
                        '--out', str(d / 'replay.json')], cwd=root, env=env, capture_output=True)
        try: return lc, json.load(open(d / 'replay.json')).get('status') in CERT
        except (OSError, ValueError): return lc, False

    top = max(L for L, c in cells) if cells else a.min_level
    with ThreadPoolExecutor(a.workers) as pool:
        for l in range(a.min_level, top + 1):
            t = time.time()
            todo = [x for x in sorted({anc(L, c, l) for L, c in cells if L >= l})
                    if not any(anc(l, x[1], k) in closed for k in range(a.min_level, l))]   # not inside a certified cell
            res = list(pool.map(one, todo)); got = [lc for lc, ok in res if ok]; closed.update(got)
            log['levels'][l] = dict(tried=len(todo), certified=len(got), seconds=round(time.time() - t))
            print('level %d: %d tried, %d certified, %.0f s' % (l, len(todo), len(got), time.time() - t), flush=True)
    left = [[L, list(c)] for L, c in cells if not any(anc(L, c, k) in closed for k in range(a.min_level, L + 1))]
    log.update(open_cells=len(cells), uncovered=left, certified=[[l, list(c)] for l, c in sorted(closed)])
    json.dump(log, open(out / 'sweep.json', 'w'), indent=1)
    print('%d of %d open cells covered by %d certified cells; %d uncovered' % (len(cells) - len(left), len(cells), len(closed), len(left)))


if __name__ == '__main__': main()
