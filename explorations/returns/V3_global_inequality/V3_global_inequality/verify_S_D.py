#!/usr/bin/env python3
"""Exact proof certificate for S(H)>=600 D_sym(H), order-six Hadamards.

Standard library only.  Default execution regenerates all moment relations;
no pickle, numerical matrix, tolerance, SDP solver, or atlas is read.
The non-Tao Fourier-vanishing theorem is the written mathematical input.
See S_D_PROOF.md for the moment definitions and proof of every reduction.
"""
from collections import defaultdict
from fractions import Fraction as Q
from functools import lru_cache
from itertools import permutations,product,combinations
from pathlib import Path
import json,time
import moment_engine as e


def parity(p):
    return (-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))


def signatures():
    psi=defaultdict(int)
    for p,q,r in product(tuple(permutations(range(3))),repeat=3):
        a=tuple(-1+int(p[i]==j)+int(q[i]==j)+int(r[i]==j)
                for i in range(3) for j in range(3))
        psi[a]+=parity(q)*parity(r)
    psi={a:c for a,c in psi.items() if c}
    delta=defaultdict(int)
    for a,c in psi.items():
        delta[a]+=c;delta[tuple(-x for x in a)]-=c
    delta={a:c for a,c in delta.items() if c}
    R=defaultdict(int)
    for a,c in delta.items():
        for b,d in delta.items():R[tuple(x+y for x,y in zip(a,b))]-=c*d
    R={a:c for a,c in R.items() if c}
    assert (len(psi),len(delta),len(R))==(55,48,817)
    return psi,R


def extend_weight12(Ebase):
    rows=[];count=0
    def project(g):return e.lin(g,lambda A:Ebase.get(A,{A:Q(1)}))
    def out(A):
        nonlocal count
        assert len(A)==7 and 2<=len(A[0])<=4
        assert e.wt(A)==12 and e.order(A[0])==1
        assert not any(map(sum,A)) and not any(map(sum,e.tr(A)))
        assert all(e.order(c)>=2 for c in e.tr(A))
        count+=1
        g=project(e.expand_degree1(A,0))
        if g:rows.append(g)
    for nc in (2,3,4):
        for c in e.parts(12,nc,2,6):
            for r in e.parts(12,7,1,6):
                assert r[0]==1
                e.allAB(r,c,out)
    assert count==34002 and len(rows)==33821
    keys=sorted(set(k for row in rows for k in row),key=lambda A:(e.wt(A),A))
    target=e.canonpair(((-4,2,2),(2,-4,2),(2,2,-4)))
    assert target in keys and len(keys)==3443
    keys=[k for k in keys if k!=target]+[target]
    E12=e.eliminate(rows,keys)
    return E12


def arithmetic_certificate(data,Ebase,E12):
    def proj(g):
        g=e.lin(g,lambda A:Ebase.get(A,{A:Q(1)}))
        return e.lin(g,lambda A:E12.get(A,{A:Q(1)}))
    @lru_cache(None)
    def ap(*args):
        args=tuple(a for a in args if any(a))
        if not args:return {():Q(1)}
        assert all(sum(a)==0 for a in args)
        assert not any(map(sum,zip(*args)))
        A=e.sortleft(e.tr(args));n=len(A[0]);out={}
        for s in e.partition(n):
            k=1+max(s)
            assert k<=6
            B=tuple(tuple(sum(x for i,x in zip(s,a) if i==j)
                          for j in range(k)) for a in A)
            e.add(out,proj(e.evpair(e.canonpair(B))),Q(e.fall(6,k),6**n))
        return out
    # On non-Tao matrices g(alpha)=0, so these 29 products have zero mean.
    alpha=(1,1,1,-1,-1,-1)
    reps=set()
    for k in (0,2,3):
        for q in e.vecs(k,6):
            a=tuple(sorted(q[:3]));b=tuple(sorted(q[3:]))
            na=tuple(sorted(e.neg(a)));nb=tuple(sorted(e.neg(b)))
            reps.add(min(a+b,b+a,na+nb,nb+na))
    assert len(reps)==29
    zeros=[ap(alpha,e.neg(alpha),q,e.neg(q)) for q in sorted(reps)]
    zeros=[p for p in zeros if p]
    assert len(zeros)==29
    keys=sorted(set(k for p in zeros for k in p),key=lambda A:(e.wt(A),A))
    assert len(keys)==27
    Ez=e.eliminate(zeros,keys)
    def zp(p):return e.lin(p,lambda A:Ez.get(A,{A:Q(1)}))
    psi,R=signatures()
    # R is symmetric under permutations of the three rows and columns.
    # 400 times the average over their injections equals the positional sum S.
    S={}
    for a,c in R.items():
        A=tuple(a[3*i:3*i+3] for i in range(3))
        e.add(S,proj(e.evpair(e.canonpair(A))),400*c)
    S=zp(S)
    q2=(2,-2,0);q3=(2,-1,-1)
    D={():Q(30)}
    for q,mult in ((q2,30),(q3,120)):
        e.add(D,ap(q,e.neg(q),q,e.neg(q)),-mult)
    D=zp(D)
    Dvariance={}
    for q,mult in ((q2,30),(q3,120)):
        e.add(Dvariance,ap(q,e.neg(q)),mult)
        e.add(Dvariance,ap(q,e.neg(q),q,e.neg(q)),-mult)
    assert zp(Dvariance)==D
    B0=data['B0'];B1=data['B1']
    assert (B0,B1)==(818002268369,508108391299152)
    assert B1-600*B0==data['extra_D_weight']==17307030277752
    assert len(data['features'])==15
    rhs={}
    for feature in data['features']:
        weight=feature['weight']
        assert isinstance(weight,int) and weight>0
        terms=[(tuple(t['charge']),t['coefficient']) for t in feature['terms']]
        assert all(len(a)==3 and sum(a)==0 and isinstance(c,int) for a,c in terms)
        gram={}
        for a,c in terms:
            for b,d in terms:
                assert e.order(a)+e.order(b)+e.order(e.plus(b,e.neg(a)))<=12
                e.add(gram,ap(a,e.neg(b),e.plus(b,e.neg(a))),c*d)
        e.add(rhs,zp(gram),weight)
    residual={}
    e.add(residual,S,B0);e.add(residual,D,-B1);e.add(residual,rhs,-1)
    assert not residual, residual
    print('PASS: exact fifteen-square identity; all coefficients positive',flush=True)
    print('PASS: D_sym equals 30 and 120 weighted covariance squares',flush=True)
    return psi


