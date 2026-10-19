#!/usr/bin/env python3
"""Exact arithmetic gates for FIVE_COLUMN_ISOMORPHISM.md.

Standard library only. The universal theorem is proved in the report;
this gate checks its constant matrix and coefficient certificates and
examples over nonreduced rings. It is not a global MUB certificate.
"""

from fractions import Fraction as Q
import hashlib
import json
from pathlib import Path
import sys


if sys.flags.optimize:
    raise SystemExit("Run without -O: optimized execution is not supported.")


def require(condition, message):
    if not condition:
        raise ArithmeticError(message)


def transpose(a):
    return [list(row) for row in zip(*a)]


def matmul(a, b):
    return [[sum(a[i][k] * b[k][j] for k in range(len(b)))
             for j in range(len(b[0]))] for i in range(len(a))]


def identity(n, one=Q(1), zero=Q(0)):
    return [[one if i == j else zero for j in range(n)] for i in range(n)]


def determinant(a):
    a = [row[:] for row in a]
    n, out = len(a), Q(1)
    for j in range(n):
        pivot = next((i for i in range(j, n) if a[i][j]), None)
        if pivot is None:
            return Q(0)
        if pivot != j:
            a[pivot], a[j] = a[j], a[pivot]
            out = -out
        d = a[j][j]
        out *= d
        for i in range(j + 1, n):
            c = a[i][j] / d
            for k in range(j, n):
                a[i][k] -= c * a[j][k]
    return out


def block_gate(n):
    m = n - 1
    d = [[Q(n if i == j else 0) if i < m and j < m else Q(1)
          for j in range(n)] for i in range(n)]
    di = [[Q((1 if i == j else 0) + 1, n) if i < m and j < m
           else Q(n if i == j == m else -1)
           for j in range(n)] for i in range(n)]
    require(matmul(d, di) == identity(n), f"left block inverse failed n={n}")
    require(matmul(di, d) == identity(n), f"right block inverse failed n={n}")
    require(determinant(d) == n ** (n - 2), f"block determinant failed n={n}")

    # The coefficient of each formal outer product A_.i B_j. in
    # XW^T/n +(ne0-X1)(ne0-W1)^T/n must be D^{-1}_{ij}.
    signs = [Q(-1)] * m + [Q(n)]
    expanded = [[signs[i] * signs[j] / n
                 + (Q(1, n) if i == j and i < m else Q(0))
                 for j in range(n)] for i in range(n)]
    require(expanded == di, f"outer-product coefficient identity failed n={n}")


def mixed_ideal_gate(n):
    m = n - 1
    count = m * m
    zero = [0] * count
    errors = [[[0] * count for _ in range(n)] for _ in range(n)]
    for a in range(m):
        for b in range(m):
            errors[a][b][a * m + b] = 1
            errors[a][m][a * m + b] = -1
            errors[m][b][a * m + b] = -1
            errors[m][m][a * m + b] = 1
    for a in range(n):
        require([sum(errors[a][b][k] for b in range(n)) for k in range(count)]
                == zero, "mixed row coefficient identity failed")
    for b in range(n):
        require([sum(errors[a][b][k] for a in range(n)) for k in range(count)]
                == zero, "mixed column coefficient identity failed")


class Dual:
    """F_p[epsilon]/epsilon^2, with p fixed for a computation."""
    modulus = 13

    def __init__(self, a=0, b=0):
        if isinstance(a, Dual):
            self.a, self.b = a.a, a.b
        else:
            self.a, self.b = a % self.modulus, b % self.modulus

    def __add__(self, other):
        other = Dual(other)
        return Dual(self.a + other.a, self.b + other.b)

    __radd__ = __add__

    def __neg__(self):
        return Dual(-self.a, -self.b)

    def __sub__(self, other):
        return self + -Dual(other)

    def __rsub__(self, other):
        return Dual(other) + -self

    def __mul__(self, other):
        other = Dual(other)
        return Dual(self.a * other.a, self.a * other.b + self.b * other.a)

    __rmul__ = __mul__

    def inverse(self):
        require(self.a != 0, "nonunit inverted in dual ring")
        inv = pow(self.a, -1, self.modulus)
        return Dual(inv, -self.b * inv * inv)

    def __truediv__(self, other):
        return self * Dual(other).inverse()

    def __pow__(self, exponent):
        if exponent < 0:
            return self.inverse() ** (-exponent)
        a, result = self, Dual(1)
        while exponent:
            if exponent & 1:
                result = result * a
            a = a * a
            exponent //= 2
        return result

    def __eq__(self, other):
        other = Dual(other)
        return (self.a, self.b) == (other.a, other.b)

    def __repr__(self):
        return f"({self.a}+{self.b}e mod {self.modulus})"


def reciprocal(a):
    return [[x.inverse() for x in row] for row in a]


def scalar(a, x):
    return [[x * y for y in row] for row in a]


