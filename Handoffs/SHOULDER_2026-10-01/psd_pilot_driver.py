#!/usr/bin/env python3
"""PSD prune pilot on branch95 pilot stage-D open boxes (S, P) and whole level-11 leaves. Local, bounded."""
import sys, glob, random, json, time, math
from multiprocessing import get_context
ROOT = '/Users/jtindall/Files/NoFourMUBS'
sys.path.insert(0, ROOT + '/ProvenResults/SignedCornerPSDPrune')

def child(c, lev, k):
    h = math.pi / 2 ** lev
    return [c[i] + (1 if (k >> i) & 1 else -1) * h / 2 for i in range(4)]

def run(w):
    from predicate import predicate, radius_for_level
    kind, c, l, near = w; t = time.process_time()
    try: r = predicate(c, [radius_for_level(l)] * 4)
    except Exception as e: r = dict(ok=False, reason='exception:' + type(e).__name__)
    return dict(kind=kind, theta=c, level=l, near=near, ok=r['ok'], reason=r.get('reason'), nleaves=len(r.get('leaves', [])), cpu=time.process_time() - t)

if __name__ == '__main__':
    D, OUT = sys.argv[1:3]; NS, NP, NL = map(int, sys.argv[3:6])
    boxes = {'S': [], 'P': []}; leaves = []
    for fn in sorted(glob.glob(D + '/d_*.txt')):
        for line in open(fn):
            if line.startswith('#') or not line.strip(): continue
            main, _, near = line.partition('|')
            g = main.split(); lev = int(g[1]); th = [float(x) for x in g[2:6]]
            opens = 0
            for e in g[6:]:
                p, code = e.split(':')
                if code in 'SP':
                    c, l = th, lev
                    for ch in p: c = child(c, l, int(ch, 16)); l += 1
                    boxes[code].append((c, l, near.strip())); opens += 1
            if opens: leaves.append((th, lev, near.strip(), opens))
    random.seed(20261001)
    work = [('S',) + b for b in random.sample(boxes['S'], NS)] + [('P',) + b for b in random.sample(boxes['P'], NP)] + \
           [('L', t, l, n) for t, l, n, _ in random.sample(leaves, NL)]
    print(len(boxes['S']), len(boxes['P']), len(leaves), flush=True)
    with get_context('spawn').Pool(9) as pool, open(OUT, 'w') as f:
        for rec in pool.imap_unordered(run, work, chunksize=4): f.write(json.dumps(rec) + '\n'); f.flush()
