"""Full test set: for every atlas centre, the largest radius on a common ladder that passes Stage C
  (a) as a seed ellipsoid with the Taylor-model remainder (tmball2.tm2_n), and
  (b) as the current 25-dimensional ball (ballrecord.BallRecord.stage_c),
with label radius 0.03, then 0.02.  Usage: run_all.py <task> <ntasks> <out.jsonl> [workers]."""
import gzip, json, os, sys, time, warnings
os.environ.setdefault('OMP_NUM_THREADS', '1'); os.environ.setdefault('OPENBLAS_NUM_THREADS', '1')
warnings.filterwarnings('ignore')
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE); sys.path.insert(0, os.path.join(HERE, '../../proof/atlas'))
import numpy as np

LADDER = (0.02, 0.03, 0.04, 0.05, 0.063, 0.08, 0.1, 0.125)
LABELS = (0.03, 0.02)
h = lambda x: float.fromhex(x) if isinstance(x, str) else float(x)


def seed_side(phi):
    from seedball import best_corner_split, SeedBall, dist_to_edge
    from tmball2 import tm2_n
    import stagec as SC
    H = np.exp(1j * phi.reshape(6, 6))
    th, ph, pv, R, _ = best_corner_split(H)
    sb = SeedBall(th, ph, pv)
    U, S, Vt = np.linalg.svd(sb.T, full_matrices=False)
    tcol = max(np.linalg.norm(U.reshape(6, 6, 4)[:, i, :], 2) for i in range(6))
    out = dict(R=float(R), edge=float(dist_to_edge(th)), sv=[float(x) for x in S], runs=[])
    best = 0.0
    for r in LADDER:
        t = time.time()
        st = {}
        n = tm2_n(sb, r, k_per_axis=3 if r <= 0.05 else 4, stats=st)
        ok, lab_ok = False, None
        if n is not None:
            for lab in LABELS:
                o = SC.stage_c(sb.P / SC.TWO_PI, min(tcol * r + n, r + n) / SC.TWO_PI,
                               tang=(U, r / SC.TWO_PI, n / SC.TWO_PI), radius=lab, rF=(r + n) / SC.TWO_PI)
                if o.get('ok'): ok, lab_ok = True, lab; break
        out['runs'].append(dict(r=r, n=n, fail=st.get('fail'), ok=ok, label=lab_ok, s=round(time.time() - t, 2)))
        if not ok: break
        best = r
    out['best'] = best
    return out


def record_side(phi):
    from ballrecord import BallRecord
    Br = BallRecord(phi)
    out = dict(runs=[]); best = 0.0
    for r in LADDER:
        t = time.time(); ok, lab_ok = False, None
        for lab in LABELS:
            o = Br.stage_c(r, radius=lab)
            if o.get('ok'): ok, lab_ok = True, lab; break
        out['runs'].append(dict(r=r, ok=ok, label=lab_ok, s=round(time.time() - t, 2)))
        if not ok: break
        best = r
    out['best'] = best
    return out


def one(args):
    k, phi, Ratlas = args
    t0 = time.time(); rec = dict(k=k, atlas_R=Ratlas)
    for name, fn in (('seed', seed_side), ('record', record_side)):
        try:
            rec[name] = fn(phi)
        except Exception as ex:
            rec[name] = dict(error=repr(ex)[:300], best=None)
    rec['s'] = round(time.time() - t0, 1)
    return rec


if __name__ == '__main__':
    task, ntasks, outp = int(sys.argv[1]), int(sys.argv[2]), sys.argv[3]
    workers = int(sys.argv[4]) if len(sys.argv) > 4 else os.cpu_count()
    recs = json.load(gzip.open(os.path.join(HERE, '../../proof/atlas/results/atlas_certificate.json.gz')))['records']
    only = os.environ.get('ONLY')
    ks = [int(x) for x in only.split(',')] if only else list(range(task, len(recs), ntasks))
    jobs = [(k, np.array([h(x) for x in recs[k]['phi']]), h(recs[k]['R'])) for k in ks]
    from multiprocessing import Pool
    with Pool(workers) as pool, open(outp, 'w') as f:
        for rec in pool.imap_unordered(one, jobs):
            f.write(json.dumps(rec) + '\n'); f.flush()
