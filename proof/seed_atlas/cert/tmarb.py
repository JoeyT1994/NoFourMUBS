"""Second-order Taylor models with Arb ball coefficients, batched over boxes (numpy object arrays of arb / acb).

A Taylor model (TM) over a box u in prod_j [-h_j, h_j] (4 variables) is
    f(u) = c + sum_j g_j u_j + sum_{j <= l} q_jl u_j u_l + e(u),   |e(u)| <= rho  for every u in the box,
where c, g, q are FIXED exact (real or complex) numbers lying in the stored Arb balls and rho is any number in the
upper half of the stored (nonnegative) arb ball, i.e. rho <= rho.upper().  Quadratic coefficients are stored per
monomial u_j u_l, j <= l (10 of them, order MONO).  Every operation below maps TMs satisfying this to a TM satisfying
it: Arb encloses each exact coefficient of the result (a polynomial in exact input coefficients), and the remainder
bound is a monotone expression in upper bounds of |coefficients|, h and rho, evaluated in Arb.  Nothing is
rounded in binary64.

Arrays: c has shape (B,) + S (B boxes, S the entry shape), g: (B,) + S + (4,), q: (B,) + S + (10,), rho: (B,) + S
(arb), h: (B, 4) (arb, the half-widths of box b; may be balls, their upper bounds enter the remainders).
"""
import math
import numpy as np
from flint import arb, acb

MONO = [(j, l) for j in range(4) for l in range(j, 4)]
MJ = np.array([j for j, l in MONO]); ML = np.array([l for j, l in MONO]); OFF = MJ != ML
ZERO = arb(0)
CZERO = acb(0)
I_ = acb(0, 1)


# ----------------------------------------------------------------------------------------- object-array helpers
def vmap(f, X):
    X = np.asarray(X, dtype=object)
    out = np.empty(X.shape, dtype=object)
    out.flat[:] = [f(x) for x in X.flat]
    return out


def oarb(x):
    """Float array -> object array of exact arbs (binary64 values are exact rationals)."""
    x = np.asarray(x, dtype=float)
    out = np.empty(x.shape, dtype=object)
    out.flat[:] = [arb(v) for v in x.ravel().tolist()]
    return out


def oacb(z):
    z = np.asarray(z, dtype=complex)
    out = np.empty(z.shape, dtype=object)
    out.flat[:] = [acb(v.real, v.imag) for v in z.ravel().tolist()]
    return out


def zeros(shape, cplx=False):
    return np.full(shape, CZERO if cplx else ZERO, dtype=object)


def re(X): return vmap(lambda z: z.real, X)
def im(X): return vmap(lambda z: z.imag, X)
def conj(X): return vmap(lambda z: z.conjugate() if isinstance(z, acb) else z, X)


def up(x):
    """A binary64 number >= every point of the arb ball x (inf if x is not finite)."""
    if not x.is_finite(): return math.inf
    u = x.upper()
    f = float(u)
    while not arb(f) >= u: f = math.nextafter(f, math.inf)
    return f


def lo(x):
    """A binary64 number <= every point of the arb ball x."""
    if not x.is_finite(): return -math.inf
    l = x.lower()
    f = float(l)
    while not arb(f) <= l: f = math.nextafter(f, -math.inf)
    return f


def vup(X): return np.array([up(x) for x in np.asarray(X, dtype=object).flat], float).reshape(np.shape(X))


def outer_fold(a, b):
    """Coefficients of (a.u)(b.u) in the monomials MONO: a_j b_j for j = l, a_j b_l + a_l b_j for j < l."""
    out = a[..., MJ] * b[..., ML]
    out[..., OFF] = out[..., OFF] + a[..., ML[OFF]] * b[..., MJ[OFF]]
    return out


