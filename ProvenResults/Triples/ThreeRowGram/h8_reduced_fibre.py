"""Discovery prototype for this H8 fibre, not a general carrier evaluator.

Retain the full 240-dimensional algebra and extract its complete Frobenius
image before choosing a reduced primitive. No nonreduced branch is dropped.
"""
import argparse
from functools import lru_cache
import itertools as it
import json
from pathlib import Path
import re
import numpy as np
from flint import nmod_mat,nmod_poly


def key(m):return (sum(m),tuple(-e for e in reversed(m)))
def divides(a,b):return all(x<=y for x,y in zip(a,b))


def from_basis(path,p):
    raw=Path(path).read_text();body=raw[raw.index('[')+1:raw.rindex(']')]
    names=[f'x{i}' for i in range(1,6)]+[f'y{i}' for i in range(1,6)]
    gs=[]
    for s in body.split(','):
        poly={}
        for term in s.strip().split('+'):
            factors=term.split('*');c=int(factors[0]);m=[0]*10
            for factor in factors[1:]:
                var,exp=factor.split('^');m[names.index(var)]+=int(exp)
            poly[tuple(m)]=c%p
        lm=max(poly,key=key);assert poly[lm]==1
        gs.append((lm,[(m,c) for m,c in poly.items() if m!=lm]))
    leaders=[a for a,_ in gs]
    zero=(0,)*10;unit=[tuple(int(j==k) for j in range(10)) for k in range(10)]
    seen={zero};todo=[zero]
    while todo:
        a=todo.pop()
        for e in unit:
            b=tuple(x+y for x,y in zip(a,e))
            if b in seen or any(divides(lm,b) for lm in leaders):continue
            assert sum(b)<=12 and len(seen)<1000
            seen.add(b);todo.append(b)
    mons=sorted(seen,key=key);index={m:j for j,m in enumerate(mons)};n=len(mons)
    assert n==240
    # Every integer-array entry is reduced before the next product. Both
    # coefficient subtraction and the later n-term modular matrix-vector
    # products therefore fit signed int64 exactly; no floating arithmetic.
    assert n*(p-1)**2 < 2**63-1
    assert all(m in index for _,tail in gs for m,c in tail)
    @lru_cache(None)
    def normal(m):
        if m in index:
            v=np.zeros(n,dtype=np.int64);v[index[m]]=1;return v
        lm,tail=next(g for g in gs if divides(g[0],m))
        q=tuple(x-y for x,y in zip(m,lm));v=np.zeros(n,dtype=np.int64)
        for a,c in tail:
            t=tuple(x+y for x,y in zip(q,a));assert key(t)<key(m)
            v=(v-c*normal(t))%p
        return v
    mats=[]
    for e in unit:
        M=np.column_stack([normal(tuple(x+y for x,y in zip(a,e))) for a in mons])
        mats.append(nmod_mat(M.tolist(),p))
    print('full algebra',n,'normal forms',normal.cache_info(),flush=True)
    for A,B in it.combinations(mats,2):assert A*B==B*A
    eye=nmod_mat([[int(i==j) for j in range(n)] for i in range(n)],p)
    for A,B in zip(mats[:5],mats[5:]):assert A*B==eye
    # Cyclicity is essential: the known length240 original algebra maps
    # ONTO this240-dimensional representation, hence the map is an isomorphism.
    # No ideal-membership claim about the normal-form templates is needed.
    vectors=[]
    for j,m in enumerate(mons):
        if sum(m)==0:v=nmod_mat([[int(k==0)] for k in range(n)],p)
        else:
            k=next(k for k,e in enumerate(m) if e);parent=list(m);parent[k]-=1
            v=mats[k]*vectors[index[tuple(parent)]]
        assert [int(v[k,0]) for k in range(n)]==[int(k==j) for k in range(n)]
        vectors.append(v)
    return mons,mats,eye


