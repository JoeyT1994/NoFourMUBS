#!/usr/bin/env python3
"""Exact Laurent verification of the universal 3 by 3 side identity.

Python standard library only.  No numerical tolerances and no input data.
Conjugation sends every unit phase variable to its reciprocal.  All
coefficients in this calculation are integers.
"""

from collections import defaultdict
import json

N = 4
ZERO_EXP = (0,) * N


def const(c):
    return {ZERO_EXP: c} if c else {}


def add(*polys):
    out = defaultdict(int)
    for poly in polys:
        for exponent, coefficient in poly.items():
            out[exponent] += coefficient
    return {e: c for e, c in out.items() if c}


def scale(poly, c):
    return {e: c * v for e, v in poly.items() if c * v}


def mul(*polys):
    out = const(1)
    for poly in polys:
        new = defaultdict(int)
        for e, c in out.items():
            for f, d in poly.items():
                new[tuple(a + b for a, b in zip(e, f))] += c * d
        out = {e: c for e, c in new.items() if c}
    return out


def conj(poly):
    return {tuple(-a for a in e): c for e, c in poly.items()}


def norm2(poly):
    return mul(poly, conj(poly))


def require_equal(name, left, right, checks):
    difference = add(left, scale(right, -1))
    if difference:
        raise AssertionError(f"{name}: {len(difference)} nonzero terms")
    checks.append({"identity": name, "residual_terms": 0})


def main():
    one = const(1)
    a, b, c, d = [
        {tuple(int(i == j) for i in range(N)): 1} for j in range(N)
    ]
    # B = [[1,1,1],[1,a,b],[1,c,d]].
    perm = add(mul(a, d), mul(b, c), a, b, c, d)
    det = add(mul(a, d), scale(mul(b, c), -1),
              scale(d, -1), b, c, scale(a, -1))
    psi = mul(perm, det, det, conj(mul(a, b, c, d)))
    s = add(one, a, b)
    t = add(one, c, d)
    r = add(one, mul(c, conj(a)), mul(d, conj(b)))
    X, Y, Z = norm2(s), norm2(t), norm2(r)
    p = add(X, Y, Z)
    triple = mul(s, r, conj(t))
    J = add(triple, conj(triple))
    W = add(mul(X, Y), mul(X, Z), mul(Y, Z), scale(mul(X, Y, Z), -1))
    g = add(const(27), scale(p, -3), J)
    eta = add(const(9), scale(p, -1), J)
    chi = add(W, scale(mul(add(p, const(-9)), add(p, const(-18))), -1),
              mul(add(p, const(-15)), J))
    discriminant = add(scale(mul(g, g, eta), 4), scale(mul(chi, chi), -1))
    signed = add(psi, scale(conj(psi), -1))
    checks = []
    require_equal("g = |det B|^2", g, norm2(det), checks)
    require_equal("eta = |perm B|^2", eta, norm2(perm), checks)
    require_equal("chi = -(Psi + conjugate(Psi))", chi,
                  scale(add(psi, conj(psi)), -1), checks)
    require_equal("R = -(Psi-conjugate(Psi))^2 = 4(Im Psi)^2",
                  discriminant, scale(mul(signed, signed), -1), checks)
    print(json.dumps({
        "status": "PASS",
        "arithmetic": "exact integers in Z[a^+-1,b^+-1,c^+-1,d^+-1]",
        "checks": checks,
        "psi_terms": len(psi),
        "psi_coefficient_l1": sum(abs(v) for v in psi.values()),
        "R_terms": len(discriminant),
    }, indent=2))


if __name__ == "__main__":
    main()
