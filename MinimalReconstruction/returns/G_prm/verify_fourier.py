"""Exact certificates for all-Fourier block classification and all-corner matching."""
from __future__ import annotations
from itertools import combinations,permutations,product
from pathlib import Path
from collections import Counter
import json,time
from exact_algebra import *
ROOT=Path(__file__).resolve().parent


def tao_witness(H):
    """Find row/column permutations; dephasing factors are then canonical."""
    try: ex=[[CUBES.index(x) for x in row] for row in H]
    except ValueError:return None
    targets=[tuple(row) for row in TAO_EXP];targetset=set(targets)
    for anchor in range(6):
        for cols in permutations(range(6)):
            rows=[tuple((ex[i][j]-ex[i][cols[0]]-ex[anchor][j]+ex[anchor][cols[0]])%3 for j in cols) for i in range(6)]
            if set(rows)==targetset:
                order=[rows.index(t) for t in targets]
                return dict(rows=order,cols=list(cols))
    return None


def apply_witness(H,w):
    P=extract(H,w['rows'],w['cols'])
    return [[P[0][0]*P[i][j]/(P[i][0]*P[0][j]) for j in range(6)] for i in range(6)]


def finite_census(write=False):
    assert hadamard(TAO)
    data=[];counts=Counter()
    for ex in product(range(3),repeat=4):
        p,q,r,s=[CUBES[k] for k in ex]
        H=normal_form(p,q,r,s)
        bad=next(((i,j) for i in range(3,6) for j in range(3,6) if H[i][j].norm()!=1),None)
        record=dict(exponents=list(ex))
        if bad is not None:
            i,j=bad;record.update(kind='nonphysical',bad_entry=[i,j],norm=str(H[i][j].norm()))
        elif q==p*p:
            assert hadamard(H)
            record.update(kind='v_character')
        elif s==r*r:
            assert hadamard(H)
            record.update(kind='w_character')
        else:
            assert hadamard(H)
            witness=tao_witness(H)
            assert witness is not None,('unclassified physical tuple',ex)
            assert apply_witness(H,witness)==TAO
            record.update(kind='Tao',witness=witness)
        data.append(record);counts[record['kind']]+=1
    cert=dict(format='fourier-normal-form-census-v1',omega_relation='omega^2+omega+1=0',counts=dict(counts),cases=data)
    path=ROOT/'certificates'/'fourier_census.json'
    if write:path.write_text(json.dumps(cert,indent=2)+'\n')
    else:assert json.loads(path.read_text())==cert,'census certificate differs from exact reconstruction'
    return dict(total=81,counts=dict(counts),Tao_witnesses_checked=counts['Tao'])


def family_matrix():
    F=[[L(x) for x in row] for row in f3()]
    v=[L(1),L({(1,0):ONE}),L({(0,1):ONE})]
    B=[[v[i]*F[i][j] for j in range(3)] for i in range(3)]
    return [F[i]+B[i] for i in range(3)]+[F[i]+[-x for x in B[i]] for i in range(3)]


def all_corner_matching(write=False):
    H=family_matrix();gram=multiply(H,adjoint(H))
    assert gram==[[L(6 if i==j else 0) for j in range(6)] for i in range(6)]
    assert all(x*x.star()==L(1) for row in H for x in row)
    triples=list(combinations(range(6),3));results=[];largest=0
    for rs in triples:
        rr=tuple(i for i in range(6) if i not in rs)
        for cs in triples:
            cc=tuple(j for j in range(6) if j not in cs)
            left=psi(extract(H,rs,cc));right=psi(extract(H,rr,cs)).star()
            assert left==right,('corner mismatch',rs,cs)
            largest=max(largest,len(left.p))
            results.append(dict(rows=list(rs),cols=list(cs),common_polynomial=left.data()))
    cert=dict(format='fourier-all-corner-matching-v1',family='[[F, diag(1,u,v)F],[F,-diag(1,u,v)F]]',variables=['u','v'],coefficient_convention='[u_power,v_power,a,b] means (a+b*omega)*u^u_power*v^v_power',corners=results)
    path=ROOT/'certificates'/'fourier_matching.json'
    if write:path.write_text(json.dumps(cert,indent=2)+'\n')
    else:assert json.loads(path.read_text())==cert,'Fourier Laurent certificate differs from exact reconstruction'
    return dict(corners=len(results),maximum_terms_in_common_signature=largest,transpose='follows by transposition and conjugation of the same identity')


def fourier_convolution_identity():
    """Verify the two explicit Ahat formulas and Ahat0=0 as Laurent identities."""
    F=f3();om=OMEGA
    v=[L(1),L({(1,0):ONE}),L({(0,1):ONE})]
    vh=[sum((v[m]*L(om**(k*m)) for m in range(3)),L(0)) for k in range(3)]
    A=[vh[k]*vh[(k-1)%3].star() for k in range(3)]
    ah=[sum((A[k]*L(om**(j*k)) for k in range(3)),L(0)) for j in range(3)]
    p,q=v[1],v[2]
    f1=3*(q+L(om)*p.monomial_inverse()+L(om**2)*p*q.monomial_inverse())
    f2=3*(p+L(om)*q*p.monomial_inverse()+L(om**2)*q.monomial_inverse())
    assert not ah[0]
    assert ah[1]==f1 and ah[2]==f2
    # Exact substitution for the geometric-progression row routing.
    qinv=p.monomial_inverse()
    assert 3*(qinv+L(om)*p.monomial_inverse()+L(om**2)*p*p)==3*L(om**2)*(p**3-1)*p.monomial_inverse()
    assert 3*(p+L(om)*qinv*p.monomial_inverse()+L(om**2)*p)==-3*L(om)*(p**3-1)*p.monomial_inverse()**2
    return dict(geometric_row_specialization='PASS',Ahat0='0',Ahat1='first displayed formula' if ah[1]==f1 else 'second displayed formula',Ahat2='second displayed formula' if ah[2]==f2 else 'first displayed formula')


def run(write=False):
    start=time.time()
    out=dict(finite_census=finite_census(write),convolution=fourier_convolution_identity(),all_corner_matching=all_corner_matching(write),seconds=time.time()-start)
    print(json.dumps(out,indent=2),flush=True)
    return out

if __name__=='__main__':
    if not __debug__:raise SystemExit('Run without -O: assertions are proof checks.')
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('--write',action='store_true')
    run(ap.parse_args().write)
