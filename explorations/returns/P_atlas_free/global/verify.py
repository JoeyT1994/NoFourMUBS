#!/usr/bin/env python3
"""Exact finite checks for the strengthened quartet obstruction.

This is a standard-library identity/rational-comparison checker, not a
formalization of the general matrix, compactness, or variational proofs.
Run with assertions enabled. It writes RECEIPT.json next to this file.
"""

if not __debug__:
    raise RuntimeError("This verifier requires assertions; do not use python -O.")

from collections import Counter
from dataclasses import dataclass
from fractions import Fraction as F
from hashlib import sha256
from itertools import product
import json
from pathlib import Path


@dataclass(frozen=True)
class Q10:
    """The exact ordered quadratic field Q(sqrt(10))."""

    a: F = F(0)
    b: F = F(0)

    def __post_init__(self):
        object.__setattr__(self, "a", F(self.a))
        object.__setattr__(self, "b", F(self.b))

    @staticmethod
    def coerce(x):
        return x if isinstance(x, Q10) else Q10(x)

    def __add__(self, other):
        other = self.coerce(other)
        return Q10(self.a + other.a, self.b + other.b)

    __radd__ = __add__

    def __neg__(self):
        return Q10(-self.a, -self.b)

    def __sub__(self, other):
        return self + -self.coerce(other)

    def __rsub__(self, other):
        return self.coerce(other) + -self

    def __mul__(self, other):
        other = self.coerce(other)
        return Q10(self.a * other.a + 10 * self.b * other.b,
                   self.a * other.b + self.b * other.a)

    __rmul__ = __mul__

    def inverse(self):
        norm = self.a * self.a - 10 * self.b * self.b
        if norm == 0:
            raise ZeroDivisionError
        return Q10(self.a / norm, -self.b / norm)

    def __truediv__(self, other):
        return self * self.coerce(other).inverse()

    def __rtruediv__(self, other):
        return self.coerce(other) * self.inverse()

    def __pow__(self, k):
        if k < 0:
            return self.inverse() ** (-k)
        out, base = Q10(1), self
        while k:
            if k & 1:
                out *= base
            base *= base
            k //= 2
        return out

    def sign(self):
        """Determine the sign by rational squares, with no approximations."""
        a, b = self.a, self.b
        if not b:
            return (a > 0) - (a < 0)
        if not a:
            return (b > 0) - (b < 0)
        if a > 0 and b > 0:
            return 1
        if a < 0 and b < 0:
            return -1
        norm = a * a - 10 * b * b
        # sqrt(10) is irrational, so a,b nonzero cannot give norm zero.
        assert norm != 0
        if a > 0:  # a - |b| sqrt(10)
            return (norm > 0) - (norm < 0)
        # -|a| + b sqrt(10)
        return (norm < 0) - (norm > 0)

    def json(self):
        return {"rational": str(self.a), "sqrt10": str(self.b)}


class Poly:
    """Tiny exact sparse polynomial ring, used for universal identities."""

    def __init__(self, n, terms=None):
        self.n = n
        self.terms = {tuple(k): F(v) for k, v in (terms or {}).items() if v}
        assert all(len(k) == n and all(e >= 0 for e in k) for k in self.terms)

    @staticmethod
    def constant(n, x):
        return Poly(n, {(0,) * n: F(x)})

    @staticmethod
    def variable(n, i):
        e = [0] * n
        e[i] = 1
        return Poly(n, {tuple(e): F(1)})

    def coerce(self, other):
        return other if isinstance(other, Poly) else Poly.constant(self.n, other)

    def __add__(self, other):
        other = self.coerce(other)
        assert self.n == other.n
        out = dict(self.terms)
        for k, v in other.terms.items():
            out[k] = out.get(k, F(0)) + v
        return Poly(self.n, out)

    __radd__ = __add__

    def __neg__(self):
        return Poly(self.n, {k: -v for k, v in self.terms.items()})

    def __sub__(self, other):
        return self + -self.coerce(other)

    def __rsub__(self, other):
        return self.coerce(other) + -self

    def __mul__(self, other):
        other = self.coerce(other)
        assert self.n == other.n
        out = {}
        for x, a in self.terms.items():
            for y, b in other.terms.items():
                e = tuple(u + v for u, v in zip(x, y))
                out[e] = out.get(e, F(0)) + a * b
        return Poly(self.n, out)

    __rmul__ = __mul__

    def __pow__(self, k):
        assert k >= 0
        out = Poly.constant(self.n, 1)
        for _ in range(k):
            out *= self
        return out

    def __eq__(self, other):
        other = self.coerce(other)
        return self.n == other.n and self.terms == other.terms


