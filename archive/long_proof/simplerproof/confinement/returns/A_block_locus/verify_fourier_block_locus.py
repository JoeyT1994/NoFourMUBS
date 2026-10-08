#!/usr/bin/env python3
"""Exact finite branch of the Fourier-block confinement theorem.

All arithmetic is in Q[omega], omega^2+omega+1=0.  This is a certificate
for 81 phase quadruples, following the continuous reduction in
FOURIER_BLOCK_LOCUS.md.  It is not a cover of general Hadamards.
"""
from fractions import Fraction as Q
from itertools import combinations, permutations, product
from collections import Counter
import json
from pathlib import Path

Z=(Q(0),Q(0)); O=(Q(1),Q(0)); W=(Q(0),Q(1))
def add(x,y): return (x[0]+y[0],x[1]+y[1])
def neg(x): return (-x[0],-x[1])
def mul(x,y): return (x[0]*y[0]-x[1]*y[1],x[0]*y[1]+x[1]*y[0]-x[1]*y[1])
def scale(x,t): return (t*x[0],t*x[1])
def conj(x): return (x[0]-x[1],-x[1])
def norm2(x): return x[0]*x[0]-x[0]*x[1]+x[1]*x[1]
def real(x): return x[0]-x[1]/2
def esum(xs):
    ans=Z
    for x in xs: ans=add(ans,x)
    return ans
def eprod(xs):
    ans=O
    for x in xs: ans=mul(ans,x)
    return ans
def adj(A):return [[conj(x) for x in row] for row in zip(*A)]
def mm(A,B):return [[esum(mul(a,b) for a,b in zip(r,c)) for c in zip(*B)] for r in A]
ROOTS=[O,W,mul(W,W)]
F=[[ROOTS[(i*j)%3] for j in range(3)] for i in range(3)]
TRIPLES=list(combinations(range(6),3))
P3=list(permutations(range(3)))
SGN=[1,-1,-1,1,1,-1]

def build(k):
    v=[O,ROOTS[k[0]],ROOTS[k[1]]];w=[O,ROOTS[k[2]],ROOTS[k[3]]]
    B=[[mul(v[i],F[i][j]) for j in range(3)] for i in range(3)]
    C=[[mul(F[i][j],w[j]) for j in range(3)] for i in range(3)]
    D=[[scale(x,Q(-1,3)) for x in r] for r in mm(mm(C,adj(F)),B)]
    H=[F[i]+B[i] for i in range(3)]+[C[i]+D[i] for i in range(3)]
    return H

def r_direct(A):
    G=mm(A,adj(A));s,t,r=neg(G[1][0]),neg(G[2][0]),neg(G[2][1])
    X,Y,Zn=norm2(s),norm2(t),norm2(r)
    p=X+Y+Zn;J=2*real(mul(mul(s,r),conj(t)))
    Wn=X*Y+X*Zn+Y*Zn-X*Y*Zn
    g=27-3*p+J;eta=9-p+J
    chi=Wn-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi*chi

def r_square(B):
    mons=[eprod(B[i][p[i]] for i in range(3)) for p in P3]
    per=esum(mons);det=esum(scale(x,s) for x,s in zip(mons,SGN))
    q=mul(mul(per,mul(det,det)),conj(eprod(x for row in B for x in row)))
    return 3*q[1]*q[1]

def main():
    count=Counter();records=[]
    for k in product(range(3),repeat=4):
        H=build(k)
        # Orthogonality is automatic for the block construction and checked.
        gram=mm(H,adj(H))
        assert gram==[[(Q(6),Q(0)) if i==j else Z for j in range(6)] for i in range(6)]
        flat=all(norm2(x)==1 for row in H for x in row)
        pure=(k[1]-2*k[0])%3==0 or (k[3]-2*k[2])%3==0
        if not flat:
            assert not pure
            count['nonflat']+=1
            records.append(dict(exponents=k,flat=False,pure=False))
            continue
        values=[]
        for rows in TRIPLES:
            for cols in TRIPLES:
                A=[[H[i][j] for j in cols] for i in rows]
                comp=[j for j in range(6) if j not in cols]
                B=[[H[i][j] for j in comp] for i in rows]
                rv=r_direct(A)
                assert rv==r_square(B)
                assert rv>=0
                values.append(rv)
        M=max(values)
        if pure:
            assert M in (0,243)
            count['pure_flat_M'+str(int(M))]+=1
        else:
            assert M==243
            count['mixed_flat_M243']+=1
        assert all(x.denominator==1 for x in values)
        records.append(dict(exponents=k,flat=True,pure=pure,M=int(M),
                            corner_histogram={str(int(x)):n for x,n in sorted(Counter(values).items())}))
    assert sum(v for k,v in count.items() if k.startswith('pure_flat'))==45,dict(count)
    assert count['mixed_flat_M243']==18 and count['nonflat']==18,dict(count)
    print('Exact Fourier-block branch counts:',dict(count))
    print('Every flat nonpure cube-root branch has M = 243.')
    print('FOURIER BLOCK LOCUS VERIFICATION PASS')
    Path(__file__).with_name('fourier_block_exact_data.json').write_text(json.dumps(dict(
        arithmetic='exact rational Eisenstein pairs',counts=dict(count),records=records),indent=2)+'\n')

if __name__=='__main__':main()
