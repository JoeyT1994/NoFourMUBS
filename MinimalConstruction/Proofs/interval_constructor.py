"""Local outward constructor helpers for the corner-matching witness.

Adapted from ProvenResults/BalancedProducts/BalancedAllCornersCertificate.py.
Only arithmetic helpers are retained; this module performs no writes.
The exact interpretation now uses Proofs/SIDE_FIBER.md and
MATCHED_FLATNESS.md, not the reconstruction assumptions being audited.
Source SHA-256: 057be78343fc32ace0b9bfe3561c5f604a2b1d7d617e6b7628a7ce9cbbc9c0be
"""
from fractions import Fraction
from itertools import combinations, product
from pathlib import Path
import hashlib
import json
from flint import arb, acb, fmpq, ctx

BITS = 320
HERE = Path(__file__).resolve().parent
PARAMETERS = [Fraction(-1), Fraction(20), Fraction(3,2), Fraction(-7,10)]


def A(q):
    if isinstance(q, Fraction):
        return arb(fmpq(q.numerator,q.denominator))
    return arb(q)


def rational(q):
    r=q.fmpq()
    return Fraction(int(r.numerator),int(r.denominator))


def lower(q): return rational(q.lower())
def upper(q): return rational(q.upper())


def bounds(q):
    """Coarser outward exact rational endpoints, independently comparable."""
    assert q.is_finite()
    scale=10**30
    lo,hi=lower(q),upper(q)
    lo=Fraction((lo*scale).__floor__(),scale)
    hi=Fraction((hi*scale).__ceil__(),scale)
    return {'lo':str(lo),'hi':str(hi),'display':str(q)}


def positive(q,label):
    assert q.is_finite() and q>0, label+' was not certified strictly positive'
    return bounds(q)


def abs2(z): return (z*z.conjugate()).real
def transpose(M): return [list(r)for r in zip(*M)]
def dagger(M): return [[z.conjugate()for z in row]for row in transpose(M)]
def mm(A,B):
    return [[sum((A[i][k]*B[k][j]for k in range(len(B))),acb(0))
             for j in range(len(B[0]))]for i in range(len(A))]


def adj3(M):
    return [[(-1)**(i+j)*(M[rr[0]][cc[0]]*M[rr[1]][cc[1]]
                          -M[rr[0]][cc[1]]*M[rr[1]][cc[0]])
             for j in range(3)
             for rr in [[r for r in range(3)if r!=j]]
             for cc in [[c for c in range(3)if c!=i]]]
            for i in range(3)]


def gram(E,vertical=False):
    Q=mm(dagger(E),E)if vertical else mm(E,dagger(E))
    G=[[acb(6 if i==j else 0)-Q[i][j]for j in range(3)]for i in range(3)]
    return transpose(G)if vertical else G


def invariants(G):
    s,t,r=G[1][0],G[2][0],G[2][1]
    X,Y,Z=abs2(s),abs2(t),abs2(r)
    p=X+Y+Z
    J=2*(s*r*t.conjugate()).real
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J
    eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J
    R=4*g*g*eta-chi*chi
    return g,eta,chi,R


