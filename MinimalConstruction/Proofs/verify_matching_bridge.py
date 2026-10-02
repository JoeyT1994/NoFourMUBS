"""Exact bridge to the proved ClassificationPaper affine-minus matching.

Also verifies a rational unit-phase seed where BOTH side branches satisfy
every product-regular guard. The written proof supplies the density and
continuity argument extending flatness to all strict seeds.
"""
import json
import time
import sympy as sp


def run():
    started=time.process_time()
    s,S,t,T,r,Q,x,u=sp.symbols('s S t T r Q x u')
    star=lambda f:sp.sympify(f).xreplace({s:S,S:s,t:T,T:t,r:Q,Q:r,x:1/x})
    X,Y,Z=s*S,t*T,r*Q
    p=X+Y+Z;J=s*r*T+S*Q*t
    g=27-3*p+J;eta=9-p+J
    chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    R=4*g*g*eta-chi*chi
    P0=r*s*s+Q*t*t+(3-Z)*s*t
    P1=t*S*S+r*r*T+(3-Y)*r*S
    c0,c1=9-Z,9-Y
    A=x*(Z-Y)*(-X*x+2*s+2*S*x*x-3*x)
    B=(-(Q**2)*t+Q*s*t*T-3*Q*s-s*s*T
       +(r*Q**2-r*Q*s*T+Q**2*S*t-Q*s*S*t*T+3*Q*s*S-Q*t*T+s*s*S*T+s*t*T*T)*x
       +(-r*Q**2*S+r*Q*s*S*T+r*Q*T-r*s*T*T-Q*s*S*S+Q*S*t*T-3*s*S*T-t*T*T)*x*x
       +(-r*Q*S*T+r*T*T+Q*S*S+3*S*T)*x**3)
    sextic=sp.Poly(sp.expand(x**3*(A*star(A)-B*star(B))),x)
    f6,f3,f0=[sextic.coeff_monomial(x**j) for j in (6,3,0)]
    assert sp.expand(f6-P1*star(P0))==0
    assert sp.expand(f0-star(f6))==0
    L=g*g+c0*c1*eta+c0*chi
    slope=g*(Z-Y)
    # u(z)=(L+slope*z)/f6, z²=(chi/g)z-eta.
    assert sp.expand((1+X)*(L*L-slope*slope*eta)+f3*L+(1+X)*f0*f6)==0
    assert sp.expand((1+X)*(2*L*slope+g*(Z-Y)**2*chi)+f3*slope)==0
    # The average of the two u values equals half the paper's U.
    assert sp.expand((1+X)*(2*L+(Z-Y)*chi)+f3)==0
    print('PASS universal c6, product-root, and affine-slope identities',flush=True)

    pairs=[(-3,2),(1,5),(2,1),(-2,3)]
    phases=[sp.cancel((m+sp.I*n)/(m-sp.I*n)) for m,n in pairs]
    a,b,c,d=phases
    E=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
    clean=lambda f:sp.simplify(sp.expand_complex(f))
    E=E.applyfunc(clean)
    assert clean(E.det()*sp.conjugate(E.det()))>0
    values=[]
    for matrix in (E,E.T):
        G=(6*sp.eye(3)-matrix*matrix.H).applyfunc(clean)
        sub={s:G[1,0],S:G[0,1],t:G[2,0],T:G[0,2],r:G[2,1],Q:G[1,2]}
        gg,rr,dd,lead=[clean(v.subs(sub)) for v in (g,R,Z-Y,f6)]
        assert gg>0 and rr>0 and dd!=0 and lead!=0
        # Compute guarded polynomials over Q(i), so all gcd checks are exact.
        product=sp.Poly(((1+X)*f6*u*u+f3*u+(1+X)*f0).subs(sub),u,extension=sp.I)
        assert product.degree()==2
        cubic=x**3-sub[s]*x*x+u*sub[S]*x-u
        disc=sp.Poly(sp.discriminant(cubic,x),u,extension=sp.I)
        companion=sp.Poly(B.subs(sub),x,extension=sp.I).as_expr()
        resultant=sp.Poly(sp.resultant(cubic,companion,x),u,extension=sp.I)
        assert sp.gcd(product,disc).degree()==0
        assert sp.gcd(product,resultant).degree()==0
        values.append(dict(g=str(gg),R=str(rr),companion_determinant=str(dd),
                           c6_nonzero=True,cubic_discriminant_gcd_degree=0,
                           companion_resultant_gcd_degree=0))
    assert values[0]['g']==values[1]['g'] and values[0]['R']==values[1]['R']
    print('PASS exact strict seed with all product guards on both branches',flush=True)
    return dict(status='PASS_EXACT_MATCHING_BRIDGE',unit_seed=[str(p) for p in phases],
                sides=values,cpu_seconds=time.process_time()-started,
                scope='Algebra and nonempty guard witness for MATCHED_FLATNESS.md; no Tao-exception classification or strict-corner coverage.')


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
