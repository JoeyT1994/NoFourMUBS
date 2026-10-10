#!/usr/bin/env python3
"""Expand and verify explicit integer-polynomial certificates for L2.

Unlike verify_l2_identities.py, this companion performs NO cyclotomic reduction
during expression evaluation.  It forms each raw Laurent residual, clears
rational denominators and all negative powers, and supplies an explicit integer
polynomial Q such that P=(omega^2+omega+1)Q.  Both sides of this last equation
are then expanded and compared coefficient by coefficient.

Usage:
  python3 verify_l2_polynomial_certificates.py --write
      Generate the companion coefficient JSON, then verify it.
  python3 verify_l2_polynomial_certificates.py
      Read the saved coefficient JSON, regenerate every stated expression, and
      verify every coefficient and cofactor. Missing/changed data fail closed.

Only Python's standard library is used.  No floats or Python asserts are used.
The original quotient-ring verifier and its receipt are intentionally unchanged.
"""

from fractions import Fraction as F
from hashlib import sha256
from itertools import permutations
from math import lcm
from pathlib import Path
import json
import sys


VARIABLES = ["x0", "x1", "x2", "y0", "y1", "y2", "omega"]
ZERO = (0,) * 7
CERTIFICATE = Path(__file__).with_name("l2_polynomial_certificates.json")


def require(condition, label):
    if not condition:
        raise RuntimeError(label)


class Raw:
    """Rational Laurent polynomials in seven independent commuting variables."""

    def __init__(self, terms=None):
        self.terms = {tuple(k): F(v) for k, v in (terms or {}).items() if v}
        require(all(len(k) == 7 for k in self.terms), "raw exponent dimension")

    @staticmethod
    def coerce(p):
        return p if isinstance(p, Raw) else Raw({ZERO: F(p)})

    @staticmethod
    def var(i):
        k = [0] * 7
        k[i] = 1
        return Raw({tuple(k): 1})

    def __add__(self, q):
        q = Raw.coerce(q)
        out = dict(self.terms)
        for k, a in q.terms.items():
            out[k] = out.get(k, F(0)) + a
        return Raw(out)

    __radd__ = __add__

    def __neg__(self):
        return Raw({k: -a for k, a in self.terms.items()})

    def __sub__(self, q):
        return self + (-Raw.coerce(q))

    def __rsub__(self, q):
        return Raw.coerce(q) - self

    def __mul__(self, q):
        q = Raw.coerce(q)
        out = {}
        for k, a in self.terms.items():
            for l, b in q.terms.items():
                key = tuple(i + j for i, j in zip(k, l))
                out[key] = out.get(key, F(0)) + a * b
        return Raw(out)

    __rmul__ = __mul__

    def __truediv__(self, a):
        a = F(a)
        require(a != 0, "zero rational denominator")
        return Raw({k: c / a for k, c in self.terms.items()})

    def __pow__(self, n):
        require(type(n) is int and n >= 0, "polynomial power")
        out, base = Raw.coerce(1), self
        while n:
            if n & 1:
                out = out * base
            base = base * base
            n //= 2
        return out

    def bar(self):
        # Unit phase substitution; omega also remains a Laurent variable here.
        return Raw({tuple(-e for e in k): a for k, a in self.terms.items()})

    def norm_sq(self):
        return self * self.bar()


def prod(values):
    out = Raw.coerce(1)
    for x in values:
        out *= x
    return out


def det_or_perm(M, signed):
    out = Raw.coerce(0)
    for p in permutations(range(3)):
        sign = (-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3)) if signed else 1
        out += sign * prod(M[i][p[i]] for i in range(3))
    return out