def tao_check(psi):
    # Entries are omega to these exponents, omega^2+omega+1=0.
    H=((0,0,0,0,0,0),(0,0,1,1,2,2),(0,1,0,2,2,1),
       (0,1,2,0,1,2),(0,2,2,1,0,1),(0,2,1,2,1,0))
    roots=((1,0),(0,1),(-1,-1))
    def root_sum(exps):
        a=b=0
        for x in exps:
            u,v=roots[x%3];a+=u;b+=v
        return a,b
    def norm2(v):
        a,b=v;return a*a-a*b+b*b
    for i,j in product(range(6),repeat=2):
        assert root_sum(H[i][a]-H[j][a] for a in range(6))==((6,0) if i==j else (0,0))
    assert all(H[i][j]==H[j][i] for i,j in product(range(6),repeat=2))
    S=0
    triples=list(combinations(range(6),3))
    for I,J in product(triples,repeat=2):
        b=0
        for a,c in psi.items():
            exponent=sum(a[3*i+j]*H[I[i]][J[j]] for i,j in product(range(3),repeat=2))
            b+=c*roots[exponent%3][1]
        S+=3*b*b
    dsum=0;lsum=0
    for i,r,k in product(range(6),repeat=3):
        dsum+=norm2(root_sum(2*H[i][a]-H[r][a]-H[k][a] for a in range(6)))**2
    for i,j,r,k in product(range(6),repeat=4):
        lsum+=norm2(root_sum(H[i][a]+H[j][a]-H[r][a]-H[k][a] for a in range(6)))**2
    D=Q(36)-Q(dsum,1296);L=Q(216)-Q(lsum,1296)
    assert (S,D,L)==(87480,Q(45,2),Q(225,2))
    assert S>=600*D and S>=100*L
    print('PASS: exact Tao values S=87480, D_sym=45/2, L_tot=225/2',flush=True)


def main():
    start=time.time()
    data=json.loads(Path(__file__).with_name('S_D_certificate.json').read_text())
    print('Regenerating weight-at-most-eleven Hadamard moment relations...',flush=True)
    e.Epair=e.pairtable();e.check_pair()
    print('PASS: original single-matrix relations and vanishing identity',flush=True)
    print('Regenerating weight-twelve Hadamard moment relations...',flush=True)
    E12=extend_weight12(e.Epair)
    psi=arithmetic_certificate(data,e.Epair,E12)
    tao_check(psi)
    print(json.dumps({'status':'PASS','arithmetic':'exact integer and rational',
        'non_Tao_square_count':15,'global_result':'S >= 600 D_sym',
        'combined_with_L_le_6D':'S >= 100 L_tot',
        'external_geometric_input':'non-Tao Fourier-vanishing theorem',
        'elapsed_seconds':round(time.time()-start,3)},indent=2),flush=True)

if __name__=='__main__':main()
