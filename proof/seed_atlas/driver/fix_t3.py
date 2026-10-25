"""Recompute the side orders and windings (hcols, vrows, wind_h, wind_v) of every T3 box in an atlas state against
the chart's own side angles at the box centre (edge_phase.t3_side_refs), regrouping boxes accordingly.  The covers
and targets are unchanged; only the bookkeeping the T3 check reads.  Usage: python fix_t3.py IN.pkl OUT.pkl"""
import os, pickle, sys, numpy as np
sys.path[:0] = [os.path.dirname(os.path.abspath(__file__)), os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'atlas')]
import warnings; warnings.filterwarnings('ignore')
import edge_phase as EP, cover as CV, seedgeom as SG
from multiprocessing import Pool
G = {}


def init(path): G['A'] = pickle.load(open(path, 'rb'))


def one(j):
    A = G['A']; b = A.balls[j]; out = []; changed = 0; total = 0
    for g in A.groups.get(j, []):
        if g['desc'][0] != 'T3': out.append(g); continue
        _, t, gg, rows, cols = g['desc'][:5]
        bx = np.asarray(g['boxes']); m = bx[:, 0]; I = bx[:, 1:]
        lo, hi = CV.box_lohi(m, I)
        Q, _, _, ok = b.Q_at((lo + hi) / 2 * b.r)
        x0 = None
        for i in range(len(bx)):
            total += 1
            key = (tuple(g['hcols']), tuple(g['vrows']), tuple(g['wind_h']), tuple(g['wind_v']))
            if ok[i]:
                refs = EP.t3_side_refs(Q[i], gg, rows, cols, g['wind'], x0)
                if refs is not None:
                    x0 = refs[2]
                    (_, hc, wh), (_, vr, wv) = EP.side_orders(SG.gphase(gg, Q[i].reshape(6, 6)), rows, cols, refs[0], refs[1])
                    nk = (tuple(hc), tuple(vr), tuple(wh), tuple(wv))
                    changed += nk != key; key = nk
            out.append(dict(desc=g['desc'], wind=list(g['wind']), hcols=list(key[0]), vrows=list(key[1]),
                            wind_h=list(key[2]), wind_v=list(key[3]), boxes=bx[i:i + 1].astype(np.int16)))
    return j, out, changed, total


if __name__ == '__main__':
    src, dst = sys.argv[1], sys.argv[2]
    init(src); A = G['A']
    js = [j for j, gl in A.groups.items() if any(g['desc'][0] == 'T3' for g in gl)]
    tc = tt = 0
    with Pool(int(os.environ.get('WORKERS', os.cpu_count())), initializer=init, initargs=(src,)) as p:
        for j, out, c, t in p.imap_unordered(one, js, chunksize=4):
            A.groups[j] = out; tc += c; tt += t
    with open(dst, 'wb') as f: pickle.dump(A, f, protocol=4)
    print('T3 boxes %d in %d seed balls; side orders changed for %d' % (tt, len(js), tc), flush=True)