# ----------------------------------------------------------------------------------------- the Taylor model
class TM:
    __slots__ = ('c', 'g', 'q', 'rho', 'h')
    __array_ufunc__ = None                     # ndarray (op) TM defers to TM's reflected operators

    def __init__(self, c, g, q, rho, h):
        self.c, self.g, self.q, self.rho, self.h = c, g, q, rho, h

    @property
    def shape(self): return self.c.shape

    def _hb(self):
        return self.h.reshape((self.h.shape[0],) + (1,) * (self.c.ndim - 1) + (4,))

    def _hhb(self):
        hh = self.h[:, MJ] * self.h[:, ML]
        return hh.reshape((hh.shape[0],) + (1,) * (self.c.ndim - 1) + (10,))

    def L1(self):
        """>= sup |g.u| over the box."""
        return (np.abs(self.g) * np.abs(self._hb())).sum(-1)

    def L2(self):
        """>= sup |sum q_jl u_j u_l| over the box."""
        return (np.abs(self.q) * np.abs(self._hhb())).sum(-1)

    def var(self):
        """>= sup |f(u) - c| over the box (arb)."""
        return self.L1() + self.L2() + self.rho

    def bound(self):
        """>= sup |f(u)| over the box (arb)."""
        return np.abs(self.c) + self.var()

    # ---- structure
    def __getitem__(self, idx):
        """Index the entry axes (the batch axis is kept): t[..., i] style indices on S."""
        if not isinstance(idx, tuple): idx = (idx,)
        full = (slice(None),) + idx
        return TM(self.c[full], self.g[full + (slice(None),)], self.q[full + (slice(None),)], self.rho[full], self.h)

    def T(self):
        """Transpose of a matrix TM (B, m, n)."""
        return TM(np.swapaxes(self.c, 1, 2), np.swapaxes(self.g, 1, 2), np.swapaxes(self.q, 1, 2), np.swapaxes(self.rho, 1, 2), self.h)

    def conj(self): return TM(conj(self.c), conj(self.g), conj(self.q), self.rho, self.h)
    def H(self): return self.conj().T()
    def re(self): return TM(re(self.c), re(self.g), re(self.q), self.rho, self.h)
    def im(self): return TM(im(self.c), im(self.g), im(self.q), self.rho, self.h)
    def select(self, mask): return TM(self.c[mask], self.g[mask], self.q[mask], self.rho[mask], self.h[mask])

    # ---- arithmetic
    def __add__(self, o):
        if isinstance(o, TM): return TM(self.c + o.c, self.g + o.g, self.q + o.q, self.rho + o.rho, self.h)
        return TM(self.c + o, self.g, self.q, self.rho, self.h)

    __radd__ = __add__

    def __neg__(self): return TM(-self.c, -self.g, -self.q, self.rho, self.h)

    def __sub__(self, o):
        if isinstance(o, TM): return TM(self.c - o.c, self.g - o.g, self.q - o.q, self.rho + o.rho, self.h)
        return TM(self.c - o, self.g, self.q, self.rho, self.h)

    def __rsub__(self, o): return (-self) + o

    def scale(self, a):
        """Multiply by constants a (scalar or array broadcasting against S, exact or ball)."""
        a = np.asarray(a, dtype=object)
        return TM(self.c * a, self.g * a[..., None], self.q * a[..., None], self.rho * np.abs(a), self.h)

    def __mul__(self, o):
        """Entrywise product (broadcasting)."""
        if not isinstance(o, TM): return self.scale(o)
        a, b = self, o
        c = a.c * b.c
        g = a.c[..., None] * b.g + b.c[..., None] * a.g
        q = a.c[..., None] * b.q + b.c[..., None] * a.q + outer_fold(a.g, b.g)
        A, a1, a2, ar = np.abs(a.c), a.L1(), a.L2(), a.rho
        Bc, b1, b2, br = np.abs(b.c), b.L1(), b.L2(), b.rho
        rho = A * br + a1 * (b2 + br) + a2 * (b1 + b2 + br) + ar * (Bc + b1 + b2 + br)
        return TM(c, g, q, rho, a.h)

    def __matmul__(self, o):
        """Matrix product of matrix TMs (B, m, k) @ (B, k, n), or with a constant (k, n) / (B, k, n) array."""
        E = np.einsum
        if not isinstance(o, TM):
            o = np.asarray(o, dtype=object)
            if o.ndim == 2: o = np.broadcast_to(o, (self.c.shape[0],) + o.shape)
            return TM(E('bik,bkj->bij', self.c, o), E('bikv,bkj->bijv', self.g, o), E('bikm,bkj->bijm', self.q, o),
                      E('bik,bkj->bij', self.rho, np.abs(o)), self.h)
        a, b = self, o
        c = E('bik,bkj->bij', a.c, b.c)
        g = E('bik,bkjv->bijv', a.c, b.g) + E('bikv,bkj->bijv', a.g, b.c)
        qq = E('bikm,bkjm->bijm', a.g[..., MJ], b.g[..., ML])
        qq[..., OFF] = qq[..., OFF] + E('bikm,bkjm->bijm', a.g[..., ML[OFF]], b.g[..., MJ[OFF]])
        q = E('bik,bkjm->bijm', a.c, b.q) + E('bikm,bkj->bijm', a.q, b.c) + qq
        A, a1, a2, ar = np.abs(a.c), a.L1(), a.L2(), a.rho
        Bc, b1, b2, br = np.abs(b.c), b.L1(), b.L2(), b.rho
        rho = (E('bik,bkj->bij', A, br) + E('bik,bkj->bij', a1, b2 + br) + E('bik,bkj->bij', a2, b1 + b2 + br)
               + E('bik,bkj->bij', ar, Bc + b1 + b2 + br))
        return TM(c, g, q, rho, a.h)

    def lmul(self, Y):
        """Y @ f for a vector TM f (B, m) and constants Y (p, m) or (B, p, m)."""
        Y = np.asarray(Y, dtype=object)
        s = 'pm' if Y.ndim == 2 else 'bpm'
        E = np.einsum
        return TM(E(s + ',bm->bp', Y, self.c), E(s + ',bmv->bpv', Y, self.g), E(s + ',bmv->bpv', Y, self.q),
                  E(s + ',bm->bp', np.abs(Y), self.rho), self.h)

    def add_rho(self, extra): return TM(self.c, self.g, self.q, self.rho + extra, self.h)