def reduced(mons,mats,eye,p):
    n=len(mons);index={m:j for j,m in enumerate(mons)}
    powers=[M**p for M in mats]
    arrays=[np.array(M.tolist(),dtype=np.int64) for M in powers]
    vecs=[]
    for m in mons:
        if sum(m)==0:
            v=np.zeros(n,dtype=np.int64);v[0]=1
        else:
            k=next(k for k,e in enumerate(m) if e)
            prev=list(m);prev[k]-=1
            v=arrays[k]@vecs[index[tuple(prev)]]%p
        vecs.append(v)
    Frob=np.column_stack(vecs);rref,r=nmod_mat(Frob.tolist(),p).rref()
    piv=[next(j for j in range(n) if int(rref[i,j])) for i in range(r)]
    basis=Frob[:,piv];rt,rank=nmod_mat(basis.T.tolist(),p).rref();assert rank==r
    rows=[next(j for j in range(n) if int(rt[i,j])) for i in range(r)]
    square=nmod_mat(basis[rows].tolist(),p);left=square.inv();space=nmod_mat(basis.tolist(),p)
    ss=[]
    for T in powers:
        full=T*space;S=left*nmod_mat([full.tolist()[j] for j in rows],p)
        assert space*S==full;ss.append(S)
    one=left*nmod_mat([[int(j==0)] for j in rows],p)
    assert space*one==nmod_mat([[int(j==0)] for j in range(n)],p)
    print('complete Frobenius image dimension',r,flush=True)
    return ss,one,r


def shape(ss,one,r,p):
    rng=np.random.default_rng(126)
    for attempt in range(8):
        weights=[int(x) for x in rng.integers(1,p,size=10)]
        T=sum((w*S for w,S in zip(weights,ss)),nmod_mat(r,r,p))
        q=T.charpoly()
        if q.gcd(q.derivative()).degree()!=0:
            print('retained primitive collision',attempt,flush=True);continue
        cols=[];v=one
        for j in range(r):cols.append([int(v[i,0]) for i in range(r)]);v=T*v
        K=nmod_mat([list(c) for c in zip(*cols)],p);assert K.det()
        coeffs=[]
        for S in ss:
            c=K.solve(S*one);coeffs.append([int(c[i,0]) for i in range(r)])
        print('reduced primitive',attempt,'factor degrees',[f.degree() for f,e in q.factor()[1]],flush=True)
        return {'q':list(map(int,q)),'x':coeffs[:5],'y':coeffs[5:],'weights':weights}
    raise RuntimeError('No separating primitive within bounded eight trials; retain fibre')


def main():
    parser=argparse.ArgumentParser();parser.add_argument('basis');parser.add_argument('input_json')
    parser.add_argument('--output',required=True);args=parser.parse_args()
    data=json.loads(Path(args.input_json).read_text());p=data['prime'];H=data['H']
    mons,mats,eye=from_basis(args.basis,p)
    XX=[eye]+mats[:5];YY=[eye]+mats[5:]
    for j in range(6):
        A=sum((pow(H[i][j],-1,p)*XX[i] for i in range(6)),nmod_mat(240,240,p))
        B=sum((H[i][j]*YY[i] for i in range(6)),nmod_mat(240,240,p))
        assert A*B==6*eye
    ss,one,r=reduced(mons,mats,eye,p);out=shape(ss,one,r,p)
    q=nmod_poly(out['q'],p);xx=[nmod_poly([1],p)]+[nmod_poly(a,p) for a in out['x']]
    yy=[nmod_poly([1],p)]+[nmod_poly(a,p) for a in out['y']]
    for a,b in zip(xx,yy):assert a*b%q==1
    primitive=sum((w*x for w,x in zip(out['weights'],xx[1:]+yy[1:])),nmod_poly([],p))
    assert primitive%q==nmod_poly([0,1],p)
    for j in range(6):
        A=sum((pow(H[i][j],-1,p)*xx[i] for i in range(6)),nmod_poly([],p))
        B=sum((H[i][j]*yy[i] for i in range(6)),nmod_poly([],p))
        assert A*B%q==6
    answer={'evidence_label':'Discovery evidence','prime':p,'H':H,'full_length':240,
            'reduced_length':r,'shape':out,
            'cyclic_regular_representation_checked':True,
            'scope':'Complete finite algebra by original relations, cyclicity and the independent length240 theorem; physical lifting is a separate written argument.'}
    target=Path(args.output);assert not target.exists()
    target.write_text(json.dumps(answer,indent=2,sort_keys=True)+'\n')
    print('PASS quotient arithmetic; not yet a physical exclusion certificate',flush=True)


if __name__=='__main__':main()
