#!/usr/bin/env python3
"""Exact certificate for the smooth Cayley branch at D=Q=0.

Requires SymPy. Polynomial identities, Sturm root counts and rational
intervals decide every assertion. No floating-point calculations are used.
"""
from fractions import Fraction
import sympy as sp


class Interval:
    def __init__(self, lower, upper=None):
        self.lo = Fraction(lower)
        self.hi = Fraction(lower if upper is None else upper)
        assert self.lo <= self.hi

    def __add__(self, other):
        if not isinstance(other, Interval):
            other = Interval(other)
        return Interval(self.lo + other.lo, self.hi + other.hi)

    def __mul__(self, other):
        if not isinstance(other, Interval):
            other = Interval(other)
        values = [a * b for a in (self.lo, self.hi)
                  for b in (other.lo, other.hi)]
        return Interval(min(values), max(values))


def zero(expression):
    assert sp.cancel(sp.expand(expression)) == 0


def root_readout(poly, var, a, b, readout, low, high):
    a, b = Fraction(a), Fraction(b)
    sa = sp.Rational(a.numerator, a.denominator)
    sb = sp.Rational(b.numerator, b.denominator)
    polynomial = sp.Poly(poly, var)
    assert polynomial.eval(sa) != 0 and polynomial.eval(sb) != 0
    assert polynomial.count_roots(sa, sb) == 1
    out = Interval(0)
    argument = Interval(a, b)
    for coefficient in sp.Poly(readout, var).all_coeffs():
        coefficient = sp.Rational(coefficient)
        out = out * argument + Fraction(int(coefficient.p), int(coefficient.q))
    assert Fraction(low) < out.lo <= out.hi < Fraction(high)


def main():
    x, y, z, S, T = sp.symbols('x y z S T')
    p = x*x + y*y + z*z
    J = 2*x*y*z
    W = x*x*y*y + x*x*z*z + y*y*z*z - x*x*y*y*z*z
    R = 4*(27-3*p+J)**2*(9-p+J) - (W-(p-9)*(p-18)+(p-15)*J)**2
    Q = 4*(27-3*p-J)**2*(9-p-J) - (W-(p-9)*(p-18)-(p-15)*J)**2
    C = x*x+y*y+z*z+x*y*z+x*y+x*z+y*z+3*(x+y+z)
    factors = [C, C.subs({x:-x,y:-y}, simultaneous=True),
               C.subs({x:-x,z:-z}, simultaneous=True),
               C.subs({y:-y,z:-z}, simultaneous=True)]
    zero(Q + sp.prod(factors))
    jac = sp.Matrix([C, x+y+z, x*y*z]).jacobian([x,y,z]).det()
    zero(jac-(x-y)*(x-z)*(y-z))
    F = -16*T*(3*S+T)*(S**4+10*S**3+4*S*S*T+36*S*S
                      +20*S*T+54*S+4*T*T+20*T+27)
    zero(sp.rem(sp.expand(R-F.subs({S:x+y+z,T:x*y*z})), C, z))
    A = sp.cancel(-sp.diff(F,S)/(16*T))
    B = sp.cancel(-sp.diff(F,T)/16)
    P6 = 9*S**6+27*S**5+44*S**4+120*S**3+129*S*S+81*S+54
    zero(sp.resultant(A,B,T)-384*(S+3)**2*(S*S+3)*(S*S-2*S+9)*P6)
    assert sp.Poly(sp.gcd(A.subs(S,-3),B.subs(S,-3)),T).monic().as_expr() == T
    zero((S-1)**2+8-(S*S-2*S+9))
    NT = -(45*S**5+108*S**4+121*S**3+516*S*S+780*S+450)
    basis = sp.groebner([A,B,P6],T,S)
    assert basis.reduce(228*T-NT)[1] == 0
    readout = (1605*S**5+2047*S**4-3810*S**3-19767*S*S-58725*S-39582)/171
    zero(sp.rem(sp.expand(F.subs(T,NT/228)-readout),P6,S))
    assert sp.Poly(P6,S).count_roots(-sp.oo,sp.oo) == 2
    root_readout(P6,S,Fraction(-243419232,10**8),Fraction(-243419231,10**8),
                 readout,-141,-140)
    root_readout(P6,S,Fraction(-108277327,10**8),Fraction(-108277326,10**8),
                 readout,35,36)
    print('PASS distinct signed magnitudes: positive stationary readout lies in (35,36)')

    zero(C.subs(y,x)-(z+3)*(x*x+2*x+z))
    F2 = -16*x**5*(x+2)*(x*x+2*x+3)**2*(x**3+3*x*x+x-3)**2
    zero(R.subs(y,x).subs(z,-x*x-2*x)-F2)
    P5 = 4*x**5+19*x**4+34*x**3+24*x*x-6*x-15
    zero(sp.diff(F2,x)+32*x**4*(2*x+3)*(x*x+2*x+3)*(x**3+3*x*x+x-3)*P5)
    zero(x*x+2*x+3-((x+1)**2+2))
    assert F2.subs(x,sp.Rational(-3,2)) == sp.Rational(1594323,4096) > 26
    assert sp.Poly(P5,x).count_roots(-sp.oo,sp.oo) == 1
    assert P5.subs(x,0) < 0 < P5.subs(x,1)
    print('PASS two equal signed magnitudes: no stationary value in (0,26]')
    print('SMOOTH CAYLEY CRITICAL CERTIFICATE PASS')


if __name__ == '__main__':
    main()
