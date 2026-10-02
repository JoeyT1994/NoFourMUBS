#!/usr/bin/env python3
"""Exact checks for EqualityBranches.md (sparse-support and equal-weight branches).

Run with cwd = this folder:  python3 EqualityBranches.py     (about 6 s)
Exits nonzero on failure. Reads data/completion_certificate.json (polynomial
multipliers for the completion step, Section 4); nothing is written.
"""
from fractions import Fraction as F
import itertools as it
import json
from pathlib import Path
import sympy as sp
from exact_q import Q,carrier,moment,mul,star,physical,det3

HERE=Path(__file__).resolve().parent
i=Q({1:1});q8=Q({2:F(1,2),3:F(1,2)})
FIELD=sp.QQ.algebraic_field(sp.I,sp.sqrt(2))


def expr(x):
    assert set(x.c)<={0,1,2,3}
    return sp.expand(sum(sp.Rational(c.numerator,c.denominator)
                         *(sp.I if k&1 else 1)*(sp.sqrt(2) if k&2 else 1)
                         for k,c in x.c.items()))


def inverse(A):
    n=len(A);R=[row[:]+[Q(j==k) for k in range(n)] for j,row in enumerate(A)]
    for j in range(n):
        k=next(k for k in range(j,n) if R[k][j]!=0)
        R[j],R[k]=R[k],R[j];c=1/R[j][j];R[j]=[c*x for x in R[j]]
        for k in range(n):
            if k!=j:
                c=R[k][j];R[k]=[x-c*y for x,y in zip(R[k],R[j])]
    return [r[n:] for r in R]


def projector_identities():
    x,y,z=sp.symbols('x y z',real=True);v=sp.Matrix([x,y,z])
    B=sp.eye(3)+2*sp.diag(x*x,y*y,z*z)-v*v.T
    sphere=x*x+y*y+z*z-1
    reduce=lambda p:sp.rem(sp.Poly(sp.expand(p),z),sp.Poly(sphere,z)).as_expr()
    D=2-4*x*x*y*y*z*z
    adj=sp.Matrix(3,3,lambda j,k:2-v[j]**2 if j==k
                  else v[j]*v[k]*(1+2*v[3-j-k]**2))
    assert all(reduce(c)==0 for c in B*adj-D*sp.eye(3))
    assert reduce(B.det()-D)==0
    # Support-two projector identity after using x^2+y^2=1 and x*u1+y*u2=0.
    t,u,V,W=sp.symbols('t u V W',real=True)
    # Here V=v1, W=v2; u=u1. xy*v1*v2 is retained as Z.
    Z=sp.symbols('Z',real=True)
    projected=sp.Rational(1,6)+(u*u+u*u*t/(1-t)+1)/3
    projected+=((2-t)*(1-u*u)+(1+t)*(1-u*u*t/(1-t))+2*Z)/6
    assert sp.cancel(projected-1-(t*u*u+Z)/3)==0
    # Uniform-kernel diagonal projection and the unit-triple cubic.
    T,sigma,V2=sp.symbols('T sigma V2',real=True)
    diagonal=sp.Rational(1,6)+(3-V2)/3+V2/5+T*T/10-1
    assert sp.expand(30*diagonal-(5-4*V2+3*T*T))==0
    assert sp.expand((5-4*V2+3*T*T).subs(V2,(3+T*T+2*sigma*T)/2))==T*T-4*sigma*T-1
    lam,rho=sp.symbols('lam rho',nonzero=True)
    cubic=lam**3-sp.I*T*lam**2-sp.I*rho*T*lam-rho
    disc=sp.expand(sp.discriminant(cubic,lam)/rho**2)
    assert sp.expand(disc-(T**4+18*T*T-27-4*sp.I*T**3*(rho-1/rho)))==0
    assert sp.rem(sp.Poly(T**4+18*T*T-27+8*sigma*T**3-(3*T**4+16*T*T-27),T),
                  sp.Poly(T*T-4*sigma*T-1,T)).as_expr()==0
    counts=[]
    for n in range(1,6):
        a=F(6-n,n);b=1/a
        da=3*a*a+16*a-27;db=3*b*b+16*b-27
        counts.append({'positive_columns':n,'T_squared':[str(a),str(b)],
                       'normalized_discriminants':[str(da),str(db)],
                       'both_nonpositive':da<=0 and db<=0})
    assert [c['positive_columns'] for c in counts if c['both_nonpositive']]==[3]
    assert sp.expand((lam-sp.I)*(lam**2-sp.I)-(lam**3-sp.I*lam**2-sp.I*lam-1))==0
    return {'inverse_identity':True,'support_two_contradiction':True,
            'uniform_projection_and_cubic':True,'complete_column_counts':counts}


