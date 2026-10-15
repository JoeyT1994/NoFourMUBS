"""Coverage cost for one region: Stage C bins surviving the single-vector + tangent tests at coarse levels."""
import sys, time, math
from pathlib import Path
ATLAS = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ATLAS))
import numpy as np
import stagec as SC
from export import load_certificate
from ballrecord import BallRecord
from flint import arb, arb_mat
from record import opnorm_upper
cert = load_certificate(str(ATLAS / 'results/atlas_certificate.json.gz'))
i = int(sys.argv[1]); rec = cert.recs[i]
B = BallRecord(rec['phi'].reshape(36), Tint=rec.get('Tint'))
tcol = max(opnorm_upper(arb_mat([[B.rec.Tb[6 * j + c, k] for k in range(4)] for j in range(6)])) for c in range(6))
for R in [float(x) for x in sys.argv[2:]]:
    nb = B.normal_bound(R)
    if nb is None: print(R, 'normal bound fails'); continue
    rH, n = nb; rcol = min(R, tcol * rH + n); rF = min(R, math.sqrt(B.lam_max) * rH + n)
    P = B.rec.phi.reshape(6, 6) / SC.TWO_PI
    for levels in [(12,), (12, 24), (12, 24, 48)]:
        t = time.time()
        U, M = SC.bins(P, rcol / SC.TWO_PI, levels=levels, cap=3_000_000,
                       tang=(B.rec.Tbn, rH / SC.TWO_PI, n / SC.TWO_PI), rF=rF / SC.TWO_PI)
        print(f'R {R}: n {n:.4f} levels {levels}: survivors {None if U is None else len(U)} ({time.time()-t:.1f}s)', flush=True)

# second-order chart emulation: normal residual 0.17 rho^3 instead of Lemma 3.1's quadratic bound
print('--- with cubic chart residual n3 = 0.17 R^3 ---')
for R in [float(x) for x in sys.argv[2:]]:
    rH = B.ginv_half * R; n = 0.17 * R ** 3; rcol = min(R, tcol * rH + n); rF = min(R, math.sqrt(B.lam_max) * rH + n)
    P = B.rec.phi.reshape(6, 6) / SC.TWO_PI
    t = time.time()
    U, M = SC.bins(P, rcol / SC.TWO_PI, levels=(12, 24, 48), cap=3_000_000,
                   tang=(B.rec.Tbn, rH / SC.TWO_PI, n / SC.TWO_PI), rF=rF / SC.TWO_PI)
    print(f'R {R}: n3 {n:.4f}: level-48 survivors {None if U is None else len(U)} ({time.time()-t:.1f}s)', flush=True)
