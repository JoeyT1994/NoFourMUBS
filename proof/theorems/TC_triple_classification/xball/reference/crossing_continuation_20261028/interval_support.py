"""Radian-phase MUB triple kernels and rigorous scalar Taylor exclusion.

The exclusion and tube routines use only the Python standard library and
directed Decimal interval arithmetic. Numerical witness discovery imports
NumPy lazily. A numerical proposal is never itself reported as a certificate.
See CONTINUATION.md for the proofs, gauge convention, and dependencies.
"""
from decimal import Decimal, localcontext, ROUND_FLOOR, ROUND_CEILING
from math import factorial

PRECISION = 80
HESSIAN_BOUND = 60


def dec(x):
    if isinstance(x, Decimal):
        return x
    if isinstance(x, float):
        return Decimal.from_float(x)
    return Decimal(str(x))


def rounded(op, upward=False):
    with localcontext() as ctx:
        ctx.prec = PRECISION
        ctx.rounding = ROUND_CEILING if upward else ROUND_FLOOR
        return +op()


class Interval:
    def __init__(self, lo=0, hi=None):
        self.lo = dec(lo)
        self.hi = self.lo if hi is None else dec(hi)
        if self.lo > self.hi:
            raise ValueError('reversed interval')

    @staticmethod
    def coerce(x):
        return x if isinstance(x, Interval) else Interval(x)

    def __add__(self, other):
        b = self.coerce(other)
        return Interval(rounded(lambda: self.lo + b.lo),
                        rounded(lambda: self.hi + b.hi, True))

    __radd__ = __add__

    def __neg__(self):
        # copy_negate is exact and independent of the ambient Decimal context.
        return Interval(self.hi.copy_negate(), self.lo.copy_negate())

    def __sub__(self, other):
        return self + (-self.coerce(other))

    def __rsub__(self, other):
        return self.coerce(other) - self

    def __mul__(self, other):
        b = self.coerce(other)
        pairs = [(x, y) for x in [self.lo, self.hi] for y in [b.lo, b.hi]]
        return Interval(min(rounded(lambda x=x, y=y: x*y) for x,y in pairs),
                        max(rounded(lambda x=x, y=y: x*y, True) for x,y in pairs))

    __rmul__ = __mul__

    def __truediv__(self, positive_scalar):
        b = dec(positive_scalar)
        if b <= 0:
            raise ValueError('only division by a positive scalar is needed')
        return Interval(rounded(lambda: self.lo/b), rounded(lambda: self.hi/b, True))

    def abs_upper(self):
        return max(self.lo.copy_abs(), self.hi.copy_abs())

    def abs_lower(self):
        if self.lo <= 0 <= self.hi:
            return Decimal(0)
        return min(self.lo.copy_abs(), self.hi.copy_abs())


def sincos_point(x):
    """Enclose sin(x), cos(x) for one EXACT decimal/rational-radian point.

    Taylor degrees 161/160, derivative bound 1, interval-rounded arithmetic.
    The absolute input limit avoids inefficient extreme-argument evaluation.
    No floating-point trigonometric library is part of the certificate.
    """
    x = dec(x)
    if x.copy_abs() > 16:
        raise ValueError('sincos_point requires |x| <= 16 radians')
    xx = Interval(x)
    x2 = xx*xx
    st, ct = xx, Interval(1)
    ss, cc = st, ct
    for k in range(1, 81):
        st = -(st*x2)/(2*k*(2*k+1))
        ct = -(ct*x2)/((2*k-1)*(2*k))
        ss, cc = ss+st, cc+ct
    # Cosine remainder after degree 160; also bounds the sine remainder
    # after degree 161 because |x|/(162) <= 16/162 < 1.
    # Use interval multiplication rather than Decimal.power, whose C-runtime
    # guarantee is weaker than correct rounding for every possible input.
    power, base, exponent = Interval(1), Interval(x.copy_abs()), 161
    while exponent:
        if exponent & 1:
            power = power*base
        exponent >>= 1
        if exponent:
            base = base*base
    rem = (power/Decimal(factorial(161))).hi
    padding = Interval(rem.copy_negate(), rem)
    return ss+padding, cc+padding


def cadd(a,b):
    return a[0]+b[0], a[1]+b[1]


def cmul(a,b):
    return a[0]*b[0]-a[1]*b[1], a[0]*b[1]+a[1]*b[0]


def conj(a):
    return a[0], -a[1]


