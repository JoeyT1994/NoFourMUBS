"""Per-ball kernel remainder n_k (KERNEL_SEED.md): the kernel certifies its own copy of every ball, and its C1 box
count falls steeply as n grows, while transfers do not depend on n.  For each ball of an atlas state, the largest
n_k = f * sampled_n * 1.05 (f from FACTORS, descending) at which float Stage C still passes at the ball's radius, with
its own label radius or a fallback.  Untrusted screening: the kernel reruns Stage C with n_k.

Usage: python kernel_n.py STATE.pkl OUT.jsonl [--workers N]   (resumable)
"""
import argparse, json, os, pickle, sys, warnings
os.environ.setdefault('OMP_NUM_THREADS', '1'); warnings.filterwarnings('ignore')
sys.path[:0] = [os.path.dirname(os.path.abspath(__file__)), os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'atlas')]
from c1 import sampled_n
from makeball import stage_c_capped
from multiprocessing import Pool

G = {}


def passes(b, n):
    for lab in (b.label, 0.02 if b.label > 0.025 else 0.03):
        o = stage_c_capped(b, b.r, n, lab)
        if o.get('ok'): return lab, o.get('labels')
    return None


def one(j):
    """Start at the median factor 3; go up (4, 6) while it passes, else down (2, 1.5)."""
    b = G['A'].balls[j]
    sn = sampled_n(b, b.r)
    out = dict(j=j, r=b.r, n_cert=b.n, label=b.label, sn=sn, f=None, n=b.n, label_k=b.label)
    if sn is None: return out
    best = None
    for f in (3.0, 4.0, 6.0):
        if f * sn * 1.05 <= b.n: continue
        p = passes(b, f * sn * 1.05)
        if p is None: break
        best = (f, p)
    if best is None:
        for f in (2.0, 1.5):
            if f * sn * 1.05 <= b.n: break
            p = passes(b, f * sn * 1.05)
            if p is not None: best = (f, p); break
    if best: out.update(f=best[0], n=best[0] * sn * 1.05, label_k=best[1][0], labels=best[1][1])
    return out


def init(path): G['A'] = pickle.load(open(path, 'rb'))


if __name__ == '__main__':
    ap = argparse.ArgumentParser(); ap.add_argument('state'); ap.add_argument('out')
    ap.add_argument('--workers', type=int, default=os.cpu_count()); a = ap.parse_args()
    init(a.state); nb = len(G['A'].balls)
    done = set()
    if os.path.exists(a.out):                          # JSON lines, one ball each: resumable
        done = {json.loads(l)['j'] for l in open(a.out) if l.strip()}
    todo = [j for j in range(nb) if j not in done]
    with open(a.out, 'a') as fo, Pool(a.workers, initializer=init, initargs=(a.state,)) as p:
        for o in p.imap_unordered(one, todo):
            fo.write(json.dumps(o) + '\n'); fo.flush()
    res = [json.loads(l) for l in open(a.out) if l.strip()]
    from collections import Counter
    print('balls %d; kernel factor %s' % (len(res), sorted(Counter(o['f'] for o in res).items(), key=lambda x: (x[0] is None, x[0] or 0))))
