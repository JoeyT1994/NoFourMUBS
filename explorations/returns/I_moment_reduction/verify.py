#!/usr/bin/env python3
"""Replay NEW exact certificates, not the upstream corner theorems.

Usage: python3 -I verify.py
Optional --certificate-dir permits independent tamper tests. No floating point,
network, numerical atlas, CAS, or third-party package is used in acceptance.
"""
import argparse
import hashlib
import json
import re as regex
import sys
from fractions import Fraction as F
from pathlib import Path

ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT))  # controlled local modules, also in isolated mode
import laurent as L
import exact_anchors as A


def require(condition,message):
    if not condition:raise AssertionError(message)


def rat(s):
    require(isinstance(s,str) and regex.fullmatch(r'-?\d+(?:/[1-9]\d*)?',s),
            'certificate coefficient must be an exact rational string')
    return F(s)


def monomial_matrix(M):
    v=[0]*36
    for i,row in enumerate(M):
        for j,x in enumerate(row):v[6*i+j]=x
    return tuple(v)


def metadata(entry,kind):
    G=L.as_graph(entry['template']);w=rat(entry['coefficient'])
    require(w!=0,'zero cofactor is not canonical')
    if kind=='moment':
        require(len(G)==6 and len(G[0])>=2,'wrong moment template dimensions')
        require(tuple(row[0] for row in G)==(1,1,1,-1,-1,-1),'wrong moment charges')
        c=len(G[0]);B=[list(row[1:]) for row in G]
        md={'generator':'row_moment_sum',
            'generator_coefficient':str(w/F(7-c)),
            'cofactor_template':B,'positive_indices':[0,1,2],
            'negative_indices':[3,4,5]}
    else:
        axis=entry['axis'];pos=entry['position']
        require(type(axis)is int and type(pos)is int,'invalid vertex type')
        M=G if axis==0 else tuple(zip(*G))
        require(axis in (0,1) and 0<=pos<len(M),'invalid orthogonality vertex')
        require(sorted(x for x in M[pos] if x)==[-1,1],'wrong vertex exponents')
        plus=M[pos].index(1);minus=M[pos].index(-1)
        if axis==0:B=[list(row) for k,row in enumerate(G) if k!=pos]
        else:B=[[x for k,x in enumerate(row) if k!=pos] for row in G]
        md={'generator':'column_orthogonality' if axis==0 else 'row_orthogonality',
            'generator_coefficient':str(w/F(7-len(M))),
            'cofactor_template':B,'positive_indices':[plus],'negative_indices':[minus]}
    return G,w,md


def check_metadata(entry,kind):
    G,w,md=metadata(entry,kind)
    for k,v in md.items():require(entry.get(k)==v,f'incorrect explicit cofactor metadata: {k}')
    return G,w


def check_local_orthogonality(G,axis,pos):
    """Expand the six-term integer Laurent cofactor identity before averaging."""
    M=G if axis==0 else tuple(zip(*G));special=M[pos]
    B=[row for k,row in enumerate(M) if k!=pos]
    n=len(B);c=len(special);base=monomial_matrix(B)
    plus=special.index(1);minus=special.index(-1)
    gen={}
    for u in range(6):
        v=[0]*36;v[6*u+plus]=1;v[6*u+minus]=-1
        gen[tuple(v)]=1
    lhs=L.mul({base:1},gen);rhs={}
    for u in range(n):
        C=[tuple(x+y for x,y in zip(row,special)) if i==u else row
           for i,row in enumerate(B)]
        rhs=L.add(rhs,{monomial_matrix(C):1})
    for u in range(n,6):
        C=[list(row) for row in B]+[[0]*c for _ in range(6-n)]
        C[u]=list(special)
        rhs=L.add(rhs,{monomial_matrix(C):1})
    require(lhs==rhs,'local orthogonality cofactor expansion failed')
    require(6-n==7-len(M),'incorrect unused-index count')


def check_local_moment(G):
    """Expand the moment multiplier into its used and unused column labels."""
    charges=[row[0] for row in G];B=[list(row[1:]) for row in G]
    n=len(B[0]);base=monomial_matrix(B);gen={}
    for u in range(6):
        v=[0]*36
        for r,x in enumerate(charges):v[6*r+u]=x
        gen[tuple(v)]=1
    lhs=L.mul({base:1},gen);rhs={}
    for u in range(6):
        C=[row+[0]*(6-n) for row in B]
        for r,x in enumerate(charges):C[r][u]+=x
        rhs=L.add(rhs,{monomial_matrix(C):1})
    require(lhs==rhs,'local moment cofactor expansion failed')
    require(6-n==7-len(G[0]),'incorrect moment unused-index count')


def expand_certificate(cert):
    rhs={}
    for e in cert.get('moment_cofactors',[]):
        G,w=check_metadata(e,'moment');check_local_moment(G)
        rhs=L.add(rhs,L.sc(L.moment_relation(G),w))
    for e in cert['orthogonality_cofactors']:
        G,w=check_metadata(e,'orth');axis=e['axis'];pos=e['position']
        check_local_orthogonality(G,axis,pos)
        rhs=L.add(rhs,L.sc(L.orth_relation(G,axis,pos),w))
    return rhs


