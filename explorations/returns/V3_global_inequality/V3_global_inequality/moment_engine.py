# Extracted/adapted from the single-matrix verifier in OpenAI,
# "Exact Fourier certificates for complex Hadamard matrices of order six"
# (September 24, 2026), Appendix A.
# Upstream source: openai/math, commit 1581d4cbdd69a0faf34b2089614fe2a814316a6a.
# Licensed under Apache-2.0; see the accompanying upstream LICENSE/provenance.
# This file retains only the original single-matrix moment machinery.
# Exact computations on invariant moments
import itertools
from functools import lru_cache
from fractions import Fraction as Q
from math import gcd
from collections import Counter
memo = lru_cache(None)
memo1 = lru_cache(80000)

# tuples of tuples for matrices; "order" is the positive part norm
def tr(A):
    return tuple(zip(*A))
def neg(a):
    return tuple(-x for x in a)
def opposite(A):
    return tuple(map(neg,A))
def plus(a,b):
    return tuple(x+y for x,y in zip(a,b))
def order(a):
    return sum(x for x in a if x>0)
def wt(L):
    return sum(map(order,L))
def basic(A):
    return tuple(sorted(a for a in A if any(a)))

@memo
def perms(m):
    return tuple(itertools.permutations(range(m)))
def perm(a,p):
    return tuple(a[i] for i in p)
@memo
def pp(c):
    # Permute columns of like degree, and sort by degree
    return tuple(p for p in perms(len(c)) if perm(c,p)==tuple(sorted(c)))
def canon1(A):
    B=tr(A); c=tuple(map(order,B)); C=tuple(sorted(c))
    return C, min(tuple(sorted(tr(perm(B,p)))) for p in pp(c))
@memo1
def canonpair(A):
    A=basic(tr(basic(tr(A))))
    if not A:return ()
    B=tr(A)
    L=[]
    for C in (A,opposite(A),B,opposite(B)):
        if len(C)>=len(C[0]):
            L.append(canon1(C))
    return min(L)[1]