def const(C, h, cplx=None):
    """TM of constants C (object array with batch axis first)."""
    C = np.asarray(C, dtype=object)
    if cplx is None: cplx = any(isinstance(x, acb) for x in C.flat)
    return TM(C, zeros(C.shape + (4,), cplx), zeros(C.shape + (10,), cplx), zeros(C.shape), h)


def stack(ts, axis_shape, h, cplx):
    """Assemble TMs / constants (list in row-major order) into one TM of entry shape axis_shape."""
    B = h.shape[0]
    n = len(ts)
    c = np.empty((B, n), dtype=object); g = np.empty((B, n, 4), dtype=object); q = np.empty((B, n, 10), dtype=object)
    rho = np.empty((B, n), dtype=object)
    z0 = CZERO if cplx else ZERO
    for k, t in enumerate(ts):
        if isinstance(t, TM):
            c[:, k] = t.c; g[:, k] = t.g; q[:, k] = t.q; rho[:, k] = t.rho
        else:
            c[:, k] = t; g[:, k] = z0; q[:, k] = z0; rho[:, k] = ZERO
    sh = (B,) + tuple(axis_shape)
    return TM(c.reshape(sh), g.reshape(sh + (4,)), q.reshape(sh + (10,)), rho.reshape(sh), h)


def exp_i(phi):
    """e^{i phi} for a REAL TM phi = c + x, x = x1 + x2 + e (x1 linear, x2 quadratic, |e| <= rho):
       e^{ic} (1 + i(x1 + x2) - x1^2/2) + e^{ic} R,  |R| <= rho + L1 (L2 + rho) + (L2 + rho)^2/2 + (L1 + L2 + rho)^3/6
    (|e^{ix} - 1 - ix + x^2/2| <= |x|^3/6 for real x, and |e^{ic}| = 1)."""
    assert all(isinstance(x, arb) for x in phi.c.flat[:1]) and all(isinstance(x, arb) for x in phi.g.flat[:1]), 'exp_i needs a real TM'
    e = vmap(lambda x: acb(0, x).exp(), phi.c)
    g = (e[..., None] * I_) * phi.g
    q = e[..., None] * (I_ * phi.q - outer_fold(phi.g, phi.g) * arb(0.5))
    l1, l2, r = phi.L1(), phi.L2(), phi.rho
    rho = r + l1 * (l2 + r) + (l2 + r) ** 2 / 2 + (l1 + l2 + r) ** 3 / 6
    return TM(e, g, q, rho, phi.h)


def sqrt_up(s):
    """An arb whose upper bound is >= sqrt of every point of the nonnegative ball s."""
    return arb(up(s)).sqrt()


