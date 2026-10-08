#!/usr/bin/env python3
"""Exact q-zero singular-stratum critical-point certificate.

Requires SymPy. Every decision is made in integer/rational arithmetic, exact
polynomial algebra, or Sturm root counting. No floating-point data are used.
The seed-Jacobian identities are certified separately by
../global/verify_critical_invariants.py.
"""
from fractions import Fraction as Fr
import sympy as s


class Interval:
    def __init__(self, lo, hi=None):
        self.lo = Fr(lo); self.hi = Fr(lo if hi is None else hi)
        assert self.lo <= self.hi
    def __add__(self, other):
        if not isinstance(other, Interval): other = Interval(other)
        return Interval(self.lo + other.lo, self.hi + other.hi)
    __radd__ = __add__
    def __mul__(self, other):
        if not isinstance(other, Interval): other = Interval(other)
        products = [a*b for a in (self.lo, self.hi) for b in (other.lo, other.hi)]
        return Interval(min(products), max(products))
    __rmul__ = __mul__


def as_fr(x):
    x = s.Rational(x)
    return Fr(int(x.p), int(x.q))


def enclose(poly, variable, a, b):
    out = Interval(0); arg = Interval(a, b)
    for coefficient in s.Poly(poly, variable).all_coeffs():
        out = out * arg + as_fr(coefficient)
    return out


def check_root_interval(poly, variable, a, b, readout, low, high):
    a, b = Fr(a), Fr(b)
    pa, pb = s.Rational(a.numerator, a.denominator), s.Rational(b.numerator, b.denominator)
    P = s.Poly(poly, variable)
    assert P.eval(pa) != 0 and P.eval(pb) != 0
    assert P.count_roots(pa, pb) == 1
    value = enclose(readout, variable, a, b)
    assert Fr(low) < value.lo <= value.hi < Fr(high), (value.lo, value.hi, low, high)


