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
    e = vmap(lambda x: acb(0, x).exp(), phi.c)
    g = (e[..., None] * I_) * phi.g
    q = e[..., None] * (I_ * phi.q - outer_fold(phi.g, phi.g) * arb(0.5))
    l1, l2, r = phi.L1(), phi.L2(), phi.rho
    rho = r + l1 * (l2 + r) + (l2 + r) ** 2 / 2 + (l1 + l2 + r) ** 3 / 6
    return TM(e, g, q, rho, phi.h)


def sqrt_up(s):
    """An arb whose upper bound is >= sqrt of every point of the nonnegative ball s."""
    return arb(up(s)).sqrt()


def norm_sup(t):
    """Upper bound (arb, per box) of sup_u ||f(u)||_2 for a real vector TM f (B, m):
       max over the 16 box vertices of ||c + g u|| (convex in u for the fixed exact coefficients)
       + sum_m ||q_m|| |h_j h_l| + ||rho||."""
    B, m = t.c.shape
    sg = np.array([[1 if (v >> j) & 1 else -1 for j in range(4)] for v in range(16)])
    V = t.h[:, None, :] * sg[None, :, :]                                   # (B, 16, 4) vertex offsets (balls)
    val = t.c[:, None, :] + np.einsum('bev,bkv->bke', t.g, V)              # (B, 16, m)
    sq = (val * val).sum(-1)                                               # (B, 16)
    lin = np.array([arb(max(up(x) for x in row)).sqrt() for row in sq], dtype=object)
    hh = np.abs(t.h[:, MJ] * t.h[:, ML])                                   # (B, 10)
    qn = vmap(sqrt_up, (t.q * t.q).sum(1))                                 # (B, 10): ||q_m|| over the entries
    quad = (qn * hh).sum(-1)
    rn = vmap(sqrt_up, (t.rho * t.rho).sum(-1))
    return lin + quad + rn