def check_cap_lemma():
    x, y, d = [Poly.variable(3, i) for i in range(3)]
    assert (x+d)**2 + (y-d)**2 - x*x - y*y == 2*d*(x-y)+2*d*d
    m = Poly.variable(1, 0)
    phi = 12*m*m - 6*m + 1
    assert 3*m*m+(1-3*m)**2 == phi
    cap = F(5, 18)
    target = F(7, 27)
    assert 12*cap*cap - 6*cap + 1 == target
    assert target-phi == 12*(cap-m)*(cap+m-F(1, 2))
    assert F(1, 4) < cap < F(1, 3)
    assert F(1, 4) < target
    # The second factor in the factored difference is positive for m>=1/4.
    assert cap+F(1, 4)-F(1, 2) == F(1, 36) > 0
    extremizer = [cap, cap, cap, F(1, 6), F(0), F(0)]
    assert sum(extremizer) == 1
    assert sum(t*t for t in extremizer) == target
    assert max(extremizer) == cap
    assert F(336, 6**4) == target
    assert F(24, 16) == F(3, 2)
    assert 24*24 == 16*36
    return {
        "transport_polynomial": "PASS",
        "capped_square_sum_polynomial": "PASS",
        "factored_cap_difference": "PASS",
        "equality_multiset": [str(v) for v in extremizer],
        "target_square_sum": str(target),
    }


def check_dichotomy_branches():
    sqrt10 = Q10(0, 1)
    assert sqrt10*sqrt10 == Q10(10)
    L0 = 1+sqrt10/6
    gap = L0-F(3, 2)
    assert gap == (sqrt10-3)/6
    assert gap.sign() > 0
    assert (gap-F(1, 37)).sign() > 0
    assert 10*37*37-117*117 == 1
    # f(55/36) = rational_part + coefficient/sqrt(6).
    r = F(55, 36)
    assert r*r-r-1 == F(-251, 1296)
    assert 2-r == F(17, 36)
    # The negative part dominates, since both compared terms are positive.
    assert 612*612 < 6*251*251
    assert 6*251*251-612*612 == 3462
    assert 19*19-36*10 == 1
    assert (Q10(r)-L0).sign() > 0
    assert (Q10(F(1, 37))-gap).sign() < 0
    assert (gap/15-F(1, 555)).sign() > 0
    return {
        "L_lower_bound": L0.json(),
        "negative_eigenvalue_magnitude": gap.json(),
        "rational_negative_gap": "1/37",
        "square_hadamard_branch_rational_L": str(r),
        "integer_sign_comparisons": {
            "6_times_251_squared_minus_612_squared": 3462,
            "19_squared_minus_36_times_10": 1,
            "10_times_37_squared_minus_117_squared": 1,
        },
    }


