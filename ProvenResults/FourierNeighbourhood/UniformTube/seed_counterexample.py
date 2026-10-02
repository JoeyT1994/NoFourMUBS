"""Outward Arb-ball certificate for an H+ seed-lifting obstruction.

The reconstruction is the accepted sign-selected local formula, ported directly
from MinimalConstruction/Implementation/model.py. No floating-point proposal
or numerical equality check is used to establish physicality: physicality is
an explicitly accepted local reconstruction input. Every minor comparison is
an outward ball comparison. Floating conversion below selects a display only.
"""
from flint import acb,arb,acb_mat,ctx
from itertools import combinations
ctx.prec=256
I=acb(0,1)
def star(A):return A.transpose().conjugate()
def aq(z):return (z*z.conjugate()).real
def side(G,z,g):
 s,t,r=G[1,0],G[2,0],G[2,1]
 X,Y,Z=aq(s),aq(t),aq(r)
 assert g > 0
 P=[r*s*s+r.conjugate()*t*t+(3-Z)*s*t,t*s.conjugate()**2+r*r*t.conjugate()+(3-Y)*r*s.conjugate(),s*t.conjugate()**2+r.conjugate()**2*s.conjugate()+(3-X)*r.conjugate()*t.conjugate()]
 assert all(not v.contains(0) for v in P)
 lam=[(g+cs*z.conjugate())/v.conjugate() for cs,v in zip((9-Z,9-Y,9-X),P)]
 u=lam[0]*lam[1].conjugate();mu=s/3;nu=t/3;n=1-aq(mu);k=r/3-nu*mu.conjugate()
 alpha=mu*mu-u*mu.conjugate();gamma=2*mu*nu-z*lam[0]/3
 d2=g/27*lam[0]*lam[1].conjugate()*lam[2].conjugate();delta=d2.sqrt()
 dF=(27/g*(n*gamma-2*alpha*k)*delta.conjugate()).real
 if dF<0:delta=-delta;dF=-dF
 assert dF>0
 rho=(n+dF)/2;assert rho>0
 assert n > 0
 q=alpha/rho;cp=(k-delta*q.conjugate())/n;cm=(k*q+delta)/n;sigma=u+mu*q;xi=sigma*sigma/rho
 M=acb_mat([[1,0,0],[mu,sigma,q*sigma.conjugate()],[nu,cp*sigma,cm*sigma.conjugate()]])
 return M,xi
om=acb(-arb(1)/2,arb(3).sqrt()/2)
z=(4+3*I)/5;w=(21+20*I)/29
E=acb_mat([[1,1,1],[1,om,om**2],[1,z,w]])
G=6*acb_mat([[1,0,0],[0,1,0],[0,0,1]])-E*star(E);T=6*acb_mat([[1,0,0],[0,1,0],[0,0,1]])-star(E)*E
s,t,r=G[1,0],G[2,0],G[2,1];X,Y,Z=aq(s),aq(t),aq(r);p=X+Y+Z;J=2*(s*r*t.conjugate()).real;W=X*Y+X*Z+Y*Z-X*Y*Z
g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J;R=4*g*g*eta-chi*chi
assert R>0 and g>0
# Sylvester guards, in addition to the accepted local identities.
for gram in (G,T):
 for size in (1,2,3):
  assert acb_mat([[gram[i,j] for j in range(size)] for i in range(size)]).det().real > 0
zz=acb(chi,R.sqrt())/(2*g)
Mh,xh=side(G,zz,g);Mv,xv=side(T.transpose(),zz.conjugate(),g)
F=acb_mat([[om**(i*j) for j in range(3)] for i in range(3)])
wh=xh.root(3);wv=xv.root(3)
Ph=acb_mat([[1,0,0],[0,wh.conjugate(),0],[0,0,wh]]);Pv=acb_mat([[1,0,0],[0,wv.conjugate(),0],[0,0,wv]])
B=Mh*Ph*F;C=F*Pv*Mv.transpose();D=-C*star(E)*G.inv()*B
H=acb_mat([[E[i,j] if i<3 and j<3 else B[i,j-3] if i<3 else C[i-3,j] if j<3 else D[i-3,j-3] for j in range(6)]for i in range(6)])
lo=arb(10);best=None;count=0
for rs in combinations(range(6),3):
 for cs in combinations(range(6),3):
  det=abs(acb_mat([[H[i,j] for j in cs]for i in rs]).det())
  assert det>arb(4)/5
  count+=1
  if float(det.mid())<float(lo.mid()):lo=det;best=rs,cs
print('R',R,'g',g,'minimum minor',lo,'at',best)
def corner_R(rs,cs):
 A=acb_mat([[H[i,j]for j in cs]for i in rs]);GG=6*acb_mat([[1,0,0],[0,1,0],[0,0,1]])-A*star(A)
 ss,tt,rr=GG[1,0],GG[2,0],GG[2,1];XX,YY,ZZ=aq(ss),aq(tt),aq(rr);pp=XX+YY+ZZ;JJ=2*(ss*rr*tt.conjugate()).real;WW=XX*YY+XX*ZZ+YY*ZZ-XX*YY*ZZ
 gg=27-3*pp+JJ;ee=9-pp+JJ;cc=WW-(pp-9)*(pp-18)+(pp-15)*JJ
 return 4*gg*gg*ee-cc*cc
assert count == 400
assert 0 < R < 3
beating = corner_R((0,1,2),(0,1,3))
assert beating > 100
assert 18**2*3 < 32**2  # 18*sqrt(3)/40 < 4/5
print('PASS: exact atlas seed; all 400 minors > 4/5; d_Four(H+/sqrt(6)) > 1/40')
print('PASS: outside D0; corner (012|013) has R > 100:', beating)
