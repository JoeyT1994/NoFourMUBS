#!/usr/bin/env python3
"""Exact bounds for the fixed U-coordinate extraction error.

Standard library only; imports the sibling exact Fourier spectrum verifier.
All matrices below are rational.  The combined extraction Hessian at Fourier
is sqrt(3) times a rational tensor, so its flattened norm is certified by a
four-by-four exact LDL decomposition.
"""
from fractions import Fraction as F
from itertools import permutations,product
from collections import defaultdict
import json,io,contextlib,sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent))
with contextlib.redirect_stdout(io.StringIO()):
    import verify_spectrum as spec

mm=spec.mm
B=spec.B
n=36

def tr(A):return sum(A[i][i] for i in range(len(A)))
def tp(A):return [list(row) for row in zip(*A)]
def eye(n):return [[F(i==j) for j in range(n)] for i in range(n)]
def inv(A):
    n=len(A); E=[list(map(F,A[i]))+eye(n)[i] for i in range(n)]
    for i in range(n):
        j=next(j for j in range(i,n) if E[j][i]);E[i],E[j]=E[j],E[i]
        d=E[i][i];E[i]=[x/d for x in E[i]]
        for j in range(n):
            if i!=j:
                d=E[j][i];E[j]=[x-d*y for x,y in zip(E[j],E[i])]
    return [row[n:] for row in E]
def ldl(A):
    n=len(A); assert A==tp(A)
    L=eye(n); D=[]
    for i in range(n):
        d=A[i][i]-sum(L[i][k]**2*D[k] for k in range(i))
        assert d>0,(i,d)
        D.append(d)
        for j in range(i+1,n):
            L[j][i]=(A[j][i]-sum(L[j][k]*D[k]*L[i][k] for k in range(i)))/d
    return D

def subtract(A,B):return [[a-b for a,b in zip(ra,rb)] for ra,rb in zip(A,B)]
def scale(A,c):return [[c*a for a in row] for row in A]

# Exact pseudoinverse G+=(J0^T J0)+, expressed as a polynomial in B=2J0^T J0.
powers=[B,mm(B,B)];powers.append(mm(powers[1],B))
coef=mm(inv([[F(x),F(x*x),F(x*x*x)] for x in (6,18,24)]),[[F(1,3)],[F(1,9)],[F(1,12)]])
Gplus=[[sum(coef[k][0]*powers[k][i][j] for k in range(3)) for j in range(n)] for i in range(n)]
# Moore--Penrose identities, exact.
G=scale(B,F(1,2))
assert mm(mm(G,Gplus),G)==G
assert mm(mm(Gplus,G),Gplus)==Gplus

T=tp(spec.tangent)
A=[[F(0)]*n for _ in range(4)]
for k,(i,j) in enumerate(((1,1),(1,2),(2,1))):
    A[k][6*i+j]=1; A[k][6*i]=-1; A[k][j]=-1; A[k][0]=1
