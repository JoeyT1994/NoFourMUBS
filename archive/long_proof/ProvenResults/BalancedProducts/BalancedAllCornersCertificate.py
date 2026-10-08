#!/usr/bin/env python3
"""Outward Arb certificate for one rational four-seed specialization.

Both matched sheets and all four delta-sign pairs are retained. All400
positional3x3 corners are dephased and tested on every resulting branch.
The certificate establishes nonzero specialization of these finite algebraic
branches, not global F3 forcing or MUB compatibility.
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
        # Analytic reality is one of the accepted side-constructor identities.
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


def main():
    ctx.prec=BITS
    seeds=[]
    exact_phases=[]
    for t in PARAMETERS:
        re,im=(1-t*t)/(1+t*t),2*t/(1+t*t)
        assert re*re+im*im==1
        exact_phases.append({'real':str(re),'imag':str(im)})
        seeds.append(acb(A(re),A(im)))
    one=acb(1)
    a,b,c,d=seeds
    E=[[one,one,one],[one,a,b],[one,c,d]]
    Gh,Gv=gram(E),gram(E,True)
    g,eta,chi,R=invariants(Gh)
    input_guards={'g':positive(g,'input g'),'R':positive(R,'input R'),
                  'eta':bounds(eta),'chi':bounds(chi)}
    for left,right in zip((g,eta,chi,R),invariants(Gv)):
        assert (left-right).contains(0),'horizontal/vertical invariant mismatch'
    branches=[]
    side_records=[]
    for sheet in (1,-1):
        z=acb(chi,sheet*R.sqrt())/(2*g)
        horizontal=sides(Gh,z,g,f'sheet{sheet} horizontal')
        vertical=sides(Gv,z.conjugate(),g,f'sheet{sheet} vertical')
        for label,ss in [('horizontal',horizontal),('vertical',vertical)]:
            for side in ss:
                side_records.append({'sheet':sheet,'side':label,
                    **{k:v for k,v in side.items()if k!='S'}})
        for h,v in product(horizontal,vertical):
            B,C=h['S'],transpose(v['S'])
            D=mm(mm(mm(C,dagger(E)),adj3(Gh)),B)
            D=[[-q/g for q in row]for row in D]
            H=[[E[i][j]if i<3 and j<3 else B[i][j-3]if i<3 else
                C[i-3][j]if j<3 else D[i-3][j-3]for j in range(6)]
               for i in range(6)]
            HH=mm(H,dagger(H))
            assert all((abs2(q)-1).contains(0)for row in H for q in row)
            assert all((HH[i][j]-(6 if i==j else 0)).contains(0)
                       for i in range(6)for j in range(6))
            # These containment checks are consistency diagnostics. Exact
            # Hadamard identities for the canonical signs come from the
            # accepted reconstruction, not from tiny intervals containing0.
            corner_data=all_corners(H)
            branch={'sheet':sheet,'horizontal_delta_sign':h['delta_sign'],
                'vertical_delta_sign':v['delta_sign'],
                'canonical_dF_signs':h['canonical_dF_nonnegative']and v['canonical_dF_nonnegative'],
                'flat_and_unitary_residuals_contain_zero':True,**corner_data}
            branches.append(branch)
            print('sheet',sheet,'delta signs',h['delta_sign'],v['delta_sign'],
                  'minimum R',corner_data['minimum_R_record']['R']['display'],flush=True)
    assert len(branches)==8 and sum(q['corner_count']for q in branches)==3200
    canonical=[q for q in branches if q['canonical_dF_signs']]
    assert len(canonical)==2 and {q['sheet']for q in canonical}=={-1,1}
    result={'status':'CERTIFIED_STRICT_SPECIALIZATION',
        'method':'python-flint Arb/acb outward ball arithmetic; exact rational seed phases',
        'precision_bits':BITS,'parameters_cayley_t':list(map(str,PARAMETERS)),
        'phase_formula':'(1+i t)/(1-i t)','exact_phases':exact_phases,
        'input_guards':input_guards,'side_branches':side_records,
        'constructed_branches':8,'positional_corner_checks':3200,
        'canonical_sheet_corner_checks':800,
        'scope':'One rational specialization; every listed branch and all positional corners have positive g,R and nonzero dephasing divisors. Canonical Hadamard interpretation uses accepted PDF reconstruction identities. This proves neither F3 forcing nor MUB compatibility.',
        'finite_branch_coverage':[
            'Both signs of sqrt(R) are evaluated.',
            'Both delta signs on each side are evaluated, and both rho values are certified positive; no negative-dF algebraic branch is dropped.',
            'Multiplication of a cube root by omega cycles lower columns or lower rows of the completed matrix. All400positional subsets are permutation invariant, so the other8cube-root pairs require no new checks.',
            'Changing the primitive Fourier cube root swaps Fourier indices and is likewise a side permutation.',
            'Internal ordering and dephasing of a3x3corner preserve p,J,W,g,eta,chi,R; unordered positional subsets suffice.'],
        'branches':branches,
        'dependencies':{'canonical_specification':'../../MinimalConstruction/RECONSTRUCTION.md',
            'accepted_inputs':'../../MinimalConstruction/ASSUMPTIONS.md'},
        'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    output=Path(__file__).with_suffix('.json')
    output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'branches':len(branches),
        'corner_checks':3200,'receipt':str(output)},indent=2))


if __name__=='__main__':
    main()
