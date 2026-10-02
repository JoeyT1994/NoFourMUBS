"""Cancellation-aware quadratic enclosures of exact Laurent polynomials.

All coefficients are integers. Derivatives through degree four are summed
before bounding degree-three/four terms; the order-five remainder is the
real-phase exponential Taylor bound. No floating calculation accepts.
"""
from collections import defaultdict
from functools import lru_cache
from itertools import product
from math import prod,factorial
from flint import arb,acb,acb_mat
from models import TM,real,N,IJ,ZERO
ORIGIN=(0,)*4
DEGREE=4
ALPHAS=tuple(a for a in product(range(DEGREE+1),repeat=4) if sum(a)<=DEGREE)

class Laurent(dict):
    def __add__(a,b):
        b=b if isinstance(b,Laurent) else Laurent({ORIGIN:b});c=Laurent(a)
        for k,v in b.items():c[k]=c.get(k,0)+v
        return Laurent({k:v for k,v in c.items() if v})
    __radd__=__add__
    def __neg__(a):return Laurent({k:-v for k,v in a.items()})
    def __sub__(a,b):return a+-b
    def __rsub__(a,b):return -a+b
    def __mul__(a,b):
        b=b if isinstance(b,Laurent) else Laurent({ORIGIN:b});c=defaultdict(int)
        for k,v in a.items():
            for l,w in b.items():c[tuple(x+y for x,y in zip(k,l))]+=v*w
        return Laurent({k:v for k,v in c.items() if v})
    __rmul__=__mul__
    def conj(a):return Laurent({tuple(-x for x in k):v for k,v in a.items()})
    def abs2(a):return a*a.conj()

@lru_cache(12)
def polynomials(perm=(0,1,2),transpose=False):
    one=Laurent({ORIGIN:1});x=[Laurent({tuple(int(i==j) for i in range(4)):1}) for j in range(4)]
    E=[[one]*3,[one,x[0],x[1]],[one,x[2],x[3]]]
    if transpose:E=list(map(list,zip(*E)))
    EE=[[E[perm[i]][j]*E[perm[0]][j].conj() for j in range(3)] for i in range(3)]
    s,t,r=[-sum((EE[i][j]*EE[k][j].conj() for j in range(3)),Laurent()) for i,k in ((1,0),(2,0),(2,1))]
    X,Y,Z=[q.abs2() for q in (s,t,r)];p=X+Y+Z;J=s*r*t.conj()+s.conj()*r.conj()*t
    g=27-3*p+J;eta=9-p+J;chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    k0=9-Z;k1=9-Y
    P0=r*s*s+r.conj()*t*t+(3-Z)*s*t;P1=t*s.conj()*s.conj()+r*r*t.conj()+(3-Y)*r*s.conj()
    return dict(s=s,t=t,r=r,R=4*g*g*eta-chi*chi,P0=P0,P1=P1,U2=2*g*g+2*k0*k1*eta+(k0+k1)*chi,Pi2=chi+2*k0*eta,kdiff=k1-k0)

@lru_cache(32)
def table(items):
    # This table has exact Gaussian-integer entries, independent of precision.
    return acb_mat([[acb(0,1)**sum(a)*v*prod(kj**aj for kj,aj in zip(k,a)) for k,v in items] for a in ALPHAS])

class Context:
    def __init__(self,centers,radii):
        self.c=list(map(real,centers));self.h=list(map(real,radii));self.phases={};self.models={}
    def model(self,poly):
        items=tuple(sorted(poly.items()))
        if items in self.models:return self.models[items]
        for k,v in items:
            if k not in self.phases:self.phases[k]=acb(0,sum((ki*ci for ki,ci in zip(k,self.c)),arb(0))).exp()
        if not items:return TM()
        derivatives=table(items)*acb_mat([[self.phases[k]] for k,v in items]);cc=ZERO;dd=[ZERO]*N;qq=[ZERO]*len(IJ);ee=ZERO
        for idx,a in enumerate(ALPHAS):
            coef=derivatives[idx,0]
            for hi,ai in zip(self.h,a):coef*=hi**ai/factorial(ai)
            degree=sum(a)
            if degree==0:cc=coef
            elif degree==1:dd[a.index(1)]=coef
            elif degree==2:
                ii=tuple(j for j,v in enumerate(a) for _ in range(v));qq[IJ.index(ii)]=coef
            else:ee+=coef*(arb('0.5','0.5') if all(ai%2==0 for ai in a) else arb(0,1))
        tail=sum((abs(v)*sum((abs(ki)*hi for ki,hi in zip(k,self.h)),arb(0))**(DEGREE+1) for k,v in items),arb(0))/factorial(DEGREE+1)
        ee+=acb(arb(0,tail.upper()),arb(0,tail.upper()));answer=TM(cc,dd,qq,ee);self.models[items]=answer;return answer
    def R(self):return self.model(polynomials()['R']).real()
    def side(self,perm,transpose,tau,sign):
        from kernel import BoundFailure
        pp=polynomials(tuple(perm),transpose);s,t,r,P0,P1,U2,Pi2,kdiff=[self.model(pp[k]) for k in ('s','t','r','P0','P1','U2','Pi2','kdiff')]
        if P0.range().contains(0):raise BoundFailure('side_denominator',P0)
        if P1.range().contains(0):raise BoundFailure('side_denominator',P1)
        u=(U2+acb(0,sign)*kdiff*tau)/(2*P0.conj()*P1)
        Pi=(Pi2+acb(0,sign)*tau)/(2*P0.conj())
        return s,t,r,u,Pi
