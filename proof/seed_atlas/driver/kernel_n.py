"""Per-ball kernel remainder n_k (KERNEL_SEED.md): the kernel certifies its own copy of every ball, and its C1 box
count falls steeply as n grows, while transfers do not depend on n.  For each ball of an atlas state, the largest
n_k = f * sampled_n * 1.05 (f from FACTORS, descending) at which float Stage C still passes at the ball's radius, with
its own label radius or a fallback.  Untrusted screening: the kernel reruns Stage C with n_k.

Usage: python kernel_n.py STATE.pkl OUT.json [--workers N]
"""
import argparse, json, os, pickle, sys, warnings
os.environ.setdefault('OMP_NUM_THREADS', '1'); warnings.filterwarnings('ignore')
sys.path[:0] = [os.path.dirname(os.path.abspath(__file__)), os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'atlas')]
from c1 import sampled_n
from makeball import stage_c_capped
from multiprocessing import Pool

FACTORS = (6.0, 4.0, 3.0, 2.0, 1.5)
G = {}


def one(j):
    b = G['A'].balls[j]
    sn = sampled_n(b, b.r)
    out = dict(j=j, r=b.r, n_cert=b.n, label=b.label, sn=sn, f=None, n=b.n, label_k=b.label)
    if sn is None: return out
    for f in FACTORS:
        n = f * sn * 1.05
        if n <= b.n: break                               # no looser than the certificate: keep its n
        for lab in (b.label, 0.02 if b.label > 0.025 else 0.03):
            o = stage_c_capped(b, b.r, n, lab)
            if o.get('ok'):
                out.update(f=f, n=n, label_k=lab, labels=o.get('labels')); return out
    return out


def init(path): G['A'] = pickle.load(open(path, 'rb'))


if __name__ == '__main__':
    ap = argparse.ArgumentParser(); ap.add_argument('state'); ap.add_argument('out')
    ap.add_argument('--workers', type=int, default=os.cpu_count()); a = ap.parse_args()
    init(a.state); nb = len(G['A'].balls)
    with Pool(a.workers, initializer=init, initargs=(a.state,)) as p: res = p.map(one, range(nb), chunksize=4)
    json.dump(res, open(a.out, 'w'))
    from collections import Counter
    print('balls %d; kernel factor %s' % (nb, sorted(Counter(o['f'] for o in res).items(), key=lambda x: (x[0] is None, x[0] or 0))))
