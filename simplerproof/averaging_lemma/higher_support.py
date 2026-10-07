"""Outward support bound preserving the full cubic Taylor polynomial.

The 256 tensor Bernstein controls form a convex hull for the cubic
coefficient vector. Fourth and fifth terms and the sixth remainder are
bounded separately. This is independent of the numerical proposal model.
"""
import math,itertools
from fractions import Fraction as Q
from flint import arb
from verify_dual_witness import RADII

def taylor_support(polys,nums,h,degree=5,denominator=64,hull_degree=3):
    assert degree>=hull_degree>=1
    alpha=sorted((a for a in itertools.product(range(degree+1),repeat=4) if sum(a)<=degree),key=lambda a:(sum(a),a))
    trig={k:((arb.pi()*k/denominator).cos(),(arb.pi()*k/denominator).sin()) for k in range(2*denominator)}
    coeff=[];errors=[]
    for p in polys:
        assert p.d==p.conjugate().d and p.den==p.conjugate().den
        halves=[]
        for k,(r,i) in p.d.items():
            if k<tuple(-x for x in k):continue
            f=1 if not any(k) else 2;co,si=trig[sum(a*b for a,b in zip(k,nums))%(2*denominator)]
            halves.append((k,(co*r-si*i)*f,(-si*r-co*i)*f))
        row=[]
        for a in alpha:
            d=sum(a);v=sum((vals[1+d%2]*math.prod(k**n for k,n in zip(vals[0],a)) for vals in halves),arb(0))
            row.append(v*((-1)**(d//2))/2**p.den)
        coeff.append(row)
        bound=sum((abs(r)+abs(i))*sum(map(abs,k))**(degree+1) for k,(r,i) in p.d.items())
        errors.append((arb(bound)*h**(degree+1)/(2**p.den*math.factorial(degree+1))).upper())
    def support(c,absolute=False):
        result=abs(c[0]) if absolute else c[0]
        result+=sum(r*(c[1+2*j]**2+c[2+2*j]**2).sqrt() for j,r in enumerate(RADII))
        result+=arb(5).sqrt()*(abs(c[-1]) if absolute else max(arb(0),c[-1].upper()))
        return result.upper()
    n=hull_degree;basis={}
    for k in range(n+1):
        for m in range(n+1):
            b=sum((Q(math.comb(m,j)*2**j*(-1)**(m-j)*math.comb(k,j),math.comb(n,j)) for j in range(min(k,m)+1)),Q())
            direct=sum((Q((-1)**(m-j)*math.comb(k,j)*math.comb(n-k,m-j),math.comb(n,m)) for j in range(m+1) if j<=k and m-j<=n-k),Q())
            assert b==direct and abs(b)<=1;basis[k,m]=b
    low=[(j,a) for j,a in enumerate(alpha) if sum(a)<=n];controls=[]
    for vertex in itertools.product(range(n+1),repeat=4):
        weights=[]
        for j,a in low:
            b=math.prod(basis[k,m] for k,m in zip(vertex,a))/math.prod(math.factorial(x) for x in a)
            weights.append(h**sum(a)*b.numerator/b.denominator)
        controls.append(support([sum((c[j]*w for (j,_),w in zip(low,weights)),arb(0)) for c in coeff]))
    hull=max(controls);tail_by_degree=[arb(0)]*(degree+1)
    for j,a in enumerate(alpha):
        d=sum(a)
        if d>n:tail_by_degree[d]+=support([c[j] for c in coeff],True)*h**d/math.prod(math.factorial(x) for x in a)
    error=errors[0]+sum(r*(errors[1+2*j]**2+errors[2+2*j]**2).sqrt() for j,r in enumerate(RADII))+arb(5).sqrt()*errors[-1]
    upper=hull+sum(tail_by_degree,arb(0))+error
    return dict(verified=bool(upper<0),support_upper=str(upper.upper()),support_upper_decimal=float(upper.upper()),
        Taylor_degree=degree,hull_degree=n,Bernstein_controls=len(controls),hull_upper=str(hull),
        higher_degree_bounds=[str(x.upper()) for x in tail_by_degree],remainder=str(error.upper()))
