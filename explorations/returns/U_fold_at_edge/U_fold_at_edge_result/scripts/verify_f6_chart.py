#!/usr/bin/env python3
"""Exact rank and residual-symmetry certificate at the standard order-six Fourier matrix.
No third-party libraries; all calculations use integers and fractions.

Conventions: F_ij=exp(pi*i*i*j/3), indices 0..5. Dephased phases have R_0j=R_i0=0.
The 30 orthogonality equations use Re(sum_j H_aj conj(H_bj)) and Im(...), a<b.
For exact integer Jacobian rows we multiply Re derivative rows by 2/sqrt(3)
and Im derivative rows by 2. These nonzero scalings do not change rank.
"""
from fractions import Fraction as Q
from itertools import product, permutations
import json

# 2Re(zeta^k), 2Im(zeta^k)/sqrt(3), zeta=exp(pi*i/3).
CYC = ((2,0),(1,1),(-1,1),(-2,0),(-1,-1),(1,-1))
VARS = [(i,j) for i in range(1,6) for j in range(1,6)]

def phase_basis(i,j):
    return [int(i%2==1 and j%3==1), int(i%2==1 and j%3==2),
            int(j%2==1 and i%3==1), int(j%2==1 and i%3==2)]

K=[phase_basis(i,j) for i,j in VARS]
J=[]
labels=[]
for a in range(6):
    for b in range(a+1,6):
        realrow=[]; imagrow=[]
        for i,j in VARS:
            re, im = CYC[((a-b)*j)%6]
            s=int(i==a)-int(i==b)
            realrow.append(-im*s)
            imagrow.append(re*s)
        J += [realrow,imagrow]
        labels += [[a,b,"Re*2/sqrt3"],[a,b,"Im*2"]]

def mm(A,B):
    return [[sum(A[i][k]*B[k][j] for k in range(len(B)))
             for j in range(len(B[0]))] for i in range(len(A))]

def trans(A): return list(map(list,zip(*A)))

def rref(A):
    A=[list(map(Q,row)) for row in A]
    rank=0; pivots=[]
    for col in range(len(A[0])):
        row=next((row for row in range(rank,len(A)) if A[row][col]),None)
        if row is None: continue
        A[rank],A[row]=A[row],A[rank]
        v=A[rank][col]; A[rank]=[x/v for x in A[rank]]
        for r in range(len(A)):
            if r!=rank and A[r][col]:
                v=A[r][col]; A[r]=[x-v*y for x,y in zip(A[r],A[rank])]
        pivots.append(col); rank+=1
        if rank==len(A): break
    return A,pivots

def determinant(A):
    # Fraction elimination, sufficient for a 21x21 integer matrix.
    A=[list(map(Q,row)) for row in A]
    ans=Q(1)
    for c in range(len(A)):
        p=next((r for r in range(c,len(A)) if A[r][c]),None)
        if p is None: return Q(0)
        if p!=c: A[c],A[p]=A[p],A[c]; ans=-ans
        q=A[c][c]; ans*=q
        for r in range(c+1,len(A)):
            v=A[r][c]/q
            for j in range(c,len(A)): A[r][j]-=v*A[c][j]
    return ans

assert mm(J,K)==[[0]*4 for _ in range(30)]
assert len(rref(K)[1])==4
pivot_cols=rref(J)[1]
pivot_rows=rref(trans([[row[c] for c in pivot_cols] for row in J]))[1]
minor=[[J[r][c] for c in pivot_cols]for r in pivot_rows]
det=determinant(minor)
assert len(pivot_cols)==len(pivot_rows)==21 and det!=0

# The leading corner restriction has rank 3, while the side-kernel direction is a-c.
corner=[phase_basis(i,j) for i,j in [(1,1),(1,2),(2,1),(2,2)]]
assert corner==[[1,0,1,0],[0,1,0,0],[0,0,0,1],[0,0,0,0]]
assert len(rref(corner)[1])==3

