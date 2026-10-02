"""Exact endpoint and mixed-corner identities for the equicorrelation proof."""
import itertools,json
import sympy as sp


def run():
    a=(-4+3*sp.I)/5;clean=lambda f:sp.simplify(sp.expand_complex(f))
    E=sp.Matrix([[1,1,1],[1,1,a],[1,1/a,1]])
    G=(E*E.H).applyfunc(clean);s,t,r=G[1,0],G[2,0],G[2,1]
    X,Y,Z=[clean(v*sp.conjugate(v)) for v in (s,t,r)]
    assert X==Y==Z==sp.Rational(9,5)
    J=clean(s*r*sp.conjugate(t)+sp.conjugate(s*r)*t)
    assert J==sp.Rational(54,25)
    p=X+Y+Z;W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J
    assert g==sp.Rational(324,25) and eta==sp.Rational(144,25)
    assert chi==sp.Rational(-7776,125) and 4*g*g*eta-chi*chi==0
    z=chi/(2*g);assert z==sp.Rational(-12,5)
    S,T,Q=map(sp.conjugate,(s,t,r))
    P=[r*s*s+Q*t*t+(3-Z)*s*t,
       t*S*S+r*r*T+(3-Y)*r*S,
       s*T*T+Q*Q*S+(3-X)*Q*T]
    L=g+(9-X)*z;assert L==sp.Rational(-108,25)
    lam=[clean(v/L) for v in P]
    assert clean(lam[0]/lam[1]-a)==0
    assert clean(lam[0]/lam[2]-1/a)==0
    v=sp.symbols('v')
    assert all(clean(c)==0 for c in sp.Poly(v**3-s*v*v+a*S*v-a-(v-1)**2*(v-a),v).all_coeffs())
    assert all(clean(c)==0 for c in sp.Poly(v**3-t*v*v+T*v/a-1/a-(v-1)**2*(v-1/a),v).all_coeffs())
    assert clean(2+1/a**2-r)==clean((1-1/a)**2)!=0
    c,x,y=sp.symbols('c x y',nonzero=True)
    M=sp.Matrix([[1,1,1],[1,1,x],[1,c,y]])
    per=sum(sp.prod(M[i,p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
    term=per*M.det()**2/sp.prod(M)
    signed=term-term.xreplace({v:1/v for v in (c,x,y)})
    expected=(c-1)**2*(c+1)*(x-1)**2*(x+1)*(c*x-y*y)/(c*c*x*x*y)
    assert sp.cancel(signed-expected)==0
    assert clean(a-sp.I*(2+sp.I)/(2-sp.I))==0
    assert sp.expand((2+sp.I)*(2-sp.I))==5
    return dict(status='PASS_EXACT_EQUI_CORRELATION_ENDPOINT_EXCLUSION',
                gram=True,critical_invariants=True,nonzero_boundary_divisors=True,
                coordinate_products_and_cubics=True,mixed_corner_factorization=True,
                scope='Exact identities for the written endpoint exclusion, including its field-degree argument.')


if __name__=='__main__':print(json.dumps(run(),indent=2))
