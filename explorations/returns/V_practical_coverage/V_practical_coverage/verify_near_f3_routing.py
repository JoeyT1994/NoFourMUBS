#!/usr/bin/env python3
"""Exact finite checks for NEAR_F3_ROUTING.md; standard library only."""
from fractions import Fraction as Q
from itertools import permutations
import json

F=[[i*j%3 for j in range(3)] for i in range(3)]
TAO=[[0,0,0,0,0,0],
     [0,0,1,1,2,2],
     [0,1,0,2,2,1],
     [0,1,2,0,1,2],
     [0,2,2,1,0,1],
     [0,2,1,2,1,0]]
root_pairs={(1,0):0,(0,1):1,(-1,-1):2}

def canonical(x,y):
    h=[[0]*6 for _ in range(6)]
    for i in range(3):
        for j in range(3):
            h[i][j]=F[i][j]
            h[i][j+3]=(x[i]+F[i][j])%3
            h[i+3][j]=(F[i][j]+y[j])%3
            counts=[0,0,0]
            for k in range(3):
                for l in range(3):
                    counts[(i*k+y[k]-k*l+x[l]+l*j)%3]+=1
            aa=-(counts[0]-counts[2])
            bb=-(counts[1]-counts[2])
            assert aa%3==bb%3==0
            h[i+3][j+3]=root_pairs[(aa//3,bb//3)]
    return h

def hadamard_cubic(h):
    for i in range(6):
        for j in range(i):
            counts=[sum((h[i][k]-h[j][k])%3==r for k in range(6)) for r in range(3)]
            assert counts==[2,2,2]

def equivalent_tao(h):
    target=sorted(tuple(row) for row in TAO)
    for r in range(6):
        for c in range(6):
            d=[[(h[i][j]-h[i][c]-h[r][j]+h[r][c])%3 for j in range(6)] for i in range(6)]
            for rest in permutations([j for j in range(6) if j!=c]):
                order=(c,)+rest
                if sorted(tuple(row[j] for j in order) for row in d)==target:
                    return [r,c,list(order)]
    raise AssertionError('No Tao equivalence found')

hadamard_cubic(TAO)
witnesses=[]
for m,n in ((1,2),(2,1)):
    for aa in range(3):
        for bb in range(3):
            x=[0,(-aa)%3,(-2*aa-m)%3]
            y=[0,(-bb)%3,(-2*bb-n)%3]
            h=canonical(x,y)
            hadamard_cubic(h)
            witnesses.append({'m':m,'n':n,'a':aa,'b':bb,'witness':equivalent_tao(h)})
assert len(witnesses)==18

# Constants used in the written analytic estimates.
assert Q(121,200)**2 < 1-Q(3,4)**2
assert Q(2)+Q(1,10)==Q(21,10)
assert Q(21,10)/Q(3,2)==Q(7,5)
assert Q(7,5)**2+Q(12,5)**2 < 9
assert Q(31,10)*3 < 10
assert 27+100 < 12**2
assert Q(7,4)+1 < Q(14,5)
assert (Q(28)**2)/2 < 20**2
assert 60*Q(1,400) < Q(3,16)
assert (2**2)*30*60 == (60**2)*2
print(json.dumps({'status':'PASS','exact_mixed_chirp_matrices':18,
 'all_mixed_chirp_matrices_equivalent_to_Tao':True,
 'p_range':'0 <= p <= 1/160000',
 'distance_to_Fourier_family_or_Tao':'12*sqrt(p) + 60*sqrt(2)*p^(1/4)',
 'witnesses':witnesses},indent=2))
