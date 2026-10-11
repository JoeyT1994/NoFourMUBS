"""Exact matched flatness through four weighted third-moment identities.

Exploration/proof verifier. All computations use Q(a,b,c,d) rational functions.
"""
import argparse
import gzip
import json
from math import lcm
import resource
import time
from pathlib import Path

from rational_helper import CTX, ZERO, ONE, F, tr, adj, mul


def main(write_certificates=False):
    started=time.process_time()
    def mark(s): print(f'{time.process_time()-started:.2f}s {s}',flush=True)
    a,b,c,d=[F(x) for x in CTX.gens()]
    E=[[F(1)]*3,[F(1),a,b],[F(1),c,d]]
    Eh=adj(E)
    Gh=mul(E,Eh);Gv=mul(tr(E),adj(tr(E)))
    Gh=[[6*(i==j)-v for j,v in enumerate(row)] for i,row in enumerate(Gh)]
    Gv=[[6*(i==j)-v for j,v in enumerate(row)] for i,row in enumerate(Gv)]

    def side(G):
        s,t,r=G[1][0],G[2][0],G[2][1]
        S,T,Q=s.star(),t.star(),r.star()
        X,Y,Z=s*S,t*T,r*Q;p=X+Y+Z;J=s*r*T+S*Q*t
        g=27-3*p+J;eta=9-p+J
        chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
        P0=r*s*s+Q*t*t+(3-Z)*s*t
        P1=t*S*S+r*r*T+(3-Y)*r*S
        P2=s*T*T+Q*Q*S+(3-X)*Q*T
        c0,c1,c2=9-Z,9-Y,9-X
        # bar U = lambda1/lambda0; bar V=lambda2/lambda0.
        def ratio(ci,Pi):
            den=P0*Pi.star()
            return ((g*g+ci*chi+c0*ci*eta)/den,g*(c0-ci)/den)
        U=ratio(c1,P1);V=ratio(c2,P2)
        # bar pi=(g(h-z)+c0 eta)/P0, z lambda_i=(g z+ci eta)/bar Pi.
        Pi=((chi+c0*eta)/P0,-g/P0)
        zL1=(c1*eta/P1.star(),g/P1.star())
        zL2=(c2*eta/P2.star(),g/P2.star())
        q1=[
            [[S,S*S-2*s*U[0],S*T-Pi[0]],[F(3),S,T],[r,S*r-zL1[0],S]],
            [[F(0),-2*s*U[1],-Pi[1]],[F(0),F(0),F(0)],[F(0),-zL1[1],F(0)]]]
        q2=[
            [[T,S*T-Pi[0],T*T-2*t*V[0]],[Q,T,T*Q-zL2[0]],[F(3),S,T]],
            [[F(0),-Pi[1],-2*t*V[1]],[F(0),F(0),-zL2[1]],[F(0),F(0),F(0)]]]
        return [q1,q2],(g,eta,chi)

    Qh,(g,eta,chi)=side(Gh);mark('horizontal third moments')
    Qv,invv=side(Gv);mark('vertical third moments')
    assert all(not (x-y).n for x,y in zip((g,eta,chi),invv))
    inv=[]
    for i in range(3):
        row=[]
        for j in range(3):
            rs=[k for k in range(3) if k!=j];cs=[k for k in range(3) if k!=i]
            co=Gh[rs[0]][cs[0]]*Gh[rs[1]][cs[1]]-Gh[rs[0]][cs[1]]*Gh[rs[1]][cs[0]]
            row.append((-1)**(i+j)*co/g)
        inv.append(row)
    K=[[-x for x in row] for row in mul(Eh,inv)]
    Kstar=adj(K)
    h=chi/g
    mark('forced completion map')

    stats=[]
    polynomial_ids={}
    polynomials=[]
    identities=[]
    maximum_slice_terms=0
    def polynomial_id(poly):
        nonlocal maximum_slice_terms
        terms=list(poly.terms())
        scale=lcm(*(int(co.denominator) for ex,co in terms)) if terms else 1
        data=[]
        for ex,co in terms:
            data.append((tuple(int(e) for e in ex),int(co*scale)))
        key=(scale,tuple(data))
        if key in polynomial_ids:return polynomial_ids[key]
        slices={}
        for ex,co in data:
            slices.setdefault(ex[0],[]).append([ex[1],ex[2],ex[3],co])
        record=dict(id=len(polynomials),scale=scale,terms=len(terms),a_slices=[dict(a_power=k,terms=v) for k,v in sorted(slices.items())])
        maximum_slice_terms=max(maximum_slice_terms,max((len(v) for v in slices.values()),default=0))
        polynomial_ids[key]=record['id'];polynomials.append(record)
        return record['id']

    def check_sum(values,label):
        den=ONE
        for v in values: den=den*(v.d/den.gcd(v.d))
        mark(f'{label}: {len(den)} denominator terms; degrees {den.degrees()}')
        num=ZERO
        maxterm=0
        cleared=[]
        for v in values:
            cofactor=den/v.d
            assert v.d*cofactor==den
            term=v.n*cofactor;maxterm=max(maxterm,len(term));num+=term
            cleared.append((v,cofactor,term))
        mark(f'{label}: {len(num)} residual terms')
        assert not num, label+' nonzero'
        stats.append(dict(label=label,denominator_terms=len(den),denominator_degrees=[int(d) for d in den.degrees()],maximum_cleared_summand_terms=maxterm,summands=len(values)))
        integer_scale=lcm(*(int(co.denominator) for v,cf,p in cleared for ex,co in p.terms()))
        certificate=dict(label=label,common_denominator=polynomial_id(den),integer_scale=integer_scale,summands=[])
        powers=set()
        for v,cofactor,term in cleared:
            cleared_id=polynomial_id(integer_scale*term)
            assert polynomials[cleared_id]['scale']==1
            powers.update(s['a_power'] for s in polynomials[cleared_id]['a_slices'])
            certificate['summands'].append(dict(numerator=polynomial_id(v.n),denominator=polynomial_id(v.d),cofactor=polynomial_id(cofactor),cleared_integer=cleared_id))
        certificate['coefficient_identity_a_powers']=sorted(powers)
        identities.append(certificate)

    for q in range(2):
        Mh=[mul(K,mul(Qh[q][i],Kstar)) for i in (0,1)]
        mark(f'weighted horizontal image q={q+1}; max numerator terms '+str(max(len(x.n) for M in Mh for row in M for x in row)))
        for p in range(2):
            # Vertical is evaluated on the opposite sheet h-z.
            lin=[Qv[p][0][a][c]*Mh[1][a][c]-Qv[p][1][a][c]*Mh[0][a][c] for a in range(3) for c in range(3)]
            check_sum(lin,f'W{p+1}{q+1} linear')
            const=[(Qv[p][0][a][c]+h*Qv[p][1][a][c])*Mh[0][a][c]+eta*Qv[p][1][a][c]*Mh[1][a][c] for a in range(3) for c in range(3)]
            const.append(-Gv[0][p+1]*Gh[0][q+1])
            check_sum(const,f'W{p+1}{q+1} constant')
    certificates=dict(format='matched-third-moment-cofactors-v1',variables=['a','b','c','d'],semantics='Each polynomial is (1/scale)*sum_a a^a_power * sum_terms coeff*b^b_exp*c^c_exp*d^d_exp. Each identity has D=denominator*cofactor, cleared_integer=integer_scale*numerator*cofactor, and sum(cleared_integer)=0.',polynomials=polynomials,identities=identities,maximum_polynomial_slice_terms=maximum_slice_terms)
    certificate_path=Path(__file__).with_name('third_moment_certificates.json.gz')
    if write_certificates:
        certificate_path.write_bytes(gzip.compress(json.dumps(certificates,separators=(',',':')).encode(),mtime=0))
    else:
        stored=json.loads(gzip.decompress(certificate_path.read_bytes()))
        assert stored==certificates,'certificate data does not match the constructed rational-function targets'
    result=dict(status='PASS_EXACT_THIRD_MOMENT_MATCHED_FLATNESS',cpu_seconds=time.process_time()-started,peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,identities=stats,certificate_polynomials=len(polynomials),coefficient_slice_identities=sum(len(c['coefficient_identity_a_powers']) for c in identities),maximum_polynomial_slice_terms=maximum_slice_terms)
    Path(__file__).with_name('third_moment_results.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2),flush=True)


if __name__=='__main__':
    if not __debug__:raise SystemExit('Refusing optimized Python: exact acceptance assertions must be enabled.')
    parser=argparse.ArgumentParser()
    parser.add_argument('--write-certificates',action='store_true',help='Regenerate the exact integer-coefficient certificate file; default replay compares it.')
    main(parser.parse_args().write_certificates)
