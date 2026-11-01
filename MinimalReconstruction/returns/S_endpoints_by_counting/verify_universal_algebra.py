#!/usr/bin/env python3
"""Exact coefficient checks of the universal strip algebra, standard library only.

Polynomial and Laurent-polynomial identities are checked before imposing
orthogonality. The logged residuals must have no nonzero coefficients.
Orthogonality then sets the explicitly displayed moment factors to zero.

Also checks three exact phase strips over Q(omega), omega^2+omega+1=0.
No floating-point arithmetic, random sampling, or symbolic packages are used.
"""

from dataclasses import dataclass
from fractions import Fraction as Q
from itertools import combinations, permutations
import json


def require(condition, message):
    if not condition:
        raise ArithmeticError(message)


def const(n, value):
    value = Q(value)
    return {(0,) * n: value} if value else {}


def var(n, index):
    exponents = [0] * n
    exponents[index] = 1
    return {tuple(exponents): Q(1)}


def add(*polynomials):
    result = {}
    for polynomial in polynomials:
        for monomial, coefficient in polynomial.items():
            result[monomial] = result.get(monomial, Q(0)) + coefficient
    return {m: c for m, c in result.items() if c}


def scale(polynomial, coefficient):
    coefficient = Q(coefficient)
    return {m: coefficient * c for m, c in polynomial.items() if coefficient * c}


def mul(*polynomials):
    if not polynomials:
        raise ValueError("At least one polynomial is required")
    result = polynomials[0]
    for polynomial in polynomials[1:]:
        product = {}
        for m1, c1 in result.items():
            for m2, c2 in polynomial.items():
                monomial = tuple(a + b for a, b in zip(m1, m2))
                product[monomial] = product.get(monomial, Q(0)) + c1 * c2
        result = {m: c for m, c in product.items() if c}
    return result


def square(polynomial):
    return mul(polynomial, polynomial)


def phase_conjugate(polynomial):
    """Conjugation for Laurent variables constrained to the unit circle."""
    return {tuple(-e for e in m): c for m, c in polynomial.items()}


def norm_squared(polynomial):
    return mul(polynomial, phase_conjugate(polynomial))


def determinant(matrix):
    size = len(matrix)
    terms = []
    for perm in permutations(range(size)):
        inversions = sum(perm[i] > perm[j] for i in range(size) for j in range(i + 1, size))
        terms.append(scale(mul(*(matrix[i][perm[i]] for i in range(size))), (-1) ** inversions))
    return add(*terms)


def check_equal(checks, name, left, right):
    residual = add(left, scale(right, -1))
    if residual:
        raise ArithmeticError(name + ": nonzero residual coefficient " + repr(next(iter(residual.items()))))
    checks.append({
        "name": name,
        "monomial_coefficients_compared": len(set(left) | set(right)),
        "nonzero_residual_coefficients": len(residual),
    })


def check_graph_fourth_moment(checks):
    edges = list(combinations(range(6), 2))
    variables = {edge: var(15, k) for k, edge in enumerate(edges)}
    degrees = [add(*(variables[e] for e in edges if i in e)) for i in range(6)]
    left = add(*(
        square(add(const(15, 3), scale(add(*(variables[e] for e in combinations(corner, 2))), 2)))
        for corner in combinations(range(6), 3)
    ))
    right = add(
        const(15, 180),
        scale(add(*variables.values()), 48),
        scale(add(*(square(v) for v in variables.values())), 8),
        scale(add(*(square(d) for d in degrees)), 4),
    )
    check_equal(checks, "fourth_moment_graph_expansion_in_15_independent_edges", left, right)


