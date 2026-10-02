"""Correlated complementary-corner gap and strict-path invariant bounds."""
from interval import *
from collections import Counter

def parity(values):return (-1)**sum(values[i]>values[j] for i in range(len(values)) for j in range(i+1,len(values)))
TERMS=[]
for i in range(3):
 for j in range(3):
  if i==j:continue
  a,b=[k for k in range(3) if k!=i];cc,d=[k for k in range(3) if k!=j]
  TERMS.append((i,j,a,b,cc,d,parity([2*a,2*b,2*cc+1,2*d+1,2*i,2*j+1])))

class Jet2:
 def __init__(self,z,d=None,h=None):
  self.z=c(z);self.d=d or [c(0)]*2;self.h=h or [[c(0)]*2 for _ in range(2)]
 def __add__(self,o):
  if not isinstance(o,Jet2):o=Jet2(o)
  return Jet2(self.z+o.z,[self.d[i]+o.d[i] for i in range(2)],[[self.h[i][j]+o.h[i][j] for j in range(2)] for i in range(2)])
 __radd__=__add__
 def __neg__(self):return self*(-1)
 def __sub__(self,o):return self+(-o)
 def __rsub__(self,o):return -self+o
 def __mul__(self,o):
  if not isinstance(o,Jet2):o=Jet2(o)
  return Jet2(self.z*o.z,[self.d[i]*o.z+self.z*o.d[i] for i in range(2)],[[self.h[i][j]*o.z+self.d[i]*o.d[j]+self.d[j]*o.d[i]+self.z*o.h[i][j] for j in range(2)] for i in range(2)])
 __rmul__=__mul__
 def conj(self):return Jet2(cj(self.z),[cj(z) for z in self.d],[[cj(z) for z in row] for row in self.h])
 def real(self):return Jet2(re(self.z),[re(z) for z in self.d],[[re(z) for z in row] for row in self.h])
 def abs2(self):return (self*self.conj()).real()

def rrjet(E0,hu,hv):
 P=[]
 for n,z in enumerate([E0[1,1],E0[1,2],E0[2,1],E0[2,2]]):
  dd=[c(0)]*2;hh=[[c(0)]*2 for _ in range(2)]
  if n<2:z*=cis(box([hu,hv][n]));dd[n]=c(0,1)*z;hh[n][n]=-z
  P.append(Jet2(z,dd,hh))
 a,b,cc,d=P;s=-1-a-b;t=-1-cc-d;r=-1-cc*a.conj()-d*b.conj()
 X,Y,Z=s.abs2(),t.abs2(),r.abs2();p=X+Y+Z;J=2*(s*r*t.conj()).real();W=X*Y+X*Z+Y*Z-X*Y*Z
 g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
 return 4*g*g*eta-chi*chi

def rbound(E0,hu,hv):
 z,w=E0[2,1:];R0=9*a2(z*z-w)*a2(w*w-z)*a2(z*w-1)
 center=rrjet(E0,Q(0),Q(0));whole=rrjet(E0,hu,hv);h=[hu,hv]
 rad=sum(v(h[i])*mag(center.d[i]) for i in range(2))+sum(v(h[i]*h[j]/2)*mag(whole.h[i][j]) for i in range(2) for j in range(2))
 return R0+box(rad),R0,center,whole

class RealJet:
 def __init__(self,z,d):self.z=v(z);self.d=[v(x) for x in d]
 def __add__(self,o):
  if not isinstance(o,RealJet):o=RealJet(o,[0]*len(self.d))
  return RealJet(self.z+o.z,[a+b for a,b in zip(self.d,o.d)])
 __radd__=__add__
 def __neg__(self):return RealJet(-self.z,[-x for x in self.d])
 def __sub__(self,o):return self+-o
 def __mul__(self,o):
  if not isinstance(o,RealJet):return RealJet(self.z*v(o),[x*v(o) for x in self.d])
  return RealJet(self.z*o.z,[a*o.z+self.z*b for a,b in zip(self.d,o.d)])
 __rmul__=__mul__

def phase_sine_jet(chart,res,hu,hv,terms,errors):
 powers=Counter()
 for i,j,power in terms:powers[i,j]+=power
 b=c(1);linear=[Q(0),Q(0)];quad=[Q(0)]*3;er=Q(0);powers_u=[0]*chart.n
 for (i,j),power in powers.items():
  if not power:continue
  z=chart.H0[i,j];b*=((z if power>0 else cj(z))**abs(power))
  for k in range(2):linear[k]+=power*res['P'][i,j,k]
  for k in range(3):quad[k]+=power*res['Q2'][i,j,k]
  if (i,j) in chart.pd:
   n=chart.pd[i,j];powers_u[n]+=power
   if errors:er+=abs(power)*res['rhos'][n]
 rad=abs(linear[0])*hu+abs(linear[1])*hv+abs(quad[0])*hu**2/2+abs(quad[1])*hu*hv+abs(quad[2])*hv**2/2+er
 if hasattr(chart,'base'):b=chart.base.monomial([(i,j,n) for (i,j),n in powers.items() if n])
 z=b*cis(box(rad));pu=v(linear[0])+box(abs(quad[0])*hu+abs(quad[1])*hv);pv=v(linear[1])+box(abs(quad[1])*hu+abs(quad[2])*hv)
 return RealJet(im(z),[re(z)*pu,re(z)*pv,*[re(z)*pw for pw in powers_u]])

def qjet(chart,res,hu,hv,cols,errors=False):
 terms=[]
 for i,j,a,b,cc,d,sgn in TERMS:
  sa=phase_sine_jet(chart,res,hu,hv,[(1,cols[b],1),(1,cols[a],-1)],errors)
  sb=phase_sine_jet(chart,res,hu,hv,[(2,cols[d],1),(2,cols[cc],-1)],errors)
  sc=phase_sine_jet(chart,res,hu,hv,[(2,cols[i],1),(1,cols[i],-1),(2,cols[j],-1),(1,cols[j],1)],errors)
  terms.append(sgn*sa*sb*sc)
 return sum(terms)

def gap_bound(chart,res,hu,hv):
 def f(hhu,hhv,err):return qjet(chart,res,hhu,hhv,[1,2,4],err)-qjet(chart,res,hhu,hhv,[3,4,5],err)
 f0=f(Q(0),Q(0),False);fp=f(hu,hv,False);fe=f(hu,hv,True)
 normal=mag(fp.d[0])*v(hu)+mag(fp.d[1])*v(hv)
 corr=sum(mag(fe.d[2+n])*v(res['rhos'][n]) for n in range(chart.n))
 bound=f0.z-box(normal+corr)
 return bound,dict(gap0=f0.z,normal=normal,corr=corr,dnormal=fp.d[:2],derr=fe.d[2:])
