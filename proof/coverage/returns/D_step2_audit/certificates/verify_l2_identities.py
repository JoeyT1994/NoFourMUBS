#!/usr/bin/env python3
"""Exact, independent algebra for STEP2_BLUEPRINT.md, Section 7 (L2).

The three Laurent identities and nine Fourier identities are those stated in
the supplied MinimalConstruction/Proofs/SIDE_FIBER.md.  This verifier is an
independent implementation and imports none of the dossier's code.

Arithmetic is in
  Q[x0^+-1,x1^+-1,x2^+-1,y0^+-1,y1^+-1,y2^+-1,omega]
      / (omega^2 + omega + 1).
Every coefficient is fractions.Fraction.  Conjugation sends all six phase
variables to their inverses and sends omega to omega^-1.  Acceptance requires
the full sparse Laurent residual to be empty.  No numerical evaluation, guard
sampling, algebraic-existence assumption, or Python assert is used.

Scope: identities on arbitrary existing normalized phase sides (1;x;y).
This script does NOT prove side existence at arbitrary Gram/seed data,
exhaustion, matched flatness, global reach, or a no-four-MUB theorem.
"""

from fractions import Fraction
from hashlib import sha256
from itertools import permutations
from math import lcm
from pathlib import Path
import json
import sys


ZERO_EXP = (0,) * 7


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


class Laurent:
    """Sparse rational Laurent polynomial with omega degree reduced to 0 or 1."""

    def __init__(self, terms=None):
        out = {}
        for exponent, coefficient in (terms or {}).items():
            require(len(exponent) == 7, "wrong Laurent exponent dimension")
            a = Fraction(coefficient)
            if not a:
                continue
            e = exponent[-1] % 3
            head = tuple(exponent[:-1])
            additions = ((head + (e,), a),) if e < 2 else (
                (head + (0,), -a), (head + (1,), -a))
            for key, value in additions:
                out[key] = out.get(key, Fraction(0)) + value
        self.terms = {key: value for key, value in out.items() if value}

    @staticmethod
    def coerce(value):
        return value if isinstance(value, Laurent) else Laurent({ZERO_EXP: Fraction(value)})

    @staticmethod
    def variable(index):
        require(0 <= index < 7, "variable index out of range")
        exponent = [0] * 7
        exponent[index] = 1
        return Laurent({tuple(exponent): 1})

    def __add__(self, other):
        other = Laurent.coerce(other)
        out = dict(self.terms)
        for key, value in other.terms.items():
            out[key] = out.get(key, Fraction(0)) + value
        return Laurent(out)

    __radd__ = __add__

    def __neg__(self):
        return Laurent({key: -value for key, value in self.terms.items()})

    def __sub__(self, other):
        return self + (-Laurent.coerce(other))

    def __rsub__(self, other):
        return Laurent.coerce(other) - self

    def __mul__(self, other):
        other = Laurent.coerce(other)
        out = {}
        for a, ca in self.terms.items():
            for b, cb in other.terms.items():
                exponent = tuple(x + y for x, y in zip(a, b))
                out[exponent] = out.get(exponent, Fraction(0)) + ca * cb
        return Laurent(out)

    __rmul__ = __mul__

    def __truediv__(self, other):
        denominator = Fraction(other)
        require(denominator != 0, "division by zero rational")
        return Laurent({key: value / denominator for key, value in self.terms.items()})

    def __pow__(self, exponent):
        require(isinstance(exponent, int) and exponent >= 0, "only nonnegative polynomial powers")
        base, result = self, Laurent.coerce(1)
        n = exponent
        while n:
            if n & 1:
                result = result * base
            base = base * base
            n //= 2
        return result

    def bar(self):
        # Negation of the exponent vector is injective before cyclotomic reduction.
        return Laurent({tuple(-x for x in key): value for key, value in self.terms.items()})

    def norm_sq(self):
        return self * self.bar()

    def canonical_rows(self):
        return [[list(key), value.numerator, value.denominator]
                for key, value in sorted(self.terms.items())]


def product(values):
    result = Laurent.coerce(1)
    for value in values:
        result = result * value
    return result


def determinant(matrix):
    result = Laurent.coerce(0)
    for permutation in permutations(range(3)):
        sign = (-1) ** sum(permutation[i] > permutation[j]
                           for i in range(3) for j in range(i + 1, 3))
        result += sign * product(matrix[i][permutation[i]] for i in range(3))
    return result


def permanent(matrix):
    return sum((product(matrix[i][permutation[i]] for i in range(3))
                for permutation in permutations(range(3))), Laurent.coerce(0))


def check_identity(name, lhs, rhs, records):
    lhs, rhs = Laurent.coerce(lhs), Laurent.coerce(rhs)
    residual = lhs - rhs
    if residual.terms:
        first = residual.canonical_rows()[:8]
        raise RuntimeError(f"{name}: {len(residual.terms)} nonzero Laurent terms; first={first}")
    require(lhs.terms == rhs.terms, f"{name}: noncanonical equality")
    denominators = [coefficient.denominator for coefficient in lhs.terms.values()]
    common_denominator = lcm(*denominators) if denominators else 1
    integer_rows = [[list(exponent), int(coefficient * common_denominator)]
                    for exponent, coefficient in sorted(lhs.terms.items())]
    records.append({
        "identity": name,
        "status": "PASS",
        "residual_monomials": 0,
        "common_normal_form_monomials": len(lhs.terms),
        "clearing_denominator": common_denominator,
        "max_abs_cleared_coefficient": max((abs(row[1]) for row in integer_rows), default=0),
        "integer_normal_form_sha256": sha256(
            json.dumps(integer_rows, separators=(",", ":")).encode()).hexdigest(),
    })