def check_companion(c, k):
    n = len(c)
    wc, wk = reciprocal(c), reciprocal(k)
    expected = scalar(identity(n, Dual(1), Dual(0)), Dual(n))
    require(matmul(transpose(wc), c) == expected, "anchor reciprocal Gram failed")
    require(matmul(transpose(wk), k) == expected, "companion reciprocal Gram failed")
    t = scalar(transpose(wc), Dual(n).inverse())
    u, v = matmul(t, k), matmul(transpose(c), wk)
    require(all(u[i][j] * v[i][j] == 1 for i in range(n) for j in range(n)),
            "common-ray equations failed")
    require(all(k[0][j] == 1 for j in range(n)), "first row not dephased")


def completion_gate(c, k):
    check_companion(c, k)
    n = len(k)
    wk = reciprocal(k)
    for omit in range(n):
        keep = [a for a in range(n) if a != omit]
        x = [Dual(n if i == 0 else 0) - sum(k[i][a] for a in keep)
             for i in range(n)]
        w = [Dual(n if i == 0 else 0) - sum(wk[i][a] for a in keep)
             for i in range(n)]
        require(x == [k[i][omit] for i in range(n)], "completion x formula failed")
        require(w == [wk[i][omit] for i in range(n)], "completion w formula failed")
        require(all(x[i] * w[i] == 1 for i in range(n)), "new coordinate not unit")
        left = [[x[i] * w[j] for j in range(n)] for i in range(n)]
        right = [[Dual(n if i == j else 0)
                  - sum(k[i][a] * wk[j][a] for a in keep)
                  for j in range(n)] for i in range(n)]
        require(left == right, "rank-one complement identity failed")


def nonreduced_order_six_gate():
    Dual.modulus = 13
    omega, ii = Dual(3), Dual(5)
    require(omega ** 3 == 1 and omega != 1, "omega is not primitive cubic")
    require(ii * ii == -1, "i fixture invalid")
    labels = [(a, b) for a in range(2) for b in range(3)]
    h = [[Dual(-1) ** (a * c) * omega ** (b * d)
          for c, d in labels] for a, b in labels]
    phases = [Dual(1), omega, omega, ii, ii * omega, ii * omega]
    gauge = [Dual(1, i) for i in range(6)]
    c = [[gauge[i] * value for value in row] for i, row in enumerate(h)]
    k = [[gauge[i] * phases[i] * value for value in row] for i, row in enumerate(h)]
    require(any(value.b for row in k for value in row), "nilpotent directions missing")
    require(Dual(0, 1) != 0 and Dual(0, 1) ** 2 == 0, "fixture ring reduced")
    completion_gate(c, k)


def nonreduced_order_three_quartet_gate():
    Dual.modulus = 7
    omega = Dual(2)
    require(omega ** 3 == 1 and omega != 1, "qutrit omega invalid")
    h = [[omega ** (i * j) for j in range(3)] for i in range(3)]
    gauge = [Dual(1, i) for i in range(3)]
    c = [[gauge[i] * value for value in row] for i, row in enumerate(h)]
    k = [[gauge[i] * omega ** (i * i) * value for value in row]
         for i, row in enumerate(h)]
    ell = [[gauge[i] * omega ** (2 * i * i) * value for value in row]
           for i, row in enumerate(h)]
    completion_gate(c, k)
    completion_gate(c, ell)
    a = matmul(transpose(reciprocal(k)), ell)
    b = matmul(transpose(reciprocal(ell)), k)
    q = [[a[i][j] * b[j][i] for j in range(3)] for i in range(3)]
    require(all(value == 3 for row in q for value in row), "qutrit mixed fixture failed")
    require(all(sum(row) == 9 for row in q), "mixed row sum failed")
    require(all(sum(row) == 9 for row in transpose(q)), "mixed column sum failed")


def main():
    for n in range(2, 9):
        block_gate(n)
        mixed_ideal_gate(n)
    nonreduced_order_six_gate()
    nonreduced_order_three_quartet_gate()
    require(252 ** 5 == 1016255020032, "length arithmetic failed")
    path = Path(__file__).resolve()
    receipt = {
        "status": "PASS",
        "claims_certified": [
            "exact rational block inverse and determinant, orders 2 through 8",
            "formal outer-product coefficient identities, orders 2 through 8",
            "integer mixed-generator ideal certificates, orders 2 through 8",
            "six-column completion over F_13[epsilon]/(epsilon^2), all six omitted columns",
            "two-companion mixed equations over F_7[epsilon]/(epsilon^2), order three",
            "252^5 length-bound arithmetic",
        ],
        "scope": "Finite arithmetic checks accompanying a written universal-ring proof; no C/F/Fprime claim.",
        "verifier_sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
        "naive_max_length_one_companion": 252 ** 5,
        "naive_max_length_two_companions": 252 ** 10,
    }
    output = (path.parents[1] / "certificates" / "FIVE_COLUMNS_RECEIPT.json")
    output.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n")
    print(json.dumps(receipt, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