def sides(G,z,g,label):
    s,t,r=G[1][0],G[2][0],G[2][1]
    X,Y,Z=abs2(s),abs2(t),abs2(r)
    P=[r*s*s+r.conjugate()*t*t+(3-Z)*s*t,
       t*s.conjugate()**2+r*r*t.conjugate()+(3-Y)*r*s.conjugate(),
       s*t.conjugate()**2+r.conjugate()**2*s.conjugate()
       +(3-X)*r.conjugate()*t.conjugate()]
    pden=[abs2(v)for v in P]
    checks={f'P{j}_abs_squared':positive(v,label+f' |P{j}|²')
            for j,v in enumerate(pden)}
    lam=[P[j]*(g+c*z.conjugate())/pden[j]for j,c in enumerate([9-Z,9-Y,9-X])]
    for v in lam:
        assert (abs2(v)-1).contains(0),'unit lambda consistency check failed'
    u=lam[0]*lam[1].conjugate()
    mu,nu=s/3,t/3
    n=1-abs2(mu)
    checks['n']=positive(n,label+' n')
    k=r/3-nu*mu.conjugate()
    alpha=mu*mu-u*mu.conjugate()
    gamma=2*mu*nu-z*lam[0]/3
    rad=(g/27)*lam[0]*lam[1].conjugate()*lam[2].conjugate()
    checks['delta_radicand_abs_squared']=positive(abs2(rad),label+' delta radicand')
    delta0=rad.sqrt()
    assert delta0.is_finite() and (delta0*delta0-rad).contains(0)
    omega=acb(-A(Fraction(1,2)),A(3).sqrt()/2)
    F=[[acb(1),acb(1),acb(1)],
       [acb(1),omega,omega.conjugate()],
       [acb(1),omega.conjugate(),omega]]
    result=[]
    for sign in (1,-1):
        delta=sign*delta0
        df_complex=(27/g)*(n*gamma-2*alpha*k)*delta.conjugate()
        # Analytic reality is proved in SIDE_FIBER.md.
        assert df_complex.imag.contains(0),'dF reality consistency check failed'
        dF=df_complex.real
        assert dF>0 or dF<0,'dF sign not separated at this specialization'
        rho=(n+dF)/2
        branch_checks=dict(checks)
        branch_checks['rho']=positive(rho,label+f' rho(delta sign {sign})')
        q=alpha/rho
        cp=(k-delta*q.conjugate())/n
        cm=(k*q+delta)/n
        sigma=u+mu*q
        xi=sigma*sigma/rho
        branch_checks['sigma_abs_squared']=positive(abs2(sigma),label+' sigma')
        branch_checks['xi_abs_squared']=positive(abs2(xi),label+' xi')
        assert (abs2(xi)-1).contains(0),'unit xi consistency check failed'
        w=xi.root(3)
        assert w.is_finite() and (w**3-xi).contains(0)
        branch_checks['cube_root_abs_squared']=positive(abs2(w),label+' cube root')
        M=[[acb(1),acb(0),acb(0)],
           [mu,sigma,q*sigma.conjugate()],
           [nu,cp*sigma,cm*sigma.conjugate()]]
        gate=[[acb(1),acb(0),acb(0)],
              [acb(0),w.conjugate(),acb(0)],
              [acb(0),acb(0),w]]
        S=mm(mm(M,gate),F)
        # No intersection with assumed unit-modulus circles is performed.
        assert all((abs2(v)-1).contains(0)for row in S for v in row)
        result.append({'S':S,'delta_sign':sign,'dF':bounds(dF),
                       'canonical_dF_nonnegative':bool(dF>0),
                       'positive_denominators':branch_checks})
    return result


def all_corners(H):
    entry_bounds=[abs2(v)for row in H for v in row]
    assert all(q>0 for q in entry_bounds),'dephasing division may vanish'
    minentry=min(entry_bounds,key=lower)
    records=[]
    for rows in combinations(range(6),3):
        for cols in combinations(range(6),3):
            r0,c0=rows[0],cols[0]
            # Literal dephased corner. No unit-modulus replacement or
            # quotient simplification is used for its four seed entries.
            E=[[acb(1)if i==0 or j==0 else
                H[r][c]*H[r0][c0]/(H[r][c0]*H[r0][c])
                for j,c in enumerate(cols)]for i,r in enumerate(rows)]
            g,eta,chi,R=invariants(gram(E))
            records.append({'rows':list(rows),'columns':list(cols),
                'g':positive(g,'corner g'),'R':positive(R,'corner R')})
    assert len(records)==400
    smallest_R=min(records,key=lambda r:Fraction(r['R']['lo']))
    smallest_g=min(records,key=lambda r:Fraction(r['g']['lo']))
    return {'minimum_entry_abs_squared':bounds(minentry),
            'corner_count':400,'all_g_and_R_certified_positive':True,
            'minimum_R_record':smallest_R,'minimum_g_record':smallest_g,
            'corners':records}

