"""Exact constants and a positive-width whole-cell consequence of the lift.

The path-continuation argument and accepted reconstruction dependencies
are stated in CONSERVATIVE_LIFT.md. This verifier does not prove them.
"""
from fractions import Fraction as Q
from itertools import permutations, product

assert max(abs(y+z-y*z)for y,z in product((0,9),repeat=2))==63
vertices=[(x,y,9-x-y)for x,y in product((0,6),repeat=2)if 0<=9-x-y<=6]
assert max(sum(v*v for v in point)for point in vertices)==45
# Every re-dephased corner permutation/transposition has seed operator norm <=4.
zero=(0,0,0,0)
entry=[[zero for _ in range(3)]for _ in range(3)]
for n,(i,j)in enumerate(product((1,2),repeat=2)):
    entry[i][j]=tuple(int(k==n)for k in range(4))
count=0
for rr,cc,tr in product(permutations(range(3)),permutations(range(3)),(False,True)):
    matrix=[]
    for i,j in product((1,2),repeat=2):
        if tr:i,j=j,i
        matrix.append(tuple(entry[rr[i]][cc[j]][k]+entry[rr[0]][cc[0]][k]
                            -entry[rr[i]][cc[0]][k]-entry[rr[0]][cc[j]][k]for k in range(4)))
    assert all(abs(v)<=1 for row in matrix for v in row)
    assert sum(v*v for row in matrix for v in row)<=16
    count+=1
assert count==72
print('PASS: all 72 corner-frame seed maps have operator norm <=4')

assert 63*48==3024
assert 3024+(27+54)*48+15*144==9072
bound=8*162*90*288+4*162**2*192+2*2106*9072
assert bound==91958976<10**8
assert 72**2*8<204**2
assert Q(11,6)**2>3 # 9+6 sqrt(3)<20
assert 80<81
assert 4*183>729
assert 6*183<34**2
assert Q(1+2*204**2+(34*409)**2,6)<6000**2
assert 73728*204<16000000
assert 360*16000000==5760000000
assert 1+5760000000<6000000000
assert 6000*6000000000*4==144000000000000
assert Q(17,6)-Q(11,6)==1
assert Q(11,6)+Q(3,4)==Q(31,12)
assert Q(17,6)-Q(31,12)==Q(1,4)
assert Q(144000000000000,2400000000000000000)==Q(3,50000)<Q(1,16384)
assert 368640*Q(3,50000)<24 and 19+24<243
print('PASS: global R gradient, matched-path bounds, projection and tube constants')
# Exact nonvacuous closed phase cube around the already-proved D0 curve.
v=Q(1,16);r0=2304*v*v/(1+v*v)**4
assert r0==Q(38654705664,4362470401)
h=Q(1,10**19);eps=2*h;r=Q(1)
assert 2*r<r0-10**8*h and r0+10**8*h<19
assert (2400000000000000000*eps)**6<=r**17
carrier=144000000000000*eps
assert carrier==Q(9,312500)<Q(1,16384)
print('PASS: exact closed phase cube, half-width 1e-19 radians, R in (2,19), r=1')
print('PASS: carrier distance <=9/312500 <1/16384 on the cube intersected with D0')
print('SCOPE: accepted reconstruction inputs; conservative R-separated lifting only; production-scale constants remain open')
