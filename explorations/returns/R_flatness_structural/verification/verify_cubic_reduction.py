"""Exact small universal checks; this script does NOT certify matched flatness."""

import sys as _verification_sys
if _verification_sys.flags.optimize:
    raise SystemExit("Assertions are required. Run Python without -O or -OO.")

import sympy as s
from itertools import permutations
x0,x1,x2,y0,y1,y2=s.symbols('x0 x1 x2 y0 y1 y2', nonzero=True)
vs=(x0,x1,x2,y0,y1,y2)
A=s.Matrix([[1,1,1],[x0,x1,x2],[y0,y1,y2]])
def cj(f):
    return f.xreplace({x:1/x for x in vs})
def cm(M):return M.applyfunc(cj)
def zero(f):
    n=s.cancel(f).as_numer_denom()[0]
    assert s.expand(n)==0, n
C=A.cofactor_matrix(); delta=A.det(); U=x0*x1*x2; V=y0*y1*y2; P=U*V
r=(s.Integer(1),U,V); c=(x0*y0,x1*y1,x2*y2)
lam=[-P*cj(delta)/(delta*rr) for rr in r]
for i in range(3):
  for j in range(3):
    zero(C[i,j]+P*A[i,j]*cj(C[i,j])/(r[i]*c[j]))
print('PASS: all 9 cofactor phase identities')
M=A.applyfunc(lambda f:f*f)*s.diag(*[1/f for f in c]); G=A*cm(A).T
per=sum(s.prod(A[i,p[i]] for i in range(3)) for p in permutations(range(3)))
z=-per*delta/(P*cj(delta))
sv,tv,rv=G[1,0],G[2,0],G[2,1]; Sv,Tv,Qv=G[0,1],G[0,2],G[1,2]
T=s.Matrix([[Sv*Tv,Tv,Sv],[Qv,sv*Qv,sv],[rv,tv,tv*rv]])
for f in M*A.T - T + cj(z)*s.diag(*[cj(l) for l in lam]):zero(f)
print('PASS: M A^T = T(G) - conjugate(z) diag(conjugate(lambda))')
# Use adjugate clearing to avoid a generic matrix inverse expansion.
Adjbar=cm(A).adjugate()
for i in range(3):zero((M*Adjbar)[i,i]-cj(lam[i])*cj(delta))
print('PASS: diag(M conjugate(A)^-1) = conjugate(lambda)')
zero(M.det()+(z+2)*cj(delta))
print('PASS: det(M conjugate(A)^-1) = -(z+2)')
# Each side's multiplication matrices are exactly simultaneously diagonalized.
for p in (1,2):
    D=s.diag(*[1/A[p,j] for j in range(3)])
    Q=A*D*cm(A).T
    for f in Q-G*(cm(A).T.inv()*D*cm(A).T):zero(f)
print('PASS: G^-1 Q_p = conjugate(A)^-T diag(conjugate(row_p(A))) conjugate(A)^T')

# The next check is independent of phase sides: all nine L entries and all
# three v entries are algebraically independent.  Only L[0,0] is inverted.
ls=s.symbols('l00 l01 l02 l10 l11 l12 l20 l21 l22')
L=s.Matrix(3,3,ls)
v=s.Matrix(s.symbols('v0 v1 v2'))
vsharp=s.Matrix([v[1]*v[2],v[0]*v[2],v[0]*v[1]])
quads=v.applyfunc(lambda f:f*f)-L*vsharp
tt=s.Matrix([v[0]*v[1]*v[2],v[0]**2*v[2],v[0]**2*v[1]])
alpha=L[0,0]
r10=(L[1,:]*tt)[0]
r20=(L[2,:]*tt)[0]
r12=(tt[2]-L[0,1]*tt[0]-L[0,2]*r10)/alpha
r21=(tt[1]-L[0,2]*tt[0]-L[0,1]*r20)/alpha
RL=s.Matrix([[tt[0],tt[1],tt[2]],
             [r12,tt[0],r10],
             [r21,r20,tt[0]]])
Err=s.Matrix([[0,0,0],
  [-(v[1]*quads[0]+L[0,2]*v[0]*quads[1])/alpha,0,v[0]*quads[1]],
  [-(v[2]*quads[0]+L[0,1]*v[0]*quads[2])/alpha,v[0]*quads[2],0]])
for f in v*vsharp.T-RL-Err:
    assert s.expand(alpha*f)==0
print('PASS: exact cubic remainder for 9 independent L entries and 3 independent coordinates')

# The displayed R0, R1, R2 are checked against the formal cubic normal form.
t0,t1,t2=s.symbols('t0 t1 t2')
R0=s.Matrix([[1,0,0],
    [-(L[0,1]+L[0,2]*L[1,0])/alpha,1,L[1,0]],
    [-(L[0,2]+L[0,1]*L[2,0])/alpha,L[2,0],1]])
R1=s.Matrix([[0,1,0],[-L[0,2]*L[1,1]/alpha,0,L[1,1]],
    [(1-L[0,1]*L[2,1])/alpha,L[2,1],0]])
R2=s.Matrix([[0,0,1],[(1-L[0,2]*L[1,2])/alpha,0,L[1,2]],
    [-L[0,1]*L[2,2]/alpha,L[2,2],0]])
for f in RL-(R0*tt[0]+R1*tt[1]+R2*tt[2]):
    assert s.expand(alpha*f)==0
assert R0.trace()==3 and R1.trace()==0 and R2.trace()==0
print('PASS: coefficient matrices R0, R1, R2 and their traces')

# Check the interpolation basis determinant for the actual symbolic side.
Asharp=s.Matrix([[A[1,j]*A[2,j] for j in range(3)],
                 [A[0,j]*A[2,j] for j in range(3)],
                 [A[0,j]*A[1,j] for j in range(3)]])
for f in Asharp-cm(A)*s.diag(*c):zero(f)
zero(Asharp.det()-P*cj(delta))
print('PASS: interpolation basis determinant is P times conjugate(det(A)), hence nonzero')

print('ALL UNIVERSAL CHECKS PASS; no matched horizontal/vertical cancellation asserted')
