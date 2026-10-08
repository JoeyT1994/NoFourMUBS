"""Exact Laurent-polynomial exploration; Python standard library only."""
from itertools import permutations, combinations
from collections import Counter

def clean(d):
    groups = {}
    for (x,y,k), v in d.items():
        if v:
            t = groups.setdefault((x,y),[0,0,0])
            t[k%3] += v
    ans={}
    for (x,y),(a,b,c) in groups.items():
        if a-c: ans[x,y,0]=a-c
        if b-c: ans[x,y,1]=b-c
    return ans

def add(a,b):
    d=dict(a)
    for e,v in b.items(): d[e]=d.get(e,0)+v
    return clean(d)

def mul(a,b):
    d={}
    for (x,y,k),v in a.items():
        for (u,w,l),q in b.items():
            e=(x+u,y+w,(k+l)%3)
            d[e]=d.get(e,0)+v*q
    return clean(d)

def scale(a,c): return {e:v*c for e,v in a.items() if v*c}
def conj(a): return clean({(-x,-y,(-k)%3):v for (x,y,k),v in a.items()})
ONE={(0,0,0):1}
ZERO={}

def prod(xs):
    p=ONE
    for x in xs: p=mul(p,x)
    return p

def entry(i,j):
    p,r=divmod(i,3)
    c,q=divmod(j,2)
    return clean({(p if c==1 else 0,p if c==2 else 0,r*c%3):(-1)**(p*q)})

H=[[entry(i,j) for j in range(6)] for i in range(6)]
PERMS=list(permutations(range(3)))
SIGNS=[(-1)**sum(p[a]>p[b] for a in range(3) for b in range(a+1,3)) for p in PERMS]
TRIPLES=list(combinations(range(6),3))

def qpoly(E):
    per=det=ZERO
    for perm,sign in zip(PERMS,SIGNS):
        term=prod(E[i][perm[i]] for i in range(3))
        per=add(per,term)
        det=add(det,scale(term,sign))
    allprod=prod(e for row in E for e in row)
    return prod([per,det,det,conj(allprod)])

def signature(p): return tuple(sorted(p.items()))
def canonical_sign(p): return min(signature(p),signature(scale(p,-1)))

def all_deltas():
    ans=[]
    for rows in TRIPLES:
        for cols in TRIPLES:
            E=[[H[i][j] for j in cols] for i in rows]
            q=qpoly(E)
            delta=add(q,scale(conj(q),-1))
            ans.append((rows,cols,delta))
    return ans

if __name__=='__main__':
    counter=Counter(canonical_sign(p) for _,_,p in all_deltas())
    print('distinct imaginary polynomials up to sign:',len(counter))
    for k,c in sorted(counter.items(), key=lambda t:(len(t[0]),t[0])):
        print(c,k)