def expressions():
    """The complete circuits, evaluated before any omega reduction."""
    one = Raw.coerce(1)
    x, y = [Raw.var(i) for i in range(3)], [Raw.var(i + 3) for i in range(3)]
    omega = Raw.var(6)
    M = [[one, one, one], x, y]
    h, pi = det_or_perm(M, True), det_or_perm(M, False)
    u, v = prod(x), prod(y)
    s, t = sum(x, Raw.coerce(0)), sum(y, Raw.coerce(0))
    r = sum((yj * xj.bar() for xj, yj in zip(x, y)), Raw.coerce(0))
    X, Y, Z = s.norm_sq(), t.norm_sq(), r.norm_sq()
    P0 = r * s ** 2 + r.bar() * t ** 2 + (3 - Z) * s * t
    P1 = t * s.bar() ** 2 + r ** 2 * t.bar() + (3 - Y) * r * s.bar()
    P2 = s * t.bar() ** 2 + r.bar() ** 2 * s.bar() + (3 - X) * r.bar() * t.bar()
    out = [
        ("Laurent-0", "h^2 = uv c0 bar(pi) - uv bar(P0)", h ** 2,
         u * v * (9 - Z) * pi.bar() - u * v * P0.bar()),
        ("Laurent-1", "h^2 = uv c1 bar(pi) - v bar(P1)", h ** 2,
         u * v * (9 - Y) * pi.bar() - v * P1.bar()),
        ("Laurent-2", "h^2 = uv c2 bar(pi) - u bar(P2)", h ** 2,
         u * v * (9 - X) * pi.bar() - u * P2.bar()),
    ]
    mu, nu = s / 3, t / 3

    def coeff(row, sign):
        return sum((row[j] * omega ** ((-sign * j) % 3) for j in range(3)), Raw.coerce(0)) / 3

    A, B = coeff(x, 1), coeff(x, -1)
    C, D = coeff(y, 1), coeff(y, -1)
    alpha, gamma = mu ** 2 - u * mu.bar(), 2 * mu * nu - pi / 3
    n, k = 1 - mu.norm_sq(), r / 3 - nu * mu.bar()
    delta = A * D - B * C
    out += [
        ("Fourier-1", "alpha = A B", alpha, A * B),
        ("Fourier-2", "gamma = A D + B C", gamma, A * D + B * C),
        ("Fourier-3", "n = |A|^2 + |B|^2", n, A.norm_sq() + B.norm_sq()),
        ("Fourier-4", "k = C bar(A) + D bar(B)", k, C * A.bar() + D * B.bar()),
        ("Fourier-5", "h^2 = -27 delta^2", h ** 2, -27 * delta ** 2),
        ("Fourier-6", "n gamma - 2 alpha k = (|A|^2 - |B|^2)delta",
         n * gamma - 2 * alpha * k, (A.norm_sq() - B.norm_sq()) * delta),
        ("Fourier-7", "A^3 = u |A|^2 + mu A B", A ** 3, u * A.norm_sq() + mu * A * B),
        ("Fourier-8", "n C = A k - bar(B)delta", n * C, A * k - B.bar() * delta),
        ("Fourier-9", "n D = B k + bar(A)delta", n * D, B * k + A.bar() * delta),
    ]
    require(len(out) == 12, "identity circuit inventory")
    return out


def integer_polynomial(raw, denominator, shift):
    out = {}
    for exponent, coefficient in raw.terms.items():
        e = tuple(a + b for a, b in zip(exponent, shift))
        a = coefficient * denominator
        require(min(e) >= 0 and a.denominator == 1, "clearing factor failed")
        out[e] = a.numerator
    return {e: a for e, a in out.items() if a}


def subtract(p, q):
    out = dict(p)
    for e, a in q.items():
        out[e] = out.get(e, 0) - a
    return {e: a for e, a in out.items() if a}


def multiply(p, q):
    out = {}
    for e, a in p.items():
        for f, b in q.items():
            k = tuple(i + j for i, j in zip(e, f))
            out[k] = out.get(k, 0) + a * b
    return {e: a for e, a in out.items() if a}


MODULUS = {ZERO: 1, (0, 0, 0, 0, 0, 0, 1): 1, (0, 0, 0, 0, 0, 0, 2): 1}


def omega_cofactor(p):
    """Integer monic division by omega^2+omega+1, separately for each phase monomial."""
    groups = {}
    for exponent, coefficient in p.items():
        groups.setdefault(exponent[:-1], {})[exponent[-1]] = coefficient
    quotient, remainder = {}, {}
    for phase_monomial, coefficients in groups.items():
        coefficients = dict(coefficients)
        while coefficients and max(coefficients) >= 2:
            degree = max(coefficients)
            value = coefficients[degree]
            key = phase_monomial + (degree - 2,)
            quotient[key] = quotient.get(key, 0) + value
            for k in (degree - 2, degree - 1, degree):
                coefficients[k] = coefficients.get(k, 0) - value
                if coefficients[k] == 0:
                    del coefficients[k]
        for degree, value in coefficients.items():
            remainder[phase_monomial + (degree,)] = value
    require(not remainder, f"nonzero cyclotomic remainder: {list(remainder.items())[:6]}")
    require(multiply(MODULUS, quotient) == p, "independent cofactor multiplication failed")
    return quotient


def rows(p):
    return [[list(e), a] for e, a in sorted(p.items())]


