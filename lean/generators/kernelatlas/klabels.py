"""Labels for the kernel bin tree (Stage C Lemma 6.4): cluster the depth-0 survivors of the exact mirror of `binT`.

The survivors are those of `ktangent.run` (direct test, then the tangent test with y = c), so they are exactly the bins
the kernel hands to `leafOK`.  They are grouped greedily, in traversal order, around bin midpoints; every distance is an
exact integer computation in units 1/192 with the wrap of Lemma 6.4.

A label is (w, s): centre indices w = (w1, ..., w5) (midpoint w_m / 192, coordinate j0 fixed at 0) and a rational
radius s.  A bin k is accepted by label (w, s) when, with D_j = wrap(k_j - w_j) in [-96, 96) and D_0 = 0,

    6 * sum D_j^2 - (sum D_j)^2  <=  6 * 192^2 * (s - X)^2,    s >= X,

where X = X29HI / 192 >= sqrt(29/6) * a with a = 1/192.  This is `inLabel_of_wrap` with h = D/192 - mean(D)/192.
The radius s is the smallest dyadic (denominator 2^30) above max ||h|| + X over the label's bins.
"""
import json, math, os, sys
from fractions import Fraction as Fr

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import kbins as KB
import ktangent as KT

DEN = 192
XBAR = KB.X29HI / DEN                      # >= sqrt(29/6) / 192
SDEN = 2 ** 30


def wrap(x):
    return (x + DEN // 2) % DEN - DEN // 2


def defect(k, w):
    """6 * sum D^2 - (sum D)^2 for bin k against centre w (both 5-tuples of midpoint indices)."""
    D = [wrap(a - b) for a, b in zip(k, w)]
    return 6 * sum(d * d for d in D) - sum(D) ** 2


def hnorm(k, w):
    """||h|| = sqrt(defect / 6) / 192, as a float (for clustering only)."""
    return math.sqrt(defect(k, w) / 6) / DEN


def accepts(k, w, s):
    """The exact test of `labelB` (mirrors the Lean checker)."""
    g = s - XBAR
    if g < 0:
        return False
    return Fr(defect(k, w)) <= 6 * DEN * DEN * g * g


def survivors(par, tc, tp, W0, R5):
    out = []

    def cb(acc, ts):
        out.append(tuple(t[0] for t in ts))
        return True
    ok, st = KT.run(par, tc, tp, W0, R5, use_tangent=True, leaf_cb=cb)
    assert ok
    return out, st


def cluster(S, radius):
    """Greedy, in order: the first unassigned bin becomes a centre and takes every unassigned bin within `radius`."""
    labels = []
    left = list(range(len(S)))
    while left:
        w = S[left[0]]
        take = [i for i in left if hnorm(S[i], w) <= radius]
        hmax2 = max(Fr(defect(S[i], w), 6 * DEN * DEN) for i in take)      # max ||h||^2, exact
        # smallest dyadic s with (s - XBAR)^2 >= hmax2: s = ceil((sqrt(hmax2) + XBAR) * 2^30) / 2^30, then verify
        s = Fr(math.ceil((math.sqrt(hmax2) + XBAR) * SDEN) + 1, SDEN)
        while not all(accepts(S[i], w, s) for i in take):
            s += Fr(1, SDEN)
        labels.append((w, s, take))
        tk = set(take)
        left = [i for i in left if i not in tk]
    return labels


def first_label(k, labels):
    for b, (w, s, _) in enumerate(labels):
        if accepts(k, w, s):
            return b
    return None


def main():
    import argparse
    from export_tangent import record_data
    ap = argparse.ArgumentParser()
    ap.add_argument('idx', type=int)
    ap.add_argument('--radius', type=float, default=None)
    ap.add_argument('--out', default=None)
    a = ap.parse_args()
    par, tc, tp, W0, R5, info = record_data(a.idx)
    import gzip
    rec = json.load(gzip.open(os.path.join(HERE, '..', '..', '..', 'proof/atlas/results/atlas_certificate.json.gz'),
                              'rt'))['records'][a.idx]
    radius = a.radius if a.radius is not None else rec['label_radius']
    S, st = survivors(par, tc, tp, W0, R5)
    L = cluster(S, radius)
    smax = max(s for _, s, _ in L)
    # the in-kernel search order: how many label tests until the first accepting label
    cost = [first_label(k, L) for k in S]
    assert all(c is not None for c in cost)
    res = dict(idx=a.idx, radius=radius, survivors=len(S), labels=len(L), smax=float(smax), smax_ok=smax < Fr(1, 10),
               tests=sum(c + 1 for c in cost), tests_max=max(cost) + 1)
    print(json.dumps(res))
    if a.out:
        json.dump(dict(res, labels=[[list(w), [s.numerator, s.denominator]] for w, s, _ in L]), open(a.out, 'w'))


if __name__ == '__main__':
    main()
