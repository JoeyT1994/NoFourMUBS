#!/usr/bin/env python3
"""Exact certificates for GLOBAL_BLOCK_MOMENTS.md; standard library only.

Every algebraic decision is an equality of integer/Fraction coefficients.
There is no floating point and there are no numerical samples in this verifier.
"""

from collections import defaultdict
from fractions import Fraction
from itertools import permutations, product
import json
from pathlib import Path


def clean(a):
    return {k: v for k, v in a.items() if v}


def add(*polys):
    out = defaultdict(int)
    for p in polys:
        for a, x in p.items():
            out[a] += x
    return clean(out)


def scale(p, x):
    return clean({a: x * y for a, y in p.items()})


def mul(p, q):
    out = defaultdict(int)
    for a, x in p.items():
        for b, y in q.items():
            out[tuple(i + j for i, j in zip(a, b))] += x * y
    return clean(out)


def power(p, n):
    z = (0,) * len(next(iter(p)))
    out = {z: 1}
    for _ in range(n):
        out = mul(out, p)
    return out


def conj(p):
    return {tuple(-j for j in a): x for a, x in p.items()}


def constant(x, n):
    return {(0,) * n: x} if x else {}


def var(j, n):
    a = [0] * n
    a[j] = 1
    return {tuple(a): 1}


def expect_equal(a, b, label):
    delta = add(a, scale(b, -1))
    if delta:
        raise AssertionError(f"{label}: {len(delta)} unequal coefficients")


PERMS = list(permutations(range(3)))


def sign(p):
    return (-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))


def permanent_and_determinant(E):
    per, det = {}, {}
    for p in PERMS:
        term = mul(mul(E[0][p[0]], E[1][p[1]]), E[2][p[2]])
        per = add(per, term)
        det = add(det, scale(term, sign(p)))
    return per, det


def triple_sum_in_moments(poly, dim, zero_moments):
    """Sum a symmetric three-column Laurent polynomial over 20 subsets.

    A moment is P_alpha = sum_{j=1}^6 exp(i alpha . theta_j).
    The output is a polynomial whose keys are sorted tuples of moment labels.
    P_0 = 6 and the specified moments are set to zero.

    The inclusion-exclusion identity used is
      sum_{i,j,k distinct} x_i^a x_j^b x_k^c
        = P_a P_b P_c - P_{a+b}P_c - P_{a+c}P_b
          - P_{b+c}P_a + 2 P_{a+b+c}.
    It is valid also when moment labels coincide or vanish.
    """
    # Check the input really is invariant under all column permutations.
    for perm in PERMS:
        transformed = {}
        for e, coef in poly.items():
            blocks = [e[j * dim:(j + 1) * dim] for j in range(3)]
            ee = tuple(t for j in perm for t in blocks[j])
            transformed[ee] = coef
        expect_equal(poly, transformed, "column permutation invariance")

    orbits = defaultdict(int)
    for e, coef in poly.items():
        blocks = tuple(sorted(e[j * dim:(j + 1) * dim] for j in range(3)))
        orbits[blocks] += coef

    out = defaultdict(Fraction)
    zero = (0,) * dim

    def put(coef, labels):
        if any(label in zero_moments for label in labels):
            return
        nzero = labels.count(zero)
        labels = tuple(sorted(label for label in labels if label != zero))
        out[labels] += coef * 6 ** nzero

    for (a, b, c), coeff_sum in orbits.items():
        # coeff_sum/6 includes the stabilizer for repeated labels.
        coef = Fraction(coeff_sum, 6)
        plus = lambda x, y: tuple(i + j for i, j in zip(x, y))
        put(coef, [a, b, c])
        put(-coef, [plus(a, b), c])
        put(-coef, [plus(a, c), b])
        put(-coef, [plus(b, c), a])
        put(2 * coef, [plus(plus(a, b), c)])
    return clean(out)


