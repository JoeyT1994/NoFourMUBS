#!/usr/bin/env python3
"""Exact replays for RESULT.md. No global-confinement claim is tested here."""

from fractions import Fraction as Q
from itertools import permutations
import sympy as sp
from flint import arb, ctx


def check_moments_and_cutoff():
    # All two-value stationary fourth-moment ratios for six centered reals.
    ratios = [Q(p**3 + (6-p)**3, 36*p*(6-p)) for p in range(1, 6)]
    assert ratios == [Q(7, 10), Q(1, 4), Q(1, 6), Q(1, 4), Q(7, 10)]
    # Three-value multiplicities: 4+1+1 => 1/2; 2+2+2 => 1/4.
    assert max(ratios + [Q(1, 2), Q(1, 4)]) == Q(7, 10)
    a, b = sp.symbols('a b', real=True)
    c = -a-b
    assert sp.expand(a**4+b**4+c**4-(a*a+b*b+c*c)**2/2) == 0
    # Multiplicities 3+2+1 force b=-2a, c=a, not three distinct roots.
    assert sp.expand((3*a+2*b+c).subs(b, -2*a)) == 0
    assert sp.expand(c.subs(b, -2*a)-a) == 0

    z = list(sp.symbols('z0:5', real=True))
    z.append(-sum(z))
    s2, s4 = sum(x*x for x in z), sum(x**4 for x in z)
    assert sp.expand(sum((x-y)**2 for x in z for y in z)-12*s2) == 0
    assert sp.expand(sum((x-y)**4 for x in z for y in z)-12*s4-6*s2*s2) == 0
    assert (Q(12)*Q(7, 10)+6)*36/Q(36*24) == Q(3, 5)

    # Initial small-root selection: sqrt(99/100)>119/120 => kappa<1/10.
    assert Q(99, 100) > Q(119, 120)**2
    assert Q(16, 4)*Q(1, 10)/6 == Q(1, 15) < Q(5, 6)

    t0 = Q(11, 120)**2
    radius_squared = t0-Q(3, 5)*t0*t0
    assert radius_squared == Q(2889359, 345600000)
    r0 = Q(457, 5000)
    margin = radius_squared-r0*r0
    assert margin > 0
    assert t0 < Q(5, 6)
    print('Exact cutoff squared-radius margin:', margin)


def check_lattice_gram():
    n = 6
    q = sp.eye(n)-sp.ones(n)/n
    # Vectorization order is immaterial when the two factors are the same.
    proj = sp.kronecker_product(q, q)
    embed = sp.zeros(36, 25)
    for i in range(1, 6):
        for j in range(1, 6):
            embed[6*i+j, 5*(i-1)+(j-1)] = 1
    a = sp.eye(5)-sp.ones(5)/6
    g = sp.kronecker_product(a, a)
    assert embed.T*proj.T*proj*embed == g
    assert a.eigenvals() == {sp.Rational(1, 6): 1, sp.Integer(1): 4}
    assert g.eigenvals() == {
        sp.Rational(1, 36): 1, sp.Rational(1, 6): 8, sp.Integer(1): 16
    }
    # If one wrapping integer has absolute value at least16, its coordinate
    # absolute value is at least31*pi and the G-norm exceeds5*pi.
    assert Q(31*31, 36) > 25
    print('Exact horizontal lattice Gram matrix: PASS')


ZERO = (0,)*9


def add(*terms):
    out = {}
    for p in terms:
        for e, c in p.items():
            out[e] = out.get(e, 0)+c
    return {e:c for e,c in out.items() if c}


def scale(p, c):
    return {e:a*c for e,a in p.items() if a*c}


def multiply(p, q):
    out = {}
    for e, a in p.items():
        for f, b in q.items():
            key = tuple(x+y for x,y in zip(e, f))
            out[key] = out.get(key, 0)+a*b
    return {e:c for e,c in out.items() if c}


def conjugate(p):
    # All coefficients are real integers, and each formal variable has modulus1.
    return {tuple(-x for x in e):c for e,c in p.items()}


def monomial(k):
    e = [0]*9
    e[k] = 1
    return {tuple(e):1}


def check_permanent_determinant_identities():
    entries = [[monomial(3*i+j) for j in range(3)] for i in range(3)]
    gram = [[add(*(multiply(entries[i][k], conjugate(entries[j][k]))
                   for k in range(3))) for j in range(3)] for i in range(3)]
    s, t, r = gram[1][0], gram[2][0], gram[2][1]
    p = add(*(multiply(v, conjugate(v)) for v in (s, t, r)))
    triple = multiply(multiply(s, r), conjugate(t))
    jterm = add(triple, conjugate(triple))
    permanent, determinant = {}, {}
    for perm in permutations(range(3)):
        term = {ZERO:1}
        for i, j in enumerate(perm):
            term = multiply(term, entries[i][j])
        sign = (-1)**sum(perm[i]>perm[j] for i in range(3) for j in range(i+1, 3))
        permanent = add(permanent, term)
        determinant = add(determinant, scale(term, sign))
    assert multiply(permanent, conjugate(permanent)) == add({ZERO:9}, scale(p, -1), jterm)
    assert multiply(determinant, conjugate(determinant)) == add({ZERO:27}, scale(p, -3), jterm)
    # Same-row complementary blocks reverse Gram off-diagonal signs.
    P, J = sp.symbols('P J')
    d, g = 27-3*P-J, 27-3*P+J
    assert sp.expand((2*g-d)/3-(9-P+J)) == 0
    assert sp.expand((2*d-g)/3-(9-P-J)) == 0
    assert (2*216-216)//3 == 72
    print('Exact nine-phase Laurent identities: PASS')


def check_reported_decimals():
    ctx.prec = 200

    def original(r):
        kappa = 12*(1-(1-r*r).sqrt())
        return 2*arb(6).sqrt()*(kappa.sqrt()/2).asin()

    def improved(r):
        return 6*((arb(5)/6)*(1-(1-(arb(12)/5)*r*r).sqrt())).sqrt()

    old = original(arb('0.09138'))
    assert old > arb('0.55000910049904')
    assert old < arb('0.55000910049906')
    assert old > arb('0.55')
    new = improved(arb('0.0914'))
    assert new > arb('0.54978659360828')
    assert new < arb('0.54978659360830')
    assert new < arb('0.55')
    radius = (arb(2889359)/345600000).sqrt()
    assert radius > arb('0.09143529828872')
    assert radius < arb('0.09143529828873')
    a = (arb('0.55')/(2*arb(6).sqrt())).sin()**2
    old_radius = ((arb(2)/3)*a-a*a/9).sqrt()
    assert old_radius > arb('0.09137849753250')
    assert old_radius < arb('0.09137849753251')
    print('Original gauge at0.09138:', old)
    print('Improved gauge at0.0914:', new)
    print('Improved exact terminal radius:', radius)
    print('Original formula terminal radius:', old_radius)


if __name__ == '__main__':
    check_moments_and_cutoff()
    check_lattice_gram()
    check_permanent_determinant_identities()
    check_reported_decimals()
    print('AUXILIARY EXACT VERIFICATION PASS')