def from_rows(data, label):
    out = {}
    for row in data:
        require(isinstance(row, list) and len(row) == 2, label + ": malformed row")
        exponent, coefficient = row
        require(isinstance(exponent, list) and len(exponent) == 7,
                label + ": exponent dimension")
        require(all(type(e) is int and e >= 0 for e in exponent), label + ": non-polynomial exponent")
        require(type(coefficient) is int and coefficient != 0, label + ": non-integer/zero coefficient")
        exponent = tuple(exponent)
        require(exponent not in out, label + ": duplicate monomial")
        out[exponent] = coefficient
    require(rows(out) == data, label + ": noncanonical coefficient order")
    return out


def make_entry(name, statement, lhs, rhs):
    coefficients = list(lhs.terms.values()) + list(rhs.terms.values())
    denominator = lcm(*(a.denominator for a in coefficients)) if coefficients else 1
    exponents = list(lhs.terms) + list(rhs.terms)
    shift = [max(0, -min((e[j] for e in exponents), default=0)) for j in range(7)]
    left = integer_polynomial(lhs, denominator, shift)
    right = integer_polynomial(rhs, denominator, shift)
    residual = subtract(left, right)
    cofactor = omega_cofactor(residual)
    return {
        "identity": name,
        "statement": statement,
        "clearing_denominator": denominator,
        "clearing_monomial_exponents": shift,
        "cleared_lhs": rows(left),
        "cleared_rhs": rows(right),
        "cleared_residual": rows(residual),
        "omega_modulus_cofactor": rows(cofactor),
    }


def payload():
    return {
        "format": "L2-explicit-integer-polynomial-certificates-v1",
        "variables_in_exponent_order": VARIABLES,
        "coefficient_format": "each row is [nonnegative exponent vector, nonzero integer coefficient]",
        "identity_meaning": "denominator * product(variable^shift) * (lhs-rhs) = (omega^2+omega+1) * cofactor",
        "conjugation_convention": "before clearing, conjugation inverts each phase variable and omega",
        "omega_modulus": rows(MODULUS),
        "source": "STEP2_BLUEPRINT.md Section 7; actual normalized phase-side Laurent/Fourier identities",
        "scope": "exact identity certificates only; no existence, exhaustion, matched-flatness or global-reach theorem",
        "certificates": [make_entry(*entry) for entry in expressions()],
    }


def verify(data, expected):
    require(data == expected, "coefficient file differs from full raw expansion of the stated identities")
    require(from_rows(data["omega_modulus"], "modulus") == MODULUS, "wrong omega modulus")
    records = []
    for entry in data["certificates"]:
        name = entry["identity"]
        left = from_rows(entry["cleared_lhs"], name + ":lhs")
        right = from_rows(entry["cleared_rhs"], name + ":rhs")
        residual = from_rows(entry["cleared_residual"], name + ":residual")
        cofactor = from_rows(entry["omega_modulus_cofactor"], name + ":cofactor")
        require(subtract(left, right) == residual, name + ": residual not lhs-rhs")
        require(multiply(MODULUS, cofactor) == residual, name + ": explicit cofactor equation failed")
        records.append({"identity": name, "status": "PASS", "lhs_terms": len(left),
                        "rhs_terms": len(right), "residual_terms": len(residual),
                        "cofactor_terms": len(cofactor),
                        "clearing_denominator": entry["clearing_denominator"],
                        "clearing_monomial_exponents": entry["clearing_monomial_exponents"]})
    require(len(records) == 12, "certificate identity inventory")
    return records


def main():
    require(sys.argv[1:] in ([], ["--write"]), "usage: verify_l2_polynomial_certificates.py [--write]")
    expected = payload()
    if sys.argv[1:] == ["--write"]:
        CERTIFICATE.write_text(json.dumps(expected, separators=(",", ":")) + "\n")
    require(CERTIFICATE.is_file(), "missing explicit coefficient certificate")
    data = json.loads(CERTIFICATE.read_text())
    records = verify(data, expected)
    print(json.dumps({
        "status": "PASS",
        "exact_arithmetic": "Fraction for raw expansion; integer polynomial coefficient checks",
        "identities": records,
        "certificate_file": CERTIFICATE.name,
        "certificate_sha256": sha256(CERTIFICATE.read_bytes()).hexdigest(),
        "verifier_sha256": sha256(Path(__file__).read_bytes()).hexdigest(),
        "cofactor_equation": "cleared(lhs-rhs) = (omega^2+omega+1)Q",
        "scope": "identities only; no L1 or global-reach certificate",
    }, indent=2))


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        print("FAIL: " + str(error), file=sys.stderr)
        raise
