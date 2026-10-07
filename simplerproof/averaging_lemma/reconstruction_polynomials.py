"""Exact Gaussian-dyadic Laurent compilation of the reconstruction equations.

Coefficients use Python integers and a common power-of-two denominator.
No numeric interpolation or fitted polynomial is used.
"""
from collections import defaultdict
from fractions import Fraction
from pathlib import Path
import inspect,json,math
import numpy as np
from dual_reconstruction import affine_data
ZERO=(0,0,0,0)

class LP:
    def __init__(self,value=0,terms=None,den=0):
        if terms is not None:self.d=terms;self.den=den
        elif isinstance(value,LP):self.d=value.d;self.den=value.den;return
        else:
            z=complex(value);assert z.real==int(z.real) and z.imag==int(z.imag)
            self.d={ZERO:(int(z.real),int(z.imag))} if z else {};self.den=0
        self.clean()
    def clean(self):
        self.d={k:v for k,v in self.d.items() if v!=(0,0)}
        if not self.d:self.den=0;return
        while self.den and all(not(r%2 or i%2) for r,i in self.d.values()):
            self.d={k:(r//2,i//2) for k,(r,i) in self.d.items()};self.den-=1
    @classmethod
    def variable(cls,j):
        k=tuple(int(i==j) for i in range(4));return cls(terms={k:(1,0)})
    @classmethod
    def dyadic(cls,re,im=0,bits=40):return cls(terms={ZERO:(int(re),int(im))},den=bits)
    def __add__(self,other):
        if isinstance(other,np.ndarray):return NotImplemented
        other=LP(other);den=max(self.den,other.den);out={}
        for obj in [self,other]:
            s=2**(den-obj.den)
            for k,(r,i) in obj.d.items():
                a,b=out.get(k,(0,0));out[k]=(a+s*r,b+s*i)
        return LP(terms=out,den=den)
    __radd__=__add__
    def __neg__(self):return LP(terms={k:(-r,-i) for k,(r,i) in self.d.items()},den=self.den)
    def __sub__(self,other):return self+-LP(other)
    def __rsub__(self,other):return LP(other)+-self
    def __mul__(self,other):
        if isinstance(other,np.ndarray):return NotImplemented
        other=LP(other);out={}
        for k,(a,b) in self.d.items():
            for l,(c,d) in other.d.items():
                m=tuple(x+y for x,y in zip(k,l));r,i=out.get(m,(0,0));out[m]=(r+a*c-b*d,i+a*d+b*c)
        return LP(terms=out,den=self.den+other.den)
    __rmul__=__mul__
    def __pow__(self,n):
        if n<0:
            assert len(self.d)==1 and self.den==0 and sum(x*x for x in next(iter(self.d.values())))==1
            return self.conjugate()**(-n)
        assert isinstance(n,int);out=LP(1);v=self
        while n:
            if n%2:out=out*v
            n//=2
            if n:v=v*v
        return out
    def __truediv__(self,other):
        other=LP(other)
        if len(other.d)==1 and ZERO in other.d and other.d[ZERO][1]==0:
            r=other.d[ZERO][0]
            if r>0 and r&(r-1)==0:
                return LP(terms=self.d.copy(),den=self.den+r.bit_length()-1-other.den)
        return self*(other**-1)
    def conjugate(self):return LP(terms={tuple(-x for x in k):(r,-i) for k,(r,i) in self.d.items()},den=self.den)
    @property
    def real(self):return (self+self.conjugate())/2
    def evaluate(self,theta):
        return sum(complex(r,i)*np.exp(1j*np.dot(k,theta)) for k,(r,i) in self.d.items())/2**self.den

def zeros(shape):
    a=np.empty(shape,dtype=object)
    for idx in np.ndindex(shape):a[idx]=LP(0)
    return a

def polynomial_data(sigma):
    source=inspect.getsource(affine_data)
    source=source.replace('def affine_data(theta,sigma):','def compiled(sigma):')
    source=source.replace('a,b,c,d=np.exp(1j*np.asarray(theta))','a,b,c,d=[LP.variable(j) for j in range(4)]')
    source=source.replace('abs(s)**2,abs(t)**2,abs(r)**2','s*s.conjugate(),t*t.conjugate(),r*r.conjugate()')
    source=source.replace('np.zeros(14,complex)','zeros((14,))').replace('v[0]=z','v[0]=LP(z)')
    source=source.replace('np.zeros((3,3,14),complex)','zeros((3,3,14))').replace('np.zeros_like(N)','zeros(N.shape)')
    source=source.replace('N[j0,j0]=sums[0].real','N[j0,j0]=[LP(z).real for z in sums[0]]')
    namespace=dict(np=np,LP=LP,zeros=zeros);exec(source,namespace)
    A,E=namespace['compiled'](sigma)
    for idx in np.ndindex(A.shape):A[idx]=LP(A[idx])
    for idx in np.ndindex(E.shape):E[idx]=LP(E[idx])
    return A,E

def permute(poly,order):
    return LP(terms={tuple(k[order[j]] for j in range(4)):v for k,v in poly.d.items()},den=poly.den)

def combined_polynomials(sigma):
    matrices=[];eqs=[]
    for side,sg in enumerate([sigma,-sigma]):
        A,E=polynomial_data(sg);B=zeros((6,3,3,26));F=zeros((6,26))
        indices=[0]+list(range(1+12*side,13+12*side))+[25]
        for j,k in enumerate(indices):
            for idx in np.ndindex((6,3,3)):B[idx+(k,)]=A[idx+(j,)] if side==0 else permute(A[idx+(j,)],[0,2,1,3])
            for n in range(6):F[n,k]=E[n,j] if side==0 else permute(E[n,j],[0,2,1,3])
        matrices.extend(B);eqs.extend(F)
    return np.array(matrices),np.array(eqs)

if __name__=='__main__':
    from robust_dual_proposal import combined_data
    import time
    start=time.monotonic();A,E=combined_polynomials(1);theta=[.3,1.2,-.7,2.1];a,e=combined_data(theta,1)
    ae=np.array([p.evaluate(theta) for p in A.flat]).reshape(A.shape);ee=np.array([p.evaluate(theta) for p in E.flat]).reshape(E.shape)
    assert np.max(abs(ae-a))<1e-9 and np.max(abs(ee-e))<1e-9
    print('Exact polynomial compilation:',sum(len(p.d) for p in A.flat),'matrix terms;',sum(len(p.d) for p in E.flat),'equation terms; seconds',time.monotonic()-start)