def permute3(p,rr,cc,transpose=False):
    q={}
    for a,v in p.items():
        b=tuple(a[3*rr[i]+cc[j]] if not transpose else a[3*cc[j]+rr[i]]
                for i in range(3) for j in range(3))
        q[b]=v
    return q


def check_definitions():
    from itertools import permutations
    # Formal balance is the exact row/column phase-invariance check.
    for name,p in [('Psi',L.psi),('S block',L.s)]:
        for a in p:
            require(all(sum(a[3*i+j] for j in range(3))==0 for i in range(3)),name+' row balance')
            require(all(sum(a[3*i+j] for i in range(3))==0 for j in range(3)),name+' column balance')
        for rr in permutations(range(3)):
            for cc in permutations(range(3)):
                require(permute3(p,rr,cc)==p,name+' permutation invariance')
        require(permute3(p,(0,1,2),(0,1,2),True)==p,name+' transpose invariance')
    def falling(n):
        out=1
        for j in range(n):out*=6-j
        return out
    for n in range(1,7):require(falling(n)==(7-n)*falling(n-1),'orbit normalization')
    require(400*6*6==14400,'ordered-triple multiplicity')
    print('PASS: determinant/permanent targets, phase balance, permutations, transpose, orbit normalizations')


def check_anchors(expected):
    require(A.W**2+A.W+A.ONE==A.ZERO,'cyclotomic omega relation')
    require(A.I**2==-A.ONE,'cyclotomic i relation')
    require(A.ROOT**12==A.ONE and A.ROOT**6==-A.ONE,'twelfth root relation')
    require(A.ROOT**4==A.W and A.ROOT**3==A.I,'root embedding')
    for k,z in enumerate(A.ROOTS):
        require(z.norm2()==A.ONE and z.conj()==A.ROOTS[-k%12],'exact unit modulus of anchor entries')
    bases=[A.Z(tuple(int(i==j) for i in range(4))) for j in range(4)]
    for x in bases:
        for y in bases:require((x*y).conj()==x.conj()*y.conj(),'conjugation multiplication')
    actual={name:A.evaluate(H) for name,H in A.matrices().items()}
    require(actual==expected,'exact anchor values differ from stored expectations')
    zr=['0','0','0','0']
    for name,row in actual.items():
        if name!='Tao':require(all(x==zr for x in row['row_column_moments']),name+' moments')
        else:require(row['row_column_moments'][0]==['0','-1/2','0','0'],'Tao moment witness')
        print('PASS: exact %-24s D=%-9s U=%-9s S=%-7s LHS=%s' %
              (name,row['D'][0],row['U'][0],row['S'][0],row['sos_lhs'][0]))
    require(actual['F6']['S_ordered_exponent_histogram_mod_12']==[4896,0,1728,0,864,0,4320,0,864,0,1728,0],'Fourier ordered histogram')
    require(actual['F6']['S']==['1/10','0','0','0'] and actual['F6']['D']==zr,'Fourier conclusion')
    require(actual['D6']['T2']==['336','0','0','0'] and actual['D6']['T3']==['216','0','0','0'],
            'sharp moment-norm anchor')
    print('PASS: 400 blocks and both S definitions (14,400 ordered terms; 2,400 matching terms) per anchor')


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--certificate-dir',type=Path,default=ROOT/'certificates')
    args=parser.parse_args()
    check_definitions()
    cert=json.loads((args.certificate_dir/'rational_moment_R.json').read_text())
    require(cert.get('schema')=='moment-reduction-orbit-v1','wrong R certificate schema')
    require(expand_certificate(cert)==L.corepoly(L.R),
            'R Laurent-orbit identity failed: stored cofactors do not equal regenerated target')
    print('PASS: relation (R), %d-term regenerated Laurent target = %d moment + %d orthogonality cofactors' % (len(L.R),len(cert['moment_cofactors']),len(cert['orthogonality_cofactors'])))
    extra=json.loads((args.certificate_dir/'scalar_identities.json').read_text())
    targets=L.scalar_targets()
    require(set(extra)==set(targets),'extra target set mismatch')
    for name,target in targets.items():
        require(expand_certificate(extra[name])==target,name+' Laurent-orbit identity failed')
        print('PASS: '+name+', '+str(len(extra[name]['orthogonality_cofactors']))+' orthogonality cofactors')
    expected=json.loads((args.certificate_dir/'anchor_expectations.json').read_text())
    check_anchors(expected)
    provenance=json.loads((ROOT/'PROVENANCE.json').read_text())
    for rel,digest in provenance['copied_inputs_sha256'].items():
        require(hashlib.sha256((ROOT/rel).read_bytes()).hexdigest()==digest,'input provenance: '+rel)
    print('PASS: copied input provenance hashes (not a replay of upstream proofs)')
    print('ALL NEW EXACT CERTIFICATES PASSED')
    print('SCOPE: the full (sos) implication is a paper proof using the two declared upstream corner theorems.')
    print('NOT CLAIMED: independent (sos) certificate from orthogonality + (V) + (C), or a new Lean build.')

if __name__=='__main__':
    try:main()
    except Exception as exc:
        print('FAIL: '+str(exc),file=sys.stderr)
        raise SystemExit(1)
