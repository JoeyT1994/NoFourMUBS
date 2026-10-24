#!/usr/bin/env python3
"""Exact certificate for the practical Fourier annulus.

Requires NumPy. It is used ONLY with signed integer or Python-object integer
arrays, never floating point. A checked absolute bound proves that every int64
matrix product used to construct derivative Gram matrices is overflow-free.
The projected contractions use arbitrary-precision Python integers.
"""
from fractions import Fraction as Q
from itertools import combinations
from math import factorial
import json
import numpy as np
from verify_local_fourier import generate_terms, mm, transpose, identity


def main():
    terms=generate_terms()
    ee=np.array(list(terms),dtype=np.int64)
    cc=np.array(list(terms.values()),dtype=np.int64)
    f=np.array([[(3*(i//3)*(j//3)+2*(i%3)*(j%3))%6 for j in range(6)] for i in range(6)],dtype=np.int64)
    re2=np.array([2,1,-1,-2,-1,1],dtype=np.int64)
    im2=np.array([0,1,1,0,-1,-1],dtype=np.int64)
    triples=list(combinations(range(6),3))
    corners=[(i,j) for i in triples for j in triples]
    weights=[np.array([cc*roots[(ee@f[np.ix_(i,j)].flatten())%6] for i,j in corners],dtype=np.int64) for roots in (re2,im2)]
    assert int(np.max(np.sum(np.abs(weights[0]),axis=1))) <= 216
    assert int(np.max(np.sum(np.abs(weights[1]),axis=1))) <= 216
    assert np.all(np.sum(weights[1],axis=1)==0) # G(F)=0

    # A=2 DG(0), constructed from the exact Laurent coefficients.
    a=[]
    for row,(ii,jj) in zip(weights[0],corners):
        vals=row@ee
        full=[0]*36
        for k in range(9):
            full[6*ii[k//3]+jj[k%3]]=int(vals[k])
        a.append(full)
    m=mm(transpose(a),a)
    q36=[[(6*int(i//6==j//6)-1)*(6*int(i%6==j%6)-1) for j in range(36)] for i in range(36)]

    # Four mutually orthogonal integer Fourier tangent vectors.
    d=[[(-1)**(i//3)*[1,-1,0][j%3],
        (-1)**(i//3)*[1,1,-2][j%3],
        (-1)**(j//3)*[1,-1,0][i%3],
        (-1)**(j//3)*[1,1,-2][i%3]] for i in range(6) for j in range(6)]
    lengths=[24,72,24,72]
    assert mm(transpose(d),d)==[[lengths[i]*int(i==j) for j in range(4)] for i in range(4)]
    assert mm(q36,d)==[[36*v for v in row] for row in d]
    assert mm(m,d)==[[15552*v for v in row] for row in d]
    v=mm(a,d)
    vg=mm(transpose(v),v)
    assert vg==[[15552*lengths[i]*int(i==j) for j in range(4)] for i in range(4)]

    # N=4 K^T K, where K is the complex linearized row-orthogonality map.
    n=[[0]*36 for _ in range(36)]
    for i,j in combinations(range(6),2):
        for roots,mult in ((re2,1),(im2,3)):
            row=[0]*36
            for k in range(6):
                z=int(roots[(int(f[i,k])-int(f[j,k]))%6])
                row[6*i+k]=z
                row[6*j+k]=-z
            for u in range(36):
                for w in range(36):
                    n[u][w]+=mult*row[u]*row[w]
    assert mm(n,d)==[[0]*4 for _ in range(36)]
    assert mm(n,q36)==[[36*x for x in row] for row in n]
    pol=identity(36)
    qzero=1
    for lam in (12,36,48):
        pol=mm(pol,[[n[i][j]-lam*int(i==j) for j in range(36)] for i in range(36)])
        qzero*=-lam
    pt72=[[sum((72//lengths[k])*d[i][k]*d[j][k] for k in range(4)) for j in range(36)] for i in range(36)]
    assert [[72*x for x in row] for row in pol]==[[qzero*(72*int(i==j)-2*q36[i][j]+pt72[i][j]) for j in range(36)] for i in range(36)]
    # Hence min positive singular value of K is sqrt(3), and ker(K)
    # on the horizontal space is precisely the span of d.

    # Explicit CRT permutations identifying F2 tensor F3 with the cyclic F6.
    pr=[(3*aa+4*bb)%6 for aa in range(2) for bb in range(3)]
    pc=[(3*aa+2*bb)%6 for aa in range(2) for bb in range(3)]
    assert sorted(pr)==sorted(pc)==list(range(6))
    assert all((pr[i]*pc[j])%6==int(f[i,j]) for i in range(6) for j in range(6))

    # Build derivative-tensor Gram matrices through exponent dot-product kernels.
    # The tensor need never be allocated: its Gram entry is sum w_alpha w_beta
    # times <alpha_embedded,beta_embedded>^k.
    pats={}
    cpat=np.zeros((400,400),dtype=np.int64)
    for ia,(ii,jj) in enumerate(corners):
        for ib,(kk,ll) in enumerate(corners):
            common=tuple(sorted((3*ii.index(i)+jj.index(j),3*kk.index(i)+ll.index(j)) for i in set(ii)&set(kk) for j in set(jj)&set(ll)))
            if common not in pats:
                pats[common]=len(pats)
            cpat[ia,ib]=pats[common]
    dots=[]
    for common in pats:
        dot=np.zeros((55,55),dtype=np.int64)
        for i,j in common:
            dot+=ee[:,i,None]*ee[:,j][None,:]
        assert int(np.max(np.abs(dot)))<=18
        dots.append(dot)
    unique=[np.unique(w,axis=0,return_inverse=True) for w in weights]
    lambdas={2:888,3:918360,4:68856,5:111534072,6:8567448,
             7:22160867160,8:1028224056,9:5718617236152,10:115463842008}
    bounds={2:13,3:80,4:10,5:45,6:4,7:15,8:1,9:4,10:1}
    vint=np.array(v,dtype=object)
    vgint=np.array(vg,dtype=object)
    for order in range(2,11):
        # This dominates every intermediate absolute partial sum in W D^k W^T.
        # It is <2^63 even at k=10, proving no signed-int64 overflow can occur.
        assert 216**2*18**order < 2**63
        w,inv=unique[int(order%2==0)]
        kernel=np.array([w@(dot**order)@w.T for dot in dots],dtype=np.int64)
        gram=kernel[cpat,inv[:,None],inv[None,:]]
        projected=vint.T@gram.astype(object)@vint
        assert np.array_equal(projected,lambdas[order]*vgint)
        multiplier=3 if order%2==0 else 1
        assert multiplier*lambdas[order] <= (2*factorial(order)*bounds[order])**2

    # Uniform order-11 Taylor remainder: 1296*18^(9/2)/11! < 15.
    assert 1296**2 * 18**9 < (15*factorial(11))**2
    bounds[11]=15
    def error_slope(t):
        return sum(Q(c)*t**(k-1) for k,c in bounds.items())
    # d<=1/2 => horizontal phase norm t<=2/sqrt(15)<517/1000.
    t=Q(517,1000)
    assert t*t>=Q(4,15)
    assert Q(3888)*(1-t*t) > (error_slope(t)+20)**2
    # d<=4/7 => t<=4/sqrt(45)<597/1000.
    t=Q(597,1000)
    assert t*t>=Q(16,45)
    assert Q(3888)*(1-t*t) > (error_slope(t)+Q(9,2))**2
    assert Q(4)*Q(1,10)**2==Q(1,25)
    assert Q(81,400)*Q(1,2)**2>Q(1,25)
    print(json.dumps({
        'status':'PASS',
        'arithmetic':'exact integers/rationals; int64 overflow excluded by checked absolute bound',
        'linear_tangent_squared_singular_value':3888,
        'orthogonality_nonzero_squared_singular_values':[3,9,12],
        'normal_phase_bound':'||x_N|| <= ||x||^2 for actual Hadamards',
        'projected_tensor_gram_eigenvalues':lambdas,
        'Taylor_coefficient_bounds':bounds,
        'radius_constant_pairs':[['1/2','4'],['4/7','81/400']],
        'practical_annulus':['1/10','4/7'],
        'practical_annulus_max_R_lower_bound':'1/25',
        'CRT_row_permutation':pr,
        'CRT_column_permutation':pc
    },indent=2))

if __name__=='__main__':
    main()