sg=(-6,12,-6,3,-6,3)
for k,v in enumerate(sg):
    A[3][(1+k//3)*6+3+k%3]=-F(v,12)
    A[3][3+k%3]+=F(v,12)
V=mm(T,inv(mm(A,T)))
assert mm(A,V)==eye(4)
W=mm(tp(V),V);Winv=inv(W)
assert W==[[1,F(-1,2),F(-1,2),0],[F(-1,2),F(7,4),F(1,4),0],[F(-1,2),F(1,4),F(7,4),0],[0,0,0,1]]
# In particular the fourth output vector v=V[:,3] has norm exactly one.
AG=mm(A,Gplus)
XqGram=mm(AG,tp(A))
X_norm_ldl=ldl(subtract(Winv,XqGram))
X_fro_squared=tr(mm(W,XqGram))
assert X_fro_squared<F(13,10)**2

# J0 real rows are sqrt(3) times rational rows; imaginary rows are rational.
COS=(2,1,-1,-2,-1,1); SIN=(0,1,1,0,-1,-1)
Jreal=[];Jimag=[];pairs=[]
for i in range(6):
    for j in range(i+1,6):
        pairs.append((i,j))
        Jreal.append([-F(SIN[((i-j)*b)%6],2)*((a==i)-(a==j)) for a in range(6) for b in range(6)])
        Jimag.append([ F(COS[((i-j)*b)%6],2)*((a==i)-(a==j)) for a in range(6) for b in range(6)])
Xreal=mm(AG,tp(Jreal));Ximag=mm(AG,tp(Jimag))
# C represents E''/sqrt(3) in the V output basis.
C=[[[F(0)]*n for _ in range(n)] for _ in range(4)]
for pair_idx,(i,j) in enumerate(pairs):
    for k in range(6):
        ph=((i-j)*k)%6
        for o in range(4):
            coeff=Xreal[o][pair_idx]*F(COS[ph],2)+Ximag[o][pair_idx]*F(SIN[ph],2)
            for a,sa in ((6*i+k,1),(6*j+k,-1)):
                for b,sb in ((6*i+k,1),(6*j+k,-1)):
                    C[o][a][b]+=sa*sb*coeff

# Reconstruct the signature Laurent polynomial, no supplied coefficient data.
perms=list(permutations(range(3)))
def sign(p):return (-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))
terms=defaultdict(int)
for p,q,r in product(perms,repeat=3):
    e=[-1]*9
    for i in range(3):
        for perm in (p,q,r):e[3*i+perm[i]]+=1
    terms[tuple(e)]+=sign(q)*sign(r)
terms={e:c for e,c in terms.items() if c}
inds=[6*i+j for i in range(3) for j in range(3,6)]
base=[i*j for i in range(3) for j in range(3,6)]
Mabs=[[0]*9 for _ in range(9)]
Sgrad=[F(0)]*9
for e,c in terms.items():
    ph=sum(a*b for a,b in zip(e,base))%6
    # S''=-sum c*sin(k.phi0) k k^T; E'' contains -v S''/12.
    coeff=F(c*SIN[ph],24)
    for a in range(9):
        Sgrad[a]+=F(c*COS[ph]*e[a],2)
        for b in range(9):
            C[3][inds[a]][inds[b]]+=coeff*e[a]*e[b]
            Mabs[a][b]+=abs(c)*e[a]*e[b]
assert all(Sgrad[a]==-12*A[3][inds[a]] for a in range(9))
assert all(sum(e[3*i+j] for j in range(3))==0 and sum(e[3*j+i] for j in range(3))==0 for e in terms for i in range(3))
assert mm(Mabs,Mabs)==scale(Mabs,162)
assert max(sum(x*x for x in e) for e in terms)==18
# Mabs is positive semidefinite by construction and has operator norm 162.
# Weighted Cauchy therefore proves ||D^3 S|| <=162 sqrt(18) globally.

# The graph increments and all its derivatives are horizontal.
C=[tp([spec.hor(row) for row in tp([spec.hor(row) for row in co])]) for co in C]
Cflat=[[x for row in co for x in row] for co in C]
CC=mm(Cflat,tp(Cflat))
E_Hessian_Gram=scale(CC,3)
H_squared=F(64,9)
H_norm_ldl=ldl(subtract(scale(Winv,H_squared),E_Hessian_Gram))
H_fro_squared=tr(mm(W,E_Hessian_Gram))
assert H_fro_squared<F(351,100)**2
# ||B Jplus||<1, ||Phi'''||<=4, ||v||=1.
# 4+(162/12)*sqrt(18)<62 by an exact radical comparison.
assert F(18)<((F(62)-4)/F(27,2))**2

# Exact Frobenius bound for the horizontal E'''(0), without forming a
# 4-by-36-by-36-by-36 tensor.  A rank-one term is c tensor w^3.
third_terms={}
def add_third(c,w):
    w=tuple(map(F,w));c=list(map(F,c))
    first=next((x for x in w if x),0)
    if not first:return
    if first<0:w=tuple(-x for x in w);c=[-x for x in c]
    old=third_terms.setdefault(w,[F(0)]*4)
    for o in range(4):old[o]+=c[o]
for pair_idx,(i,j) in enumerate(pairs):
    for k in range(6):
        ph=((i-j)*k)%6
        c=[-3*Xreal[o][pair_idx]*F(SIN[ph],2)+Ximag[o][pair_idx]*F(COS[ph],2) for o in range(4)]
        w=[F(0)]*36;w[6*i+k]=1;w[6*j+k]=-1
        add_third(c,spec.hor(w))
for e,c in terms.items():
    ph=sum(a*b for a,b in zip(e,base))%6
    coef=F(c*COS[ph],24)
    w=[F(0)]*36
    for i,k in enumerate(inds):w[k]=e[i]
    add_third([0,0,0,coef],w)
third_terms=[(w,c) for w,c in third_terms.items() if any(c)]
third_fro_squared=F(0)
Wcs=[spec.mv(W,c) for w,c in third_terms]
for i,(w,c) in enumerate(third_terms):
    for j in range(i,len(third_terms)):
        v,d=third_terms[j]
        dot=sum(a*b for a,b in zip(w,v))
        if not dot:continue
        coeff=sum(a*b for a,b in zip(c,Wcs[j]))
        third_fro_squared+=(1 if i==j else 2)*coeff*dot**3
assert third_fro_squared<F(20)**2
# ||Phi''''||<=4sqrt(2), ||S''''||<=162*18, so ||E''''||<249.
assert 32<6**2
# Tight graph envelope at tangent radius rho=3/20.
rho=F(3,20);nrho=F(187,10000);Rrho=F(189,1250)
assert F(2,3)*(rho*rho+nrho*nrho)**2<nrho*nrho
assert rho*rho+nrho*nrho<Rrho*Rrho
coordinate_error=F(4,3)*Rrho**2+F(10,3)*Rrho**3+F(249,24)*Rrho**4
assert rho+coordinate_error<F(1,5)

print(json.dumps({
 'status':'CERTIFIED',
 'signature_terms':len(terms),
 'B_Jplus_operator_upper':1,
 'B_Jplus_Frobenius_squared':str(X_fro_squared),
 'B_Jplus_positive_LDL_pivots':[str(x) for x in X_norm_ldl],
 'combined_E_Hessian_flattened_operator_upper':'8/3',
 'combined_E_Hessian_Frobenius_squared':str(H_fro_squared),
 'combined_E_Hessian_positive_LDL_pivots':[str(x) for x in H_norm_ldl],
 'signature_absolute_moment_eigenvalue':162,
 'signature_max_frequency_norm_squared':18,
 'combined_E_third_derivative_upper':62,
 'combined_E_third_at_zero_Frobenius_squared':str(third_fro_squared),
 'combined_E_third_at_zero_operator_upper':20,
 'combined_E_fourth_derivative_upper':249,
 'rho_3_20_envelope':{'normal_radius':str(nrho),'ambient_radius':str(Rrho),
                      'coordinate_error_upper':str(coordinate_error),
                      'coordinate_norm_upper':str(rho+coordinate_error)},
},indent=2))
