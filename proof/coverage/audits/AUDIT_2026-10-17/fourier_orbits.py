"""Exact four-orbit reduction for positional corners of K(d).
Sympy verifies the four representative Laurent identities. Combinatorial
orbits use only explicit monomial symmetries proved in the accompanying note.
"""
import itertools, json, time
import sympy as s
from pathlib import Path
w,x,y=s.symbols('w x y'); ds=[1,x,y]
K=s.Matrix(6,6,lambda r,c: (-1)**((r//3)*(c//3))*w**((r%3)*(c%3))*ds[c%3]**(r//3))
mod=s.Poly(w*w+w+1,w)
def red(e):
    return s.Poly(s.expand(e),w).rem(mod).as_expr().expand()
def signature(M):
    per=sum(s.prod(M[i,p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
    return -per*M.det()**2/s.prod(M)
def conjugate(e):
    return e.xreplace({w:w**2,x:1/x,y:1/y})
def pair_act(pair,rp,cp):
    return tuple(sorted(rp[i] for i in pair[0])),tuple(sorted(cp[i] for i in pair[1]))
Id=tuple(range(6)); gen=[]
# Independent cyclic shifts of the two row layers, then their interchange.
for a in range(2):
    gen.append((tuple(3*(i//3)+(i%3+int(i//3==a))%3 for i in range(6)),Id))
gen.append((tuple((i+3)%6 for i in range(6)),Id))
# Column translations, and reflection coupled with row reflection.
gen.append((Id,tuple(3*(i//3)+(i%3+1)%3 for i in range(6))))
gen.append((tuple(3*(i//3)+(-i%3)%3 for i in range(6)),tuple(3*(i//3)+(-i%3)%3 for i in range(6))))
for j in range(3):
    gen.append((Id,tuple((i+3)%6 if i%3==j else i for i in range(6))))
triples=list(itertools.combinations(range(6),3)); remaining=set(itertools.product(triples,repeat=2)); results=[]
for rows in [(0,1,2),(0,1,3)]:
    for cols in [(0,1,2),(0,1,3)]:
        rep=(rows,cols); orbit={rep}; stack=[rep]
        while stack:
            p=stack.pop()
            for rp,cp in gen:
                q=pair_act(p,rp,cp)
                if q not in orbit: orbit.add(q); stack.append(q)
        assert orbit<=remaining
        remaining-=orbit
        cr=tuple(i for i in range(6) if i not in rows); cc=tuple(i for i in range(6) if i not in cols)
        lhs=signature(K.extract(rows,cols)); rhs=conjugate(signature(K.extract(cr,cc)))
        num,den=s.fraction(s.together(lhs-rhs)); rem=red(num)
        assert rem==0
        # Denominators are monomials in nonzero unit variables and w.
        denf=s.factor(den)
        poly=s.Poly(denf,w,x,y); assert len(poly.terms())==1 and poly.terms()[0][1]!=0
        lnum,lden=s.fraction(s.together(lhs)); simplified=s.factor(red(lnum))/lden
        results.append({'rows':rows,'cols':cols,'orbit_size':len(orbit),'signature':str(simplified),'cleared_denominator':str(denf),'identity_remainder':str(rem)})
assert not remaining
print(json.dumps({'verified':True,'corner_pairs':400,'representatives':results},indent=2))
# Structural proof of the only nonconstant representative: its complement is
# phase-equivalent to the conjugate block.  These checks are explanatory,
# not additional certificate assumptions.
A=K.extract((0,1,3),(0,1,2)); B=K.extract((2,4,5),(3,4,5))
transformed=(s.diag(1,-1,-1)*B*s.diag(1,w/x,w**2/y)).extract((2,1,0),(0,1,2))
for i in range(3):
    for j in range(3):
        num,den=s.fraction(s.together(transformed[i,j]-conjugate(A[i,j])))
        assert red(num)==0
paired=K.extract((0,1,3),(0,1,3))
per=lambda M:sum(s.prod(M[i,p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
assert red(paired.det()-2*(1-w))==0
assert red(per(paired)-2*x)==0
assert red(s.prod(paired)+w*x)==0
assert red((1-w)**2+3*w)==0
print('STRUCTURAL PASS: mixed complement is monomial-equivalent to conjugation; paired signature is -24.')
