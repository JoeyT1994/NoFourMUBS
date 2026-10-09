"""Repair an atlas after a change to Stage C (9 Oct 2026: Frobenius-correct remainder terms, STAGEC.md).

1. Re-run the (corrected) Stage C on every record at its stored (R, label radius), in parallel.  A record that fails is
   shrunk down the ladder (smaller R) until Stage C passes; its rH and normal bound are recomputed.  Every record also
   receives its integer tangent frame Tint (platform-independent certificates).
2. Reopen every changed record and every record with a transfer target among them; re-close them with the BFS driver
   (which spawns new records where shrinking left gaps).
Usage: python3 repair.py IN.pkl OUT.pkl [workers]
"""
import os, sys, time
import numpy as np
from concurrent.futures import ProcessPoolExecutor
import atlas as AT
from ballrecord import BallRecord
from flint import arb


def recheck(args):
    i, phi, R, rad = args
    B = BallRecord(phi.reshape(36))
    o = B.stage_c(R, radius=rad)
    if o.get('ok'):
        return i, None, B.rec.Tint
    for (R2, rad2) in AT.LADDER:
        if R2 >= R: continue
        o = B.stage_c(R2, radius=rad2)
        if o.get('ok'):
            rH, n0 = B.normal_bound(R2)
            dT = float(np.abs(np.array([[float(abs(B.rec.Tb[e, k] - arb(float(B.rec.Tbn[e, k]))).upper()) for k in range(4)] for e in range(36)])).sum())
            return i, dict(R=R2, label_radius=rad2, rH=rH, n=n0 + dT * rH), B.rec.Tint
    return i, 'fail', B.rec.Tint


if __name__ == '__main__':
    inp, out = sys.argv[1], sys.argv[2]; W = int(sys.argv[3]) if len(sys.argv) > 3 else os.cpu_count()
    A = AT.load(inp); t0 = time.time()
    jobs = [(i, r['phi'], r['R'], r['label_radius']) for i, r in enumerate(A.recs)]
    changed = {}; failed = []
    with ProcessPoolExecutor(W) as pool:                    # raises BrokenProcessPool if a worker dies
        for k, (i, upd, Tint) in enumerate(pool.map(recheck, jobs, chunksize=8)):
            A.recs[i]['Tint'] = Tint
            if upd == 'fail': failed.append(i)
            elif upd: changed[i] = upd
            if k % 1000 == 0: print('rechecked %d/%d  changed %d failed %d  %.0fs' % (k, len(jobs), len(changed), len(failed), time.time() - t0), flush=True)
    print('recheck done: %d records, %d shrunk, %d unrepairable  %.0fs' % (len(jobs), len(changed), len(failed), time.time() - t0), flush=True)
    for i, upd in changed.items():
        A.recs[i].update(upd); A.recs[i].pop('nT', None)
    bad = set(changed) | set(failed)
    reopen = set(changed)
    for s, tr in A.transfers.items():
        if any(t in bad for (t, sg, pi) in tr['targets']): reopen.add(s)
    for s in reopen:
        A.closed.discard(s); A.transfers.pop(s, None)
    for i in failed:
        A.failed[i] = 'Stage C fails on the whole ladder'
    print('reopened %d records' % len(reopen), flush=True)
    A.save(out)
    print('saved %s; now resume with: python3 atlas.py centre_fold52.json 1000000000 %s' % (out, out))
