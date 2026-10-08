"""Vectorised first-order complex affine arithmetic with outward rounding padding.

An object A represents, for each of N boxes (vectorised), the set

    { c + sum_k a_k xi_k + eta :  xi in [-1,1]^K,  eta complex, |eta| <= e }.

The noise symbols xi_k are shared by all quantities of the same box, so linear
dependencies (the main source of interval over-estimation) are tracked exactly.
Every operation returns a form that contains the exact image of the represented set
(first-order Taylor term exact in the symbols, explicit Lagrange/Taylor remainder bounds,
and a deliberately generous floating-point padding).

Floating-point assumptions (stated in REPORT.md):
  * numpy float64 +,-,*,/ and sqrt are IEEE-754 correctly rounded (unit roundoff u = 2^-53);
  * np.abs of a complex number (hypot) and np.exp(1j*x) for |x| <= 4 are accurate to a few ulp.
Each operation adds  PAD * (product/sum of input magnitudes)  with PAD = 2e-15 (about 18u),
and multiplies the error radius by (1+1e-14); this dominates every rounding error made in
computing the centre, the coefficients and the remainder of that operation.
"""
import numpy as np

PAD = 2e-15
GROW = 1.0 + 1e-14


_EXPI_CACHE = {}


def expi_centres(x):
    """exp(i x) for float x, computed with Arb (128 bits) and rounded to nearest binary64
    (error <= 2^-53 per component, covered by the padding in Aff.expi). Memoised."""
    from flint import arb, ctx
    ctx.prec = 128
    ux, inv = np.unique(x, return_inverse=True)
    out = np.empty(len(ux), complex)
    for i, v in enumerate(ux):
        z = _EXPI_CACHE.get(v)
        if z is None:
            a = arb(float(v))  # exact
            z = complex(float(a.cos()), float(a.sin()))
            if len(_EXPI_CACHE) < 2_000_000:
                _EXPI_CACHE[v] = z
        out[i] = z
    return out[inv.reshape(x.shape)]


def _A(a):
    return np.abs(a).sum(axis=-1)


class Aff:
    __slots__ = ('c', 'a', 'e')

    def __init__(self, c, a, e):
        self.c, self.a, self.e = c, a, e

    # ---- construction ----
    @staticmethod
    def const(z, N, K):
        """Exactly representable constant (or one whose rounding is accounted by caller)."""
        return Aff(np.full(N, complex(z)), np.zeros((N, K), complex), np.zeros(N))

    @staticmethod
    def expi(phi_c, phi_r, k, K):
        """exp(i*(phi_c + phi_r*xi_k)), phi_c, phi_r float arrays (exact floats), |phi_c|<=4."""
        N = phi_c.shape[0]
        c = expi_centres(phi_c)
        a = np.zeros((N, K), complex); a[:, k] = 1j * c * phi_r
        # |e^{i d}-1-i d| <= d^2/2 ; plus padding for exp/rounding of c and the coefficient
        e = (0.5 * phi_r * phi_r + 4e-15 * (1 + phi_r)) * GROW
        return Aff(c, a, e)

    # ---- helpers ----
    def mag(self):
        return np.abs(self.c) + _A(self.a) + self.e

    def rad(self):
        return _A(self.a) + self.e

    def __len__(self):
        return self.c.shape[0]

    def take(self, idx):
        return Aff(self.c[idx], self.a[idx], self.e[idx])

    # ---- arithmetic ----
    def __add__(self, o):
        if not isinstance(o, Aff):
            o = complex(o)
            return Aff(self.c + o, self.a.copy(), (self.e + PAD * (np.abs(self.c) + abs(o))) * GROW)
        return Aff(self.c + o.c, self.a + o.a, (self.e + o.e + PAD * (self.mag() + o.mag())) * GROW)
    __radd__ = __add__

    def __neg__(self):
        return Aff(-self.c, -self.a, self.e)

    def __sub__(self, o):
        return self + (-o)

    def __rsub__(self, o):
        return (-self) + o

    def __mul__(self, o):
        if not isinstance(o, Aff):
            o = complex(o)
            return Aff(self.c * o, self.a * o, (self.e * abs(o) + PAD * self.mag() * abs(o)) * GROW)
        m1, m2 = self.mag(), o.mag()
        A1, A2 = _A(self.a), _A(o.a)
        c = self.c * o.c
        a = self.c[:, None] * o.a + o.c[:, None] * self.a
        e = (np.abs(self.c) * o.e + np.abs(o.c) * self.e + (A1 + self.e) * (A2 + o.e) + 4 * PAD * m1 * m2) * GROW
        return Aff(c, a, e)
    __rmul__ = __mul__

    def conj(self):
        return Aff(np.conj(self.c), np.conj(self.a), self.e)

    def re(self):
        return Aff(self.c.real + 0j, self.a.real + 0j, self.e)

    def im(self):
        return Aff(self.c.imag + 0j, self.a.imag + 0j, self.e)

    def abs2(self):
        return (self * self.conj()).re()

    # ---- real-valued nonlinear functions (input must represent real values) ----
    def lower(self):
        return self.c.real - _A(self.a) - self.e

    def upper(self):
        return self.c.real + _A(self.a) + self.e

    def recip_pos(self):
        """1/f for a real form with positive lower bound L (else NaN -> caller treats as undecided)."""
        c = self.c.real; A = _A(self.a); L = c - A - self.e
        ok = L > 0
        Ls = np.where(ok, L, np.nan)
        c2 = c * c
        cn = 1.0 / c
        a = -self.a / c2[:, None]
        e = (self.e / c2 + (A + self.e) ** 2 / (c2 * Ls) + PAD * 4 * (np.abs(cn) + A / c2)) * GROW
        return Aff(cn + 0j, a, e)

    def sqrt_pos(self):
        c = self.c.real; A = _A(self.a); L = c - A - self.e
        ok = L > 0
        Ls = np.where(ok, L, np.nan)
        sc = np.sqrt(np.where(c > 0, c, np.nan))
        a = self.a / (2 * sc)[:, None]
        e = (self.e / (2 * sc) + (A + self.e) ** 2 / (8 * Ls ** 1.5) + PAD * 4 * (sc + A / sc)) * GROW
        return Aff(sc + 0j, a, e)

    # ---- tests ----
    def excludes_zero(self):
        """True where 0 is certainly not in the represented set."""
        A = _A(self.a)
        t1 = np.abs(self.c) > (A + self.e) * (1 + 1e-12)
        t2 = np.abs(self.c.real) > (np.abs(self.a.real).sum(-1) + self.e) * (1 + 1e-12)
        t3 = np.abs(self.c.imag) > (np.abs(self.a.imag).sum(-1) + self.e) * (1 + 1e-12)
        return t1 | t2 | t3


def stack_take(forms, idx):
    return [f.take(idx) for f in forms]
