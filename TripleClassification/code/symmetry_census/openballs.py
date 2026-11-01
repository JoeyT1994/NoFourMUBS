"""For each open ball: tile its chart at level m, keep cells meeting the ball (float test), and count cells whose whole
image under some (closed target, op) lies strictly inside the target ellipsoid (16 vertices, margin 1e-9)."""
import gzip, json, sys, itertools, numpy as np
from ops import ops
seeds = json.loads(gzip.decompress(open(sys.argv[1], 'rb').read()))['seeds']; n = len(seeds); hx = float.fromhex
th = np.array([[hx(x) for x in s['theta0']] for s in seeds]); M = np.array([[hx(x) for x in s['Mth']] for s in seeds]).reshape(n, 4, 4)
r = np.array([hx(s['r']) for s in seeds]); Mi = np.linalg.inv(M)
O = [op for op in ops() if op['s'] == 1]
st = {int(b): s for b, s in json.load(open('status.json')).items()}
R = np.load('geom2.npz')['R']
VERT = np.array([[1 if (v >> b) & 1 else -1 for b in range(4)] for v in range(16)], float)
for m in (3, 4, 5):
    h = 2.0 ** -m; g1 = -1 + (2 * np.arange(2 ** m) + 1) * h
    cu = np.array(list(itertools.product(g1, repeat=4)))
    near = np.clip(np.abs(cu) - h, 0, None); cu = cu[np.linalg.norm(near, axis=1) <= 1]     # cells meeting the unit ball
    tot = 0; cov = 0; out = []
    for B in sorted(b for b, s in st.items() if s['v'] == 'OPEN'):
        ok = np.zeros(len(cu), bool); okid = np.zeros(len(cu), bool)
        for row in R[R[:, 0] == B]:
            l, k = int(row[1]), int(row[2])
            if st[l]['v'] != 'CLOSED': continue
            L = O[k]['L'].astype(float); N = row[3:7]
            c0 = Mi[l] @ (L @ th[B] + 2 * np.pi * N - th[l]) / r[l]; A = Mi[l] @ L @ M[B] * (r[B] / r[l])
            ci = c0[None] + cu @ A.T
            vi = ci[:, None, :] + (h * VERT) @ A.T
            inside = np.linalg.norm(vi, axis=2).max(axis=1) < 1 - 1e-9
            ok |= inside
            if k == 0: okid |= inside
        out.append('%d:%.0f%%(id %.0f%%)' % (B, 100 * ok.mean(), 100 * okid.mean())); tot += len(cu); cov += ok.sum()
    print('level %d (%d cells/ball): covered %.1f%% overall; ' % (m, len(cu), 100 * cov / tot) + ' '.join(out))
