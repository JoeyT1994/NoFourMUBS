#!/usr/bin/env python3
"""Exact auxiliary checks. This is not a Lean proof or a global MUB search."""

from dataclasses import dataclass
from fractions import Fraction
from itertools import permutations, product
import json


@dataclass(frozen=True)
class Quadratic:
    """a + b sqrt(d), with rational a,b and fixed negative integer d."""

    a: Fraction
    b: Fraction
    d: int

    def __post_init__(self):
        object.__setattr__(self, "a", Fraction(self.a))
        object.__setattr__(self, "b", Fraction(self.b))
        if self.d >= 0:
            raise ValueError("These checks use imaginary quadratic fields only")

    def coerce(self, other):
        if isinstance(other, Quadratic):
            if self.d != other.d:
                raise TypeError("Different quadratic fields")
            return other
        return Quadratic(Fraction(other), 0, self.d)

    def __add__(self, other):
        other = self.coerce(other)
        return Quadratic(self.a + other.a, self.b + other.b, self.d)

    __radd__ = __add__

    def __neg__(self):
        return Quadratic(-self.a, -self.b, self.d)

    def __sub__(self, other):
        return self + (-self.coerce(other))

    def __rsub__(self, other):
        return self.coerce(other) - self

    def __mul__(self, other):
        other = self.coerce(other)
        return Quadratic(
            self.a * other.a + self.d * self.b * other.b,
            self.a * other.b + self.b * other.a,
            self.d,
        )

    __rmul__ = __mul__

    def conjugate(self):
        return Quadratic(self.a, -self.b, self.d)

    def norm_sq(self):
        return self.a * self.a - self.d * self.b * self.b

    def __truediv__(self, other):
        other = self.coerce(other)
        denominator = other.norm_sq()
        if denominator == 0:
            raise ZeroDivisionError
        numerator = self * other.conjugate()
        return Quadratic(numerator.a / denominator, numerator.b / denominator, self.d)

    def __pow__(self, exponent):
        if not isinstance(exponent, int) or exponent < 0:
            raise ValueError("A nonnegative integer power is required")
        answer = self.coerce(1)
        for _ in range(exponent):
            answer *= self
        return answer

    def record(self):
        return {"rational": str(self.a), "sqrt_coefficient": str(self.b), "radicand": self.d}


def require(condition, message):
    if not condition:
        raise AssertionError(message)


def matrix(rows, field_zero):
    return tuple(tuple(field_zero.coerce(x) for x in row) for row in rows)


def identity(size, field_zero):
    return matrix([[int(i == j) for j in range(size)] for i in range(size)], field_zero)


def transpose(a):
    return tuple(tuple(a[i][j] for i in range(len(a))) for j in range(len(a[0])))


def conjugate(a):
    return tuple(tuple(x.conjugate() for x in row) for row in a)


def adjoint(a):
    return conjugate(transpose(a))


def add(a, b):
    return tuple(tuple(x + y for x, y in zip(ar, br)) for ar, br in zip(a, b))


def scale(a, factor):
    return tuple(tuple(x * factor for x in row) for row in a)


def multiply(a, b):
    require(len(a[0]) == len(b), "Matrix dimensions must agree")
    z = a[0][0].coerce(0)
    return tuple(
        tuple(sum((a[i][k] * b[k][j] for k in range(len(b))), z) for j in range(len(b[0])))
        for i in range(len(a))
    )


def diagonal(values):
    z = values[0].coerce(0)
    return tuple(tuple(values[i] if i == j else z for j in range(len(values))) for i in range(len(values)))


def permute_rows(a, order):
    return tuple(a[i] for i in order)


def permute_columns(a, order):
    return tuple(tuple(row[j] for j in order) for row in a)


def block(a, b, c, d):
    return tuple(tuple(ar) + tuple(br) for ar, br in zip(a, b)) + tuple(
        tuple(cr) + tuple(dr) for cr, dr in zip(c, d)
    )


def is_flat(a):
    return all(x.norm_sq() == 1 for row in a for x in row)


def elementary_side_checks():
    z = Quadratic(0, 0, -1)
    one = z.coerce(1)
    imag = Quadratic(0, 1, -1)
    e = matrix([[1, 1, 1], [1, 1, -1], [1, -1, 1]], z)
    b = matrix([[1, 1, 1], [-1, imag, -imag], [imag, -1, -imag]], z)
    expected_gram = matrix([[3, -1, -1], [-1, 3, 1], [-1, 1, 3]], z)
    require(add(scale(identity(3, z), 6), scale(multiply(e, adjoint(e)), -1)) == expected_gram,
            "E0 Gram complement")
    require(multiply(b, adjoint(b)) == expected_gram, "B0 side equation")
    require(multiply(conjugate(b), adjoint(conjugate(b))) == expected_gram, "Conjugate side equation")

    orders = tuple(permutations(range(3)))
    orbit = {permute_columns(b, p) for p in orders}
    conjugate_orbit = {permute_columns(conjugate(b), p) for p in orders}
    require(len(orbit) == len(conjugate_orbit) == 6, "Each orbit has six elements")
    require(orbit.isdisjoint(conjugate_orbit), "The two orbits are disjoint")

    fourth_roots = (one, imag, -one, -imag)
    candidate_rows = [r for r in product(fourth_roots, repeat=3) if sum(r, z) == -one]
    finite_solutions = set()
    for x, y in product(candidate_rows, repeat=2):
        correlation = sum((yj * xj.conjugate() for xj, yj in zip(x, y)), z)
        if correlation == one:
            finite_solutions.add((tuple(one for _ in range(3)), x, y))
    require(finite_solutions == orbit | conjugate_orbit, "Fourth-root finite fiber check")
    return {
        "gram_complement": "PASS",
        "B0_and_conjugate_side_equations": "PASS",
        "ordered_orbit_sizes": [len(orbit), len(conjugate_orbit)],
        "orbits_disjoint": True,
        "fourth_root_grid_solution_count": len(finite_solutions),
        "scope": "Finite checks only; arbitrary unit-circle classification requires the proof in BRIEF.md",
        "R_and_Psi": "NOT CHECKED: definitions were not supplied",
    }


