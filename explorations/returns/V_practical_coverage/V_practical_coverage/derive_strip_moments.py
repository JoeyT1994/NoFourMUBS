#!/usr/bin/env python3
"""Regenerate D, R, and the 66-term exact whole-strip moment identity.

Standard library only.  The input is the determinant/permanent definition
for the three rows (1;x;y).  All six orthogonality moments are set to zero
only after expansion of the actual corner polynomial.
"""
from collections import Counter, defaultdict
from fractions import Fraction
from itertools import permutations
import json


def add(*ps):
    r = {}
    for p in ps:
        for e, c in p.items():
            v = r.get(e, 0) + c
            if v:
                r[e] = v
            else:
                r.pop(e, None)
    return r


def mul(p, q):
    r = {}
    for e, c in p.items():
        for f, d in q.items():
            g = tuple(a + b for a, b in zip(e, f))
            v = r.get(g, 0) + c * d
            if v:
                r[g] = v
            else:
                r.pop(g, None)
    return r


def conjugate(p):
    return {tuple(-a for a in e): c for e, c in p.items()}


def regenerate():
    nv = 6
    one = {(0,) * nv: 1}
    def mono(i):
        return {tuple(int(j == i) for j in range(nv)): 1}
    e = [[one] * 3,
         [mono(j) for j in range(3)],
         [mono(j + 3) for j in range(3)]]
    per = {}
    det = {}
    for p in permutations(range(3)):
        term = mul(mul(e[0][p[0]], e[1][p[1]]), e[2][p[2]])
        sign = (-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))
        per = add(per, term)
        det = add(det, {ex: sign * c for ex, c in term.items()})
    psi = {tuple(v - 1 for v in ex): c
           for ex, c in mul(per, mul(det, det)).items()}
    d = add(psi, {ex: -c for ex, c in conjugate(psi).items()})
    r = {ex: -c for ex, c in mul(d, d).items()}
    assert len(d) == 48 and all(abs(c) == 1 for c in d.values())
    assert max(sum(abs(v) for v in ex) for ex in d) == 8
    assert len(r) == 817 and max(sum(abs(v) for v in ex) for ex in r) == 16
    assert sum(abs(c) for c in r.values()) == 2160

    # Summing over ordered triples is exactly six times the corner sum.
    # Repeated column indices contribute zero because det(E) vanishes.
    # For each monomial, summing over the three independent columns
    # yields a product of three whole-strip moments M_(a,b).
    zero = {(1, 0), (-1, 0), (0, 1), (0, -1), (1, -1), (-1, 1)}
    s = defaultdict(Fraction)
    for ex, c in r.items():
        moments = tuple((ex[i], ex[i + 3]) for i in range(3))
        if any(m in zero for m in moments):
            continue
        nzero = sum(m == (0, 0) for m in moments)
        monomial = tuple(sorted(m for m in moments if m != (0, 0)))
        s[monomial] += Fraction(c, 6) * 6 ** nzero
    s = {m: c for m, c in s.items() if c}
    assert len(s) == 66 and all(c.denominator == 1 for c in s.values())
    return {
        "status": "PASS",
        "D_term_count": len(d),
        "D_absolute_coefficient_sum": sum(abs(c) for c in d.values()),
        "D_absolute_exponent_degrees": dict(sorted(Counter(sum(abs(v) for v in ex) for ex in d).items())),
        "R_term_count": len(r),
        "R_absolute_coefficient_sum": sum(abs(c) for c in r.values()),
        "R_absolute_exponent_degrees": dict(sorted(Counter(sum(abs(v) for v in ex) for ex in r).items())),
        "D_variables": ["x0", "x1", "x2", "y0", "y1", "y2"],
        "D_monomials": [{"exponents": ex, "coefficient": c} for ex, c in sorted(d.items())],
        "S_moment_identity": [{"moments": m, "coefficient": int(c)} for m, c in sorted(s.items())],
        "interpretation": "S=sum over all20 column triples of R; M(a,b)=sum over all6 columns x^a y^b",
        "orthogonality_moments_removed": sorted(zero),
        "numerical_acceptance_used": False,
    }


if __name__ == "__main__":
    print(json.dumps(regenerate(), indent=2))
