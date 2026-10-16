"""Exact mirror of the Lean v2 checker `KernelAtlas/Tangent2K.lean` (`tang2B`, `binH`), and its hint generator.

With `labels`, the traversal is `binL` of `Tangent2L.lean`: at depth 0 the hint `4b + 3` names a label `b` that
contains the bin (`leafLH`), and the generator prefers it to any tangent test.

The Lean checker computes exact integers from the six row values (signed pairs of naturals), so this mirror uses
Python integers for the same quantities; only `isqU` (the untrusted square root), the hint decoding and the final
comparisons need to match bit for bit.
"""
import kbins as KB
import ktangent2 as KT2


def blenF(fuel, lo, hi, X):
    while fuel > 0 and lo < hi:
        mid = (lo + hi) // 2
        if X >> mid == 0:
            hi = mid
        else:
            lo = mid + 1
        fuel -= 1
    return lo


def isqU(X):
    if X == 0:
        return 0
    s = 1 << ((blenF(11, 0, 1024, X) + 1) // 2)
    for _ in range(10):
        s = (s + X // s) // 2
    return s if X <= s * s else s + 1


def hfield(h, i):
    return (h >> (2 + 10 * i)) % 1024


def encode_linear(y):
    assert all(-512 < v < 512 for v in y)
    return 2 + sum((v + 512) << (2 + 10 * i) for i, v in enumerate(y))


def encode_scalar(i):
    return 1 + (i << 2)


def lin2(par, t2, d, h, N, Yt, Jt, Rt, Bt):
    """Mirror of `lin2B`."""
    y = [hfield(h, i) - 512 for i in range(6)]
    ym = [abs(v) for v in y]
    GJ = [sum(y[i] * Jt[i][j] for i in range(6)) for j in range(6)]
    GR = [sum(y[i] * Rt[i][j] for i in range(6)) for j in range(6)]
    Bk = [sum(y[i] * Bt[i][k] for i in range(6)) for k in range(4)]
    SJ = sum(abs(GJ[j]) for j in range(1, 6))
    UX = sum(b * b for b in Bk)
    GX = max(GR[j] ** 2 + GJ[j] ** 2 for j in range(6))
    NX = sum(ym[i] ** 2 * sum(Jt[i][j] ** 2 for j in range(6)) for i in range(6))
    Sq = [isqU(n) for n in N]
    Sp = [x + t2.eZ for x in Sq]
    SX = sum(ym[i] ** 2 * Sp[i] ** 2 for i in range(6))
    SY1 = sum(ym[i] * Sp[i] for i in range(6))
    SYinf = max(ym[i] * Sp[i] for i in range(6))
    Y1, Yinf = sum(ym), max(ym)
    Ct = abs(sum(y[i] * Yt[i] for i in range(6)))
    Ub, NJ, Gb, SY2 = isqU(UX), isqU(NX), isqU(GX), isqU(SX)
    c = t2.lv[d]
    rhs = (c['kV'] * SJ + c['kU'] * Ub + c['kN'] * NJ + min(c['kA'] * Yinf, c['kB'] * Y1) +
           min(c['kG'] * Gb, c['kP'] * SY2) + min(c['kC1'] * SY2, c['kC2'] * SY1) +
           min(c['kD1'] * SYinf, c['kD2'] * SY1) + c['k1'] * Y1)
    return (all(N[i] <= Sq[i] * Sq[i] for i in range(6)) and UX <= Ub * Ub and NX <= NJ * NJ and GX <= Gb * Gb and
            SX <= SY2 * SY2 and t2.ke * Y1 < Ct and rhs < (Ct - t2.ke * Y1) << 64)


def scal2(par, t2, d, i, N, Yt, Jt):
    """Mirror of `scal2B`."""
    SJ = sum(abs(Jt[i][j]) for j in range(1, 6))
    QX = sum(Jt[i][j] ** 2 for j in range(6))
    NJ = isqU(QX)
    Sq = isqU(N[i])
    Sp = Sq + t2.eZ
    Ct = abs(Yt[i])
    c = t2.sc[d]
    rhs = c['sV'] * SJ + c['sR'] * NJ + min(c['sA1'] + c['sB1'] * Sp, c['sA2'] + c['sB2'] * Sp) + c['s1']
    return N[i] <= Sq * Sq and QX <= NJ * NJ and t2.ke < Ct and rhs < (Ct - t2.ke) << 64


def tang2(par, t2, d, h, data):
    """Mirror of `tang2B`."""
    N, Yt, Jt, Rt, Bt = data
    if h % 4 == 1:
        i = (h >> 2) % 8
        return i < 6 and scal2(par, t2, d, i, N, Yt, Jt)
    if h % 4 == 2:
        return lin2(par, t2, d, h, N, Yt, Jt, Rt, Bt)
    return False


def make_hint(par, t2, d, data):
    """The cheapest hint `tang2` accepts for this bin, or 0 (untrusted)."""
    N, Yt, Jt, Rt, Bt = data
    for i in sorted(range(6), key=lambda i: -abs(Yt[i])):
        if scal2(par, t2, d, i, N, Yt, Jt):
            return encode_scalar(i)
    cands = []
    y = KT2.ls_direction(t2, d, Yt, Jt, Bt)
    if y is not None:
        m = max(abs(v) for v in y)
        cands.append([(2 * 511 * v + m) // (2 * m) for v in y])
    m = max(abs(v) for v in Yt)
    if m:
        cands.append([(2 * 511 * v + m) // (2 * m) for v in Yt])
    for yy in cands:
        h = encode_linear(yy)
        if lin2(par, t2, d, h, N, Yt, Jt, Rt, Bt):
            return h
    return 0


def encode_leaf(b):
    return 3 + (b << 2)


def leafLH(labels, h, k):
    """Mirror of `leafLH` (Tangent2L.lean): hint 4b + 3 checks label b, any other hint scans."""
    import klabels as KLab
    if h % 4 == 3:
        b = h >> 2
        return b < len(labels) and KLab.accepts(k, labels[b][0], labels[b][1])
    return KLab.first_label(k, labels) is not None


def run(par, tc, t2, W0, R5, leaf_cb=None, stats=None, hints=None, only=None, labels=None):
    """Mirror of `binH` (or of `binL` with `labels`) over all sub-slabs (or `only` = (b1, b2)).  hints=None generates
    them."""
    stats = stats if stats is not None else {}
    if labels is not None:
        import klabels as KLab
    gen = hints is None
    out = {}

    def add(a, v):
        return [x + y for x, y in zip(a, v)]

    def inc(key):
        stats[key] = stats.get(key, 0) + 1

    def binok(d, acc, ts, st):
        inc(('tested', d))
        if KB.reject(par, d, acc):
            return True
        inc(('tangent', d))
        data = KT2.bin_data(par, tc, [W0] + [t[1] for t in ts])
        if gen:
            b = KLab.first_label(tuple(t[0] for t in ts), labels) if labels is not None and d == 0 else None
            h = encode_leaf(b) if b is not None else make_hint(par, t2, d, data)
            st.append(h)
        else:
            h = st.pop(0) if st else 0
        if tang2(par, t2, d, h, data):
            inc(('trej', d))
            return True
        if d == 0:
            if labels is not None:
                inc(('leafhint', 0) if h % 4 == 3 else ('leafscan', 0))
                return leafLH(labels, h, tuple(t[0] for t in ts))
            inc(('survivor', 0))
            return leaf_cb(acc, ts) if leaf_cb else True
        ok = True
        for c1 in (ts[0][2], ts[0][3]):
            a1 = add(W0, c1[1])
            for c2 in (ts[1][2], ts[1][3]):
                a2 = add(a1, c2[1])
                for c3 in (ts[2][2], ts[2][3]):
                    a3 = add(a2, c3[1])
                    for c4 in (ts[3][2], ts[3][3]):
                        a4 = add(a3, c4[1])
                        for c5 in (ts[4][2], ts[4][3]):
                            ok = binok(d - 1, add(a4, c5[1]), (c1, c2, c3, c4, c5), st) and ok
        return ok

    ok = True
    for b1, c1 in enumerate(R5[0]):
        for b2, c2 in enumerate(R5[1]):
            if only is not None and (b1, b2) != only:
                continue
            a2 = add(add(W0, c1[1]), c2[1])
            st = [] if gen else list(hints.get((b1, b2), []))
            for c3 in R5[2]:
                a3 = add(a2, c3[1])
                for c4 in R5[3]:
                    a4 = add(a3, c4[1])
                    for c5 in R5[4]:
                        ok = binok(3, add(a4, c5[1]), (c1, c2, c3, c4, c5), st) and ok
            out[(b1, b2)] = st if gen else None
    return ok, stats, out
