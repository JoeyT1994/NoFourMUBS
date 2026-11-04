#!/usr/bin/env python3
"""Exact invariant-coordinate exclusion away from the two fold hypersurfaces."""
import sympy as s
X,Y,Z,J,q=s.symbols('X Y Z J q')
p=X+Y+Z;W=X*Y+X*Z+Y*Z-X*Y*Z
g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
R=4*g*g*eta-chi*chi
RX,RY,RZ,RJ=[s.diff(R,a)for a in [X,Y,Z,J]]
assert s.expand(RX-RY+2*chi*(Y-X)*(1-Z))==0
for sub,jrule,expected_values in [
    ({X:q,Y:q,Z:q},(q*q+4*q-9)/2,[0,-1024,0]),
    ({X:1,Y:1,Z:q},(q*q-4*q-9)/6,[0,s.Rational(1024,27),0])]:
    f=-J+q*q-3*q if sub[X]==q else -J+q-3
    # R>0 forces f!=0. Removing this factor is therefore legitimate.
    A=s.cancel(RX.subs(sub)/(-2*f));B=s.cancel(RJ.subs(sub)/(2*f))
    assert s.expand(B.subs(J,jrule))==0
    reduced=s.factor(A.subs(J,jrule))
    assert s.degree(reduced,q)==3
    assert s.div(reduced,(q-1)*(q-5)*(q-9),q)[1]==0
    actual=[s.factor(R.subs(sub).subs(J,jrule).subs(q,v))for v in [1,5,9]]
    assert actual==expected_values
H=s.hessian(R,[X,Y,Z,J]).subs({X:1,Y:1,Z:5,J:s.Rational(-2,3)})
v=s.Matrix([1,-1,0,0])
assert (v.T*H*v)[0]==s.Rational(512,3)
print('REGULAR INVARIANT BRANCH: ALL EXACT CHECKS PASSED')
