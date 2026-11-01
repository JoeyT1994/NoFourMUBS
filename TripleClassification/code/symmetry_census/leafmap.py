"""For every leaf cell of every tree ball: the (target ball, op) pairs whose ellipsoid contains the image of the whole
closed cell (all 16 vertices strictly inside, the T0/T1-symmetry criterion; float with relative margin 1e-9), and
those containing the image of the cell centre (refinement upper bound).
argv: atlas.json.gz geom.npz leaves.tsv.gz out.npz"""
import gzip, json, sys, numpy as np
from ops import ops
seeds = json.loads(gzip.decompress(open(sys.argv[1], 'rb').read()))['seeds']
n = len(seeds); hx = float.fromhex
th = np.array([[hx(x) for x in s['theta0']] for s in seeds]); M = np.array([[hx(x) for x in s['Mth']] for s in seeds]).reshape(n, 4, 4)
r = np.array([hx(s['r']) for s in seeds]); Mi = np.linalg.inv(M)
O = [op for op in ops() if op['s'] == 1]; Ls = np.array([op['L'] for op in O], float)
G = np.load(sys.argv[2])['R']                     # j, l, k, N0..N3, dc, An, rho
cand = {}
for row in G:
    j, l, k = int(row[0]), int(row[1]), int(row[2]); cand.setdefault(j, []).append((l, k, row[3:7].astype(int)))
VERT = np.array([[1 if (v >> b) & 1 else -1 for b in range(4)] for v in range(16)], float)
rows = [l.rstrip('\n').split('\t') for l in gzip.open(sys.argv[3], 'rt')][1:]
byball = {}
for b, kind, lev, cell, nb in rows:
    if kind == 'ERROR': continue
    byball.setdefault(int(b), []).append((int(lev), [int(x) for x in cell.split(',')], int(nb), kind))
out = []   # ball, leafidx, level, bytes, target, op, full(1)/centre(0)
meta = []
for B, lv in byball.items():
    lev = np.array([x[0] for x in lv]); cells = np.array([x[1] for x in lv], float)
    h = 2.0 ** -lev                                        # half-width in u = w / r
    cu = -1 + (2 * cells + 1) * h[:, None]                 # centres in u
    for i, x in enumerate(lv): meta.append((B, i, x[0], x[2], x[3] == 'native'))
    for (l, k, N) in cand.get(B, []):
        L = Ls[k]
        # image in l's normalised chart: u' = Mi_l (L (th_B + M_B r_B u) + 2 pi N - th_l) / r_l
        c0 = Mi[l] @ (L @ th[B] + 2 * np.pi * N - th[l]) / r[l]
        A = Mi[l] @ L @ M[B] * (r[B] / r[l])
        cimg = c0[None] + cu @ A.T                           # (n_leaf, 4)
        inc = np.linalg.norm(cimg, axis=1) < 1
        full = np.zeros(len(lv), bool)
        if inc.any():
            idx = np.nonzero(inc)[0]
            vimg = cimg[idx, None, :] + (h[idx, None, None] * VERT[None]) @ A.T
            full[idx] = (np.linalg.norm(vimg, axis=2).max(axis=1) < 1 - 1e-9)
        for i in np.nonzero(inc)[0]: out.append((B, i, l, k, int(full[i])))
np.savez_compressed(sys.argv[4], hits=np.array(out, dtype=np.int64), meta=np.array(meta, dtype=np.int64))
print(len(meta), 'leaves;', len(out), 'hits')
