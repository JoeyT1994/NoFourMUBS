"""Exact Laurent-polynomial and orbit arithmetic (standard library only).

A graph G denotes the normalized average over injective row/column labels,
entrywise inversion, and transposition. Inversion means complex conjugation
on the phase torus. See CERTIFICATE_FORMAT.md. Coefficients are rational;
no floating-point operations occur in this module.

The verifier does not search for cofactors or rely on a reduction normal form.
It expands the stored cofactor identities and compares them with targets
independently regenerated from determinant/permanent definitions.
"""
from itertools import permutations,combinations
from fractions import Fraction as F
from functools import lru_cache
from collections import defaultdict


def add(*polys):
 d=defaultdict(F)
 for p in polys:
  for k,v in p.items():d[k]+=v
 return {k:v for k,v in d.items()if v}
def sc(p,c):return {k:v*c for k,v in p.items()if v*c}
def mul(p,q):
 d=defaultdict(F)
 for a,x in p.items():
  for b,y in q.items():d[tuple(i+j for i,j in zip(a,b))]+=x*y
 return {k:v for k,v in d.items()if v}
def cj(p):return {tuple(-x for x in a):c for a,c in p.items()}
def const(c,n=9):return {(0,)*n:F(c)}
def re(p):return sc(add(p,cj(p)),F(1,2))
def det(n,power=1):
 d={}
 for s in permutations(range(n)):
  k=tuple(power*int(j==s[i])for i in range(n)for j in range(n));d[k]=(-1)**sum(s[i]>s[j]for i in range(n)for j in range(i+1,n))
 return d

def clean(M):
 M=tuple(tuple(x for j,x in enumerate(row)if any(r[j]for r in M))for row in M if any(row))
 return M
@lru_cache(None)
def canon(M):
 M=clean(M)
 if not M:return ()
 n,m=len(M),len(M[0]);opts=[]
 mats=[]
 if n<=m:mats+=[M]
 if m<=n:mats+=[tuple(zip(*M))]
 for A in mats:
  for s in (1,-1):
   for p in permutations(range(len(A))):
    cols=sorted(tuple(s*A[i][j]for i in p)for j in range(len(A[0])))
    opts.append(tuple(zip(*cols)))
 return min(opts)

def corepoly(p,r=3,c=3):
 d=defaultdict(F)
 for a,v in p.items():d[canon(tuple(tuple(a[i*c+j]for j in range(c))for i in range(r)))]+=v
 return {k:v for k,v in d.items()if v}

d=det(3);p={a:1 for a in d};psi={tuple(x-1 for x in a):v for a,v in mul(p,mul(d,d)).items()};g=mul(d,cj(d))
s={tuple(1-3*x for x in a):F(1,6)for a in d}
R=add(re(s),const(F(41,10)),sc(re(psi),-F(5,54)),sc(mul(g,g),-F(1,36)),sc(mul(g,re(psi)),F(1,162)))


def as_graph(value):
    """Validate a nonempty balanced integral exponent matrix."""
    if not isinstance(value, list) or not value or not isinstance(value[0], list):
        raise ValueError("expected a nonempty matrix")
    G=tuple(tuple(row) for row in value)
    if not (1 <= len(G) <= 6 and 1 <= len(G[0]) <= 6):
        raise ValueError("matrix shape outside six-by-six")
    if any(len(row)!=len(G[0]) for row in G):
        raise ValueError("ragged matrix")
    if any(type(x) is not int for row in G for x in row):
        raise ValueError("nonintegral exponent")
    if any(sum(row) for row in G) or any(sum(col) for col in zip(*G)):
        raise ValueError("not a balanced exponent graph")
    return G


def orth_relation(G, axis, pos):
    """E_G = A_G + sum(A_contracted)/(7-n), for a +/-1 vertex."""
    if axis not in (0,1):raise ValueError("invalid axis")
    M=G if axis==0 else tuple(zip(*G))
    if not (0 <= pos < len(M)):raise ValueError("invalid position")
    if sorted(x for x in M[pos] if x)!=[-1,1]:
        raise ValueError("selected vertex is not an orthogonality vertex")
    n=len(M);out={canon(G):F(1)}
    for i in range(n):
        if i==pos:continue
        K=tuple(tuple(x+y for x,y in zip(row,M[pos])) if z==i else row
                for z,row in enumerate(M) if z!=pos)
        out=add(out,{canon(K):F(1,7-n)})
    return out


def moment_relation(G):
    """L_G = A_G + sum(A_column-0-contracted)/(7-c)."""
    if len(G)!=6 or tuple(row[0] for row in G)!=(1,1,1,-1,-1,-1):
        raise ValueError("wrong moment charges")
    c=len(G[0]);out={canon(G):F(1)}
    for j in range(1,c):
        K=tuple(tuple(row[l]+row[0] if l==j else row[l]
                      for l in range(1,c)) for row in G)
        out=add(out,{canon(K):F(1,7-c)})
    return out


def rectangular_graph(k):
    return canon(((-k,k),(k,-k)))


def scalar_targets():
    T2={():F(396),rectangular_graph(2):F(900)}
    T3={():F(396),rectangular_graph(3):F(900)}
    G=tuple((1,-1) if i<3 else (-1,1) for i in range(6))
    mu={():F(1,6),canon(G):F(5,6)}
    return {
        'universal_S': add(corepoly(re(s)),sc(corepoly(re(psi)),-F(1,6)),
                           {():F(377,100)},sc(T2,-F(1,4800))),
        'moment_norm': add(mu,{():-F(1,5)},sc(T3,-F(1,6480)),sc(T2,F(1,1440)))
    }
