#!/usr/bin/env python3
"""Exact universal Laurent-coefficient checks for the 4+4 mixed tests.

The eight scalar inner products below are algebraically independent.
No candidate quartet is sampled; all equalities are polynomial identities.
"""

from fractions import Fraction as Q
import hashlib
import json
from pathlib import Path
import sys

if sys.flags.optimize:
    raise SystemExit("Run without -O.")

NAMES = ("a", "b", "f", "g", "e", "j", "k", "ell", "c", "d", "u", "v")
N = len(NAMES)


def require(condition, message):
    if not condition:
        raise ArithmeticError(message)


def monomial(coefficient=Q(1), **powers):
    exponent = [0] * N
    for key, value in powers.items():
        exponent[NAMES.index(key)] = value
    return {tuple(exponent): Q(coefficient)} if coefficient else {}


def add(*polynomials):
    out = {}
    for p in polynomials:
        for exponent, coefficient in p.items():
            out[exponent] = out.get(exponent, Q(0)) + coefficient
            if not out[exponent]:
                del out[exponent]
    return out


def multiply(p, q):
    out = {}
    for a, ca in p.items():
        for b, cb in q.items():
            exponent = tuple(x + y for x, y in zip(a, b))
            out[exponent] = out.get(exponent, Q(0)) + ca * cb
            if not out[exponent]:
                del out[exponent]
    return out


def scale(p, scalar):
    return multiply(p, monomial(scalar))


def character_product(first, second):
    out = {}
    for (s, t), p in first.items():
        for (ss, tt), q in second.items():
            character = ((s + ss) % 2, (t + tt) % 2)
            out[character] = add(out.get(character, {}), multiply(p, q))
    return out


def physical_star(polynomial):
    """Formal conjugation: t=bar(s), q=bar(p), T=bar(S), h=bar(r),
    c,d real, bar(u)=c/u, bar(v)=d/v.
    """
    pairs = {"a": "e", "e": "a", "b": "k", "k": "b",
             "f": "j", "j": "f", "g": "ell", "ell": "g"}
    out = {}
    for exponent, coefficient in polynomial.items():
        transformed = [0] * N
        for index, power in enumerate(exponent):
            name = NAMES[index]
            if name in pairs:
                transformed[NAMES.index(pairs[name])] += power
            elif name in ("u", "v"):
                transformed[NAMES.index(name)] -= power
                transformed[NAMES.index("c" if name == "u" else "d")] += power
            else:
                transformed[index] += power
        key = tuple(transformed)
        out[key] = out.get(key, Q(0)) + coefficient
    return {key: value for key, value in out.items() if value}


def evaluate_character(p, sigma, tau):
    return add(*(scale(polynomial, sigma ** s * tau ** t)
                 for (s, t), polynomial in p.items()))


def four_character_gate():
    # a=t^T S, b=t^T r, f=q^T S, g=q^T r,
    # e=T^T s, j=T^T p, k=h^T s, ell=h^T p.
    first = {
        (0, 0): monomial(Q(1, 4), a=1),
        (0, 1): monomial(Q(1, 4), b=1, v=-1),
        (1, 0): monomial(Q(1, 4), f=1, u=1, c=-1),
        (1, 1): monomial(Q(1, 4), g=1, u=1, v=-1, c=-1),
    }
    second = {
        (0, 0): monomial(Q(1, 4), e=1),
        (1, 0): monomial(Q(1, 4), j=1, u=-1),
        (0, 1): monomial(Q(1, 4), k=1, v=1, d=-1),
        (1, 1): monomial(Q(1, 4), ell=1, v=1, u=-1, d=-1),
    }
    product = character_product(first, second)
    numerator = add(
        monomial(f=1, k=1, u=2, v=2),
        monomial(d=1, g=1, e=1, u=2),
        monomial(c=1, a=1, ell=1, v=2),
        monomial(c=1, d=1, b=1, j=1),
    )
    denominator_inverse = monomial(Q(1, 16), c=-1, d=-1, u=-1, v=-1)
    require(product[(1, 1)] == multiply(numerator, denominator_inverse),
            "bilinear numerator or denominator is incorrect")

    # Independently obtain the same coefficient by the signed sum of
    # all four substitutions, instead of character convolution.
    signed_sum = {}
    for sigma in (-1, 1):
        for tau in (-1, 1):
            evaluated = multiply(evaluate_character(first, sigma, tau),
                                 evaluate_character(second, sigma, tau))
            signed_sum = add(signed_sum, scale(evaluated, Q(sigma * tau, 4)))
    require(signed_sum == product[(1, 1)], "signed coefficient extraction failed")
    require(all(exponent[NAMES.index("u")] in (0, 2)
                and exponent[NAMES.index("v")] in (0, 2)
                for exponent in numerator), "numerator did not descend to U,V")
    delta = product[(1, 1)]
    require(physical_star(delta) == delta, "last mixed error is not formally real")
    defect_left = scale(multiply(delta, delta), 4)
    defect_right = multiply(multiply(numerator, physical_star(numerator)),
                            monomial(Q(1, 64), c=-3, d=-3))
    require(defect_left == defect_right, "physical mixed-defect identity failed")
    return len(numerator)


