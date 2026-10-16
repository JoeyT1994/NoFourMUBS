"""Run the exact boundary mirror (`kbound.py`) on many Records: tree size, targets, failures (no Lean).

Usage (repository root): python3 kernel_atlas/generators/survey_boundary.py --out rows.jsonl [--sample N --seed S | idx ...]
One JSON row per Record: targets stored/used, boxes (off, leaf, split), depth, seconds, or the failure.
"""
import argparse, concurrent.futures as CF, gzip, json, os, random, sys, time, traceback

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path.insert(0, HERE)


def one(idx):
    import warnings
    warnings.filterwarnings('ignore')
    import kbound as KBD
    t0 = time.time()
    try:
        B, _ = KBD.record_boundary(idx, cert=CERT)
        B.search()
        n = len(B.tg)
        used = B.prune()
        code = B.packed()
        assert B.walk(code) == 0
        st = B.stats
        return dict(idx=idx, ok=True, targets=n, used=used, boxes=len(B.codes), off=st['off'], leaf=st['leaf'],
                    split=st['split'], depth=max(d for d, c in enumerate(st['depth']) if c), sec=round(time.time() - t0, 1))
    except Exception as e:
        return dict(idx=idx, ok=False, err=repr(e)[:300], sec=round(time.time() - t0, 1))


def init():
    global CERT
    CERT = json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz'), 'rt'))


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('idx', type=int, nargs='*')
    ap.add_argument('--out', required=True)
    ap.add_argument('--sample', type=int, default=0)
    ap.add_argument('--seed', type=int, default=1)
    ap.add_argument('--workers', type=int, default=8)
    a = ap.parse_args()
    idxs = list(a.idx)
    if a.sample:
        init()
        idxs += random.Random(a.seed).sample(range(len(CERT['records'])), a.sample)
    with CF.ProcessPoolExecutor(a.workers, initializer=init) as ex, open(a.out, 'a') as f:
        for row in ex.map(one, idxs):
            f.write(json.dumps(row) + '\n'); f.flush()
            if not row['ok']:
                print('FAIL', row, flush=True)