def main():
    # E has rows 1, z, w.  The six independent phase variables are
    # (z_0,w_0,z_1,w_1,z_2,w_2), so conjugation negates exponents.
    n = 6
    one = constant(1, n)
    E = [[one for _ in range(3)],
         [var(2 * j, n) for j in range(3)],
         [var(2 * j + 1, n) for j in range(3)]]
    per, det = permanent_and_determinant(E)
    denom_inv = {(-1,) * n: 1}
    q = mul(mul(per, mul(det, det)), denom_inv)
    assert len(q) == 55

    s = scale(add(*E[1]), -1)
    t = scale(add(*E[2]), -1)
    r = scale(add(*(mul(E[2][j], conj(E[1][j])) for j in range(3))), -1)
    X, Y, Z = (mul(v, conj(v)) for v in (s, t, r))
    p = add(X, Y, Z)
    srct = mul(mul(s, r), conj(t))
    J = add(srct, conj(srct))
    W = add(mul(X, Y), mul(X, Z), mul(Y, Z), scale(mul(mul(X, Y), Z), -1))
    D = add(constant(27, n), scale(p, -3), scale(J, -1))
    G = add(constant(27, n), scale(p, -3), J)
    PA = add(constant(9, n), scale(p, -1), scale(J, -1))
    PB = add(constant(9, n), scale(p, -1), J)
    expect_equal(mul(det, conj(det)), D, "determinant norm formula")
    expect_equal(mul(per, conj(per)), PA, "permanent norm formula")
    expect_equal(scale(PA, 3), add(scale(D, 2), scale(G, -1)),
                 "3 |perm A|^2 = 2D-G")
    expect_equal(scale(PB, 3), add(scale(G, 2), scale(D, -1)),
                 "3 |perm B|^2 = 2G-D")
    re_formula = add(
        mul(add(p, constant(-9, n)), add(p, constant(-18, n))),
        scale(W, -1), mul(add(p, constant(-15, n)), J))
    expect_equal(add(q, conj(q)), re_formula, "2 Re q identity")

    # The only moment zeros used are the three row orthogonalities and
    # their conjugates: sum z = sum w = sum z/conj^{-1}(w) = 0.
    zero_moments = {(1, 0), (-1, 0), (0, 1), (0, -1), (1, -1), (-1, 1)}
    q_sum = triple_sum_in_moments(q, 2, zero_moments)
    expected_sum = {(): Fraction(432),
                    ((-1, -1), (-1, 2), (2, -1)): Fraction(1)}
    assert q_sum == expected_sum, q_sum

    # Pair fourth-moment identity.  Here the three columns have one
    # phase variable each; sum of the six underlying phases is zero.
    zz = add(*(var(j, 3) for j in range(3)))
    abs2 = mul(zz, conj(zz))
    sum2 = triple_sum_in_moments(abs2, 1, {(1,), (-1,)})
    sum4 = triple_sum_in_moments(mul(abs2, abs2), 1, {(1,), (-1,)})
    assert sum2 == {(): Fraction(36)}
    assert sum4 == {(): Fraction(108), ((-2,), (2,)): Fraction(2)}

    # An integer polynomial decomposition proves the scalar inequality
    # J <= p used in |perm B|^2 <= 9 when G's eigenvalues lie in [0,6].
    a, b = var(0, 2), var(1, 2)
    sigma = add(a, b)
    scalar_p = add(mul(a, a), mul(a, b), mul(b, b))
    scalar_J = mul(mul(a, b), sigma)
    positive_decomposition = add(
        mul(add(constant(3, 2), scale(sigma, -1)), power(sigma, 2)),
        mul(add(sigma, constant(1, 2)), power(add(a, scale(b, -1)), 2)))
    expect_equal(scale(add(scalar_p, scale(scalar_J, -1)), 4),
                 positive_decomposition, "spectral permanent bound")

    # Optional explicit coefficients for the entire row-triple energy.
    # d = 2 Im q = (q-conj(q))/i, so d^2 = -(q-conj(q))^2.
    signed_numerator = add(q, scale(conj(q), -1))
    assert len(signed_numerator) == 48
    assert set(signed_numerator.values()) == {-1, 1}
    energy = scale(mul(signed_numerator, signed_numerator), -1)
    energy_moments = triple_sum_in_moments(energy, 2, zero_moments)
    assert len(energy_moments) == 66
    # Reality: each moment monomial and its conjugate have equal coefficients.
    for labels, coefficient in energy_moments.items():
        opposite = tuple(sorted(tuple(-x for x in v) for v in labels))
        assert energy_moments.get(opposite) == coefficient
    records = [
        {"coefficient": [v.numerator, v.denominator],
         "moments": [list(t) for t in k]}
        for k, v in sorted(energy_moments.items(), key=lambda kv: (len(kv[0]), kv[0]))
    ]
    path = Path(__file__).with_name("row_energy_moments.json")
    expected_records = json.loads(path.read_text())
    assert records == expected_records, "row_energy_moments.json differs from exact regeneration"

    # Rational numerical consequences used in the prose.
    assert 2 * Fraction(27, 20) ** 3 < 5
    assert 2 * Fraction(79, 100) ** 3 < 1
    assert Fraction(216, 20) == Fraction(54, 5)
    assert Fraction(37, 54) < Fraction(5, 6) ** 2

    print("GLOBAL MOMENT CERTIFICATES PASS")
    print("Verified: determinant/permanent block identities; real q identity;")
    print("row-triple signed moment identity; pair second/fourth moments;")
    print("spectral permanent bound; 66 exact row-energy coefficients.")


if __name__ == "__main__":
    main()