@memo
def parts(k,n,lo,hi):
    if not n:return ((),) if k==0 else ()
    return tuple((i,)+L for i in range(lo,min(k//n,hi)+1) for L in parts(k-i,n-1,i,hi))
@memo
def comps(k,n,cap):
    if not n:return ((),) if k==0 else ()
    return tuple((i,)+L for i in range(max(0,k-sum(cap[1:])),min(k,cap[0])+1)
                 for L in comps(k-i,n-1,cap[1:]))
def vecs(k,n):
    for u in comps(k,n,(k,)*n):
        for v in comps(k,n,tuple(k*(i==0) for i in u)):
            yield plus(u,neg(v))
# sparse vectors
def add(d,g,s=1):
    for a,x in g.items():
        v=x*s+d.get(a,0)
        if v:d[a]=v
        elif a in d:del d[a]
def lin(g,F):
    r={}
    for a,x in g.items():add(r,F(a),x)
    return r

def expand_degree1(B,i):   # sum on the right of (5), not signed
    a=B[i]
    C=B[:i]+B[i+1:]
    v={}
    for j,b in enumerate(C):add(v,evpair(canonpair(C[:j]+(plus(a,b),)+C[j+1:])))
    return v

@memo
def evpair(A):  # not projected yet
    for B in (A,tr(A)):
        assert len(B)<=6 and not any(map(sum,B))
    for B in (A,tr(A)):
        for i,a in enumerate(B):
            if order(a)==1:
                r={}
                add(r,expand_degree1(B,i),-Q(1,7-len(B)))
                return r
    return {A:1}

def allAB(r,c,output):
    m=len(c);seen=set()
    @memo1
    def steps(i,s,t,key):
        if i==7:return ()
        k=r[i];rest=sum(r[i+1:]);w=[]
        for u in comps(k,m,s):
            ss=plus(s,neg(u))
            for v in comps(k,m,tuple(j if h==0 else 0 for h,j in zip(u,t))):
                a=plus(u,neg(v))
                if a<key:continue
                tt=plus(t,neg(v))
                if max(plus(ss,tt))>rest:continue
                st=(i+1,ss,tt,a if i+1<7 and r[i+1]==k else ())
                if i==6 or steps(*st):w.append((st,a))
        return w
    def visit(state,A):
        for st,a in steps(*state):
            C=A+(a,)
            if len(C)<7:visit(st,C)
            else:
                # uniqueness optional
                B=canonpair(C)
                if B not in seen:
                    seen.add(B);output(C)
    visit((0,c,c,()),())

def lcm(a,b): return a*(b//gcd(a,b))
def intscale(s):
    d=1
    for a in s.values():d=lcm(d,a.denominator)
    return d,{i:(d//a.denominator)*a.numerator for i,a in s.items()}

def inv(a,p):return pow(a,-1,p)
def minusmod(s,t,b,p):  # subtract b*t
    for i,z in t.items():
        h=(s.get(i,0)-z*b)%p
        if h:s[i]=h
        elif i in s:del s[i]

def echelon(E,p):  # normalize at last nonzero column; wit stores source rows giving pivots
    rel={};wit=[]
    for vec in E:
        s={i:x%p for i,x in vec.items() if x%p}
        while s:
            k=max(s);b=s[k]
            if k not in rel:
                b=inv(b,p)
                rel[k]={i:z*b%p for i,z in s.items()};wit.append(vec)
                break
            minusmod(s,rel[k],b,p)
    for k in sorted(rel):
        s=rel[k]
        for i,z in list(s.items()):
            if i!=k and i in rel:minusmod(s,rel[i],z,p)
    return rel,wit
def rat(z,T):  # propose short rational coefficients (checked exactly later)
    M=T; w=z
    u,v=0,1
    while w*w>T//2:M,w,u,v=w,M%w,v,u-M//w*v
    return Q(w,v)

def eliminate(rows,keys=None):
    E0=[]
    for row in rows:
        g=intscale(row)[1]
        if g:E0.append(g)
    p=1000000007
    if keys is None:
        keys=sorted(set(k for g in E0 for k in g))
    num={k:i for i,k in enumerate(keys)}
    assert len(num)==len(keys)
    E=[{num[a]:x for a,x in g.items()} for g in E0]
    R,small=echelon(E,p)
    M=p
    proj={}
    for q in (1000000009,998244353,1000003,2013265921,754974721,32452843,86028121):
        if proj:break
        S,_=echelon(small,q)
        if R.keys()!=S.keys():continue
        iq=inv(M,q)
        def combine(x,y):return x+((y-x)*iq%q)*M
        for k,v in list(R.items()):
            u=S[k]
            R[k]={i:combine(v.get(i,0),u.get(i,0)) for i in v.keys()|u.keys()}
        M*=q
        rel=[]
        for i,k in enumerate(keys):
            if i in R:
                f={j:-rat(z,M) for j,z in R[i].items() if j!=i}
                if max((max(abs(x.numerator),x.denominator) for x in f.values()),default=0)**2>M//200:
                    proj={};break
            else:f={i:1}
            proj[k]={keys[j]:x for j,x in f.items()}
            rel.append(intscale(f))
    assert proj and len(proj)==len(keys) and len(R)==len(small)
    # Added for this return: verify the exact retraction structure as well as
    # the zero residuals below.  The free coordinate block is an identity,
    # and every pivot replacement is expressed entirely in those coordinates.
    free={keys[i] for i in range(len(keys)) if i not in R}
    assert len(free)==len(keys)-len(R)
    assert free=={k for k in keys if proj[k]=={k:1}}
    assert all(set(value)<=free for value in proj.values())
    # Verify exactly enough equations of projection and therefore its validity
    for g in small:
        m=1
        for i in g:m=lcm(m,rel[i][0])
        s={}
        for i,x in g.items():
            d,f=rel[i];add(s,f,(m//d)*x)
        assert not s
    print("rank table:",len(E0),len(keys),len(R),flush=True)
    return proj

def pairtable():
    rows=[]
    def out(A):
        # sorted r so A[0] has order 1
        assert order(A[0])==1 and len(A)==7
        assert not any(map(sum,A)) and not any(map(sum,tr(A)))
        rows.append(expand_degree1(A,0))
    for k in range(7,12):
        for n in range(2,min(4,k//2)+1):
            for c in parts(k,n,2,k//2):
                for r in parts(k,7,1,k//2):
                    allAB(r,c,out)
    keys=sorted(set(k for g in rows for k in g),key=lambda A:(wt(A),A))
    I=[0,1,2,5,4,6,7,8,9,55,80,228]
    keys=[keys[i] for i in I]+[k for i,k in enumerate(keys) if i not in I]
    return eliminate(rows,keys)

@memo
def partition(n):  # equality patterns encoded by first-use indexing
    if not n:return ((),)
    return tuple(a+(j,) for a in partition(n-1) for j in range(max(a,default=-1)+2))
def fall(n,k):
    return n*fall(n-1,k-1) if k else 1

@memo
def rep_pair(A):  # average with replacement on the column side only
    if not A:return lin(evpair(A),Epair.__getitem__)
    n=len(A[0]);v={}
    for s in partition(n):
        k=1+max(s)
        B=tuple(tuple(sum(x for i,x in zip(s,a) if i==j) for j in range(k)) for a in A)
        add(v,evpair(canonpair(B)),Q(fall(6,k),6**n))
    return lin(v,Epair.__getitem__)
def sortleft(A):
    return basic(tr(basic(tr(A))))
def apair(*args):
    return rep_pair(sortleft(tr(args)))

alpha=(1,1,1,-1,-1,-1)
def check_pair():
    w=(-3,-2,0,1,2,2)
    gammas=[(-1,-1,0,0,1,1),(-2,0,0,0,1,1),(-1,-1,0,1,0,1),(-1,-1,0,1,1,0)]
    poly={(w,):-1};poly.update({(g,plus(w,neg(g))):1 for g in gammas})
    poly[tuple([gammas[0],plus(w,neg(gammas[0]))])]=2
    f={}
    for a,x in poly.items():
        for b,z in poly.items():add(f,apair(*(a+opposite(b))),3*x*z)
    for b in ((2,0,0,-2,0,0),(2,-2,0,0,0,0)):
        eq=f.copy();add(eq,apair(alpha,b,neg(alpha),neg(b)))
        assert not eq