# Direct exact calculation of the fourth coordinate y=-2 Im Psi(B), where B
# consists of rows 0,1,2 and columns 3,4,5.  Work in Q(sqrt(-3)).
class Quad:
    def __init__(self,a=0,b=0):
        if isinstance(a,Quad): self.a,self.b=a.a,a.b
        else: self.a,self.b=Q(a),Q(b)
    def __add__(x,y):
        y=Quad(y);return Quad(x.a+y.a,x.b+y.b)
    __radd__=__add__
    def __neg__(x): return Quad(-x.a,-x.b)
    def __sub__(x,y): return x+-Quad(y)
    def __rsub__(x,y): return Quad(y)+-x
    def __mul__(x,y):
        y=Quad(y);return Quad(x.a*y.a-3*x.b*y.b,x.a*y.b+x.b*y.a)
    __rmul__=__mul__
    def __truediv__(x,y):
        y=Quad(y); den=y.a*y.a+3*y.b*y.b
        return x*Quad(y.a/den,-y.b/den)
    def __pow__(x,n):
        ans=Quad(1)
        for _ in range(n): ans=ans*x
        return ans
    def __eq__(x,y):
        y=Quad(y);return x.a==y.a and x.b==y.b

zeta=Quad(Q(1,2),Q(1,2))
B=[[zeta**((i*j)%6)for j in range(3,6)]for i in range(3)]
detB=Quad(); permB=Quad()
ddetB=[Quad()for _ in range(4)]; dpermB=[Quad()for _ in range(4)]
# Each d... stores the coefficient of i in the phase derivative.
for p in permutations(range(3)):
    sign=(-1)**sum(p[i]>p[j]for i in range(3)for j in range(i+1,3))
    term=Quad(1); exponent=[0]*4
    for i,j in enumerate(p):
        term*=B[i][j]
        exponent=[x+y for x,y in zip(exponent,phase_basis(i,j+3))]
    detB+=sign*term;permB+=term
    ddetB=[x+sign*term*k for x,k in zip(ddetB,exponent)]
    dpermB=[x+term*k for x,k in zip(dpermB,exponent)]
prodB=Quad(1);dprodB=[0]*4
for i in range(3):
    for j in range(3):
        prodB*=B[i][j]
        dprodB=[x+y for x,y in zip(dprodB,phase_basis(i,j+3))]
psi=permB*detB**2/prodB
dpsi=[dp*detB**2/prodB+2*permB*detB*dd/prodB-psi*dm
      for dp,dd,dm in zip(dpermB,ddetB,dprodB)]
assert detB==Quad(0,-1) and permB==1 and prodB==1 and psi==-3
assert dpsi==[12,-6,-12,6]
dy=[-2*q.a for q in dpsi] # Im(i*(a+b sqrt(-3))) = a.
assert dy==[-24,12,24,-12]

# Check the displayed inverse chart derivative and its horizontal phase metric.
chart_from_tangent=corner[:3]+[list(map(int,dy))]
tangent_from_chart=[
    [Q(1,2),Q(1,4),Q(-1,4),Q(-1,48)],
    [0,1,0,0],
    [Q(1,2),Q(-1,4),Q(1,4),Q(1,48)],
    [0,0,1,0],
]
assert mm(chart_from_tangent,tangent_from_chart)==[
    [int(i==j)for j in range(4)]for i in range(4)]

def horizontal(v):
    # v is a 6x6 real phase matrix.
    rowmeans=[sum(row,Q(0))/6 for row in v]
    colmeans=[sum(v[i][j]for i in range(6))/6 for j in range(6)]
    mean=sum(rowmeans,Q(0))/6
    return [[v[i][j]-rowmeans[i]-colmeans[j]+mean for j in range(6)]for i in range(6)]

horizontal_basis=[]
for b in range(4):
    v=horizontal([[Q(phase_basis(i,j)[b])for j in range(6)]for i in range(6)])
    horizontal_basis.append([x for row in v for x in row])
tangent_metric=mm(horizontal_basis,trans(horizontal_basis))
assert tangent_metric==[[2,-1,0,0],[-1,2,0,0],[0,0,2,-1],[0,0,-1,2]]
chart_metric=mm(trans(tangent_from_chart),mm(tangent_metric,tangent_from_chart))
expected_metric=[
    [1,Q(-1,2),Q(-1,2),0],
    [Q(-1,2),Q(7,4),Q(1,4),0],
    [Q(-1,2),Q(1,4),Q(7,4),0],
    [0,0,0,Q(1,576)],
]
assert chart_metric==expected_metric
scale=[[int(i==j)*(24 if i==3 else 1)for j in range(4)]for i in range(4)]
scaled_chart_metric=mm(scale,mm(chart_metric,scale))
assert scaled_chart_metric[3][3]==1
# The 3x3 block has eigenvalue 3/2 on (0,1,-1), and on the remaining plane
# its characteristic polynomial is lambda^2-3lambda+3/2.
M3=[row[:3]for row in scaled_chart_metric[:3]]
assert mm(M3,[[0],[1],[-1]])==[[0],[Q(3,2)],[Q(-3,2)]]
assert sum(M3[i][i]for i in range(3))==Q(9,2)
assert determinant(M3)==Q(9,4)

