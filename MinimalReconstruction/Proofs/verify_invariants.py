"""Exact identities for strict-domain positivity and opposite-corner transport.

This verifies algebraic identities used in the written proofs. It does not
claim complete side exhaustion or global strict-corner coverage.
"""
from itertools import permutations
import json
import sympy as sp


def run():
    s,S,t,T,r,Q=sp.symbols('s S t T r Q')
    star=lambda x:sp.sympify(x).xreplace({s:S,S:s,t:T,T:t,r:Q,Q:r})
    G=sp.Matrix([[3,S,T],[s,3,Q],[t,r,3]])
    X,Y,Z=s*S,t*T,r*Q
    p=X+Y+Z;J=s*r*T+S*Q*t
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J
    assert sp.expand(G.det()-g)==0
    assert sp.expand((6*sp.eye(3)-G).det()+eta-36+4*p)==0
    assert sp.expand(g-eta-2*(9-p))==0
    P=[r*s*s+Q*t*t+(3-Z)*s*t,
       t*S*S+r*r*T+(3-Y)*r*S,
       s*T*T+Q*Q*S+(3-X)*Q*T]
    for f,cj in zip(P,(9-Z,9-Y,9-X)):
        assert sp.expand(f*star(f)-g*g-cj*chi-cj*cj*eta)==0
    # Abstract scalar identities in the real quadratic extension z=x+i*y.
    gg,ee,cc,cj=sp.symbols('gg ee cc cj',real=True,nonzero=True)
    yy=sp.symbols('yy',real=True)
    zz=cc/(2*gg)+sp.I*yy
    expr=sp.expand((gg+cj*sp.conjugate(zz))*(gg+cj*zz))
    assert sp.simplify(expr.subs(yy**2,ee-cc**2/(4*gg**2))-
                       (gg**2+cj*cc+cj**2*ee))==0
    assert sp.cancel(ee*(cj+cc/(2*ee))**2+
                     (4*gg**2*ee-cc**2)/(4*ee)-
                     (gg**2+cj*cc+cj**2*ee))==0

    a,b,c,d=sp.symbols('a b c d',nonzero=True)
    E=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
    sharp=lambda x:sp.cancel(sp.sympify(x).xreplace({a:1/a,b:1/b,c:1/c,d:1/d}))
    def substitute_gram(M):
        return {s:M[1,0],S:M[0,1],t:M[2,0],T:M[0,2],r:M[2,1],Q:M[1,2]}
    Gh=6*sp.eye(3)-E*E.applyfunc(sharp).T
    Gv=6*sp.eye(3)-E.T*E.applyfunc(sharp)
    for invariant in (g,eta,chi):
        assert sp.cancel(invariant.subs(substitute_gram(Gh))-
                         invariant.subs(substitute_gram(Gv)))==0
    EG=E*E.applyfunc(sharp).T
    sub={s:EG[1,0],S:EG[0,1],t:EG[2,0],T:EG[0,2],r:EG[2,1],Q:EG[1,2]}
    det=E.det()
    perm=sum(sp.prod(E[i,j] for i,j in enumerate(order))
             for order in permutations(range(3)))
    product=sp.prod(E)
    assert sp.cancel(g.subs(sub)-det*sharp(det))==0
    assert sp.cancel(eta.subs(sub)-perm*sharp(perm))==0
    term=perm*det**2/product
    assert sp.cancel(chi.subs(sub)+term+sharp(term))==0

    H=sp.Matrix(6,6,lambda i,j:sp.Integer(1) if i==0 or j==0
                else sp.Symbol('h%d%d'%(i,j),nonzero=True))
    order=(3,4,5,0,1,2)
    def opposite(M):
        A=M.extract(order,order)
        return sp.Matrix(6,6,lambda i,j:sp.cancel(A[0,0]*A[i,j]/(A[i,0]*A[0,j])))
    assert all(sp.cancel(x)==0 for x in opposite(opposite(H))-H)
    return dict(status='PASS_EXACT_IDENTITIES',
                strict_domain_determinant_identities=3,P_norm_identities=3,
                lambda_norm_identity=True,completed_square_identity=True,
                horizontal_vertical_scalar_equalities=3,
                generic_phase_block_invariants=3,
                generic_opposite_corner_involution=True,
                scope='Written proofs supply universal inequalities and conditional transport. No global coverage or side-exhaustion PASS is asserted.')


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
