#!/usr/bin/env python3
"""Exact replay for ENDPOINT_COUNTING.md (return S, proof/coverage/returns/S_endpoints_by_counting).

Standard library only; self-contained (runs under `python3 -I`).  Part 1 is the return's universal
strip algebra (verify_universal_algebra.py, copied): the fourth-moment identity (8), the anchored cubic
sums behind (5)-(6), the rank-one determinant, and exact phase strips over Q(omega).  Part 2 checks the
count of ENDPOINT_COUNTING.md section 3 as formalised in lean/NoFourMUBs/PRM/CoverageEndCount.lean:
the pair-anchored cubic identity, the window of p*, the count patterns with the parity of the endpoint
signs, the two-edge vertex balance and the ten-equicorrelated fourth moment.
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




# ---------------------------------------------------------------- part 2: the count

def check_pair_anchored(checks):
    """Lean `pair_sums`: for the pair {0,i}, sum over the four corners through {0,i} of a_C b_C c_C equals
    an explicit combination of sum(a), sum(b), sum(c), sum(ab), sum(ac), sum(bc) and a_j b_j c_j - 1."""
    n = 18
    a = [var(n, i) for i in range(6)]
    b = [var(n, 6 + i) for i in range(6)]
    c = [var(n, 12 + i) for i in range(6)]
    sa, sb, sc = add(*a), add(*b), add(*c)
    sab = add(*(mul(a[j], b[j]) for j in range(6)))
    sac = add(*(mul(a[j], c[j]) for j in range(6)))
    sbc = add(*(mul(b[j], c[j]) for j in range(6)))
    u = [add(mul(a[j], b[j], c[j]), const(n, -1)) for j in range(6)]
    for i in range(1, 6):
        left = add(*(mul(add(a[0], a[i], a[k]), add(b[0], b[i], b[k]), add(c[0], c[i], c[k]))
                     for k in range(1, 6) if k != i))
        A, B, C = add(a[0], a[i]), add(b[0], b[i]), add(c[0], c[i])
        right = add(mul(B, C, sa), mul(A, C, sb), mul(A, B, sc), mul(C, sab), mul(B, sac), mul(A, sbc),
                    *(scale(u[j], -2 if j in (0, i) else 1) for j in range(6)))
        check_equal(checks, "pair_anchored_cubic_0_%d" % i, left, right)


def check_window():
    """kappa in (11733/25000, 4697/10000), hence p* = 9 - 4/(1+kappa^2) in (5.722, 5.723)."""
    f = lambda k: 3 * k ** 3 + k ** 2 + k - 1
    lo, hi = Q(11733, 25000), Q(4697, 10000)
    require(f(lo) < 0 < f(hi), "kappa bracket")
    require(9 - 4 / (1 + lo ** 2) > Q(2861, 500) and 9 - 4 / (1 + hi ** 2) < Q(5723, 1000), "p* window")
    # five p in the window: 5p - 28 in (0.61, 0.615); no integer in [0.61 n, 0.615 n] for 1 <= n <= 10
    require(5 * Q(2861, 500) - 28 == Q(61, 100) and 5 * Q(5723, 1000) - 28 == Q(123, 200), "window shift")
    for count in range(1, 11):
        require(not any(Q(61, 100) * count <= m <= Q(123, 200) * count for m in range(0, 8)),
                "an integer in the window sum for %d corners" % count)
    # the old window (17/3, 29/5) admits spurious patterns once endpoints are allowed, e.g. 143/25
    require(Q(17, 3) < Q(143, 25) < Q(29, 5) and not Q(2861, 500) < Q(143, 25), "old window example")
    return {"kappa_bracket": [str(lo), str(hi)], "p_star_window": ["2861/500", "5723/1000"]}


def check_counts():
    """With no window corner: counts (n0, n5, n7, ne) with 25 n5 + 35 n7 + 27 ne = 270.  The vertex
    balance makes n7 and ne even; then only (0,0,0,10) and (0,8,2,0) remain."""
    profiles = [c for c in ((n0, n5, n7, ne) for n0 in range(11) for n5 in range(11)
                            for n7 in range(11) for ne in range(11))
                if sum(c) == 10 and 25 * c[1] + 35 * c[2] + 27 * c[3] == 270]
    require(profiles == [(0, 0, 0, 10), (0, 4, 1, 5), (0, 8, 2, 0), (2, 1, 7, 0)], "count profiles")
    even = [c for c in profiles if c[2] % 2 == 0 and c[3] % 2 == 0]
    require(even == [(0, 0, 0, 10), (0, 8, 2, 0)], "even profiles")
    # one vertex: 50 A + 54 B = 0 with |A|, |B| <= 4 forces A = B = 0
    require([(A, B) for A in range(-4, 5) for B in range(-4, 5) if 50 * A + 54 * B == 0] == [(0, 0)],
            "vertex balance")
    # ten equicorrelated corners: sum X^2 = 10 (9/5)^2 = 162/5 < 54
    require(10 * Q(9, 5) ** 2 == Q(162, 5) < 54, "ten equicorrelated corners")
    # two p=7 corners: no signed pair of distinct K5 edges balances every vertex
    edges = list(combinations(range(1, 6), 2))
    for e, f in combinations(edges, 2):
        for se in (1, -1):
            for sf in (1, -1):
                degrees = [se * (v in e) + sf * (v in f) for v in range(1, 6)]
                require(any(degrees), "two edges balance every vertex")
    return {"profiles": [list(c) for c in profiles], "even_profiles": [list(c) for c in even],
            "two_edge_signed_placements": 4 * len(list(combinations(edges, 2)))}


def main():
    universal = verify_all()
    checks = []
    check_pair_anchored(checks)
    result = {
        "status": "PASS",
        "universal_algebra": universal,
        "pair_anchored_identities": checks,
        "window": check_window(),
        "counts": check_counts(),
    }
    print(json.dumps(result, indent=2))
    print("PASS endpoint counting (return S): exact identities, window and count")


if __name__ == "__main__":
    main()
