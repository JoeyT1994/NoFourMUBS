#!/usr/bin/env python3
"""Exact full-torus ambient-gradient certificate, Python standard library only.

Run: python3 verify_ambient_gradient.py
All 400 corners and all nine ambient phase derivatives are included. These
are not derivatives restricted to the two-dimensional Fourier family.
"""
from fractions import Fraction as F
from itertools import product
from ambient_gradient import (QTERMS,norm_types,ambient_gradient,squared_norm)
from explore_exact import (H,ONE,ZERO,clean,add,mul,scale,conj,prod,signature)
from gradient_bernstein import COEFFICIENTS,certify

def shift(sig,m,n):
    """Parameter translation x -> x+m*pi/3, y -> y+n*pi/3."""
    d={}
    for (a,b,k),c in sig:
        s=a*m+b*n
        e=(a,b,(k+2*s)%3)
        sign=-1 if s%2 else 1
        d[e]=d.get(e,0)+sign*c
    return signature(clean(d))

def power(p,n):
    result=ONE
    for _ in range(n): result=mul(result,p)
    return result

def check_polynomial_transform(base):
    # x=s+t,y=s-t, then p=cos s,q=cos t.
    transformed=clean({(a+b,a-b,k):c for (a,b,k),c in base})
    p={(1,0,0):F(1,2),(-1,0,0):F(1,2)}
    q={(0,1,0):F(1,2),(0,-1,0):F(1,2)}
    predicted=ZERO
    for (a,b),c in COEFFICIENTS.items():
        predicted=add(predicted,scale(mul(power(p,a),power(q,b)),c))
    assert transformed==predicted

def check_all_gradient_types():
    counts,reps=norm_types()
    base=next(sig for sig in counts if reps[sig]==((0,1,5),(0,2,4)))
    check_polynomial_transform(base)
    expected={():40}
    for exponents in ((2,0),(0,2),(2,-2)):
        for k in range(3):
            a,b=exponents
            term=clean({(a,b,k):384})
            norm=add({(0,0,0):960},add(term,conj(term)))
            sig=signature(norm)
            assert sig not in expected
            expected[sig]=24
    for m,n in product(range(6),repeat=2):
        if (m+n)%3: continue
        sig=shift(base,m,n)
        assert sig not in expected
        expected[sig]=12
    assert counts==expected
    assert sum(counts.values())==400
    # Every monomial of q is gauge-invariant in each row and column.
    for ell in QTERMS:
        assert all(sum(ell[3*i+j] for j in range(3))==0 for i in range(3))
        assert all(sum(ell[3*i+j] for i in range(3))==0 for j in range(3))
    assert 960+2*384==1728<1767

def check_global_hessian_matrix():
    # q-conj(q) has 48 terms with coefficients +/-1, in the nine
    # independent ambient entry phases.
    delta={}
    for ell,c in QTERMS.items():
        delta[ell]=delta.get(ell,0)+c
        neg=tuple(-v for v in ell)
        delta[neg]=delta.get(neg,0)-c
    delta={ell:c for ell,c in delta.items() if c}
    assert len(delta)==48 and set(delta.values())=={-1,1}
    # Its frequency second moment is 144 times double centering.
    for i in range(9):
        ri,ci=divmod(i,3)
        for j in range(9):
            rj,cj=divmod(j,3)
            actual=sum(ell[i]*ell[j] for ell in delta)
            expected=144*(F(ri==rj)-F(1,3))*(F(ci==cj)-F(1,3))
            assert actual==expected,(i,j,actual,expected)

def check_tube_scalar():
    # A purely rational sufficient inequality for eta=21/500, using
    # sqrt(26) < 51/10 and sqrt(1767) < 1051/25 = 42.04.
    eta=F(21,500)
    assert F(51,10)**2 > 26
    assert F(1051,25)**2 > 1767
    qbound=(F(51,10)+F(1051,25)*eta+72*eta*eta)/12
    # eta+sqrt(2/3)*asin(qbound)<11/20 follows from
    # qbound < sin(sqrt(3/2)*(11/20-eta)). Use a rational Taylor bound.
    t2=F(3,2)*(F(11,20)-eta)**2
    # sin(t) >= t*(1-t^2/6+t^4/120-t^6/5040), 0<=t<=1.
    assert 0<t2<1
    factor=1-t2/6+t2*t2/120-t2*t2*t2/5040
    assert factor>0
    margin=t2*factor*factor-qbound*qbound
    assert margin>0
    assert qbound<1
    print('Exact positive tube scalar margin:',margin)

if __name__=='__main__':
    check_all_gradient_types()
    print('PASS: all 400 squared ambient-gradient norms classified exactly')
    print('PASS: the twelve nontrivial types are translates of one polynomial')
    print('PASS: exact cos-coordinate polynomial identity, degrees (4,6)')
    certificate=certify(F(1767))
    assert certificate['leaves']==88 and certificate['max_depth']==14
    assert certificate['max_upper']<=1767
    print('PASS: exact full-square Bernstein cover:',certificate)
    print('PASS: uniform ambient phase-gradient norm <= sqrt(1767) < 42.04')
    check_global_hessian_matrix()
    print('PASS: global frequency matrix is 144 times an orthogonal projector')
    print('PASS: resulting ambient Hessian operator bound is 144')
    check_tube_scalar()
    print('PASS: eta=21/500 satisfies the confinement scalar inequality')
    print('AMBIENT GRADIENT VERIFICATION PASS')
