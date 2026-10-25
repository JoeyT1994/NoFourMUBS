#!/usr/bin/env python3
"""Exact replay for extraction derivatives on horizontal phase radius 13/50.

Python standard library only. No floating point evaluations. The identities
are regenerated from permanent*determinant^2 Laurent expansion.
"""
from collections import defaultdict
from fractions import Fraction as F
from itertools import permutations, product
import json


def perm_sign(p):
    return (-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))


def gram(rows):
    return [[sum(a*b for a,b in zip(x,y)) for y in rows] for x in rows]


def spd(A):
    A=[[F(a) for a in row] for row in A]
    piv=[]
    for k in range(len(A)):
        d=A[k][k]
        assert d>0,(k,d)
        piv.append(d)
        for i in range(k+1,len(A)):
            for j in range(i,len(A)):
                A[j][i]=A[i][j]=A[i][j]-A[i][k]*A[j][k]/d
    return min(piv)


def bound_gram(B,diag,mult=1):
    G=gram(B)
    return spd([[(diag if i==j else 0)-mult*G[i][j]
                 for j in range(len(B))] for i in range(len(B))])


def check():
    terms=defaultdict(int)
    ps=list(permutations(range(3)))
    for p,q,r in product(ps,repeat=3):
        a=[-1]*9
        for z in (p,q,r):
            for i,j in enumerate(z): a[3*i+j]+=1
        terms[tuple(a)]+=perm_sign(q)*perm_sign(r)
    terms={a:c for a,c in terms.items() if c}
    assert len(terms)==55
    assert sum(abs(c) for c in terms.values())==108
    assert max(sum(x*x for x in a) for a in terms)==18
    for a in terms:
        assert all(sum(a[3*i+j] for j in range(3))==0 for i in range(3))
        assert all(sum(a[3*i+j] for i in range(3))==0 for j in range(3))
    covariance=[[sum(abs(c)*a[i]*a[j] for a,c in terms.items())
                 for j in range(9)] for i in range(9)]
    for i in range(9):
        for j in range(9):
            expect=162*(F(int(i//3==j//3))-F(1,3))*(F(int(i%3==j%3))-F(1,3))
            assert covariance[i][j]==expect

    exponents=[i*(j+3) for i in range(3) for j in range(3)]
    re=(2,1,-1,-2,-1,1)  # twice cosine
    im=(0,1,1,0,-1,-1)  # twice sine / sqrt(3)
    data=[(a,c,re[sum(x*y for x,y in zip(a,exponents))%6],
                im[sum(x*y for x,y in zip(a,exponents))%6]) for a,c in terms.items()]
    # tau=-Im Psi/12. Gradient=-B1/24, Hessian=sqrt(3)B2/24.
    B1=[sum(c*rr*a[i] for a,c,rr,ss in data) for i in range(9)]
    B2=[[sum(c*ss*a[i]*a[j] for a,c,rr,ss in data) for j in range(9)] for i in range(9)]
    B3=[[sum(c*rr*a[i]*a[j]*a[k] for a,c,rr,ss in data)
         for j,k in product(range(9),repeat=2)] for i in range(9)]
    B4=[[sum(c*ss*a[i]*a[j]*a[k]*a[l] for a,c,rr,ss in data)
         for j,k,l in product(range(9),repeat=3)] for i in range(9)]
    assert F(sum(x*x for x in B1),24**2)==F(9,4)
    # ||Hess tau(0)||<13/12, ||D^3 tau(0)||<12, ||D^4 tau(0)||<17.
    p2=bound_gram(B2,676,3)
    p3=bound_gram(B3,12**2*24**2)
    p4=bound_gram(B4,17**2*24**2,3)
    # Three selected cross-ratio coordinates have this exact Gram matrix.
    seedG=[[4,2,2],[2,4,1],[2,1,4]]
    seed_pivot=spd([[(121 if i==j else 0)-16*seedG[i][j] for j in range(3)] for i in range(3)])
    # Uniform fifth derivative <=729 sqrt(2); use sqrt(2)<10/7.
    assert F(10,7)**2>2
    assert F(7290,7*24)<44
    assert F(7290,7*6)<174
    # Global gradient bound: ||D Im Psi||^2 <=108*162.
    assert 4*108*162 <265**2
    assert F(108*162,12**2)<12**2
    radius=F(13,50)
    grad=F(3,2)+F(13,12)*radius+6*radius**2+F(17,6)*radius**3+44*radius**4
    hess=F(13,12)+12*radius+F(17,2)*radius**2+174*radius**3
    assert grad<F(11,4)  # preserves scaled extraction norm bound
    assert 24*grad<59
    assert hess<8
    assert 24*hess<192

    # A rational lower bound for pi, via Machin's identity and alternating series.
    def atan_partial(x,n):
        return sum(((-1)**k)*x**(2*k+1)/F(2*k+1) for k in range(n))
    pi_lower=16*atan_partial(F(1,5),6)-4*atan_partial(F(1,239),3)
    assert pi_lower>12*radius
    return {
        'status':'PASS', 'laurent_terms':55,
        'phase_radius':str(radius),
        'scaled_gradient_bound':str(grad),
        'scaled_hessian_bound':str(hess),
        'full_extraction_norm_scaled':'<11/4',
        'full_extraction_norm_unscaled':'<59',
        'full_extraction_hessian_scaled':'<8',
        'full_extraction_hessian_unscaled':'<192',
        'chart_sigma_min_scaled':'>=4/11',
        'chart_sigma_min_global_scaled':'>=1/12',
        'chart_sigma_min_global_unscaled':'>=1/265',
        'chart_sigma_min_unscaled':'>=1/59',
        'isotropy_radius_test':'13/50 < pi/12',
        'minimum_positive_pivots':{
            'hessian':str(p2),'third':str(p3),'fourth':str(p4),'seeds':str(seed_pivot)
        }
    }

if __name__=='__main__':
    print(json.dumps(check(),indent=2,sort_keys=True))