def norm_sup(t, wc=None, r=None, wcf=None):
    """Upper bound (arb, per box) of sup_u ||f(u)||_2 for a real vector TM f (B, m):
       max over candidate points u of ||c + g u|| (convex in u for the fixed exact coefficients)
       + sum_m ||q_m|| |h_j h_l| + ||rho||.
    The candidates are the 16 box vertices; with (wc, r, wcf) (box centres in w, exact; the ball ||w|| <= r) and a
    box that may stick out of the ball, the sup is only needed over the box's part inside the ball, which lies in the
    polytope {u in the box: (wc + u).n <= r ||n||} (n = wcf / ||wcf||, a tangent half-space); the candidates are then that polytope's
    vertices: the box vertices in the half-space (kept whenever not certainly outside) and the crossings of the plane
    with the box edges (as balls, kept whenever possibly on the edge).  Extra candidates only raise the bound."""
    B, m = t.c.shape
    sg = np.array([[1 if (v >> j) & 1 else -1 for j in range(4)] for v in range(16)])
    hh = np.abs(t.h[:, MJ] * t.h[:, ML])                                   # (B, 10)
    qn = vmap(sqrt_up, (t.q * t.q).sum(1))                                 # (B, 10): ||q_m|| over the entries
    quad = (qn * hh).sum(-1)
    rn = vmap(sqrt_up, (t.rho * t.rho).sum(-1))
    lin = np.empty(B, dtype=object)
    for b in range(B):
        V = [t.h[b] * sg[v] for v in range(16)]
        cand = V
        if wc is not None and np.linalg.norm(wcf[b]) > 0:
            far = sqrt_up(sum((((abs(wc[b, j]) + abs(t.h[b, j])) ** 2) for j in range(4)), arb(0)))
            if not far < arb(r):                                            # the box may stick out of the ball
                n = wcf[b] / np.linalg.norm(wcf[b])
                na = [arb(float(x)) for x in n]
                beta = arb(r) * sqrt_up(sum((x * x for x in na), arb(0))) - sum((wc[b, j] * na[j] for j in range(4)), arb(0))
                side = [sum((V[v][j] * na[j] for j in range(4)), arb(0)) - beta for v in range(16)]   # <= 0: inside
                cand = [V[v] for v in range(16) if not side[v] > 0]
                for v in range(16):
                    for j in range(4):
                        v2 = v ^ (1 << j)
                        if v2 < v: continue
                        if (side[v] > 0 and side[v2] > 0) or (side[v] < 0 and side[v2] < 0): continue
                        den = side[v2] - side[v]
                        if den.contains(0): cand += [V[v], V[v2]]; continue
                        tt = -side[v] / den
                        cand.append(np.array([V[v][i] + tt * (V[v2][i] - V[v][i]) for i in range(4)], dtype=object))
                if not cand: cand = V
        best = 0.0
        for u in cand:
            val = t.c[b] + t.g[b].dot(np.asarray(u, dtype=object))
            best = max(best, up((val * val).sum()))
        lin[b] = arb(best).sqrt()
    return lin + quad + rn


# ----------------------------------------------------------------------------------------- third-order Taylor models
# Used where second-order truncation bounds do not cancel although the true terms do (the forced-block residual
# C E^* + Xp B^*): f(u) = c + g.u + sum q_m u^m + sum k_t u^t + e(u), |e| <= rho, t over the 20 cubic monomials.
MONO3 = [(j, l, m) for j in range(4) for l in range(j, 4) for m in range(l, 4)]
_M3IDX = {t: i for i, t in enumerate(MONO3)}
# products (linear j) x (quadratic monomial m2) -> cubic monomial index
LQ = np.array([[_M3IDX[tuple(sorted((j,) + MONO[m2]))] for m2 in range(10)] for j in range(4)])


def _fold3(a, b):
    """Coefficients of (a.u)(sum b_m u^m) (a: (..., 4) linear, b: (..., 10) quadratic) in the cubic monomials."""
    out = np.full(np.broadcast_shapes(a.shape[:-1], b.shape[:-1]) + (20,), ZERO, dtype=object)
    for j in range(4):
        for m2 in range(10):
            t = LQ[j, m2]
            out[..., t] = out[..., t] + a[..., j] * b[..., m2]
    return out


