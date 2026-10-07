"""Outward fifth-order Taylor bounds for R on uniform dyadic pi boxes.

Exact Laurent coefficients; Arb trigonometric table and final interval sums.
BLAS dot products are enclosed by the standard 2n-operation rounding bound
with epsilon=2^-52 (twice binary64 unit roundoff). No floating proposal alone
is accepted. The sixth-order remainder is a global analytic bound.
"""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import sys,math
import numpy as np
from flint import arb,ctx
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierCornerRigidity'))
from exact_algebra import corner_polynomials

def multiindices(degree):
    return sorted((a for a in product(range(degree+1),repeat=4) if sum(a)<=degree),key=lambda a:(sum(a),a))

class Taylor:
    def __init__(self,level,degree=5):
        assert degree==5 and 1<=level<=20
        assert np.finfo(np.float64).eps==2.0**-52
        ctx.prec=128
        polynomial,_=corner_polynomials()
        assert all(polynomial.get(tuple(-x for x in k))==c for k,c in polynomial.items())
        # Pair conjugate frequencies. Include the constant once.
        half=[(k,c if not any(k) else 2*c) for k,c in polynomial.items() if k>=tuple(-x for x in k)]
        half.sort();self.freq=np.array([k for k,c in half],dtype=np.int64)
        self.alpha=multiindices(degree);self.n=len(half);self.level=level
        self.degrees=np.array([sum(a) for a in self.alpha]);self.even=np.array([all(x%2==0 for x in a) for a in self.alpha])
        self.fact=[math.prod(math.factorial(x) for x in a) for a in self.alpha]
        weights=[];l1=[]
        for a in self.alpha:
            deg=sum(a);sign=(-1)**((deg+1)//2)
            row=[sign*c*math.prod(x**n for x,n in zip(k,a)) for k,c in half]
            assert max(map(abs,row))<2**53
            weights.append(row);l1.append(sum(map(abs,row)))
        self.W=np.array(weights,dtype=np.float64)
        # All these integer coefficients are represented exactly in binary64.
        assert all(int(self.W[i,j])==weights[i][j] for i in range(len(weights)) for j in range(self.n))
        den=2**level;period=2*den;ct=[];st=[];err=arb(0)
        for k in range(period):
            theta=arb.pi()*k/den
            for arr,val in [(ct,theta.cos()),(st,theta.sin())]:
                mid=float(val.mid());arr.append(mid)
                err=max(err,abs(val-arb(mid)).upper())
        self.ct=np.array(ct);self.st=np.array(st);self.period=period
        assert np.max(np.abs(self.ct))<=1 and np.max(np.abs(self.st))<=1
        eps=arb(2)**-52;gamma=(2*self.n*eps)/(1-2*self.n*eps)
        self.error=[((gamma+err)*s).upper() for s in l1]
        h=arb.pi()/den
        self.scale=[h**int(d)/fac for d,fac in zip(self.degrees,self.fact)]
        B=sum(abs(c)*sum(map(abs,k))**6 for k,c in polynomial.items())
        self.remainder=(arb(B)*h**6/720).upper()
        self.even_degree=np.flatnonzero(self.degrees%2==0);self.odd_degree=np.flatnonzero(self.degrees%2==1)
    def coefficients(self,paths):
        assert all(len(p)==4*self.level and set(p)<=set('01') for p in paths)
        den=2**self.level
        nums=np.array([[2*int(p[j::4],2)+1-den for j in range(4)] for p in paths],dtype=np.int64)
        indices=(nums@self.freq.T)%self.period
        out=np.empty((len(paths),len(self.alpha)))
        out[:,self.even_degree]=self.ct[indices]@self.W[self.even_degree].T
        out[:,self.odd_degree]=self.st[indices]@self.W[self.odd_degree].T
        assert np.isfinite(out).all()
        return out
    def enclosure(self,co):
        constant=arb(float(co[0]),self.error[0]);lo=constant.lower();hi=constant.upper()
        for j in range(1,len(self.alpha)):
            term=arb(float(co[j]),self.error[j])*self.scale[j]
            if self.even[j]:lo+=min(arb(0),term.lower());hi+=max(arb(0),term.upper())
            else:
                mag=abs(term).upper();lo-=mag;hi+=mag
        return (lo-self.remainder).lower(),(hi+self.remainder).upper()
    def audit_coefficients(self,path,co):
        # Independent Arb dot products; no forward-error argument here.
        den=2**self.level
        nums=[2*int(path[j::4],2)+1-den for j in range(4)]
        trig=[(arb.pi()*sum(int(k)*n for k,n in zip(freq,nums))/den) for freq in self.freq]
        cv=[x.cos() for x in trig];sv=[x.sin() for x in trig]
        for j,degree in enumerate(self.degrees):
            val=sum((arb(int(w))*x for w,x in zip(self.W[j],cv if degree%2==0 else sv)),arb(0))
            bound=arb(float(co[j]),self.error[j])
            assert val>=bound.lower() and val<=bound.upper(),(j,str(val),str(bound))
        return True