def main():
    X,Y,Z,J,x,z,h,B = s.symbols('X Y Z J x z h B')
    variables = (X,Y,Z,J)
    p = X+Y+Z
    W = X*Y+X*Z+Y*Z-X*Y*Z
    g = 27-3*p+J
    eta = 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    F = s.expand(4*g*g*eta-chi*chi)
    Q = F.subs(J,-J)
    chiQ = chi.subs(J,-J)
    gradQ = [s.diff(Q,v) for v in variables]
    assert s.expand(gradQ[0]-gradQ[1]+2*chiQ*(X-Y)*(Z-1)) == 0
    assert s.expand(s.diff(W,X)-s.diff(W,Y)-(X-Y)*(Z-1)) == 0

    # The physical q-zero set cannot have det(E E*) = 3h-J = 0 when F>0.
    Fhb = 4*(3*h+J)**2*(h+J)-(B-(h+6)*J)**2
    Qhb = 4*(3*h-J)**2*(h-J)-(B+(h+6)*J)**2
    boundary = s.expand(Fhb.subs(B,-(h+6)*J).subs(J,3*h))
    assert s.expand(boundary + 36*h*h*((h-2)**2+32)) == 0

    # Signed square-root chart for Q=0 where 3h-J>0.
    replacement = {B:-(h+6)*J+2*(3*h-J)*z}
    Rz = 4*J*(-J+6*z+18)*(J*J+2*J*z*z+2*J*z-2*J+z**4+2*z**3)
    assert s.expand(Qhb.subs(replacement).subs(h,J+z*z)) == 0
    assert s.expand(Fhb.subs(replacement).subs(h,J+z*z)-Rz) == 0
    A = s.cancel(s.diff(Rz,J)/8)
    C = s.cancel(s.diff(Rz,z)/(8*J))  # J=0 gives Rz=0 and is excluded.
    sextic = 9*z**6+135*z**5+854*z**4+2838*z**3+5070*z*z+4392*z+1296
    expected_resultant = 6*z*z*(z*z+6*z+12)*(z*z+8*z+24)*sextic
    assert s.expand(s.resultant(A,C,J)-expected_resultant) == 0
    assert s.Poly(s.gcd(A.subs(z,0),C.subs(z,0)),J).monic().as_expr() == J
    assert s.expand((z+3)**2+3-(z*z+6*z+12)) == 0
    assert s.expand((z+4)**2+8-(z*z+8*z+24)) == 0
    N = 45*z**5+567*z**4+2875*z**3+6891*z*z+7512*z+2700
    GB = s.groebner([A,C,sextic],J,z)
    assert GB.reduce(114*J-N)[1] == 0
    Rrem = -(1605*z**5+22028*z**4+116076*z**3+308289*z*z+385956*z+162648)/171
    assert s.rem(s.expand(Rz.subs(J,N/114)-Rrem),sextic,z) == 0
    assert s.Poly(sextic,z).count_roots(-s.oo,s.oo) == 2
    check_root_interval(sextic,z,Fr(-191722674,10**8),Fr(-191722673,10**8),Rrem,35,36)
    check_root_interval(sextic,z,Fr(-56580769,10**8),Fr(-56580768,10**8),Rrem,-141,-140)
    print('Generic q-zero criticality: the only positive candidate lies in (35,36): PASS')

    # Rank drop of (X,Y,Z)->(p,W): all equal, or two variables equal to one.
    eq = {X:x,Y:x,Z:x}
    two = {X:1,Y:1,Z:x}
    for sub,A0,C0 in ((eq,x*x-3*x,x*x+18*x-27),(two,x-3,x*x-6*x-3)):
        assert s.expand(F.subs(sub)+(A0-J)**2*(C0-4*J)) == 0
        assert s.expand(Q.subs(sub)+(A0+J)**2*(C0+4*J)) == 0

    # Smooth-Q branch at all-equal invariants.
    Req = -(x+3)**2*(5*x-9)**2*(x*x+18*x-27)/8
    Teq = 5*x**3+79*x*x-45*x-135
    assert s.expand(F.subs(eq).subs(J,-(x*x+18*x-27)/4)-Req) == 0
    assert s.expand(s.diff(Req,x)+s.Rational(3,4)*(x+3)*(5*x-9)*Teq) == 0
    Req_rem = s.Rational(915502,25)*x*x-s.Rational(90972,5)*x-s.Rational(291546,5)
    assert s.rem(s.expand(Req-Req_rem),Teq,x) == 0
    assert s.Poly(Teq,x).count_roots(0,s.oo) == 1
    check_root_interval(Teq,x,Fr(153435224,10**8),Fr(153435225,10**8),Req_rem,-14,-13)
    print('Smooth Q, all-equal invariants: no positive critical candidate: PASS')

    # Smooth-Q branch with two invariant variables equal to one.
    Rtwo = -(x-5)**2*(x+3)**2*(x*x-6*x-3)/8
    Ttwo = 3*x**3-19*x*x-3*x+51
    assert s.expand(F.subs(two).subs(J,-(x*x-6*x-3)/4)-Rtwo) == 0
    assert s.expand(s.diff(Rtwo,x)+(x-5)*(x+3)*Ttwo/4) == 0
    Rtwo_rem = -s.Rational(2018,81)*x*x+s.Rational(3484,27)*x+s.Rational(4282,27)
    assert s.rem(s.expand(Rtwo-Rtwo_rem),Ttwo,x) == 0
    assert s.Poly(Ttwo,x).count_roots(0,s.oo) == 2
    check_root_interval(Ttwo,x,Fr(183627977,10**8),Fr(183627978,10**8),Rtwo_rem,311,312)
    check_root_interval(Ttwo,x,Fr(603187465,10**8),Fr(603187466,10**8),Rtwo_rem,30,31)
    print('Smooth Q, two-one invariants: positive candidates in (311,312) or (30,31): PASS')

    # Singular-Q curves; verify all gradients, Hessian congruences and readouts.
    eq_sing = {X:x,Y:x,Z:x,J:3*x-x*x}
    two_sing = {X:1,Y:1,Z:x,J:3-x}
    assert all(s.expand(v.subs(eq_sing)) == 0 for v in gradQ)
    assert all(s.expand(v.subs(two_sing)) == 0 for v in gradQ)
    Hq = s.hessian(Q,variables)
    e1=s.Matrix([1,-1,0,0]); e2=s.Matrix([1,1,-2,0]); e3=s.Matrix([0,0,0,1])
    k=s.Matrix([1,1,1,3-2*x]); basis=s.Matrix.hstack(e1,e2,e3,k)
    Cx=(x-9)*(x-1)
    target=s.diag(-8*Cx*(x-3)**2,-24*Cx*(x-3)**2,6*Cx,0)
    assert s.simplify(basis.det()) != 0
    assert (basis.T*Hq.subs(eq_sing)*basis-target).applyfunc(s.expand) == s.zeros(4)
    a=s.Matrix([1,-1,0,0]); b=s.Matrix([1,1,0,0]); c=s.Matrix([0,0,1,1])+b/3
    k2=s.Matrix([0,0,1,-1]); basis2=s.Matrix.hstack(a,b,c,k2)
    target2=s.diag(-32*Cx,24*Cx,-s.Rational(32,3)*Cx,0)
    assert basis2.det() != 0
    assert (basis2.T*Hq.subs(two_sing)*basis2-target2).applyfunc(s.expand) == s.zeros(4)
    Req_s=-4*x*x*(x-3)**2*(x+3)*(5*x-9)
    Rtwo_s=-4*(x-5)*(x-3)**2*(x+3)
    assert s.expand(F.subs(eq_sing)-Req_s) == 0
    assert s.expand(F.subs(two_sing)-Rtwo_s) == 0
    assert s.expand(s.diff(Req_s,x)+24*x*(x-3)*(x-1)*(5*x*x-27)) == 0
    assert s.expand(s.diff(Rtwo_s,x)+16*(x-3)*(x*x-3*x-6)) == 0
    assert s.expand((4*X*Y*Z-J*J).subs(eq_sing)-x*x*(x-1)*(9-x)) == 0
    assert s.expand((4*X*Y*Z-J*J).subs(two_sing)-(x-1)*(9-x)) == 0
    assert 5*s.Rational(9,5)**2 < 27
    assert s.rem(Rtwo_s-(612-132*x),x*x-3*x-6,x) == 0
    # At x=(3+sqrt(33))/2, R=414-66 sqrt(33)>30.
    assert 66**2*33 < (414-30)**2
    print('Singular-Q Hessians have signature (2,1,0) on their positive physical ranges: PASS')
    print('Singular-Q curve criticality: no positive value <=30: PASS')
    print('QZERO POSITIVE-CHIRALITY CRITICAL CERTIFICATE PASS')


if __name__ == '__main__':
    main()