class TM3:
    __slots__ = ('c', 'g', 'q', 'k', 'rho', 'h')
    __array_ufunc__ = None

    def __init__(self, c, g, q, k, rho, h):
        self.c, self.g, self.q, self.k, self.rho, self.h = c, g, q, k, rho, h

    @staticmethod
    def from2(t):
        return TM3(t.c, t.g, t.q, np.full(t.c.shape + (20,), ZERO, dtype=object), t.rho, t.h)

    def _hb(self, n):
        B = self.h.shape[0]; nd = self.c.ndim - 1
        if n == 1: x = self.h
        elif n == 2: x = self.h[:, MJ] * self.h[:, ML]
        else: x = self.h[:, [a for a, b, c in MONO3]] * self.h[:, [b for a, b, c in MONO3]] * self.h[:, [c for a, b, c in MONO3]]
        return np.abs(x).reshape((B,) + (1,) * nd + (x.shape[-1],))

    def L1(self): return (np.abs(self.g) * self._hb(1)).sum(-1)
    def L2(self): return (np.abs(self.q) * self._hb(2)).sum(-1)
    def L3(self): return (np.abs(self.k) * self._hb(3)).sum(-1)
    def bound(self): return np.abs(self.c) + self.L1() + self.L2() + self.L3() + self.rho

    def conj(self): return TM3(conj(self.c), conj(self.g), conj(self.q), conj(self.k), self.rho, self.h)
    def T(self): return TM3(*(np.swapaxes(x, 1, 2) for x in (self.c, self.g, self.q, self.k, self.rho)), self.h)
    def H(self): return self.conj().T()

    def __add__(self, o):
        if not isinstance(o, TM3): return TM3(self.c + o, self.g, self.q, self.k, self.rho, self.h)
        return TM3(self.c + o.c, self.g + o.g, self.q + o.q, self.k + o.k, self.rho + o.rho, self.h)

    def __sub__(self, o):
        if not isinstance(o, TM3): return TM3(self.c - o, self.g, self.q, self.k, self.rho, self.h)
        return TM3(self.c - o.c, self.g - o.g, self.q - o.q, self.k - o.k, self.rho + o.rho, self.h)

    def re(self): return TM3(re(self.c), re(self.g), re(self.q), re(self.k), self.rho, self.h)
    def im(self): return TM3(im(self.c), im(self.g), im(self.q), im(self.k), self.rho, self.h)

    def __getitem__(self, idx):
        if not isinstance(idx, tuple): idx = (idx,)
        f = (slice(None),) + idx
        return TM3(self.c[f], self.g[f + (slice(None),)], self.q[f + (slice(None),)], self.k[f + (slice(None),)], self.rho[f], self.h)

    def sum1(self):
        return TM3(self.c.sum(1), self.g.sum(1), self.q.sum(1), self.k.sum(1), self.rho.sum(1), self.h)

    def __mul__(self, o):
        """Entrywise product: orders 0..3 exact, degree >= 4 into rho."""
        a, b = self, o
        c = a.c * b.c
        g = a.c[..., None] * b.g + b.c[..., None] * a.g
        q = a.c[..., None] * b.q + b.c[..., None] * a.q + outer_fold(a.g, b.g)
        k = a.c[..., None] * b.k + b.c[..., None] * a.k + _fold3(a.g, b.q) + _fold3(b.g, a.q)
        A, a1, a2, a3, ar = np.abs(a.c), a.L1(), a.L2(), a.L3(), a.rho
        Bc, b1, b2, b3, br = np.abs(b.c), b.L1(), b.L2(), b.L3(), b.rho
        rho = A * br + a1 * (b3 + br) + a2 * (b2 + b3 + br) + a3 * (b1 + b2 + b3 + br) + ar * (Bc + b1 + b2 + b3 + br)
        return TM3(c, g, q, k, rho, a.h)

    def lmul(self, Y):
        """Y @ f for a vector TM3 f (B, m) and constants Y (B, p, m)."""
        E = np.einsum
        return TM3(E('bpm,bm->bp', Y, self.c), E('bpm,bmv->bpv', Y, self.g), E('bpm,bmv->bpv', Y, self.q),
                   E('bpm,bmv->bpv', Y, self.k), E('bpm,bm->bp', np.abs(Y), self.rho), self.h)

    def __matmul__(self, o):
        """(B, m, k) @ (B, k, n): orders 0..3 kept exactly, degree >= 4 into rho."""
        E = np.einsum
        a, b = self, o
        c = E('bik,bkj->bij', a.c, b.c)
        g = E('bik,bkjv->bijv', a.c, b.g) + E('bikv,bkj->bijv', a.g, b.c)
        qq = E('bikm,bkjm->bijm', a.g[..., MJ], b.g[..., ML])
        qq[..., OFF] = qq[..., OFF] + E('bikm,bkjm->bijm', a.g[..., ML[OFF]], b.g[..., MJ[OFF]])
        q = E('bik,bkjm->bijm', a.c, b.q) + E('bikm,bkj->bijm', a.q, b.c) + qq
        kk = E('bik,bkjt->bijt', a.c, b.k) + E('bikt,bkj->bijt', a.k, b.c)
        for j in range(4):
            for m2 in range(10):
                t = LQ[j, m2]
                kk[..., t] = kk[..., t] + E('bik,bkj->bij', a.g[..., j], b.q[..., m2]) + E('bik,bkj->bij', a.q[..., m2], b.g[..., j])
        A, a1, a2, a3, ar = np.abs(a.c), a.L1(), a.L2(), a.L3(), a.rho
        Bc, b1, b2, b3, br = np.abs(b.c), b.L1(), b.L2(), b.L3(), b.rho
        rho = (E('bik,bkj->bij', A, br) + E('bik,bkj->bij', a1, b3 + br) + E('bik,bkj->bij', a2, b2 + b3 + br)
               + E('bik,bkj->bij', a3, b1 + b2 + b3 + br) + E('bik,bkj->bij', ar, Bc + b1 + b2 + b3 + br))
        return TM3(c, g, q, kk, rho, a.h)


