"""Exact Q(i,sqrt(3)) arithmetic for the P return. Standard library only."""
from fractions import Fraction
from itertools import permutations


class Q3:
    __slots__ = ("c",)

    def __init__(self, value=0):
        if isinstance(value, Q3):
            self.c = value.c
        elif isinstance(value, (tuple, list)):
            assert len(value) == 4
            self.c = tuple(Fraction(x) for x in value)
        else:
            self.c = (Fraction(value), Fraction(0), Fraction(0), Fraction(0))

    def __add__(self, other):
        other = Q3(other)
        return Q3(tuple(a+b for a, b in zip(self.c, other.c)))

    __radd__ = __add__

    def __neg__(self):
        return Q3(tuple(-a for a in self.c))

    def __sub__(self, other):
        return self + (-Q3(other))

    def __rsub__(self, other):
        return Q3(other) - self

    def __mul__(self, other):
        other = Q3(other)
        out = [Fraction(0)] * 4
        for a, x in enumerate(self.c):
            for b, y in enumerate(other.c):
                common = a & b
                factor = (-1 if common & 1 else 1) * (3 if common & 2 else 1)
                out[a ^ b] += factor*x*y
        return Q3(out)

    __rmul__ = __mul__

    def __truediv__(self, other):
        # Only rational divisors are needed by this certificate.
        other = Fraction(other)
        return Q3(tuple(x/other for x in self.c))

    def __pow__(self, power):
        assert isinstance(power, int) and power >= 0
        out, base = Q3(1), self
        while power:
            if power & 1:
                out *= base
            base *= base
            power //= 2
        return out

    def conj(self):
        return Q3((self.c[0], -self.c[1], self.c[2], -self.c[3]))

    def abs2(self):
        return self*self.conj()

    def __eq__(self, other):
        return self.c == Q3(other).c

    def __bool__(self):
        return any(self.c)

    def serial(self):
        return [str(a) for a in self.c]


I = Q3((0, 1, 0, 0))
SQRT3 = Q3((0, 0, 1, 0))
OMEGA = (I*SQRT3 - 1)/2


def adjoint(a):
    return [[x.conj() for x in col] for col in zip(*a)]


def multiply(a, b):
    return [[sum((x*y for x, y in zip(row, col)), Q3())
             for col in zip(*b)] for row in a]


def submatrix(a, rows, cols):
    return [[a[i][j] for j in cols] for i in rows]


def determinant(a):
    n = len(a)
    total = Q3()
    for p in permutations(range(n)):
        sign = (-1)**sum(p[i] > p[j] for i in range(n) for j in range(i+1, n))
        term = Q3(sign)
        for i in range(n):
            term *= a[i][p[i]]
        total += term
    return total


def is_hadamard(a):
    n = len(a)
    return (all(x.abs2() == 1 for row in a for x in row)
            and multiply(a, adjoint(a)) == [[Q3(n if i == j else 0)
                                            for j in range(n)] for i in range(n)])


def fourier(z, w):
    d = [Q3(1), Q3(z), Q3(w)]
    return [[OMEGA**((i % 3)*(j % 3)) * (d[j % 3] if i >= 3 else 1)
             * (-1 if i >= 3 and j >= 3 else 1)
             for j in range(6)] for i in range(6)]