def main():
    one = Laurent.coerce(1)
    x = [Laurent.variable(i) for i in range(3)]
    y = [Laurent.variable(i + 3) for i in range(3)]
    omega = Laurent.variable(6)
    require(not (omega ** 2 + omega + one).terms, "cyclotomic relation")
    require(not (omega ** 3 - one).terms, "primitive cubic unit relation")
    require(not (omega.bar() - omega ** 2).terms, "cubic conjugation")
    for phase in x + y:
        require(not (phase.norm_sq() - one).terms, "phase inverse relation")
        require(phase.bar().bar().terms == phase.terms, "phase involution")

    side = [[one, one, one], x, y]
    h, pi = determinant(side), permanent(side)
    u, v = product(x), product(y)
    s, t = sum(x, Laurent.coerce(0)), sum(y, Laurent.coerce(0))
    r = sum((yj * xj.bar() for xj, yj in zip(x, y)), Laurent.coerce(0))
    X, Y, Z = s.norm_sq(), t.norm_sq(), r.norm_sq()
    P0 = r * s ** 2 + r.bar() * t ** 2 + (3 - Z) * s * t
    P1 = t * s.bar() ** 2 + r ** 2 * t.bar() + (3 - Y) * r * s.bar()
    P2 = s * t.bar() ** 2 + r.bar() ** 2 * s.bar() + (3 - X) * r.bar() * t.bar()
    c0, c1, c2 = 9 - Z, 9 - Y, 9 - X
    records = []
    check_identity("Laurent-0: h^2=uv c0 bar(pi)-uv bar(P0)",
                   h ** 2, u * v * c0 * pi.bar() - u * v * P0.bar(), records)
    check_identity("Laurent-1: h^2=uv c1 bar(pi)-v bar(P1)",
                   h ** 2, u * v * c1 * pi.bar() - v * P1.bar(), records)
    check_identity("Laurent-2: h^2=uv c2 bar(pi)-u bar(P2)",
                   h ** 2, u * v * c2 * pi.bar() - u * P2.bar(), records)

    mu, nu = s / 3, t / 3

    def fourier_coefficient(row, sign):
        return sum((row[j] * omega ** ((-sign * j) % 3) for j in range(3)),
                   Laurent.coerce(0)) / 3

    A, B = fourier_coefficient(x, 1), fourier_coefficient(x, -1)
    C, D = fourier_coefficient(y, 1), fourier_coefficient(y, -1)
    # Verify the convention before using the Fourier coefficient identities.
    for j in range(3):
        require(not (x[j] - mu - A * omega ** j - B * omega ** ((-j) % 3)).terms,
                f"x Fourier inversion at j={j}")
        require(not (y[j] - nu - C * omega ** j - D * omega ** ((-j) % 3)).terms,
                f"y Fourier inversion at j={j}")

    alpha = mu ** 2 - u * mu.bar()
    gamma = 2 * mu * nu - pi / 3
    n = 1 - mu.norm_sq()
    k = r / 3 - nu * mu.bar()
    delta = A * D - B * C
    check_identity("Fourier-1: alpha=A B", alpha, A * B, records)
    check_identity("Fourier-2: gamma=A D+B C", gamma, A * D + B * C, records)
    check_identity("Fourier-3: n=|A|^2+|B|^2", n, A.norm_sq() + B.norm_sq(), records)
    check_identity("Fourier-4: k=C bar(A)+D bar(B)", k, C * A.bar() + D * B.bar(), records)
    check_identity("Fourier-5: h^2=-27 delta^2", h ** 2, -27 * delta ** 2, records)
    check_identity("Fourier-6: n gamma-2 alpha k=(|A|^2-|B|^2)delta",
                   n * gamma - 2 * alpha * k, (A.norm_sq() - B.norm_sq()) * delta, records)
    check_identity("Fourier-7: A^3=u |A|^2+mu A B",
                   A ** 3, u * A.norm_sq() + mu * A * B, records)
    check_identity("Fourier-8: n C=A k-bar(B)delta",
                   n * C, A * k - B.bar() * delta, records)
    check_identity("Fourier-9: n D=B k+bar(A)delta",
                   n * D, B * k + A.bar() * delta, records)
    require(len(records) == 12, "identity inventory mismatch")
    receipt = {
        "status": "PASS",
        "arithmetic": "sparse Laurent polynomials with exact Fraction coefficients modulo omega^2+omega+1",
        "phase_variables": ["x0", "x1", "x2", "y0", "y1", "y2"],
        "normalized_side": "[[1,1,1],[x0,x1,x2],[y0,y1,y2]]",
        "source_statement": "STEP2_BLUEPRINT.md Section 7; handoff MinimalConstruction/Proofs/SIDE_FIBER.md Section 1",
        "verifier_sha256": sha256(Path(__file__).read_bytes()).hexdigest(),
        "three_Laurent_identities": 3,
        "nine_Fourier_identities": 9,
        "Fourier_inversion_checks": 6,
        "identities": records,
        "scope": "identities on existing normalized phase sides only; no existence, exhaustion, matched-flatness, or global-reach theorem",
    }
    print(json.dumps(receipt, indent=2))


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        print("FAIL: " + str(error), file=sys.stderr)
        raise
