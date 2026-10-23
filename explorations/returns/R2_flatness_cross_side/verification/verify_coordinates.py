#!/usr/bin/env python3
"""Exact checks of the C/W coordinate change and ideal arithmetic.

No seed substitution, matched-flatness assertion, or previous certificate
is used. SymPy is needed only for independent polynomial identities.
"""
import json
import sys
import sympy as s

if sys.flags.optimize:
    raise SystemExit("Assertions must be enabled.")


def zero(expr):
    return s.expand(expr) == 0


def assert_zero_matrix(M):
    assert all(zero(e) for e in M)


x=s.symbols('x0:3')
y=s.symbols('y0:3')
A=s.Matrix([[1,1,1],x,y])  # generic normalized matrix representing bar(A)
Psi=A[1:3,:]-s.Matrix([sum(x)/3,sum(y)/3])*s.ones(1,3)
M=Psi*Psi.T
J=s.Matrix([[0,0],[1,0],[0,1]])
assert_zero_matrix(A*Psi.T-J*M)
assert zero(3*M.det()-A.det()**2)
print('PASS: generic covariance coordinate change and determinant.')

u=s.symbols('u0:3')
v=s.symbols('v0:3')
B=s.Matrix([[1,1,1],u,v])
Phi=B[1:3,:]-s.Matrix([sum(u)/3,sum(v)/3])*s.ones(1,3)
N=Phi*Phi.T
C=s.Matrix(2,2,s.symbols('c0:4'))
Delta=Psi.T*C*Phi
assert_zero_matrix(A*Delta*B.T-J*M*C*N.T*J.T)
print('PASS: exact W = J M_v C M_h^T J^T for arbitrary contraction.')

z,w,h,eta=s.symbols('z w h eta')
S=z+w-h
T=z*w-eta
qz=z*z-h*z+eta
qw=w*w-h*w+eta
G=s.groebner([qz,qw],z,w,domain=s.QQ.frac_field(h,eta))
def reduce(expr):
    return G.reduce(s.expand(expr))[1]
for expr in (z*S-T,w*S-T,z*T-h*T+eta*S,w*T-h*T+eta*S,
             z*w*S-h*T+eta*S,z*w*T-(h*h-eta)*T+h*eta*S):
    assert reduce(expr)==0
print('PASS: six matching-ideal multiplication rules.')

a,b,c,d,B0,D0=s.symbols('a b c d B0 D0')
f=a+b*z+c*w+d*z*w
Bc=(a-eta*d)*B0-eta*(b+c+h*d)*D0
Dc=(b+c+h*d)*B0+(a+h*(b+c)+(h*h-eta)*d)*D0
expr=s.expand(f*(B0*S+D0*T)-Bc*S-Dc*T)
G2=s.groebner([qz,qw],z,w,domain=s.QQ.frac_field(h,eta,a,b,c,d,B0,D0))
assert G2.reduce(expr)[1]==0
print('PASS: generic coefficient-transfer identity.')

# Explicit affine inverse numerator for a generic symmetric 2 by 2 pencil.
a0,b0,c0,a1,b1,c1=s.symbols('a0 b0 c0 a1 b1 c1')
M0=s.Matrix([[a0,b0],[b0,c0]])
M1=s.Matrix([[a1,b1],[b1,c1]])
d0=M0.det()-eta*M1.det()
d1=s.trace(M0.adjugate()*M1)+h*M1.det()
J0,J1=M0.adjugate(),M1.adjugate()
I0=(d0+h*d1)*J0+eta*d1*J1
I1=-d1*J0+d0*J1
Norm=d0*d0+h*d0*d1+eta*d1*d1
for entry in (M0+z*M1)*(I0+z*I1)-Norm*s.eye(2):
    assert s.Poly(entry,z).rem(s.Poly(qz,z)).as_expr().expand()==0
print('PASS: generic affine covariance inverse numerator.')

print(json.dumps({'status':'PASS','scope':'coordinate transformation and matching-ideal arithmetic only',
                  'matched_flatness_proved_here':False},sort_keys=True))
