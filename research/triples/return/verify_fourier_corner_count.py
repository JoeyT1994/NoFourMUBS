#!/usr/bin/env python3
"""An exact simultaneous witness for 144 generically strict Fourier corners.

The uniform classification of corner types is proved in TRIPLES.md.
This single exact witness shows that none of the 144 potentially strict
corner Laurent polynomials is identically zero.
"""
import itertools
from exact_field import E
from verify_dita import require,w,I
from verify_dita_corners import dephase,R


def exact_positive(value):
    # The invariant belongs to Q(sqrt(3)). Compare by rational squaring.
    require(all(c==0 for j,c in enumerate(value.c) if j not in (0,2)),
            'real quadratic invariant')
    a,b=value.c[0],value.c[2]
    if b==0:
        return a>0
    if a==0:
        return b>0
    if a>0 and b>0:
        return True
    if a<0 and b<0:
        return False
    return a*a>3*b*b if a>0 else 3*b*b>a*a


def verify():
    d=(E(1),(3+4*I)/5,(5+12*I)/13)
    H=[[(-1)**(s*q)*w**((r*j)%3)*d[j]**s
        for q in range(2) for j in range(3)]
       for s in range(2) for r in range(3)]
    strict=0
    for rows in itertools.combinations(range(6),3):
        for cols in itertools.combinations(range(6),3):
            M=dephase([[H[r][c] for c in cols] for r in rows])
            value=R(M)
            potential=len({r//3 for r in rows})==2 and len({c%3 for c in cols})==3
            require((value!=0)==potential,'simultaneous nonzero witness')
            if value!=0:
                require(exact_positive(value),'strict positivity by exact comparison')
                a,b,c,d0=M[1][1],M[1][2],M[2][1],M[2][2]
                even,odd=a*d0+b+c,b*c+d0+a
                require(odd==w*even or odd==w*w*even,'omega equation')
                strict+=1
    require(strict==144,'exact strict count')
    F6=[[(-1)**(s*q)*w**((r*j)%3)
         for q in range(2) for j in range(3)]
        for s in range(2) for r in range(3)]
    for rows in itertools.combinations(range(6),3):
        for cols in itertools.combinations(range(6),3):
            M=dephase([[F6[r][c] for c in cols] for r in rows])
            require(R(M)==0,'F6 has no strict positional corner')
    print('PASS: F((3+4i)/5,(5+12i)/13) has exactly 144 strict omega corners')
    print('PASS: a simultaneous witness that all 144 potential corner polynomials are nonzero')
    print('PASS: all 400 corners of F6 have R=0')


if __name__=='__main__':
    verify()
