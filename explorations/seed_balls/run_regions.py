import gzip, json, sys, time, warnings
import numpy as np
warnings.filterwarnings('ignore')
sys.path.insert(0, '.'); sys.path.insert(0, '../../proof/atlas')
from seedball import *
from ballrecord import BallRecord
d = json.load(gzip.open('../../proof/atlas/results/atlas_certificate.json.gz'))['records']
h = lambda x: float.fromhex(x) if isinstance(x, str) else float(x)
dist = np.load('dist.npy')
ks = [int(x) for x in " ".join(sys.argv[1:]).split()]
LADDER = (0.02, 0.03, 0.04, 0.05, 0.063, 0.08, 0.1, 0.125)
for k in ks:
    rec = d[k]; phi = np.array([h(x) for x in rec['phi']])
    H = np.exp(1j * phi.reshape(6, 6))
    th, ph, pv, R, M = best_corner_split(H); sb = SeedBall(th, ph, pv)
    sv = np.linalg.svd(sb.T, compute_uv=False)
    # the current record's own normal bound at its radius, for comparison
    Br = BallRecord(phi, Tint=None)
    rH, nrec = Br.normal_bound(h(rec['R']))
    print('record %d: atlas radius %.3f (label %.3f), its rH %.4f n %.2e | best corner R %.1f, edge distance %.3f, sv(T) %s'
          % (k, h(rec['R']), h(rec['label_radius']), rH, nrec, R, dist_to_edge(th), np.round(sv, 2)), flush=True)
    best = None
    for r in LADDER:
        for lab in (0.03, 0.02):
            t = time.time(); o = stage_c_metric(sb, r, label_radius=lab, nsamp=120)
            print('   seed ellipsoid r %.3f label %.2f: ok %s  n %.2e  bins %s labels %s  %.1fs'
                  % (r, lab, o.get('ok'), o.get('n', float('nan')), o.get('bins'), o.get('labels'), time.time() - t), flush=True)
            if o.get('ok'): best = r; break
        else:
            break
    print('   => largest passing seed radius %s (atlas used %.3f)' % (best, h(rec['R'])), flush=True)