def retained_pair_gate():
    # A retained first-side ray against the second pair:
    # a=w^T S, b=w^T r, e=T^T x, k=h^T x.
    first = {(0, 0): monomial(Q(1, 2), a=1),
             (0, 1): monomial(Q(1, 2), b=1, v=-1)}
    second = {(0, 0): monomial(Q(1, 2), e=1),
              (0, 1): monomial(Q(1, 2), k=1, v=1, d=-1)}
    product = character_product(first, second)
    difference = scale(product[(0, 1)], 2)
    numerator = add(monomial(a=1, k=1, v=2), monomial(d=1, b=1, e=1))
    require(difference == multiply(numerator, monomial(Q(1, 2), d=-1, v=-1)),
            "retained-to-pair difference formula failed")

    # A retained second-side ray against the first pair:
    # a=t^T y, f=q^T y, e=z^T s, j=z^T p.
    first = {(0, 0): monomial(Q(1, 2), a=1),
             (1, 0): monomial(Q(1, 2), f=1, u=1, c=-1)}
    second = {(0, 0): monomial(Q(1, 2), e=1),
              (1, 0): monomial(Q(1, 2), j=1, u=-1)}
    product = character_product(first, second)
    difference = scale(product[(1, 0)], 2)
    numerator = add(monomial(f=1, e=1, u=2), monomial(c=1, a=1, j=1))
    require(difference == multiply(numerator, monomial(Q(1, 2), c=-1, u=-1)),
            "pair-to-retained difference formula failed")


def linear_combination(*terms):
    out = [Q(0)] * 4
    for coefficient, vector in terms:
        out = [x + coefficient * y for x, y in zip(out, vector)]
    return out


def row_column_ideal_gate():
    # Universal coordinates ordered as e++, e+-, e-+, e--.
    units = [[Q(int(i == j)) for j in range(4)] for i in range(4)]
    row_plus = linear_combination((1, units[0]), (1, units[1]))
    row_minus = linear_combination((1, units[2]), (1, units[3]))
    col_plus = linear_combination((1, units[0]), (1, units[2]))
    col_minus = linear_combination((1, units[1]), (1, units[3]))
    delta = [Q(1, 4), Q(-1, 4), Q(-1, 4), Q(1, 4)]
    for index, (sigma, tau) in enumerate(((1, 1), (1, -1), (-1, 1), (-1, -1))):
        left = linear_combination((1, units[index]), (-sigma * tau, delta))
        right = linear_combination((Q(1 + sigma, 4), row_plus),
                                   (Q(1 - sigma, 4), row_minus),
                                   (Q(tau, 4), col_plus),
                                   (Q(-tau, 4), col_minus))
        require(left == right, "final-error ideal identity failed")


def main():
    monomials = four_character_gate()
    retained_pair_gate()
    row_column_ideal_gate()
    path = Path(__file__).resolve()
    receipt = {
        "status": "PASS",
        "arithmetic": "exact rational Laurent polynomial arithmetic",
        "independent_scalar_inner_products": 8,
        "bilinear_numerator_monomials": monomials,
        "retained_tests": 16,
        "linear_tests": 8,
        "bilinear_tests": 1,
        "total_reduced_mixed_tests": 25,
        "claims_certified": [
            "sigma*tau coefficient of all sixteen product terms",
            "independent signed-sum coefficient extraction",
            "both orientations of retained-ray/pair difference identities",
            "ideal identities for a 2 by 2 array with zero row and column sums",
            "mixed numerator uses only u^2 and v^2",
            "physical conjugation and exact squared mixed-defect identity",
        ],
        "scope": "Mixed equations only; completion hypotheses are assumed, no quartet exclusion claimed.",
        "verifier_sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
    }
    (path.parents[1] / "certificates" / "FOUR_BY_FOUR_CROSS_RECEIPT.json").write_text(
        json.dumps(receipt, indent=2, sort_keys=True) + "\n")
    print(json.dumps(receipt, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
