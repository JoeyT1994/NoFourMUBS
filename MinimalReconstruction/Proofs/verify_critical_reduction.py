"""Exact identities for CRITICAL_CORNER_REDUCTION.md; not an MC1 verifier."""
import json
from itertools import combinations
import sympy as sp


def run():
    p,J,W,q=sp.symbols('p J W q',real=True)
    def R(j):
        return 4*(27-3*p+j)**2*(9-p+j)-(W-(p-9)*(p-18)+(p-15)*j)**2
    difference=4*J*(2*J**2-W*p+15*W+p**3-12*p**2+27*p)
    assert sp.expand(R(J)-R(-J)-difference)==0
    solved_W=(2*J**2+p*(p-3)*(p-9))/(p-15)
    factor=-(J**2+36*p)*(4*J**2+(p-9)**3*(p-5))/(p-15)**2
    assert sp.cancel(R(J).subs(W,solved_W)-factor)==0
    assert sp.cancel(R(-J).subs(W,solved_W)-factor)==0
    j2=(9-p)**3*(p-5)/4
    w0=-(p-9)*(p*p-10*p+27)/2
    assert sp.cancel(solved_W.subs(J**2,j2)-w0)==0
    for sign in (1,-1):
        expression=sp.Poly(sp.expand(R(sign*J).subs(W,w0)),J)
        assert expression.rem(sp.Poly(J*J-j2,J)).is_zero
    assert sp.expand(R(0).subs(p,9-q)-(36*q**3-(W-q*(q+9))**2))==0
    h=sp.symbols('h',real=True)
    for sign in (1,-1):
        assert sp.expand(R(0).subs({p:9-h*h,W:h*h*(h+sign*3)**2}))==0
    k=sp.symbols('k',real=True)
    qk=4/(1+k*k);jk=8*k/(1+k*k)**2
    wk=qk*(qk*qk-8*qk+18)/2
    assert sp.cancel(4*jk*jk-qk**3*(4-qk))==0
    for sign in (1,-1):
        assert sp.cancel(qk+sign*jk-4*(k+sign)**2/(1+k*k)**2)==0
        gk=3*qk+sign*jk
        assert sp.cancel(gk-4*(3*k*k+sign*2*k+3)/(1+k*k)**2)==0
        chi=wk-qk*(qk+9)-(qk+6)*sign*jk
        assert sp.cancel(chi/(2*gk)+2*(1+sign*k)/(1+k*k))==0
    triples=list(combinations(range(6),3))
    assert len(triples)==20
    assert all(sum(i in t for t in triples)==10 for i in range(6))
    assert all(sum(i in t and j in t for t in triples)==4
               for i in range(6) for j in range(6) if i!=j)
    assert 3*(10*6-4*6)==108
    assert 20*27-3*108-216==0
    return dict(status='PASS_EXACT_CRITICAL_REDUCTION',
                complementary_factorizations=True,zero_J_branch=True,
                rational_nonzero_J_parameter=True,
                fixed_row_triple_sum_coefficients=True,
                scope='Necessary invariant conditions only; global strict-corner coverage remains open.')


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
