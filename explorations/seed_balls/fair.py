"""(1) The current 25-dim record test at larger radii, same centres (fair comparison).
(2) A mean-value remainder bound for the seed ellipsoid: n_mv = r * sup ||(DQ(theta) - DQ(theta0)) M|| (sampled sup),
    which is what a rigorous interval version would bound; rerun Stage C with it."""
import gzip, json, sys, time, warnings
import numpy as np
warnings.filterwarnings('ignore')
sys.path.insert(0, '.'); sys.path.insert(0, '../../proof/atlas')
from seedball import *
from ballrecord import BallRecord
import stagec as SC
d = json.load(gzip.open('../../proof/atlas/results/atlas_certificate.json.gz'))['records']
h = lambda x: float.fromhex(x) if isinstance(x, str) else float(x)
k = int(sys.argv[1]); radii = [float(x) for x in sys.argv[2].split(',')]
phi = np.array([h(x) for x in d[k]['phi']]); H = np.exp(1j * phi.reshape(6, 6))
Br = BallRecord(phi)
for R in radii:
    for lab in (0.03, 0.02):
        t = time.time(); o = Br.stage_c(R, radius=lab)
        print('record %d 25-dim ball R %.3f label %.2f: ok %s n %.2e labels %s %.1fs' % (k, R, lab, o.get('ok'), o.get('n', np.nan), o.get('labels'), time.time() - t), flush=True)
        if o.get('ok'): break
th, ph, pv, Rc, M = best_corner_split(H); sb = SeedBall(th, ph, pv)
U, S, Vt = np.linalg.svd(sb.T, full_matrices=False); Mm = Vt.T / S[None, :]
def DQ(theta, hh=1e-6):
    out = np.zeros((36, 4))
    for j in range(4):
        e = np.zeros(4); e[j] = hh
        out[:, j] = (sb.Q(theta + e)[0] - sb.Q(theta - e)[0]) / (2 * hh)
    return out
rng = np.random.default_rng(3)
for r in radii:
    worst = 0
    for _ in range(150):
        w = rng.normal(size=4); w *= r / np.linalg.norm(w) * rng.uniform() ** 0.25
        worst = max(worst, np.linalg.norm((DQ(sb.theta0 + Mm @ w) - sb.T) @ Mm, 2))
    nmv = 1.5 * worst * r
    tcol = max(np.linalg.norm(U.reshape(6, 6, 4)[:, i, :], 2) for i in range(6))
    for lab in (0.03, 0.02):
        t = time.time()
        o = SC.stage_c(sb.P / SC.TWO_PI, min(tcol * r + nmv, r + nmv) / SC.TWO_PI, tang=(U, r / SC.TWO_PI, nmv / SC.TWO_PI), radius=lab, rF=(r + nmv) / SC.TWO_PI)
        print('record %d seed ellipsoid r %.3f label %.2f, mean-value n %.2e: ok %s labels %s %.1fs' % (k, r, lab, nmv, o.get('ok'), o.get('labels'), time.time() - t), flush=True)
        if o.get('ok'): break
