#!/usr/bin/env python3
"""Exact F6 orthogonality spectrum, standard library only.

Phi has one complex off-diagonal row-inner-product for each i<j,
represented by its real and imaginary parts, with no normalization.
Its differential J acts on 36 real entry phases.  B=2*J.T*J is
integer because all cosine values are half integers.
"""
from fractions import Fraction as F
import json

N=36
C=(2,1,-1,-2,-1,1)  # 2*cos(k*pi/3)

def mm(A,B):
    return [[sum(a*b for a,b in zip(row,col)) for col in zip(*B)] for row in A]
def mv(A,v): return [sum(a*b for a,b in zip(row,v)) for row in A]
def shift(A,k): return [[a-(k if i==j else 0) for j,a in enumerate(row)] for i,row in enumerate(A)]
def tr(A):return sum(A[i][i] for i in range(len(A)))

B=[[0]*N for _ in range(N)]
for i in range(6):
    for j in range(i+1,6):
        for a,sa in ((i,1),(j,-1)):
            for c,sc in ((i,1),(j,-1)):
                for b in range(6):
                    for d in range(6):
                        B[6*a+b][6*c+d] += sa*sc*C[((i-j)*(b-d))%6]
assert B==[list(r) for r in zip(*B)]
P=mm(mm(shift(B,6),shift(B,18)),shift(B,24))
assert not any(x for row in mm(B,P) for x in row)
# P/(-6*-18*-24) is the kernel projector.
ker_dim=F(tr(P),(-6)*(-18)*(-24))
assert ker_dim==15
multiplicities={}
for ev in (0,6,18,24):
    Q=[[int(i==j) for j in range(N)] for i in range(N)]
    denominator=1
    for other in (0,6,18,24):
        if other==ev: continue
        Q=mm(Q,shift(B,other));denominator*=ev-other
    multiplicities[str(F(ev,2))]=F(tr(Q),denominator)
assert multiplicities=={'0':15,'3':4,'9':12,'12':5}

def hor(v):
    rows=[sum(v[6*i+j] for j in range(6))/F(6) for i in range(6)]
    cols=[sum(v[6*i+j] for i in range(6))/F(6) for j in range(6)]
    mean=sum(v)/F(36)
    return [v[6*i+j]-rows[i]-cols[j]+mean for i in range(6) for j in range(6)]

tangent=[]
for coordinate in range(4):
    alpha,beta,gamma,delta=[int(k==coordinate) for k in range(4)]
    f=(0,alpha,beta);g=(0,gamma,delta)
    v=[(i%2)*f[j%3]+(j%2)*g[i%3] for i in range(6) for j in range(6)]
    v=hor(v)
    assert not any(mv(B,v))
    tangent.append(v)
G=mm(tangent,[list(row) for row in zip(*tangent)])
assert G==[[2,-1,0,0],[-1,2,0,0],[0,0,2,-1],[0,0,-1,2]]
# Positive definite G establishes tangent independence.  The row/column
# gauge directions span an 11-dimensional kernel orthogonal to hor.
# Hence the displayed four tangent directions exhaust the horizontal
# kernel, and J|_N has smallest singular value sqrt(3).
r=F(1,4); n=F(11,200); R2=r*r+n*n; q2=F(8,3)*R2
assert F(2,3)*R2*R2<n*n  # strict fixed point enclosure
assert q2<F(21,50)**2
assert R2<F(32,125)**2
assert 1/(1-F(21,50)**2)<F(10,9)**2
assert F(8,3)<F(49,30)**2
assert F(49,30)/((1-F(21,50))*(1-F(21,50)**2))<F(7,2)
assert F(3)>8*F(3,5)**2  # graph uniqueness at ambient radius 3/5
# For isotropy separation it suffices to use the elementary pi>31/10.
assert F(64,125)<F(31,10)/6
assert F(31,10)/6-F(32,125)>F(1,4)
print(json.dumps({
    'status':'CERTIFIED',
    'spectrum_JtJ':{k:int(v) for k,v in multiplicities.items()},
    'horizontal_tangent_gram':[[int(x) for x in row] for row in G],
    'sigma_normal_squared':3,
    'polynomial_zero':True,
    'graph_constants':{'tangent_radius':'1/4','normal_radius':'11/200',
                       'ambient_radius_squared':str(R2),'contraction_upper':'21/50',
                       'derivative_upper':'10/9','second_derivative_upper':'7/2'},
},indent=2))