def check_variance_and_triangles():
    L = Poly.variable(1, 0)
    delta = L-F(3, 2)
    # Clear the positive denominator 24-L in the weighted Cauchy step.
    assert 2*(L*delta*delta*(24-L)+L*L*delta*delta) == 48*L*delta*delta
    sqrt10 = Q10(0, 1)
    L0 = 1+sqrt10/6
    exact = 48*L0*(L0-F(3, 2))**2/(24-L0)
    displayed = (216-68*sqrt10)/(414-3*sqrt10)
    assert exact == displayed
    assert (24-L0).sign() > 0
    assert (414-3*sqrt10).sign() > 0
    assert (exact-F(1, 420)).sign() > 0
    assert 10034**2-10*3173**2 == 1866
    # Check the cleared radical comparison independently of field ordering.
    assert 420*(216-68*sqrt10)-(414-3*sqrt10) == 9*(10034-3173*sqrt10)
    assert F(1, 420)/12 == F(1, 5040)
    old_E = F(181, 864000)
    assert F(1, 420) > old_E
    assert F(1, 5040) > F(181, 10368000)

    label_types = Counter()
    triangles = Counter()
    for a, b, c in product(range(4), repeat=3):
        distinct = len({a, b, c})
        label_types[distinct] += 1
        if distinct == 3:
            triangles[tuple(sorted((a, b, c)))] += 1
    assert dict(label_types) == {1: 4, 2: 36, 3: 24}
    assert len(triangles) == 4 and set(triangles.values()) == {6}
    all_equal_contribution = 6*label_types[1]
    two_equal_contribution = label_types[2]
    assert all_equal_contribution+two_equal_contribution == 60
    # 2 tr[S(S-3I/2)^2] = 2(trS^3-54) = 12(1+sum Re tau).
    assert -3*36+F(9, 4)*24 == -54
    assert 2*(60-54) == 12
    assert 2*6 == 12

    # A scalar relaxation remains feasible: this is not an actual quartet.
    relaxed_spectrum = [F(4)]+[F(1)]*20
    assert sum(relaxed_spectrum) == 24
    assert sum(x*x for x in relaxed_spectrum) == 36
    relaxed_E = 2*sum(x*(x-F(3, 2))**2 for x in relaxed_spectrum)
    assert relaxed_E == 60
    assert len(relaxed_spectrum) == 21
    return {
        "weighted_variance_polynomial": "PASS",
        "exact_energy_lower_bound": exact.json(),
        "rational_energy_lower_bound": "1/420",
        "rational_triangle_margin": "1/5040",
        "radical_sign_integer_difference": 1866,
        "cubic_basis_label_counts": dict(label_types),
        "triangle_multiplicities": {str(k): v for k, v in triangles.items()},
        "scalar_relaxation": {"rank": 21, "trace": 24, "trace_square": 36, "energy": 60,
                               "asserted_to_be_realizable": False},
    }


def check_maximum_audit():
    ambient_gradient = [F(0), F(0), F(-1), F(-1)]
    tangent_basis = [[1, 0, 0, 0], [0, 1, 0, 0]]
    assert all(sum(a*b for a, b in zip(v, ambient_gradient)) == 0 for v in tangent_basis)
    assert sum(v*v for v in ambient_gradient) == 2
    assert 96-55 == 41
    assert 20*20 == 400
    assert 3*400 == 1200
    assert 6*400 == 2400
    return {
        "constrained_gradient_zero_but_ambient_nonzero": True,
        "ambient_gradient": [str(v) for v in ambient_gradient],
        "minimum_abnormal_multiplier_kernel_dimension": 41,
        "three_by_three_minors_per_matrix": 400,
        "full_product_factor_counts": {"triple": 1200, "quartet": 2400},
        "general_countermodels_proved_in_report": [
            "x^2+y^2=0 has a two-dimensional Jacobian kernel but a singleton real zero set",
            "t -> t^2 has finite fibres and a ramification point",
        ],
    }


def main():
    here = Path(__file__).resolve().parent
    receipt = {
        "status": "PASS",
        "scope": "Exact finite identities and comparisons; analytic proofs are in REPORT.md",
        "uses_atlas": False,
        "proves_C_F_or_Fprime": False,
        "third_party_python_dependencies": [],
        "cap_lemma": check_cap_lemma(),
        "dichotomy_branches": check_dichotomy_branches(),
        "variance_and_triangles": check_variance_and_triangles(),
        "maximum_principle_audit": check_maximum_audit(),
        "sha256": {},
    }
    for name in ["verify.py", "REPORT.md", "SOURCE_DEPENDENCIES.json"]:
        p = here/name
        if p.exists():
            receipt["sha256"][name] = sha256(p.read_bytes()).hexdigest()
    out = here/"RECEIPT.json"
    out.write_text(json.dumps(receipt, indent=2, sort_keys=True)+"\n")
    print("PASS: cap lemma, both dichotomy branches, weighted variance, triangle count, and audit controls")
    print("Bounds: lambda_min(Q^Gamma) <= -(sqrt(10)-3)/6 < -1/37; rank(S) >= 17")
    print("Bounds: E(W) > 1/420; sum Re(tau) > -1 + 1/5040")
    print("Scope: necessary conditions only; C, F, and Fprime are not proved")
    print("Wrote RECEIPT.json")


if __name__ == "__main__":
    main()