def uniform_cases():
    plus=list(it.permutations([i,q8,-q8]))
    minus=[tuple(x.bar() for x in row) for row in plus]
    accepted=[]
    reference=[(i,q8,-q8),(q8,-q8,i),(-q8,i,q8)]
    reference += [tuple(x.bar() for x in v) for v in reference[:3]]
    for P,N in it.product(it.combinations(range(6),3),repeat=2):
        cols=[plus[j] for j in P]+[minus[j] for j in N]
        f=list(map(list,zip(*cols)))
        if any(sum(row,Q())!=0 for row in f):continue
        A=mul(f,star(f));b=[sum((x*x for x in row),Q()) for row in f]
        if A!=[[Q(6 if j==k else -2) for k in range(3)] for j in range(3)] or b!=[Q(-2)]*3:continue
        witness=None
        for perm in it.permutations(range(3)):
            transformed=[tuple(v[k] for k in perm) for v in reference]
            if all(v in transformed for v in cols):
                witness={'feature_rows':list(perm),'columns':[transformed.index(v) for v in cols]};break
        assert witness is not None
        accepted.append({'positive_permutations':list(P),'negative_permutations':list(N),**witness})
    assert len(accepted)==2
    return {'finite_cases':400,'accepted':accepted,
            'distinct_columns_justification':'feature rank5 plus M1=0 excludes repeated columns'}


def completion_data():
    X=carrier()[:3];E=[r[:3] for r in X];B=[r[3:] for r in X]
    T=[[-x for x in row] for row in mul(star(E),inverse(star(B)))]
    p,r=sp.symbols('p r',nonzero=True)
    polys=[]
    for j in range(3):
        a=sum(expr(T[k][j])*v for k,v in enumerate([1,p,r]))
        abar=sum(expr(T[k][j].bar())*v for k,v in enumerate([1,1/p,1/r]))
        polys.append(sp.Poly(sp.expand(p*r*(sp.expand(a*abar)-1)),p,r,domain=FIELD).as_expr())
    r2=sp.sqrt(2)
    Gp=(p+1)*(p-sp.I)*(p**2+sp.I)
    Gq=(p**4+(-25*r2-20+12*sp.I+15*r2*sp.I)*p**3/34
        +(4*r2+10+r2*sp.I+11*sp.I)*p*p/17
        +(7*r2+26-11*r2*sp.I-2*sp.I)*p/34
        +(-6+r2+13*r2*sp.I+24*sp.I)*r/17)
    return p,r,polys,sp.expand(Gq),sp.expand(Gp),T


def completion():
    p,r,polys,Gq,Gp,T=completion_data();poly=lambda f:sp.Poly(f,p,r,domain=FIELD)
    data=json.loads((HERE/'data'/'completion_certificate.json').read_text())
    for ss,target in zip(data['multipliers'],[p*r*Gq,p*r*Gp]):
        cs=[sp.sympify(x,locals={'p':p,'r':r,'I':sp.I,'sqrt':sp.sqrt}) for x in ss]
        assert len(cs)==3 and poly(sum(a*b for a,b in zip(cs,polys))-target).is_zero
    roots=[Q(-1),i,q8.bar(),-q8.bar()]
    rows=[]
    for pp in roots:
        rr=-sp.expand(Gq-sp.diff(Gq,r)*r).subs(p,expr(pp))/sp.diff(Gq,r)
        rr=FIELD.to_sympy(FIELD.from_sympy(rr))
        # The exact four r values are checked by polynomial substitution.
        qq=[i,-q8.bar(),q8,-i][roots.index(pp)]
        assert FIELD.from_sympy(rr-expr(qq))==FIELD.zero
        row=[Q(1),pp,qq]+mul([[Q(1),pp,qq]],T)[0]
        assert all(x*x.bar()==1 for x in row)
        assert all(poly(f).eval({p:expr(pp),r:expr(qq)})==0 for f in polys+[Gq,Gp])
        rows.append(row)
    accepted=[]
    for choice in it.combinations(range(4),3):
        H=carrier()[:3]+[rows[k] for k in choice]
        if mul(H,star(H))==[[Q(6*(j==k)) for k in range(6)] for j in range(6)]:
            physical(H);assert H==carrier();accepted.append(list(choice))
    assert accepted==[[0,2,3]]
    return {'polynomial_certificates':2,'unit_row_candidates':4,
            'orthogonal_completions':accepted,'unique_full_monomial_class':True}


