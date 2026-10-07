"""Independent Arb re-implementation of the leaf tests of cert.py (one leaf at a time).

Affine forms here have Arb-ball centre and coefficients (acb) and an arb error radius:
    { c + sum_k a_k xi_k + eta : c in ball c, a_k in ball a_k, xi in [-1,1]^K, |eta| <= e }.
All rounding is handled by Arb (outward); no floating-point padding is used.  This replays
the decision (exclusion by T1/T2/T3 or acceptance by a Q block) recorded for sampled leaves.
"""
import itertools, json, sys
from flint import arb, acb, ctx, fmpq
ctx.prec = 106
K = 8
I = acb(0, 1)


def up(x):
    """upper bound (arb) of a nonnegative arb."""
    return arb(x.upper())


def absU(z):
    return arb(abs(z).upper())


class AA:
    __slots__ = ('c', 'a', 'e')

    def __init__(self, c, a, e):
        self.c, self.a, self.e = c, a, e

    @staticmethod
    def const(z):
        return AA(acb(z), [acb(0)] * K, arb(0))

    @staticmethod
    def expi(c, r, k):
        c = arb(c); r = arb(r)
        z = acb(0, c).exp()
        a = [acb(0)] * K; a[k] = I * z * r
        return AA(z, a, up(r * r / 2))

    def A(self):
        s = arb(0)
        for x in self.a:
            s += absU(x)
        return up(s)

    def __add__(self, o):
        if not isinstance(o, AA):
            return AA(self.c + o, list(self.a), self.e)
        return AA(self.c + o.c, [x + y for x, y in zip(self.a, o.a)], up(self.e + o.e))
    __radd__ = __add__

    def __neg__(self):
        return AA(-self.c, [-x for x in self.a], self.e)

    def __sub__(self, o):
        return self + (-o)

    def __rsub__(self, o):
        return (-self) + o

    def __mul__(self, o):
        if not isinstance(o, AA):
            o = acb(o)
            return AA(self.c * o, [x * o for x in self.a], up(self.e * absU(o)))
        A1, A2 = self.A(), o.A()
        e = absU(self.c) * o.e + absU(o.c) * self.e + (A1 + self.e) * (A2 + o.e)
        return AA(self.c * o.c, [self.c * y + o.c * x for x, y in zip(self.a, o.a)], up(e))
    __rmul__ = __mul__

    def conj(self):
        return AA(self.c.conjugate(), [x.conjugate() for x in self.a], self.e)

    def re(self):
        return AA(acb(self.c.real), [acb(x.real) for x in self.a], self.e)

    def im(self):
        return AA(acb(self.c.imag), [acb(x.imag) for x in self.a], self.e)

    def abs2(self):
        return (self * self.conj()).re()

    def rad(self):
        return up(self.A() + self.e)

    def recip_pos(self):
        c = self.c.real; A = self.A(); L = c - A - self.e
        if not (L > 0):
            raise ValueError('nonpositive')
        c2 = c * c
        e = self.e / c2 + (A + self.e) ** 2 / (c2 * arb(L.lower()))
        return AA(acb(1 / c), [-x / c2 for x in self.a], up(e))

    def sqrt_pos(self):
        c = self.c.real; A = self.A(); L = c - A - self.e
        if not (L > 0):
            raise ValueError('nonpositive')
        sc = c.sqrt()
        Ll = arb(L.lower())
        e = self.e / (2 * sc) + (A + self.e) ** 2 / (8 * Ll * Ll.sqrt())
        return AA(acb(sc), [x / (2 * sc) for x in self.a], up(e))

    def excludes_zero(self):
        A = self.A()
        if abs(self.c) > A + self.e:
            return True
        Ar = arb(0); Ai = arb(0)
        for x in self.a:
            Ar += abs(x.real); Ai += abs(x.imag)
        return bool(abs(self.c.real) > Ar + self.e) or bool(abs(self.c.imag) > Ai + self.e)


def parity(v):
    return (-1) ** sum(v[i] > v[j] for i in range(len(v)) for j in range(i + 1, len(v)))


TERMS = []
for i in range(3):
    for j in range(3):
        if i == j:
            continue
        a, b = [k for k in range(3) if k != i]
        c, d = [k for k in range(3) if k != j]
        TERMS.append((i, j, a, b, c, d, parity([2 * a, 2 * b, 2 * c + 1, 2 * d + 1, 2 * i, 2 * j + 1])))
T3 = list(itertools.combinations(range(6), 3))
BLOCKS = [(r, c) for r in T3 for c in T3]


