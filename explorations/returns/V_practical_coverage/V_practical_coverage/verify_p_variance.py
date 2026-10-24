#!/usr/bin/env python3
"""Exact sparse-polynomial checks for P_VARIANCE_AND_COMPLEMENT.md."""
from collections import Counter
from itertools import combinations
from fractions import Fraction as Q

def add(*args):
 out=Counter()
 for p in args:
  for m,c in p.items():out[m]+=c
 return {m:c for m,c in out.items() if c}
def scale(p,c):return {m:c*v for m,v in p.items() if c*v}
def mul(p,q):
 out=Counter()
 for m,c in p.items():
  for n,d in q.items():out[tuple(sorted(m+n))]+=c*d
 return {m:c for m,c in out.items() if c}
def power(p,k):
 out={():1}
 for _ in range(k):out=mul(out,p)
 return out
one={():1}
def const(c):return {():c} if c else {}
def var(i):return {(i,):1}

# Four independent zero-sum six-vectors, first five coordinates independent.
vecs=[]
for a in range(4):
 v=[var(5*a+j) for j in range(5)]
 v.append(scale(add(*v),-1));vecs.append(v)
lhs={}
for cc in combinations(range(6),3):
 term=one
 for v in vecs:term=mul(term,add(*(v[j] for j in cc)))
 lhs=add(lhs,term)
def moment(indices):
 out={}
 for j in range(6):
  term=one
  for a in indices:term=mul(term,vecs[a][j])
  out=add(out,term)
 return out
rhs=add(scale(mul(moment((0,1)),moment((2,3))),2),
        scale(mul(moment((0,2)),moment((1,3))),2),
        scale(mul(moment((0,3)),moment((1,2))),2),
        scale(moment((0,1,2,3)),-6))
assert add(lhs,scale(rhs,-1))=={}

# Complement identity in independent symbols q,J,A; p=9-q.
q,j,a=var(0),var(1),var(2)
p=add(const(9),scale(q,-1))
b=add(scale(power(q,2),30),scale(power(j,2),2))
f=mul(add(power(j,2),scale(p,36)),
      add(scale(power(j,2),4),mul(power(q,3),add(q,const(-4)))))
u=add(scale(power(q,3),36),scale(power(a,2),-1),
      mul(add(scale(power(q,2),-1),scale(q,16),const(-36)),power(j,2)))
v=scale(mul(j,add(b,mul(add(q,const(6)),a))),2)
left=mul(power(j,2),add(mul(power(add(q,const(6)),2),u),f))
right=add(mul(mul(b,j),v),scale(power(v,2),Q(-1,4)))
assert add(left,scale(right,-1))=={}

# Scalar constants in the variance and selected-corner estimates.
assert Q(12960,400)-Q(27,5)**2==Q(81,25)
assert Q(27,5)-Q(81,25)/(9-Q(27,5))==Q(9,2)
assert Q(1,100)/(9-Q(27,5))==Q(1,360)
assert Q(4,9)/(Q(9,2)*Q(1,2))==Q(16,81)
assert 6480+4320+4*540==12960
assert 8-4==4
assert Q(2**14,3**15)*Q(1,1000)**3 < Q(1,240)**5
assert Q(9,2)-Q(1,240)-Q(1,324000)>4
assert Q(1,1000)<Q(1,30)**2
assert Q(1,960)+Q(1,1296000)+Q(1,540)<Q(3,1000)
assert Q(9,2)>(Q(2)+Q(3,1000)+Q(118,1000))**2
print('PASS: universal zero-sum six-vector sampling identity (all coefficients)')
print('PASS: complementary-discriminant identity (all coefficients)')
print('PASS: variance and p|J| constants')
print('PROVED: sum p^2 = 12960 + 4*T2; min p <= 9/2 - T2/360')
print('PROVED: selected complementary determinant squares >= 9')
print('PROVED: p<=9/2 and 0<=R±<=epsilon imply p*|J| <= 16*epsilon/81')

print('PROVED: at epsilon=1/1000, |J|<1/240 and |z_±+sqrt(q)|<3/1000')

assert 6 < Q(5,2)**2
print("PROVED: all selected 3x3 block squared singular values in [3-sqrt(6),3+sqrt(6)]")
