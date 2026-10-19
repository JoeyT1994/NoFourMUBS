#!/usr/bin/env python3
"""Exact integer-polynomial checks for GEOMETRIC_STEP.md; standard library only."""

from itertools import permutations


class Poly:
    n = 0

    def __init__(self, x=0):
        if isinstance(x, dict):
            self.d = {m: int(c) for m, c in x.items() if c}
        elif isinstance(x, Poly):
            self.d = x.d.copy()
        else:
            assert isinstance(x, int)
            self.d = {(0,) * self.n: x} if x else {}

    @classmethod
    def variables(cls, n):
        cls.n = n
        return tuple(cls({tuple(int(i == j) for i in range(n)): 1}) for j in range(n))

    def __add__(self, b):
        b = Poly(b)
        d = self.d.copy()
        for m, c in b.d.items():
            d[m] = d.get(m, 0) + c
        return Poly(d)

    __radd__ = __add__

    def __neg__(self):
        return Poly({m: -c for m, c in self.d.items()})

    def __sub__(self, b):
        return self + -Poly(b)

    def __rsub__(self, b):
        return Poly(b) + -self

    def __mul__(self, b):
        b = Poly(b)
        d = {}
        for m, c in self.d.items():
            for k, e in b.d.items():
                mk = tuple(a + z for a, z in zip(m, k))
                d[mk] = d.get(mk, 0) + c * e
        return Poly(d)

    __rmul__ = __mul__

    def __pow__(self, e):
        assert isinstance(e, int) and e >= 0
        a, b = Poly(1), self
        while e:
            if e & 1:
                a = a * b
            b = b * b
            e >>= 1
        return a


def equal(a, b, label):
    difference = Poly(a) - Poly(b)
    assert not difference.d, (label, difference.d)
    print("PASS", label)


def main():
    if not __debug__:
        raise SystemExit("Run without -O: assertions are mandatory.")
    x0, x1, x2, y0, y1, y2 = Poly.variables(6)
    x, y = (x0, x1, x2), (y0, y1, y2)
    matrix = ((Poly(1),) * 3, x, y)
    permanent = sum(
        (matrix[0][p[0]] * matrix[1][p[1]] * matrix[2][p[2]]
         for p in permutations(range(3))), Poly(0)
    )
    equal(sum(x) * sum(y) - permanent, sum(x[j] * y[j] for j in range(3)),
          "G1: permanent removes the three diagonal products")

    a, b, c, d = Poly.variables(4)
    equal((c - a) ** 2 + (d + b) ** 2,
          a ** 2 + b ** 2 + c ** 2 + d ** 2 - 2 * (a * c - b * d),
          "G2: |y-conj(x)|^2 = |x|^2+|y|^2-2 Re(xy)")

    (z,) = Poly.variables(1)
    m = z + 3
    Z = (1 - z) * m
    P0 = (3 - Z) * m
    L0 = 3 * z ** 2 + (9 - Z) * z
    factor = z * (z + 2) * (z + 3)
    equal(P0, factor, "G3: P0 = z(z+2)(z+3)")
    equal(L0, factor, "G3: L0 = z(z+2)(z+3)")
    equal(m - z, 3, "G1 saturation: st-pi = 3")

    T, z = Poly.variables(2)
    p = 9 - z ** 2
    W = z ** 2 * (z + 3) ** 2
    K = (1 - z) * (z + 3) ** 3
    equal(T ** 3 - p * T ** 2 + (W + K) * T - K,
          (T - z - 3) ** 2 * (T - (1 - z) * (z + 3)),
          "modulus cubic after the assumed Z1 conclusion")

    a, z = Poly.variables(2)
    Z = 9 - z ** 2 - 2 * a
    P0 = a * (3 - Z)
    L0 = z * (3 * z + 9 - Z)
    equal(P0 - L0, (a - z - 3) * (2 * a + z ** 2),
          "repeated modulus: P0-L0")
    equal(P0 + L0, 2 * a ** 2 + (z ** 2 + 2 * z - 6) * a + z ** 2 * (z + 3),
          "repeated modulus: P0+L0")
    equal(a ** 2 + 2 * a * Z - a ** 2 * Z - z ** 2 * (z + 3) ** 2,
          (a - z - 3) * (P0 + L0), "repeated modulus: W relation")
    print("All 9 exact integer-polynomial identities passed.")


if __name__ == "__main__":
    main()