def check_phase_fourth_moment(checks):
    n = 6
    u = [var(n, i) for i in range(6)]
    m1 = add(*u)
    m2 = add(*(square(v) for v in u))
    real_edge = {
        (i, j): scale(add(mul(u[i], phase_conjugate(u[j])), mul(u[j], phase_conjugate(u[i]))), Q(1, 2))
        for i, j in combinations(range(6), 2)
    }
    a2 = add(*(square(v) for v in real_edge.values()))
    check_equal(
        checks, "sum_edge_squares_equals_6_plus_abs_second_moment_squared_over_4",
        a2, add(const(n, 6), scale(norm_squared(m2), Q(1, 4))),
    )
    check_equal(
        checks, "sum_real_edges_equals_half_abs_first_moment_squared_minus_3",
        add(*real_edge.values()), add(scale(norm_squared(m1), Q(1, 2)), const(n, -3)),
    )
    for i in range(6):
        degree = add(*(value for edge, value in real_edge.items() if i in edge))
        right = add(
            const(n, -1),
            scale(add(mul(u[i], phase_conjugate(m1)), mul(phase_conjugate(u[i]), m1)), Q(1, 2)),
        )
        check_equal(checks, "real_edge_degree_at_column_" + str(i), degree, right)

    full_first = {}
    full_fourth = {}
    for corner in combinations(range(6), 3):
        corner_sum = add(*(u[i] for i in corner))
        modulus_squared = norm_squared(corner_sum)
        full_first = add(full_first, modulus_squared)
        full_fourth = add(full_fourth, square(modulus_squared))
    check_equal(
        checks, "unrestricted_twenty_corner_first_moment",
        full_first, add(const(n, 36), scale(norm_squared(m1), 4)),
    )
    # This stronger identity holds for arbitrary unit phases, with no
    # zero-sum constraint. It reduces to 108 + 2|M2|^2 when M1=0.
    check_equal(
        checks, "unrestricted_twenty_corner_fourth_moment",
        full_fourth,
        add(const(n, 108), scale(norm_squared(m1), 28), scale(norm_squared(m2), 2),
            mul(m2, square(phase_conjugate(m1))), mul(phase_conjugate(m2), square(m1))),
    )

    for pair in combinations(range(1, 6), 2):
        corner = (0,) + pair
        complementary = tuple(i for i in range(6) if i not in corner)
        s = add(*(u[i] for i in corner))
        t = add(*(u[i] for i in complementary))
        check_equal(
            checks, "complement_modulus_difference_for_" + "".join(map(str, corner)),
            add(norm_squared(s), scale(norm_squared(t), -1)),
            add(mul(s, phase_conjugate(m1)), mul(phase_conjugate(s), m1), scale(norm_squared(m1), -1)),
        )


def check_anchored_cubic_ideal_certificates(checks):
    n = 12
    a = [var(n, i) for i in range(6)]                       # x
    y = [var(n, i + 6) for i in range(6)]
    b = [mul(y[i], phase_conjugate(a[i])) for i in range(6)] # y / x
    d = [phase_conjugate(v) for v in y]                    # 1 / y
    ma, mb, md = add(*a), add(*b), add(*d)
    mab = add(*(mul(a[i], b[i]) for i in range(6)))
    mad = add(*(mul(a[i], d[i]) for i in range(6)))
    mbd = add(*(mul(b[i], d[i]) for i in range(6)))
    for anchor in range(6):
        other = [i for i in range(6) if i != anchor]
        left = add(*(
            mul(add(a[anchor], a[i], a[j]),
                add(b[anchor], b[i], b[j]),
                add(d[anchor], d[i], d[j]))
            for i, j in combinations(other, 2)
        ))
        aa, bb, dd = a[anchor], b[anchor], d[anchor]
        # Every term below contains one of the six whole-strip
        # orthogonality moments ma, mb, md, mab, mad, mbd.
        right = add(
            mul(bb, dd, ma), mul(aa, dd, mb), mul(aa, bb, md),
            scale(add(mul(dd, mab), mul(bb, mad), mul(aa, mbd)), 2),
            mul(dd, ma, mb), mul(bb, ma, md), mul(aa, mb, md),
            mul(mab, md), mul(mad, mb), mul(mbd, ma),
        )
        check_equal(checks, "anchored_complex_cubic_orthogonality_ideal_certificate_" + str(anchor), left, right)


def check_rank_one_determinant(checks):
    n = 7
    t = var(n, 0)
    v = [var(n, 1 + i) for i in range(3)]
    w = [var(n, 4 + i) for i in range(3)]
    matrix = [
        [add(const(n, 6 if i == j else 0), mul(t, v[i], w[j])) for j in range(3)]
        for i in range(3)
    ]
    right = add(const(n, 216), scale(mul(t, add(*(mul(v[i], w[i]) for i in range(3)))), 36))
    check_equal(checks, "rank_one_three_by_three_determinant", determinant(matrix), right)


