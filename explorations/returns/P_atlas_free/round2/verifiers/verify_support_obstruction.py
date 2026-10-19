#!/usr/bin/env python3
"""Exact finite arithmetic for SUPPORT_AND_COMPLETION.md; standard library only."""

from dataclasses import dataclass
from fractions import Fraction
from itertools import combinations, product
import json
from pathlib import Path


@dataclass(frozen=True)
class Qomega:
    """a+b*omega in Q(omega), omega^2+omega+1=0."""

    a: Fraction = Fraction(0)
    b: Fraction = Fraction(0)

    @staticmethod
    def coerce(value):
        return value if isinstance(value, Qomega) else Qomega(Fraction(value))

    def __add__(self, other):
        other = self.coerce(other)
        return Qomega(self.a + other.a, self.b + other.b)

    __radd__ = __add__

    def __neg__(self):
        return Qomega(-self.a, -self.b)

    def __sub__(self, other):
        return self + -self.coerce(other)

    def __rsub__(self, other):
        return self.coerce(other) + -self

    def __mul__(self, other):
        other = self.coerce(other)
        return Qomega(
            self.a * other.a - self.b * other.b,
            self.a * other.b + self.b * other.a - self.b * other.b,
        )

    __rmul__ = __mul__

    def conjugate(self):
        return Qomega(self.a - self.b, -self.b)

    def abs2(self):
        value = self * self.conjugate()
        assert value.b == 0
        return value.a


ZERO = Qomega()
ONE = Qomega(Fraction(1))
OMEGA = Qomega(Fraction(0), Fraction(1))


def inner(a, b):
    return sum((x.conjugate() * y for x, y in zip(a, b)), ZERO)


def outer(a):
    return [[x * y.conjugate() for y in a] for x in a]


def add(a, b):
    return [[x + y for x, y in zip(ar, br)] for ar, br in zip(a, b)]


def gram_from_columns(columns):
    result = [[ZERO for _ in range(3)] for _ in range(3)]
    for col in columns:
        result = add(result, outer(col))
    return result


def determinant3(a):
    return (
        a[0][0] * (a[1][1] * a[2][2] - a[1][2] * a[2][1])
        - a[0][1] * (a[1][0] * a[2][2] - a[1][2] * a[2][0])
        + a[0][2] * (a[1][0] * a[2][1] - a[1][1] * a[2][0])
    )


def main():
    if not __debug__:
        raise SystemExit("Run without -O; assertions are certificate checks.")
    assert ONE + OMEGA + OMEGA * OMEGA == ZERO
    assert OMEGA * OMEGA * OMEGA == ONE
    e = [ONE, ONE, ONE]
    u = [ONE, OMEGA, OMEGA * OMEGA]
    v = [x.conjugate() for x in u]
    lines = [e, u, v]
    for i in range(3):
        for j in range(3):
            assert inner(lines[i], lines[j]) == Qomega.coerce(3 if i == j else 0)
    assert [a * b for a, b in zip(u, u)] == v
    assert [a * b for a, b in zip(u, v)] == e
    assert [a * b for a, b in zip(v, v)] == u

    six_identity = [[Qomega.coerce(6 if i == j else 0) for j in range(3)] for i in range(3)]
    patterns_checked = 0
    rejected_rank_one = 0
    for labels_b in product((1, 2), repeat=3):
        counts = [labels_b.count(j) for j in range(3)]
        eigenvalues_b = [3 * count for count in counts]
        if max(eigenvalues_b) > 6:
            assert sorted(counts[1:]) == [0, 3]
            rejected_rank_one += 1
            continue
        assert sorted(counts[1:]) == [1, 2]
        twice = 1 if counts[1] == 2 else 2
        once = 3 - twice
        columns_b = [lines[j] for j in labels_b]
        bb = gram_from_columns(columns_b)
        aa_required = [[six_identity[i][j] - bb[i][j] for j in range(3)] for i in range(3)]
        assert all(inner(lines[0], col) == ZERO for col in columns_b)

        # A's columns must lie on e or the singly used B line. Check every
        # possible assignment: exactly two e columns and one other work.
        accepted_a = 0
        for labels_a in product((0, once), repeat=3):
            columns_a = [lines[j] for j in labels_a]
            assert all(inner(lines[twice], col) == ZERO for col in columns_a)
            match = gram_from_columns(columns_a) == aa_required
            assert match == (labels_a.count(0) == 2)
            if not match:
                continue
            accepted_a += 1
            transformed = [inner(col, e) for col in columns_a + columns_b]
            assert sorted(x.abs2() for x in transformed) == [0, 0, 0, 0, 9, 9]
            # The unitary transform divides raw squared amplitudes by six.
            assert sorted(x.abs2() / 6 for x in transformed) == [0, 0, 0, 0, Fraction(3, 2), Fraction(3, 2)]
            patterns_checked += 1
        assert accepted_a == 3
    assert rejected_rank_one == 2
    assert patterns_checked == 18

    tetrahedron = [(1, 1, 1), (1, -1, -1), (-1, 1, -1), (-1, -1, 1)]
    for i, j in product(range(4), repeat=2):
        assert sum(a * b for a, b in zip(tetrahedron[i], tetrahedron[j])) == (3 if i == j else -1)
    assert [sum(t[j] for t in tetrahedron) for j in range(3)] == [0, 0, 0]
    tetrahedron_determinants = [determinant3([tetrahedron[j] for j in ids]) for ids in combinations(range(4), 3)]
    assert all(abs(d) == 4 for d in tetrahedron_determinants)
    receipt = {
        "status": "PASS",
        "arithmetic": "exact Q(omega), standard library",
        "admissible_B_patterns": 6,
        "rank_one_B_patterns_rejected": rejected_rank_one,
        "complementary_A_B_patterns_checked": patterns_checked,
        "unitary_squared_support_amplitudes": ["0", "0", "0", "0", "3/2", "3/2"],
        "tetrahedron_three_row_determinants": tetrahedron_determinants,
        "scope": "finite Fourier-line arithmetic; analytic proof is in SUPPORT_AND_COMPLETION.md",
    }
    target = (Path(__file__).resolve().parents[1] / "certificates" / "SUPPORT_RECEIPT.json")
    target.write_text(json.dumps(receipt, indent=2) + "\n")
    print(json.dumps(receipt, indent=2))


if __name__ == "__main__":
    main()
