#!/usr/bin/env python3
"""Certify dR/dtheta4 > 1158 on a fixed seed box at a regular F6 corner.

Base theta=(1,2,2,4)*pi/3.  Displacements satisfy
|delta theta1|,|delta theta2|,|delta theta3| <= 1/20 and
|delta theta4| <= 1/100.

Standard-library only.  Constructs the Laurent polynomial R from its
definition using integer arithmetic, evaluates the Taylor coefficients
exactly in Q(sqrt(3)), and uses a rational fourth-order remainder bound.
"""

from collections import defaultdict
from fractions import Fraction as Q
from itertools import product
from math import factorial, prod


ZERO = (0,0,0,0)
BASE = (1,2,2,4)
RADII = (Q(1,20),Q(1,20),Q(1,20),Q(1,100))


def add(*args):
    result = defaultdict(int)
    for p in args:
        for e,c in p.items():
            result[e] += c
    return {e:c for e,c in result.items() if c}


def scale(p,n):
    return {e:c*n for e,c in p.items() if c*n}


def mul(*args):
    result = {ZERO:1}
    for p in args:
        next_result = defaultdict(int)
        for e,c in result.items():
            for f,d in p.items():
                next_result[tuple(a+b for a,b in zip(e,f))] += c*d
        result = {e:c for e,c in next_result.items() if c}
    return result


def bar(p):
    # The coefficient field here is Z; conjugation inverts unit variables.
    return {tuple(-a for a in e):c for e,c in p.items()}


def constant(c):
    return {ZERO:c} if c else {}


def R_polynomial():
    a,b,c,d = [{tuple(int(j==k) for j in range(4)):1} for k in range(4)]
    s = scale(add(constant(1),a,b),-1)
    t = scale(add(constant(1),c,d),-1)
    r = scale(add(constant(1),mul(c,bar(a)),mul(d,bar(b))),-1)
    X,Y,Z = mul(s,bar(s)),mul(t,bar(t)),mul(r,bar(r))
    p = add(X,Y,Z)
    cycle = mul(s,r,bar(t))
    J = add(cycle,bar(cycle))
    W = add(mul(X,Y),mul(X,Z),mul(Y,Z),scale(mul(X,Y,Z),-1))
    g = add(constant(27),scale(p,-3),J)
    eta = add(constant(9),scale(p,-1),J)
    chi = add(W,
              scale(mul(add(p,constant(-9)),add(p,constant(-18))),-1),
              mul(add(p,constant(-15)),J))
    return add(scale(mul(g,g,eta),4),scale(mul(chi,chi),-1))


def phase_weight(power, phase):
    """Real(i**power * exp(i*pi*phase/3)), with sqrt3 factored out.

    For even power this is rational.  For odd power it is a rational
    multiple of sqrt(3).  The caller knows power's parity.
    """
    phase %= 6
    cos_table = (Q(1),Q(1,2),Q(-1,2),Q(-1),Q(-1,2),Q(1,2))
    sin_over_sqrt3 = (Q(0),Q(1,2),Q(1,2),Q(0),Q(-1,2),Q(-1,2))
    if power % 2 == 0:
        return (-1)**(power//2) * cos_table[phase]
    return (-1)**((power+1)//2) * sin_over_sqrt3[phase]


def derivative_coefficient(R, alpha):
    """Coefficient D^alpha(partial_4 R)(base), sqrt3 factored if needed."""
    degree = sum(alpha)
    value = Q(0)
    for e,c in R.items():
        value += c*e[3]*prod(e[k]**alpha[k] for k in range(4)) \
            * phase_weight(degree+1,sum(x*y for x,y in zip(e,BASE)))
    # degree even => power=degree+1 odd => multiply value by sqrt3.
    return value


def verify():
    R = R_polynomial()
    assert len(R) == 2083
    assert R == bar(R)
    sqrt3_lower,sqrt3_upper = Q(433,250),Q(1733,1000)
    assert sqrt3_lower > 0 and sqrt3_lower**2 < 3 < sqrt3_upper**2
    base = derivative_coefficient(R,ZERO)
    assert base == 1152
    weights = []
    raw_weights = []
    for degree in range(1,4):
        weight = Q(0)
        for alpha in product(range(degree+1),repeat=4):
            if sum(alpha) != degree:
                continue
            coefficient = derivative_coefficient(R,alpha)
            weight += abs(coefficient) \
                * prod(RADII[k]**alpha[k] for k in range(4)) \
                / prod(factorial(a) for a in alpha)
        raw_weights.append(weight)
        weights.append(weight*sqrt3_upper if degree % 2 == 0 else weight)
    assert raw_weights[0] == 126
    assert raw_weights[2] == Q(338259,125000)
    remainder = sum(Q(abs(c*e[3]),factorial(4))
                    * sum(abs(e[k])*RADII[k] for k in range(4))**4
                    for e,c in R.items())
    assert remainder == Q(2536112725,3906250)
    lower = base*sqrt3_lower - sum(weights) - remainder
    assert lower > 1158, lower
    print("PASS: integer Laurent polynomial R, 2083 terms, real symmetry.")
    print("PASS: derivative at the base is exactly 1152*sqrt(3).")
    print("Taylor absolute variation bounds:")
    for degree,(raw,bound) in enumerate(zip(raw_weights,weights),1):
        factor = "*sqrt(3)" if degree % 2 == 0 else ""
        print(f"  degree {degree}: {raw}{factor} <= {bound}")
    print(f"  order-4 remainder <= {remainder}")
    print(f"  derivative lower bound >= {lower} > 1158")
    print("PASS: partial R / partial theta4 > 1158 throughout the box.")


if __name__ == "__main__":
    verify()