def full_mate():
    H=carrier();rr=[0,5,4,2,1,3];cc=[0,1,2,5,3,4]
    H=[[H[r][c]/H[r][0] for c in cc] for r in rr];physical(H)
    a,b=H[1][1:3];c,d=H[2][1:3];r3=Q({4:1});r6=Q({6:1})
    q0=(r3+i)/2;omega=(-1+i*r3)/2;cols=[]
    for k in range(3):
        q=q0*omega**k;assert q**3==a*c
        u=[Q(1),a/q,q];v=[Q(1),d/q,b*q/a]
        A=[sum((u[t]*H[t][j].bar() for t in range(3)),Q()) for j in range(6)]
        B=[sum((v[t]*H[t+3][j].bar() for t in range(3)),Q()) for j in range(6)]
        C=A[0]*B[0].bar();norm=r6 if k<2 else Q(3)
        assert C*C.bar()==norm*norm
        z=i*C/norm
        cols += [u+[s*z*x for x in v] for s in [-1,1]]
    K=list(map(list,zip(*cols)));physical(K)
    W=mul(star(H),K)
    assert all(x*x.bar()==6 for row in W for x in row)
    triples=list(it.combinations(range(6),3))
    zeros=[{'rows':list(R),'columns':list(C)} for R,C in it.product(triples,repeat=2)
           if det3([[K[r][c] for c in C] for r in R])==0]
    assert zeros
    return {'physical_full_triple':True,'field':'Q(i,sqrt(2),sqrt(3))',
            'carrier_frame':{'rows':rr,'columns':cc,'dephase_each_row_at_column':0},
            'zero3_on_constructed_mate':zeros[0],
            'all_mates_classified':False}


def h8_control():
    """H8: physical, all 400 ordinary 3-minors nonzero, S=126 on rows 0,1,2, weights 1/3."""
    H=carrier();physical(H)
    triples=list(it.combinations(range(6),3))
    assert all(det3([[H[r][c] for c in C] for r in R])!=0
               for R,C in it.product(triples,repeat=2))
    assert moment(H,(0,1,2))==126
    f=[[H[r][j]*H[s][j].bar() for j in range(6)] for r,s in [(0,1),(1,2),(2,0)]]
    Y=mul(f+[[x.bar() for x in row] for row in f],
          star(f+[[x.bar() for x in row] for row in f]))
    assert Y==[[Q(6 if j==k else -2 if j%3!=k%3 and j//3==k//3
                     or j%3==k%3 and j//3!=k//3 else 0)
                for k in range(6)] for j in range(6)]
    return {'field':'Q(i,sqrt(2))','physical_hadamard':True,'nonzero_ordinary_3minors':400,
            'equality_rows':[0,1,2],'moment':126,'feature_kernel_weights':['1/3','1/3','1/3'],
            'moments':{str(R):str(moment(H,R).rational()) for R in triples}}


def calculate():
    return {'evidence_label':'Certified computation','identities':projector_identities(),
            'uniform_phase_cases':uniform_cases(),'full_completion':completion(),
            'h8_control':h8_control(),'full_mate':full_mate(),
            'scope':'Sparse-support and equal-weight equality branches; unequal weights are PositiveWeightEquality.md.'}


if __name__=='__main__':
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    print(json.dumps(calculate(),indent=1,sort_keys=True))
    print('PASS equality branches: projector identities, support-two contradiction, 400 uniform cases, exhaustive H8 completion, H8 control, one full mate')