# Affine stabilizers and their exact 4D tangent action.
# Parameters (u,b,d): row i -> u*i+b, column j -> u*j+d, u=+1 or -1.
# u inverse equals u modulo 6.
# Extract tangent coordinates (a,beta,c,delta) as R_14,R_12,R_13,R_21.
extract=[(1,4),(1,2),(1,3),(2,1)]
actions=[]
action_records=[]
for u,b,d in product((1,-1),range(6),range(6)):
    rp=[(u*i+b)%6 for i in range(6)]
    cp=[(u*j+d)%6 for j in range(6)]
    assert all(((rp[i]-rp[0])*(cp[j]-cp[0])-i*j)%6==0 for i in range(6)for j in range(6))
    def transformed(i,j):
        v1=phase_basis(rp[i],cp[j]);v2=phase_basis(rp[i],cp[0])
        v3=phase_basis(rp[0],cp[j]);v4=phase_basis(rp[0],cp[0])
        return [x-y-z+t for x,y,z,t in zip(v1,v2,v3,v4)]
    L=[transformed(i,j)for i,j in extract]
    assert all(transformed(i,j)==mm([phase_basis(i,j)],L)[0]
               for i in range(6)for j in range(6))
    # Independently verify f'(j)=(-1)^b(f(u*j+d)-f(d)),
    # g'(i)=(-1)^d(g(u*i+b)-g(b)).
    expected=[]
    for j in (1,2):
        expected.append([(-1)**b*(int((u*j+d)%3==k)-int(d%3==k)) for k in (1,2)]+[0,0])
    for i in (1,2):
        expected.append([0,0]+[(-1)**d*(int((u*i+b)%3==k)-int(b%3==k))for k in (1,2)])
    assert L==expected
    assert determinant(L)==1
    actions.append(tuple(x for row in L for x in row))
    action_records.append(dict(u=u,b=b,d=d,matrix=L))
assert len(set(actions))==72
# All nonidentity elements act nontrivially (faithfulness), and no tangent action
# is a real reflection (every determinant is +1).
I=tuple(int(i==j)for i in range(4)for j in range(4))
assert actions.count(I)==1

receipt={
    "status":"CERTIFIED",
    "jacobian_rank":21,
    "tangent_dimension":4,
    "tangent_basis":"R_ij = 1_(i odd) f(j mod3)+1_(j odd) g(i mod3), f=(0,a,b), g=(0,c,d)",
    "jacobian_minor_rows_0based":pivot_rows,
    "jacobian_minor_row_equations":[labels[r]for r in pivot_rows],
    "jacobian_minor_cols_0based":pivot_cols,
    "jacobian_minor_phase_coordinates":[VARS[c]for c in pivot_cols],
    "jacobian_minor_determinant_of_scaled_integer_jacobian":str(det),
    "corner_tangent_matrix":corner,
    "corner_tangent_rank":3,
    "chart_from_tangent_matrix":chart_from_tangent,
    "tangent_from_chart_matrix":[[str(x)for x in row]for row in tangent_from_chart],
    "horizontal_tangent_metric":[[str(x)for x in row]for row in tangent_metric],
    "horizontal_chart_metric":[[str(x)for x in row]for row in chart_metric],
    "scaled_chart_coordinate":"t=y/24",
    "scaled_chart_metric_eigenvalues":["(3-sqrt(3))/2","1","3/2","(3+sqrt(3))/2"],
    "scaled_chart_pointwise_condition_number":"sqrt(2+sqrt(3))",
    "affine_stabilizer_order":72,
    "tangent_action_order":72,
    "tangent_action_type":"(C6 x C6) semidirect C2; C2 conjugates both complex coordinates",
    "all_tangent_action_determinants":1,
    "actions":action_records,
}
print(json.dumps(receipt,indent=2))
