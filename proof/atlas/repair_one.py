"""Targeted repair (10 Oct 2026): shrink records that the independent checker cannot certify at their stored
radius (record 11403: R 0.063 -> 0.05; at 0.05 both certify.py and proof/independent pass Stage C), then reopen
them and every record with a transfer target among them.  Resume with atlas.py to re-close.
Usage: python3 repair_one.py ATLAS.pkl IDX:R:LABEL_RADIUS [...]
"""
import sys
import numpy as np
import atlas as AT
from ballrecord import BallRecord
from flint import arb

path = sys.argv[1]
A = AT.load(path)
changed = set()
for spec in sys.argv[2:]:
    i, R2, rad2 = spec.split(':'); i = int(i); R2 = float(R2); rad2 = float(rad2)
    r = A.recs[i]
    B = BallRecord(r['phi'].reshape(36), Tint=r.get('Tint'))
    o = B.stage_c(R2, radius=rad2)
    assert o.get('ok'), o
    rH, n0 = B.normal_bound(R2)
    dT = float(np.abs(np.array([[float(abs(B.rec.Tb[e, k] - arb(float(B.rec.Tbn[e, k]))).upper()) for k in range(4)] for e in range(36)])).sum())
    print('record %d: R %.3f -> %.3f, label radius %.3f, rH %.6f, n %.6f' % (i, r['R'], R2, rad2, rH, n0 + dT * rH))
    r.update(dict(R=R2, label_radius=rad2, rH=rH, n=n0 + dT * rH)); r.pop('nT', None)
    changed.add(i)
reopen = set(changed)
for s, tr in A.transfers.items():
    if any(t in changed for (t, sg, pi) in tr['targets']): reopen.add(s)
for s in reopen:
    A.closed.discard(s); A.transfers.pop(s, None)
print('reopened %d records: %s' % (len(reopen), sorted(reopen)))
A.save(path)
