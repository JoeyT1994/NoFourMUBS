#!/usr/bin/env python3
"""Exact integer spectral certificate for the Tao matrix; no eigensolver."""
from itertools import product

E = [
    [0,0,0,0,0,0], [0,0,1,1,2,2], [0,1,0,2,2,1],
    [0,1,2,0,1,2], [0,2,2,1,0,1], [0,2,1,2,1,0]
]

def mm(a,b):
    bt=list(zip(*b))
    return [[sum(x*y for x,y in zip(row,col)) for col in bt] for row in a]

def shift(a,c):
    return [[x-(c if i==j else 0) for j,x in enumerate(row)] for i,row in enumerate(a)]

def main():
    for a,b in product(range(6),repeat=2):
        count=[sum((E[a][j]-E[b][j])%3==r for j in range(6)) for r in range(3)]
        assert count==([6,0,0] if a==b else [2,2,2])
    # B=2 J_full^T J_full. Twice the real part of a third root is 2 or -1.
    B=[]
    for a,j in product(range(6),repeat=2):
        row=[]
        for b,k in product(range(6),repeat=2):
            z=(E[a][j]-E[b][j]+E[b][k]-E[a][k])%3
            row.append(12*int(a==b and j==k)-(2 if z==0 else -1))
        B.append(row)
    assert B==list(map(list,zip(*B)))
    poly=mm(mm(B,shift(B,9)),shift(B,24))
    assert all(x==0 for row in poly for x in row)
    B2=mm(B,B)
    assert sum(B[i][i] for i in range(36))==360
    assert sum(B2[i][i] for i in range(36))==6480
    roots=(0,9,24);mult=(11,16,9)
    assert sum(mult)==36
    assert sum(r*m for r,m in zip(roots,mult))==360
    assert sum(r*r*m for r,m in zip(roots,mult))==6480
    assert all(roots[i]!=roots[j] for i in range(3) for j in range(i))
    print('PASS: Tao Hadamard equations; exact B(B-9I)(B-24I)=0 and traces')
    print('PASS: horizontal squared spectrum (9/2)^16, 12^9; rank25')

if __name__=='__main__':main()
