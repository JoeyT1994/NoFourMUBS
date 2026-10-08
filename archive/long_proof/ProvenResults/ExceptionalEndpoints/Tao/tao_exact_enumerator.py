#!/usr/bin/env python3
"""Exact finite verification of the Tao common-unbiased set and overlap graph.

The field is Q(omega,eta), with
    omega^2+omega+1=0,
    2 eta^2-eta+2=0.
Elements use the basis 1, omega, eta, omega*eta.
"""

from dataclasses import dataclass
from fractions import Fraction as F
from itertools import product, combinations
import hashlib
import json


@dataclass(frozen=True)
class K:
    a: F = F(0)
    b: F = F(0)
    c: F = F(0)
    d: F = F(0)

    def __add__(self, other):
        other = lift(other)
        return K(self.a + other.a, self.b + other.b,
                 self.c + other.c, self.d + other.d)

    __radd__ = __add__

    def __neg__(self):
        return K(-self.a, -self.b, -self.c, -self.d)

    def __sub__(self, other):
        return self + (-lift(other))

    def __rsub__(self, other):
        return lift(other) - self

    def __mul__(self, other):
        other = lift(other)
        left = [[self.a, self.c], [self.b, self.d]]
        right = [[other.a, other.c], [other.b, other.d]]
        raw = [[F(0) for _ in range(3)] for _ in range(3)]
        for iw in range(2):
            for ie in range(2):
                for jw in range(2):
                    for je in range(2):
                        raw[iw + jw][ie + je] += left[iw][ie] * right[jw][je]
        # omega^2=-1-omega and eta^2=-1+eta/2.
        for iw in range(2, -1, -1):
            value = raw[iw][2]
            raw[iw][2] = 0
            raw[iw][0] -= value
            raw[iw][1] += value / 2
        for ie in range(2):
            value = raw[2][ie]
            raw[2][ie] = 0
            raw[0][ie] -= value
            raw[1][ie] -= value
        return K(raw[0][0], raw[1][0], raw[0][1], raw[1][1])

    __rmul__ = __mul__

    def __pow__(self, exponent):
        if exponent < 0:
            return self.conj() ** (-exponent)  # only used for unit generators
        result = ONE
        base = self
        while exponent:
            if exponent & 1:
                result *= base
            base *= base
            exponent //= 2
        return result

    def conj(self):
        # omega_bar=-1-omega, eta_bar=1/2-eta, and
        # (omega*eta)_bar=-1/2-omega/2+eta+omega*eta.
        return K(
            self.a - self.b + self.c / 2 - self.d / 2,
            -self.b - self.d / 2,
            -self.c + self.d,
            self.d,
        )

    def encode(self):
        return tuple(str(value) for value in (self.a, self.b, self.c, self.d))


def lift(value):
    return value if isinstance(value, K) else K(F(value))


ZERO = K()
ONE = K(F(1))
OMEGA = K(F(0), F(1))
ETA = K(F(0), F(0), F(1))

TAO = [
    [0, 0, 0, 0, 0, 0],
    [0, 0, 1, 1, 2, 2],
    [0, 1, 0, 2, 2, 1],
    [0, 1, 2, 0, 1, 2],
    [0, 2, 2, 1, 0, 1],
    [0, 2, 1, 2, 1, 0],
]


def dot(left, right):
    return sum((a.conj() * b for a, b in zip(left, right)), ZERO)


def common_unbiased(vector):
    six = lift(6)
    for row in TAO:
        overlap = sum((OMEGA ** (-power) * value
                       for power, value in zip(row, vector)), ZERO)
        if overlap * overlap.conj() != six:
            return False
    return True


def main():
    eta_bar = ETA.conj()
    alphabet = tuple(base * OMEGA**power
                     for base in (ONE, ETA, eta_bar)
                     for power in range(3))
    assert len(set(alphabet)) == 9
    assert all(value * value.conj() == ONE for value in alphabet)
    coordinate_polynomial = lambda z: ((z**3 - 1)
                                       * (8 * z**6 + 11 * z**3 + 8))
    assert all(coordinate_polynomial(value) == ZERO for value in alphabet)

    roots = []
    for tail in product(alphabet, repeat=5):
        vector = (ONE,) + tail
        if common_unbiased(vector):
            roots.append(vector)

    orthogonal_pairs = []
    norm_squares = set()
    for i, j in combinations(range(len(roots)), 2):
        overlap = dot(roots[i], roots[j])
        norm_square = overlap * overlap.conj()
        norm_squares.add(norm_square)
        if overlap == ZERO:
            orthogonal_pairs.append((i, j))

    payload = {
        "alphabet": [value.encode() for value in alphabet],
        "roots": [[value.encode() for value in vector] for vector in roots],
        "orthogonal_pairs": orthogonal_pairs,
        "norm_squares": sorted(value.encode() for value in norm_squares),
    }
    digest = hashlib.sha256(json.dumps(payload, sort_keys=True).encode()).hexdigest()
    print("alphabet", len(alphabet))
    print("candidate_vectors", len(alphabet) ** 5)
    print("common_unbiased_vectors", len(roots))
    print("orthogonal_pairs", len(orthogonal_pairs))
    print("distinct_pair_norm_squares", len(norm_squares))
    print("certificate_sha256", digest)
    if len(roots) != 90 or orthogonal_pairs:
        raise AssertionError("Tao exact enumeration did not have the expected result")
    print("TAO EXACT ENUMERATION PASSED")


if __name__ == "__main__":
    main()
