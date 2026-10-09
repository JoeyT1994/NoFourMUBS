#!/usr/bin/env python3
"""Independent exact instance of direct prescribed-ray Fourier completion."""
from exact_field import matrix_mul,adjoint,abs2
from verify_dita import H,K,require


def shift(x):
    m=len(x)//2
    return [x[(j-1)%m] for j in range(m)]+[x[m+(j-1)%m] for j in range(m)]


def skew(x):
    m=len(x)//2
    return [-x[m+(-j)%m].conjugate() for j in range(m)]+[x[(-j)%m].conjugate() for j in range(m)]


def verify():
    x=[H[r][0] for r in range(6)]
    y=skew(x)
    columns=[]
    for first in (x,y):
        z=first
        for unused in range(3):
            columns.append(z)
            z=shift(z)
    C=[[columns[c][r] for c in range(6)] for r in range(6)]
    require(C==H,'completion reproduces exact non-Fourier matrix')
    require(skew(skew(x))==[-z for z in x],'J squared equals minus identity')
    require(skew(shift(x))==shift(shift(skew(x))),'JP equals inverse P times J')
    require(all(abs2(z)==1 for row in C for z in row),'completion flatness')
    gram=matrix_mul(adjoint(C),C)
    require(all(gram[r][c]==(6 if r==c else 0) for r in range(6) for c in range(6)),'completion orthogonality')
    transition=matrix_mul(adjoint(K),C)
    require(all(abs2(z)==6 for row in transition for z in row),'completion unbiasedness to Fourier member')
    print('PASS: direct prescribed-ray completion yields exact H')


if __name__=='__main__':
    verify()
