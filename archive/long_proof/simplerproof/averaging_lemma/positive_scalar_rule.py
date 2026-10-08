"""A cutoff-five inequality in only p and J, with exact Bernstein bounds.

For a physical maximal corner, J>0 and p<=7 imply Q(p,J)>=0.
"""
import math
import numpy as np
from flint import arb
import sympy as sp

def coefficients():
    p,j=sp.symbols('p j');t=9-p;z=j*j
    Q=5*(2*z+30*t*t-j*(t+6)**2)+2*j*(z+36*p)*(t**3*(4-t)-4*z)
    poly=sp.Poly(Q,p,j)
    return [(tuple(ex),int(c)) for ex,c in poly.terms()]

def bernstein(bounds,co,rigorous=True):
    n=[max(ex[k] for ex,c in co) for k in range(2)]
    def convert(interval,degree):
        if rigorous:l,h=interval
        else:l,h=map(float,interval)
        w=h-l;zero=arb(0) if rigorous else 0.
        return [[sum((math.comb(a,i)*l**(a-i)*w**i*math.comb(k,i)/(arb(math.comb(degree,i)) if rigorous else math.comb(degree,i)) for i in range(min(k,a)+1)),zero) for a in range(degree+1)] for k in range(degree+1)]
    left,right=[convert(b,d) for b,d in zip(bounds,n)]
    values=[sum((c*left[k][ex[0]]*right[l][ex[1]] for ex,c in co),arb(0) if rigorous else 0.) for k in range(n[0]+1) for l in range(n[1]+1)]
    if rigorous:
        assert all(v.is_finite() for v in values)
        return min(v.lower() for v in values),max(v.upper() for v in values)
    assert np.isfinite(values).all()
    return min(values),max(values)

def verify():
    # Check the displayed derivation as a polynomial identity.
    j,t,u,v=sp.symbols('j t u v');z=j*j;a=(t+6)**2;b=2*z+30*t*t
    assert sp.expand((-u*a*j+v*b)-v*(b-a*j)+(u-v)*a*j)==0
    # For 0<J<=t and 2<=t<=9, b/J-a >=32t-a=(t-2)(18-t)>=0.
    assert sp.expand(32*t-a-(t-2)*(18-t))==0
    assert sp.expand(b-32*t*j-2*(j-t)*(j-15*t))==0
    return True

if __name__=='__main__':
    assert verify();co=coefficients()
    print('Exact Q coefficients',co)
    for bounds in [[(arb(3),arb(4)),(arb(1),arb(2))],[(arb(5),arb(6)),(arb(1),arb(2))]]:
        print(bernstein(bounds,co))
