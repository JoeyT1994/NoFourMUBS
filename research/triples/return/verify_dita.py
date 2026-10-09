#!/usr/bin/env python3
"""Exact counterexample: a non-Fourier order-six Hadamard extends to a MUB triple.

No floating point acceptance is used.  Algebra is in Q(i,sqrt(2),sqrt(3),sqrt(5)).
Only the Python standard library is required.
The matrix H is Zauner's bicirculant T(0), in unnormalised conventions.
"""
import itertools
from exact_field import E, matrix_mul, adjoint, abs2

rt2,rt3,rt5,I=(E.root(j) for j in range(4))
w=(-1+I*rt3)/2

H=[list(map(E,row)) for row in [
    [1,-1,1,-1,I,I],
    [1,1,-1,I,-1,I],
    [-1,1,1,I,I,-1],
    [1,I,I,1,1,-1],
    [I,1,I,-1,1,1],
    [I,I,1,1,-1,1],
]]

v0=(2-I)*rt5/5
v1=(-(rt3+1)+I*(rt3-1))*rt2/4
v2=((rt3-1)-I*(rt3+1))*rt2/4
v=(v0,v1,v2)
W=[[w**((-r*c)%3) for c in range(3)] for r in range(3)]
WV=[[W[r][c]*v[c] for c in range(3)] for r in range(3)]
K=[row+row for row in W]+[row+[-z for z in row] for row in WV]

def require(condition,label):
    if not condition:
        raise AssertionError(label)

def verify():
    require(rt2**2==2 and rt3**2==3 and rt5**2==5 and I**2==-1,'field defining relations')
    require(I.conjugate()==-I and rt2.conjugate()==rt2,'conjugation')
    require(w*w+w+1==0 and w!=1,'primitive cube root relation')
    for label,M in [('H',H),('K',K)]:
        require(all(abs2(z)==1 for row in M for z in row),f'{label} flatness')
        G=matrix_mul(adjoint(M),M)
        require(all(G[r][c]==(6 if r==c else 0) for r in range(6) for c in range(6)),f'{label} orthogonality')
    G=matrix_mul(adjoint(H),K)
    require(all(abs2(z)==6 for row in G for z in row),'H-K unbiasedness')

    # Haagerup cross-ratios are unchanged by arbitrary left/right phases
    # and permuted by row/column permutations.  All of H's cross-ratios
    # are fourth roots, while every affine Fourier member, and its
    # transpose, has w as a cross-ratio from its fixed F3 submatrix.
    haagerup={H[r][c]*H[t][u]*H[r][u].conjugate()*H[t][c].conjugate()
              for r,t,c,u in itertools.product(range(6),repeat=4)}
    require(haagerup=={E(1),E(-1),I,-I},'Haagerup set')
    require(w not in haagerup,'w absent from invariant')
    print('PASS: exact MUB triple {I,H/sqrt(6),K/sqrt(6)}')
    print('PASS: H is not equivalent to any affine Fourier member or transpose')

if __name__=='__main__':
    verify()
