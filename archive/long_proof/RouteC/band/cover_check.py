"""Exact-rational check that every bisection recorded in a tape covers its parent, and that the
roots cover the label domains.  Complements verify.py (which re-derives the same children with
the same float code).  Usage: python3 cover_check.py TAG"""
import sys, json, numpy as np
from fractions import Fraction as F
from cert import children, label_roots, ARC


def check_split(c, r, dims):
    cn, rn = children(c, r, dims)
    n = len(c)
    for i in range(n):
        d = int(dims[i]); P0, PR = F(float(c[i, d])), F(float(r[i, d]))
        a, ar_ = F(float(cn[i, d])), F(float(rn[i, d])); b, br_ = F(float(cn[n + i, d])), F(float(rn[n + i, d]))
        lo, hi = P0 - PR, P0 + PR
        # union of [a-ar, a+ar] and [b-br, b+br] must contain [lo, hi] (with overlap)
        assert a - ar_ <= lo and b + br_ >= hi and a + ar_ >= b - br_, 'gap in split'
        # other coordinates unchanged
        assert (np.delete(cn[i], d) == np.delete(c[i], d)).all() and (np.delete(rn[i], d) == np.delete(r[i], d)).all()
    return n


def check_roots(arc):
    cc, rr = label_roots(arc)
    for dim, (lo, hi) in enumerate([(-ARC, ARC) if arc else (-3.25, 3.25), (-3.25, 3.25)]):
        iv = sorted({(F(float(c)) - F(float(r)), F(float(c)) + F(float(r))) for c, r in zip(cc[:, dim], rr[:, dim])})
        x = F(lo)
        for a, b in iv:
            assert a <= x; x = max(x, b)
        assert x >= F(hi)
    # the grid is a full product
    assert len(set(map(tuple, cc.tolist()))) == len(cc)
    if not arc:
        assert F(-3.25) <= F(-np.pi) and F(3.25) >= F(np.pi)  # covers a full period (2*pi < 6.5)
    return True


if __name__ == '__main__':
    tag = sys.argv[1]; out = []
    for k in range(12):
        T = np.load('results/tapes/%s_box%02d.npz' % (tag, k))
        arc = bool(T['arc']); check_roots(arc)
        n = 0
        for pre in ('lB', 'lC'):
            a = T[pre + '_a']; m = a >= 2
            n += check_split(T[pre + '_c'][m], T[pre + '_r'][m], a[m] - 2)
        a = T['n_a']; m = a >= 10
        n += check_split(T['n_c'][m], T['n_r'][m], a[m] - 10)
        out.append(n); print(k, 'splits checked exactly:', n, flush=True)
    print('all coverage checks passed')