def cube_root_checks():
    z = Quadratic(0, 0, -3)
    one = z.coerce(1)
    omega = Quadratic(Fraction(-1, 2), Fraction(1, 2), -3)
    require(omega ** 2 + omega + 1 == z, "Primitive cube-root identity")
    require(omega ** 3 == one and omega != one, "Primitive cube root")
    f = tuple(tuple(omega ** (j * k) for k in range(3)) for j in range(3))
    require(multiply(f, adjoint(f)) == scale(identity(3, z), 3), "F3 normalization")

    def build(v, w):
        b = multiply(diagonal(v), f)
        c = multiply(f, diagonal(w))
        d = scale(multiply(multiply(c, adjoint(f)), b), Fraction(-1, 3))
        return block(f, b, c, d), d

    expected = {(1, 1): z, (2, 2): omega - 1, (1, 2): omega, (2, 1): omega}
    table = []
    cases = {}
    for eps, delta in ((1, 1), (2, 2), (1, 2), (2, 1)):
        h, d = build((one, one, omega ** eps), (one, one, omega ** delta))
        require(d[0][0] == expected[eps, delta], "Four-case forced-block entry")
        require(multiply(h, adjoint(h)) == scale(identity(6, z), 6), "Four-case scaled unitarity")
        require(is_flat(h) == (eps != delta), "Four-case flatness")
        cases[eps, delta] = h
        table.append({"epsilon": eps, "delta": delta, "D00": d[0][0].record(),
                      "D00_norm_sq": str(d[0][0].norm_sq()), "flat": is_flat(h)})

    exponents = (
        (0, 0, 0, 0, 0, 0),
        (0, 0, 1, 1, 2, 2),
        (0, 1, 0, 2, 2, 1),
        (0, 1, 2, 0, 1, 2),
        (0, 2, 2, 1, 0, 1),
        (0, 2, 1, 2, 1, 0),
    )
    tao = tuple(tuple(omega ** e for e in row) for row in exponents)
    order = (0, 3, 4, 1, 5, 2)
    require(permute_columns(cases[1, 2], order) == tao, "First Tao column permutation")
    require(transpose(cases[1, 2]) == cases[2, 1], "Second case is the transpose")
    require(permute_rows(cases[2, 1], order) == tao, "Second Tao row permutation")
    require(is_flat(tao) and multiply(tao, adjoint(tao)) == scale(identity(6, z), 6),
            "Explicit Tao representative")

    checked = 0
    flat_count = 0
    for a, b, c, d in product(range(3), repeat=4):
        h, _ = build((one, omega ** a, omega ** b), (one, omega ** c, omega ** d))
        k, ell = (-a) % 3, (-c) % 3
        normalized, _ = build(
            (one, one, omega ** ((b + 2 * k) % 3)),
            (one, one, omega ** ((d + 2 * ell) % 3)),
        )
        row_order = (0, 1, 2) + tuple(3 + (j + ell) % 3 for j in range(3))
        col_order = (0, 1, 2) + tuple(3 + (j + k) % 3 for j in range(3))
        transformed = permute_columns(permute_rows(h, row_order), col_order)
        require(transformed == normalized, "Character normalization for one of 81 choices")
        require(multiply(h, adjoint(h)) == scale(identity(6, z), 6), "Scaled unitarity for one of 81 choices")
        checked += 1
        flat_count += int(is_flat(h))
    require(checked == 81 and flat_count == 63, "Finite cube-root census")
    return {
        "Fourier_convention": "F[j,k] = omega^(j*k), j,k = 0,1,2",
        "four_cases": table,
        "Tao_column_order_one_based": [1, 4, 5, 2, 6, 3],
        "opposite_case_uses_same_row_order": True,
        "Tao_permutation_checks": "PASS",
        "character_normalization_cases_checked": checked,
        "flat_cases_in_81_choice_family": flat_count,
        "scope": "This finite family only; forcing arbitrary parameters to cube roots is not checked",
    }


def main():
    trace_five = Fraction(6) - 5 - 5 + Fraction(25, 6)
    trace_four = Fraction(6) - 4 - 4 + Fraction(16, 6)
    require(trace_five == Fraction(1, 6), "Five-frame rational trace constant")
    require(trace_four == Fraction(2, 3), "Four-frame rational trace constant")
    require(trace_four / 4 == Fraction(1, 6), "Complement overlap constant")
    result = {
        "status": "PASS",
        "arithmetic": "Exact Fraction coefficients in Q(i) and Q(sqrt(-3)); no floating point",
        "elementary_side": elementary_side_checks(),
        "cube_root_family": cube_root_checks(),
        "trace_constants": {"five_frame": str(trace_five), "four_frame": str(trace_four)},
        "lean_verification": "NOT RUN",
        "certificate_replay": "NOT RUN",
        "global_no_four_obstruction": "NOT PROVED BY THESE CHECKS",
    }
    print(json.dumps(result, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
