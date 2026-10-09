#!/usr/bin/env python3
"""Enumerate all 400 corners of the exact counterexample, with exact arithmetic."""
import itertools
from collections import Counter
from exact_field import E,abs2
from verify_dita import H,w,require


def dephase(A):
    return [[A[r][c]*A[r][0].conjugate()*A[0][c].conjugate()*A[0][0]
             for c in range(3)] for r in range(3)]


def R(A):
    ss=-sum((A[1][j]*A[0][j].conjugate() for j in range(3)),E(0))
    tt=-sum((A[2][j]*A[0][j].conjugate() for j in range(3)),E(0))
    rr=-sum((A[2][j]*A[1][j].conjugate() for j in range(3)),E(0))
    X,Y,Z=abs2(ss),abs2(tt),abs2(rr)
    p=X+Y+Z
    product=ss*rr*tt.conjugate()
    J=product+product.conjugate()
    g=27-3*p+J
    eta=9-p+J
    chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi*chi


def verify():
    histogram=Counter()
    bad_omega=0
    witness=None
    for rows in itertools.combinations(range(6),3):
        for cols in itertools.combinations(range(6),3):
            A=dephase([[H[r][c] for c in cols] for r in rows])
            r=R(A)
            require(all(x==0 for x in r.c[1:]),'R is rational')
            require(r.c[0].denominator==1,'R is integer')
            value=int(r.c[0])
            histogram[value]+=1
            if value>0:
                a,b,c,d=A[1][1],A[1][2],A[2][1],A[2][2]
                X=a*d+b+c
                Y=b*c+d+a
                require(Y!=w*X and Y!=w*w*X,'strict corner is off omega-locus')
                bad_omega+=1
                if witness is None:
                    witness=(rows,cols,A)
    require(sum(histogram.values())==400,'all 400 corners counted')
    require(histogram==Counter({0:320,256:80}),'claimed complete corner histogram')
    require(bad_omega==80,'all 80 strict corners checked')
    # The top-left corner dephases to the claimed seed.
    A=dephase([row[:3] for row in H[:3]])
    require([A[1][1],A[1][2],A[2][1],A[2][2]]==list(map(E,[-1,-1,1,-1])),'seed')
    require(R(A)==256,'strict witness R')
    a,b,c,d=A[1][1],A[1][2],A[2][1],A[2][2]
    require(a*b*c*d==-1,'t=-1 is admissible')
    require(-(a*d+b+c)==-1 and -(b*c+d+a)==3,'U=-1, V=3')
    print('PASS: exact 400-corner R histogram',dict(sorted(histogram.items())))
    print(f'PASS: all {bad_omega} strict corners are off both omega-loci')
    print('PASS: explicit seed (-1,-1,1,-1), (U,V)=(-1,3), R=256')


if __name__=='__main__':
    verify()