def exp_i3(phi):
    """e^{i phi} to third order for a REAL second-order TM phi = c + x1 + x2 + e (|e| <= rho):
       e^{ic} (1 + i(x1 + x2) - x1^2/2 - x1 x2 - i x1^3/6) + e^{ic} R,
       |R| <= rho + L2^2/2 + (L1 + L2) rho + rho^2/2 + (3 L1^2 (L2 + rho) + 3 L1 (L2 + rho)^2 + (L2 + rho)^3)/6
              + (L1 + L2 + rho)^4/24
    (|e^{ix} - 1 - ix + x^2/2 + i x^3/6| <= x^4/24 for real x; expand x = x1 + x2 + e and keep degrees <= 3)."""
    assert all(isinstance(x, arb) for x in phi.c.flat[:1]), 'exp_i3 needs a real TM'
    e = vmap(lambda x: acb(0, x).exp(), phi.c)
    g = (e[..., None] * I_) * phi.g
    q = e[..., None] * (I_ * phi.q - outer_fold(phi.g, phi.g) * arb(0.5))
    x1x2 = _fold3(phi.g, phi.q)                                           # x1 x2
    g2 = outer_fold(phi.g, phi.g)                                         # x1^2
    x1c = _fold3(phi.g, g2)                                               # x1^3 = x1 * x1^2
    k = e[..., None] * (x1x2 * arb(-1) + x1c * (I_ * acb(-1) / 6))
    l1, l2, r = phi.L1(), phi.L2(), phi.rho
    rho = (r + l2 * l2 / 2 + (l1 + l2) * r + r * r / 2 + (3 * l1 * l1 * (l2 + r) + 3 * l1 * (l2 + r) ** 2 + (l2 + r) ** 3) / 6
           + (l1 + l2 + r) ** 4 / 24)
    return TM3(e, g, q, k, rho, phi.h)


def stack3(ts, axis_shape, h, cplx=True):
    """Assemble third-order TMs / constants (row-major) into one TM3 of entry shape axis_shape."""
    z0 = CZERO if cplx else ZERO
    B = h.shape[0]; n = len(ts)
    arrs = [np.empty((B, n) + tail, dtype=object) for tail in ((), (4,), (10,), (20,), ())]
    for k, t in enumerate(ts):
        if isinstance(t, TM3):
            for a, x in zip(arrs, (t.c, t.g, t.q, t.k, t.rho)): a[:, k] = x
        else:
            arrs[0][:, k] = t
            for a in arrs[1:4]: a[:, k] = z0
            arrs[4][:, k] = ZERO
    sh = (B,) + tuple(axis_shape)
    return TM3(arrs[0].reshape(sh), arrs[1].reshape(sh + (4,)), arrs[2].reshape(sh + (10,)), arrs[3].reshape(sh + (20,)),
               arrs[4].reshape(sh), h)


def entry3(t, j):
    """Entry j of a TM3 with one entry axis."""
    return TM3(t.c[:, j], t.g[:, j], t.q[:, j], t.k[:, j], t.rho[:, j], t.h)
