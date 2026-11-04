#!/usr/bin/env python3
"""Exact algebra for the double-zero critical-point classification.

Geometric hypotheses and the elementary triangle lemma are proved in
INTERSECTION.md. The all-zero triangle-coupling case is checked by
../conditioning_audit/verify_q_branch.py. No numerical roots are accepted.
"""
from fractions import Fraction
import sympy as s

X,Y,Z,J=s.symbols('X Y Z J')
x,y,z=s.symbols('x y z')
t,q,r=s.symbols('t q r')
p=X+Y+Z;W=X*Y+X*Z+Y*Z-X*Y*Z
g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
F=4*g*g*eta-chi*chi
signed={X:x*x,Y:y*y,Z:z*z,J:-2*x*y*z}
P=F.subs(signed)
f=x*x+y*y+z*z-x*y*z+x*y+x*z+y*z-3*(x+y+z)
R=-16*q*(q+3*t)*(4*q*q-4*q*t*t+20*q*t-20*q+t**4-10*t**3+36*t*t-54*t+27)
assert s.rem(s.Poly(s.expand(P-R.subs({t:x+y+z,q:x*y*z})),z),s.Poly(f,z)).is_zero
assert s.factor(s.det(s.Matrix([[s.diff(v,u)for u in [x,y,z]]for v in [f,x+y+z,x*y*z]]))) in [(x-y)*(x-z)*(y-z),-(x-y)*(x-z)*(y-z)]

# Distinct correlations: exact stationary elimination.
A=s.cancel(s.diff(R,t)/(16*q));B=-s.diff(R,q)/16
sextic=9*t**6-27*t**5+44*t**4-120*t**3+129*t*t-81*t+54
expected=-384*(t-3)**2*(t*t+3)*(t*t+2*t+9)*sextic
assert s.expand(s.resultant(A,B,q)-expected)==0
qp=(-45*t**5+108*t**4-121*t**3+516*t*t-780*t+450)/228
assert s.groebner([A,B,sextic],q,t,domain=s.QQ)==s.groebner([q-qp,sextic],q,t,domain=s.QQ)
assert s.gcd(s.Poly(A.subs(t,3),q),s.Poly(B.subs(t,3),q)).monic().as_expr()==q
Rred=-(1605*t**5-2047*t**4-3810*t**3+19767*t*t-58725*t+39582)/171
assert s.rem(R.subs(q,qp)-Rred,sextic,t)==0

# The sum of the three normal quadratic coefficients is symmetric.
Fx,Fy,Fz,Fj=[s.diff(F,w).subs(signed)for w in [X,Y,Z,J]]
a=-(x-1)*Fx+(x-1+(y-1)*(z-1))*Fj
b=-(y-1)*Fy+(y-1+(x-1)*(z-1))*Fj
c=-(z-1)*Fz+(z-1+(x-1)*(y-1))*Fj
symbols=s.symbols('e1 e2 e3')
ns,rem,_=s.symmetrize(s.expand(a+b+c),[x,y,z],formal=True,symbols=symbols)
assert rem==0
ns=ns.subs({symbols[0]:t,symbols[1]:t*t-3*t-q,symbols[2]:q})
Nred=(5622*t**5-9917*t**4+3342*t**3-30315*t*t-6102*t+54702)/57
assert s.rem(ns.subs(q,qp)-Nred,sextic,t)==0

# Isolate every real sextic root by Sturm's theorem, using rational intervals.
I1=(s.Rational(1082773263,10**9),s.Rational(1082773265,10**9))
I2=(s.Rational(2434192313,10**9),s.Rational(2434192315,10**9))
poly=s.Poly(sextic,t)
assert poly.count_roots(-s.oo,s.oo)==2
assert poly.count_roots(*I1)==1 and poly.count_roots(*I2)==1

def imul(a,b):
    vals=[a[i]*b[j]for i in [0,1]for j in [0,1]]
    return min(vals),max(vals)
def horner(P,I):
    lo=hi=s.Rational(0)
    for coefficient in s.Poly(P,t).all_coeffs():
        lo,hi=imul((lo,hi),I);lo+=coefficient;hi+=coefficient
    return lo,hi
assert horner(Nred,I1)[0]>200
assert horner(Rred,I2)[1]<-140
print('PASS: all distinct-correlation stationary points have R<0 or positive normal curvature')

# Repeated correlations x=y=r: strictness excludes z=3.
assert s.factor(f.subs({x:r,y:r}))==(z-3)*(-r*r+2*r+z)
repeat=-16*r**5*(r-2)*(r*r-2*r+3)**2*(r**3-3*r*r+r+3)**2
assert s.expand(R.subs({t:r*r,q:r**3*(r-2)})-repeat)==0
quintic=4*r**5-19*r**4+34*r**3-24*r*r-6*r+15
repeat_derivative=-32*r**4*(2*r-3)*(r*r-2*r+3)*(r**3-3*r*r+r+3)*quintic
assert s.expand(s.diff(repeat,r)-repeat_derivative)==0
assert s.Poly(quintic,r).count_roots(0,2)==0
assert repeat.subs(r,s.Rational(3,2))==s.Rational(3**13,2**12)
print('PASS: the only strict repeated-correlation stationary point is r=3/2')

# The only exceptional one-edge weighted-triangle family has all edges nonzero.
for sx,sy in [(1,1),(1,-1),(-1,1),(-1,-1)]:
    sz=-sx*sy
    at={x:sx,y:sy,z:sz}
    assert (x*Fx-y*z*Fj).subs(at)==128*sx
    assert (y*Fy-x*z*Fj).subs(at)==128*sy
    assert (z*Fz-x*y*Fj).subs(at)==128*sz
print('PASS: one-edge exceptional family contradicts its assumed zero couplings')
print('DOUBLE-ZERO INTERSECTION: ALL EXACT ALGEBRA CHECKS PASSED')
