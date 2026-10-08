"""Arb-verify all tapes of a run: python3 verify_all.py TAG [c0]"""
import sys, json
from multiprocessing import Pool
from verify import verify
tag = sys.argv[1]; c0 = float(sys.argv[2]) if len(sys.argv) > 2 else None
def one(k):
    try:
        return verify('results/tapes/%s_box%02d.npz' % (tag, k), k, c0, log=lambda *a: None)
    except AssertionError as e:
        return dict(ok=False, index=k, error=str(e))
if __name__ == '__main__':
    with Pool(10) as p:
        out = p.map(one, range(12), chunksize=1)
    json.dump(out, open('results/%s_verify.json' % tag, 'w'), indent=1)
    for r in out: print(json.dumps(r))
