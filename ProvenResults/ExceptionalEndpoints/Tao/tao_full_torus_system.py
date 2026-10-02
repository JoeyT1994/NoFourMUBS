#!/usr/bin/env python3
"""Generate the exact algebraic-torus system for U(S6).

The dephased phase vector is z=(1,z1,...,z5).  On the physical torus,
conjugation is inversion.  Five Tao overlap-modulus equations, t^2+3=0,
and a Rabinowitsch equation produce a square rational system for msolve.
"""

from collections import defaultdict
from fractions import Fraction
from pathlib import Path
import argparse
import hashlib


NAMES = [f"z{k}" for k in range(1, 6)] + ["t", "q"]
N = len(NAMES)
TAO = [
    [0, 0, 0, 0, 0, 0],
    [0, 0, 1, 1, 2, 2],
    [0, 1, 0, 2, 2, 1],
    [0, 1, 2, 0, 1, 2],
    [0, 2, 2, 1, 0, 1],
    [0, 2, 1, 2, 1, 0],
]


def add_term(poly, exponent, coefficient):
    poly[tuple(exponent)] += Fraction(coefficient)


def omega_coeff(power):
    """Return a+b*t for omega^power, omega=(-1+t)/2, t^2=-3."""
    power %= 3
    if power == 0:
        return ((Fraction(1), 0),)
    if power == 1:
        return ((Fraction(-1, 2), 0), (Fraction(1, 2), 1))
    return ((Fraction(-1, 2), 0), (Fraction(-1, 2), 1))


def overlap_equation(row):
    base = [1, 1, 1, 1, 1, 0, 0]
    out = defaultdict(Fraction)
    for i in range(6):
        for j in range(6):
            exponent = base.copy()
            if i:
                exponent[i - 1] += 1
            if j:
                exponent[j - 1] -= 1
            for coefficient, t_power in omega_coeff(row[j] - row[i]):
                term = exponent.copy()
                term[5] += t_power
                add_term(out, term, coefficient)
    add_term(out, base, -6)
    return {e: c for e, c in out.items() if c}


def render(poly):
    pieces = []
    for exponent, coefficient in sorted(poly.items()):
        factors = []
        for name, power in zip(NAMES, exponent):
            if power == 1:
                factors.append(name)
            elif power:
                factors.append(f"{name}^{power}")
        monomial = "*".join(factors) or "1"
        magnitude = abs(coefficient)
        number = (str(magnitude.numerator) if magnitude.denominator == 1
                  else f"{magnitude.numerator}/{magnitude.denominator}")
        body = monomial if magnitude == 1 and monomial != "1" else (
            number + ("" if monomial == "1" else f"*{monomial}")
        )
        pieces.append(("-" if coefficient < 0 else ("+" if pieces else "")) + body)
    return "".join(pieces) or "0"


def build():
    # The sixth squared overlap is redundant by Parseval once |z_j|=1.
    equations = [overlap_equation(row) for row in TAO[:5]]
    t2 = defaultdict(Fraction)
    add_term(t2, [0, 0, 0, 0, 0, 2, 0], 1)
    add_term(t2, [0] * N, 3)
    equations.append(dict(t2))
    saturation = defaultdict(Fraction)
    add_term(saturation, [1, 1, 1, 1, 1, 0, 1], 1)
    add_term(saturation, [0] * N, -1)
    equations.append(dict(saturation))
    return equations


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--order",
        default=",".join(NAMES),
        help="comma-separated msolve variable order; polynomial names are unchanged",
    )
    args = parser.parse_args()
    order = args.order.split(",")
    if sorted(order) != sorted(NAMES):
        raise ValueError(f"--order must be a permutation of {NAMES}")
    equations = build()
    text = ",".join(order) + "\n0\n" + "\n".join(
        render(poly) + ("," if k + 1 < len(equations) else "")
        for k, poly in enumerate(equations)
    ) + "\n"
    args.output.write_text(text)
    print("variables", N, "equations", len(equations),
          "supports", sum(len(p) for p in equations))
    print("sha256", hashlib.sha256(text.encode()).hexdigest())


if __name__ == "__main__":
    main()