def side(zc, zr, wc, wr, kz, kw, S, T, Rr, sigma):
    z1 = AA.expi(zc, zr, kz); w1 = AA.expi(wc, wr, kw)
    def pair(m):
        mm = m.abs2(); nm = mm.sqrt_pos(); u = m * nm.recip_pos()
        kk = (1 - mm * 0.25).sqrt_pos(); h = nm * 0.5; ik = kk * I
        return u * (h + ik), u * (h - ik)
    zp, zm = pair(S - z1); wp, wm = pair(T - w1)
    w2, w3 = (wp, wm) if sigma > 0 else (wm, wp)
    z = [z1, zp, zm]; w = [w1, w2, w3]
    res = w[0] * z[0].conj() + w[1] * z[1].conj() + w[2] * z[2].conj() - Rr
    return z, w, res


def replay(cen, rad, sig, tau, blk, status, q0):
    """Recompute the recorded decision with Arb. Returns True if the decision is confirmed."""
    a, b, c, d = [AA.expi(cen[4 + k], rad[4 + k], 4 + k) for k in range(4)]
    one = AA.const(1)
    E = [[one, one, one], [one, a, b], [one, c, d]]
    s = -(a + b + 1); t = -(c + d + 1); r = -(c * a.conj() + d * b.conj() + 1)
    sv = -(a + c + 1); tv = -(b + d + 1); rv = -(b * a.conj() + d * c.conj() + 1)
    three = AA.const(3)
    G = [[three, s.conj(), t.conj()], [s, three, r.conj()], [t, r, three]]
    adj = [[None] * 3 for _ in range(3)]
    for i in range(3):
        for j in range(3):
            rr = [x for x in range(3) if x != i]; cc = [x for x in range(3) if x != j]
            cof = G[rr[0]][cc[0]] * G[rr[1]][cc[1]] - G[rr[0]][cc[1]] * G[rr[1]][cc[0]]
            adj[j][i] = cof if (i + j) % 2 == 0 else -cof
    g = (G[0][0] * adj[0][0] + G[0][1] * adj[1][0] + G[0][2] * adj[2][0]).re()
    xs, ys, res1 = side(cen[0], rad[0], cen[1], rad[1], 0, 1, s, t, r, sig)
    if status == 1:
        return res1.excludes_zero()
    ps, qs, res2 = side(cen[2], rad[2], cen[3], rad[3], 2, 3, sv, tv, rv, tau)
    if status == 2:
        return res2.excludes_zero()
    ginv = g.recip_pos()
    Ed = [[E[j][i].conj() for j in range(3)] for i in range(3)]
    W = [[Ed[i][0] * adj[0][j] + Ed[i][1] * adj[1][j] + Ed[i][2] * adj[2][j] for j in range(3)] for i in range(3)]
    B = [[one, one, one], xs, ys]
    C = [[one, ps[i], qs[i]] for i in range(3)]
    CW = [[C[i][0] * W[0][j] + C[i][1] * W[1][j] + C[i][2] * W[2][j] for j in range(3)] for i in range(3)]
    mg = -ginv
    D = [[(CW[i][0] * B[0][j] + CW[i][1] * B[1][j] + CW[i][2] * B[2][j]) * mg for j in range(3)] for i in range(3)]
    if status == 3:
        return any((D[i][j].abs2() - 1).excludes_zero() for i in range(3) for j in range(3))
    H = [[None] * 6 for _ in range(6)]
    for i in range(3):
        for j in range(3):
            H[i][j] = E[i][j]; H[i][j + 3] = B[i][j]; H[i + 3][j] = C[i][j]; H[i + 3][j + 3] = D[i][j]
    rw, cl = BLOCKS[blk]
    n = [[H[rw[x]][cl[y]] for y in range(3)] for x in range(3)]
    v = None
    for i, j, a_, b_, c_, d_, sg in TERMS:
        f1 = (n[1][b_] * n[0][b_].conj() * (n[1][a_].conj() * n[0][a_])).im()
        f2 = (n[2][d_] * n[0][d_].conj() * (n[2][c_].conj() * n[0][c_])).im()
        f3 = (n[2][i] * n[1][i].conj() * (n[2][j].conj() * n[1][j])).im()
        tm = f1 * f2 * f3 * sg
        v = tm if v is None else v + tm
    lo = abs(v.c.real) - v.rad()
    return bool(lo > arb(q0))


if __name__ == '__main__':
    import time
    res = json.load(open(sys.argv[1]))
    out = []
    for r in res['results']:
        t = time.time(); tot = {}; bad = 0
        for code, lst in r['samples'].items():
            ok = 0
            for cen, rad, sig, tau, blk in lst:
                try:
                    good = replay(cen, rad, sig, tau, blk, int(code), r['q0'])
                except ValueError:
                    good = False
                ok += good; bad += (not good)
            tot[code] = (ok, len(lst))
        print(r['index'], r['id'], 'replayed (confirmed, sampled) per status', tot, 'failures', bad, '%.0fs' % (time.time() - t), flush=True)
        out.append(dict(index=r['index'], id=r['id'], replay=tot, failures=bad))
    json.dump(out, open(sys.argv[1].replace('.json', '_arbreplay.json'), 'w'), indent=1)
