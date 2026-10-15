"""Simulate syntactic degree / coefficient bound of the Lean Frac/QF circuits (size estimates only)."""
import math


class C:  # circuit summary
    def __init__(s, deg, ab):
        s.deg = tuple(deg); s.ab = ab
    def __add__(a, b): return C([max(x, y) for x, y in zip(a.deg, b.deg)], a.ab + b.ab)
    __sub__ = __add__
    def __mul__(a, b): return C([x + y for x, y in zip(a.deg, b.deg)], a.ab * b.ab)
    def pw(a, k): return C([k * x for x in a.deg], a.ab ** k)


def const(c, n=3): return C([0] * n, abs(c))
def var(i, n=3): return C([1 if j == i else 0 for j in range(n)], 1)


class Fr:
    TABLE = None
    def __init__(s, num, den): s.num = num; s.den = tuple(den)
    @staticmethod
    def scale(c, d):
        for k, e in enumerate(d):
            if e == 1: c = c * Fr.TABLE[k]
            elif e > 1: c = c * Fr.TABLE[k].pw(e)
        return c
    def _comb(a, b):
        E = [max(x, y) for x, y in zip(a.den, b.den)]
        return Fr(Fr.scale(a.num, [e - x for e, x in zip(E, a.den)]) + Fr.scale(b.num, [e - y for e, y in zip(E, b.den)]), E)
    __add__ = _comb
    __sub__ = _comb
    def __mul__(a, b): return Fr(a.num * b.num, [x + y for x, y in zip(a.den, b.den)])
    def __neg__(a): return Fr(const(0) + a.num, a.den)


def fz(m): return Fr(const(0), [0] * m)
def fc(c, m): return Fr(const(c), [0] * m)


class QQ:
    A = None; B = None; M = None
    def __init__(s, x0, x1): s.x0 = x0; s.x1 = x1
    def __add__(a, b): return QQ(a.x0 + b.x0, a.x1 + b.x1)
    def __sub__(a, b): return QQ(a.x0 - b.x0, a.x1 - b.x1)
    def __neg__(a): return QQ(-a.x0, -a.x1)
    def __mul__(a, b):
        t = a.x1 * b.x1
        return QQ(a.x0 * b.x0 + t * QQ.B, a.x0 * b.x1 + a.x1 * b.x0 + t * QQ.A)
    def pw(a, k):
        r = qc(1)
        for _ in range(k): r = r * a
        return r


def qc(c): return QQ(fc(c, QQ.M), fz(QQ.M))


def newton(s, S, t, T, r, Q, u, v, w, wb, pi, up, vp, p):
    m11 = s * t - pi; m2m1 = s * Q - up; mm12 = t * r - vp
    two, three = qc(2), qc(3)
    d = {(2, 0): lambda: s.pw(2) - two * u * S, (0, 2): lambda: t.pw(2) - two * v * T,
         (2, -2): lambda: Q.pw(2) - two * w * r, (1, 1): lambda: m11, (2, -1): lambda: m2m1, (-1, 2): lambda: mm12,
         (3, 0): lambda: s.pw(3) - three * s * u * S + three * u, (0, 3): lambda: t.pw(3) - three * t * v * T + three * v,
         (3, -3): lambda: Q.pw(3) - three * Q * w * r + three * w, (2, 1): lambda: s * m11 - t * u * S + u * r,
         (1, 2): lambda: t * m11 - s * v * T + v * Q, (3, -1): lambda: s * m2m1 - Q * u * S + u * T,
         (3, -2): lambda: Q * m2m1 - s * w * r + w * t, (-1, 3): lambda: t * mm12 - r * v * T + v * S,
         (-2, 3): lambda: r * mm12 - t * wb * Q + wb * s}
    return d[p]() if p in d else qc(0)


HALFDOM = [(2, 0), (0, 2), (2, -2), (1, 1), (2, -1), (-1, 2), (3, 0), (0, 3), (3, -3), (2, 1), (1, 2), (3, -1), (3, -2), (-1, 3), (-2, 3)]


def mom(d, p):
    s, S, t, T, r, Q, u, v, w, U, V, W, pi, PI, up, vp, UP, VP = d
    m = lambda q: newton(s, S, t, T, r, Q, u, v, w, W, pi, up, vp, q)
    b = lambda q: newton(S, s, T, t, Q, r, U, V, W, w, PI, UP, VP, q)
    two = qc(2)
    sp = {(2, 2): lambda: m((1, 1)).pw(2) - two * u * v * b((1, 1)), (-2, -2): lambda: b((1, 1)).pw(2) - two * U * V * m((1, 1)),
          (4, -2): lambda: m((2, -1)).pw(2) - two * u * w * b((2, -1)), (-4, 2): lambda: b((2, -1)).pw(2) - two * U * W * m((2, -1)),
          (-2, 4): lambda: m((-1, 2)).pw(2) - two * v * W * b((-1, 2)), (2, -4): lambda: b((-1, 2)).pw(2) - two * V * w * m((-1, 2))}
    if p in sp: return sp[p]()
    if p in HALFDOM: return m(p)
    return b((-p[0], -p[1]))


def halfQ(s, S, t, T, r, R, X, Y, Z, i0, i1, i2, z):
    three = qc(3)
    la = (r * s.pw(2) + R * t.pw(2) + (three - Z) * s * t) * i0
    lb = (t * S.pw(2) + r.pw(2) * T + (three - Y) * r * S) * i1
    lc = (s * T.pw(2) + R.pw(2) * S + (three - X) * R * T) * i2
    ba = (R * S.pw(2) + r * T.pw(2) + (three - Z) * S * T) * i0
    bb = (T * s.pw(2) + R.pw(2) * t + (three - Y) * R * s) * i1
    bc = (S * t.pw(2) + r.pw(2) * s + (three - X) * r * t) * i2
    return [s, S, t, T, r, R, la * bb, la * bc, lc * bb, lb * ba, lc * ba, lb * bc, la * z, ba * z, bb * z, bc * z, lb * z, lc * z]


def width(c, ns=1):
    bits = c.ab.bit_length() + 1
    dense = 1
    for d in c.deg[ns:]: dense *= d + 1
    return bits, c.deg, bits * dense
