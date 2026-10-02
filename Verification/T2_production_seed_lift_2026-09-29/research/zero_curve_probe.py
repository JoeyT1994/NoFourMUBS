from flint import arb,acb,ctx
from itertools import combinations
ctx.prec=160

def R(H,rr,cc):
 a,b,c,d=[H[i][j]*H[rr[0]][cc[0]]*(H[i][cc[0]]*H[rr[0]][j]).conjugate()for i in rr[1:]for j in cc[1:]]
 s,t,q=-(1+a+b),-(1+c+d),-(1+c*a.conjugate()+d*b.conjugate())
 X,Y,Z=abs(s)**2,abs(t)**2,abs(q)**2;p=X+Y+Z;J=2*(s*q*t.conjugate()).real
 W=X*Y+X*Z+Y*Z-X*Y*Z;g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
 return 4*g*g*eta-chi*chi
for u in [arb(1)/5,arb.pi()/6,arb.pi()/3,arb(1)]:
 H=[[acb(0,2*arb.pi()*(i%3)*(j%3)/3+u*(i%3)*(j//3)+arb.pi()*(i//3)*(j//3)).exp()for j in range(6)]for i in range(6)]
 vals=[(R(H,r,c),r,c)for r in combinations(range(6),3)for c in combinations(range(6),3)]
 v,rr,cc=max(vals,key=lambda x:x[0].upper())
 print('u',u,'max R',v,'corner',rr,cc,'positive',sum(x[0]>0 for x in vals),flush=True)