@dataclass(frozen=True)
class Eisenstein:
    """An exact element a+b*omega of Q(omega), omega^2+omega+1=0."""
    a: Q
    b: Q = Q(0)

    def __post_init__(self):
        object.__setattr__(self, "a", Q(self.a))
        object.__setattr__(self, "b", Q(self.b))

    def __add__(self, other):
        other = other if isinstance(other, Eisenstein) else Eisenstein(other)
        return Eisenstein(self.a + other.a, self.b + other.b)

    __radd__ = __add__

    def __neg__(self):
        return Eisenstein(-self.a, -self.b)

    def __sub__(self, other):
        return self + (-other if isinstance(other, Eisenstein) else -Eisenstein(other))

    def __mul__(self, other):
        other = other if isinstance(other, Eisenstein) else Eisenstein(other)
        return Eisenstein(self.a * other.a - self.b * other.b,
                          self.a * other.b + self.b * other.a - self.b * other.b)

    __rmul__ = __mul__

    def conjugate(self):
        return Eisenstein(self.a - self.b, -self.b)

    def norm_squared(self):
        product = self * self.conjugate()
        require(product.b == 0, "An Eisenstein norm unexpectedly has a nonreal coefficient")
        return product.a


def check_exact_phase_strips():
    one = Eisenstein(1)
    omega = Eisenstein(0, 1)
    omega2 = omega * omega
    nonroot_unit = Eisenstein(Q(3, 7), Q(8, 7))
    require(nonroot_unit.norm_squared() == 1, "The nonroot phase example is not unit")
    cases = [
        ("tensor_F2_F3_strip", [one, one, one, -one, -one, -one],
         [one, omega, omega2, one, omega, omega2]),
        ("duplicated_F3_strip", [one, omega, omega2, one, omega, omega2],
         [one, omega2, omega, one, omega2, omega]),
        ("paired_strip_with_nonroot_unit", [one, -one, omega, -omega, nonroot_unit, -nonroot_unit],
         [one, one, omega, omega, omega2, omega2]),
    ]
    results = []
    for name, x, y in cases:
        z = [y[i] * x[i].conjugate() for i in range(6)]
        for sequence in (x, y, z):
            require(all(u.norm_squared() == 1 for u in sequence), name + ": a phase is not unit")
            require(sum(sequence) == Eisenstein(0), name + ": a strip orthogonality moment is nonzero")
        moments2 = [sum(u * u for u in sequence).norm_squared() for sequence in (x, y, z)]
        for anchor in range(6):
            corners = [(anchor,) + pair for pair in combinations([i for i in range(6) if i != anchor], 2)]
            data = {}
            cubic_sum = Eisenstein(0)
            for corner in corners:
                s = sum(x[i] for i in corner)
                t = sum(y[i] for i in corner)
                r = sum(z[i] for i in corner)
                cubic = s * r * t.conjugate()
                cubic_sum += cubic
                jj = cubic + cubic.conjugate()
                require(jj.b == 0, name + ": J is unexpectedly nonreal")
                data[frozenset(corner)] = (s.norm_squared(), t.norm_squared(), r.norm_squared(), jj.a)
            require(cubic_sum == Eisenstein(0), name + ": anchored complex cubic sum is nonzero")
            require(sum(row[0] + row[1] + row[2] for row in data.values()) == 54,
                    name + ": anchored p sum is not 54")
            for component in range(3):
                require(sum(row[component] for row in data.values()) == 18,
                        name + ": anchored component first moment is not 18")
                require(sum(row[component] ** 2 for row in data.values()) == 54 + moments2[component],
                        name + ": anchored component fourth-moment identity failed")
            degree_squares = Q(0)
            for other in range(6):
                if other == anchor:
                    continue
                degree = sum(row[3] for corner, row in data.items() if other in corner)
                require(degree == 0, name + ": a signed J degree is nonzero")
                degree_squares += degree ** 2
            left = sum(sum(row[j] ** 2 for j in range(3)) for row in data.values()) - 6 * degree_squares
            require(left == 162 + sum(moments2), name + ": bundled quadratic identity failed")
        results.append({
            "name": name,
            "anchors_checked": 6,
            "second_moment_norms_squared": list(map(str, moments2)),
            "quadratic_identity_value": str(162 + sum(moments2)),
            "status": "PASS",
        })
    return results


def verify_all():
    checks = []
    check_graph_fourth_moment(checks)
    check_phase_fourth_moment(checks)
    check_anchored_cubic_ideal_certificates(checks)
    check_rank_one_determinant(checks)
    sanity = check_exact_phase_strips()
    return {
        "status": "PASS",
        "arithmetic": "exact rational sparse polynomial and Laurent polynomial coefficients; exact Q(omega) sanity cases",
        "external_dependencies": [],
        "polynomial_identities_checked": len(checks),
        "total_nonzero_residual_coefficients": sum(item["nonzero_residual_coefficients"] for item in checks),
        "checks": checks,
        "exact_phase_strip_sanity_cases": sanity,
    }


def main():
    print(json.dumps(verify_all(), indent=2))


if __name__ == "__main__":
    main()
