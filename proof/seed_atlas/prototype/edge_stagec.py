import numpy as np, sys, time, warnings
warnings.filterwarnings('ignore')
sys.path.insert(0, '../../proof/atlas')
import stagec as SC
from edgeball import complete
H0, ok, xh0, xv0 = complete(np.zeros(4)); P = np.angle(H0)
def Q(p):
    H, ok, _, _ = complete(np.asarray(p, float), steps=max(1, int(np.ceil(np.linalg.norm(p) / 0.05))))
    return None if not ok else (P + np.angle(H * np.exp(-1j * P))).reshape(36)
h = 1e-5
T = np.array([(Q(h * e) - Q(-h * e)) / (2 * h) for e in np.eye(4)]).T
U, S, Vt = np.linalg.svd(T, full_matrices=False); M = Vt.T / S[None, :]
print("sv(T) in (u1,u2,u3,y):", np.round(S, 4))
rng = np.random.default_rng(0)
for r in [float(x) for x in sys.argv[1:]]:
    worst = 0
    for s in (r, r / 2):
        for _ in range(150):
            w = rng.normal(size=4); w *= s / np.linalg.norm(w)
            q = Q(M @ w)
            if q is None: worst = np.inf; break
            worst = max(worst, np.linalg.norm(q - P.reshape(36) - U @ w))
    n = 1.5 * worst
    tcol = max(np.linalg.norm(U.reshape(6, 6, 4)[:, i, :], 2) for i in range(6))
    res = 'fail'
    for lab in (0.03, 0.02):
        t = time.time()
        o = SC.stage_c(P / SC.TWO_PI, min(tcol * r + n, r + n) / SC.TWO_PI, tang=(U, r / SC.TWO_PI, n / SC.TWO_PI), radius=lab, rF=(r + n) / SC.TWO_PI)
        if o.get('ok'): res = 'PASS label %.2f labels %s %.0fs' % (lab, o.get('labels'), time.time() - t); break
        res = 'fail (labels %s)' % o.get('labels')
    print("edge ball r %.3f: sampled n %.2e, parameter extent max |p| = %.3f, Stage C %s" % (r, n, np.abs(M).sum(1).max() * r, res), flush=True)
