#!/usr/bin/env python3
"""Exact fixtures for the four-ray formulas; no numerical sign decisions.

The universal proof is in algebra/FOUR_RAY_COMPLETION.md. This script checks
its formulas on every four-column subset of an exact non-Fourier anchor
triple, including every nonzero diagonal pivot. It also searches a finite
explicit symmetry orbit for a noncompletable four-clique, without claiming
that the orbit exhausts any common-ray fibre.
"""
from pathlib import Path
import json
from itertools import combinations
from math import comb
from exact_core import Q, I, S2, S3, OMEGA, parse, multiply, adjoint, det3, is_hadamard

if not __debug__:
    raise RuntimeError('Run without -O: assertions are certificate gates.')

ROOT = Path(__file__).resolve().parents[1]
ZERO = Q()

def dot(x,y):
    return sum((a*b for a,b in zip(x,y)), ZERO)

def inner(x,y):
    return dot([a.conj() for a in x], y)

def mv(a,x):
    return [dot(row,x) for row in a]

def col(a,j):
    return [row[j] for row in a]

def comp_data(rays):
    assert len(rays)==4
    assert all(x[0]==1 for x in rays)
    assert all(inner(x,y)==(6 if i==j else 0)
               for i,x in enumerate(rays) for j,y in enumerate(rays))
    E=[[Q(i==j)-sum((x[i]*x[j].conj() for x in rays), ZERO)/6
        for j in range(6)] for i in range(6)]
    s=[6*E[i][0] for i in range(6)]
    t=[6*E[0][i] for i in range(6)]
    D=[[12*E[i][j]-s[i]*t[j] for j in range(6)] for i in range(6)]
    assert multiply(E,E)==E
    assert all(E[i][i]==Q(1)/3 for i in range(6))
    assert dot(t,s)==12 and s[0]==2 and t[0]==2
    assert sum((D[i][i] for i in range(6)),ZERO)==12
    assert all(D[0][i]==0 and D[i][0]==0 for i in range(6))
    assert mv(D,s)==[ZERO]*6
    assert multiply(D,D)==[[12*x for x in row] for row in D]
    assert all(D[i][i]==4-s[i]*t[i] for i in range(6))
    return E,s,t,D

def coefficients(H,s,t,D,j):
    c=D[j][j]
    assert c
    p=col(D,j)
    q=D[j]
    assert [[p[i]*q[k]/c for k in range(6)] for i in range(6)]==D
    first=[s[i]*q[i] for i in range(6)]
    # Raw H instead of C=H/sqrt(6) multiplies all transformed a,b by6.
    Hstar=adjoint(H)
    Htrans=list(map(list,zip(*H)))
    hs,hp=mv(Hstar,s),mv(Hstar,p)
    ht,hq=mv(Htrans,t),mv(Htrans,q)
    aa=first+[hs[i]*hq[i] for i in range(6)]
    bb=[c*t[i]*p[i] for i in range(6)]+[c*ht[i]*hp[i] for i in range(6)]
    assert all(b==c*a.conj() for a,b in zip(aa,bb))
    assert any(aa), 'Universal nonzero-coefficient lemma predicts this.'
    return c,p,q,aa,bb

def compatible(aa):
    return all(a*b.conj()==b*a.conj() for a,b in combinations(aa,2))

def is_common(H,x):
    return (x[0]==1 and all(a.abs2()==1 for a in x)
            and all(a.abs2()==6 for a in mv(adjoint(H),x)))

def all_zero_minors(H,k):
    if k==3:
        return sum(not det3([[H[i][j] for j in B] for i in A])
                   for A in combinations(range(6),3) for B in combinations(range(6),3))
    return sum(H[a][c]*H[b][d]==H[a][d]*H[b][c]
               for a,b in combinations(range(6),2) for c,d in combinations(range(6),2))

data=json.loads((ROOT/'provenance/INPUT_EXACT_TRIPLE.json').read_text())
H=[[parse(x) for x in row] for row in data['H_Dita']]
K=[[parse(x) for x in row] for row in data['K']]
assert is_hadamard(H) and is_hadamard(K)
assert all(is_common(H,col(K,j)) for j in range(6))
assert all_zero_minors(H,3)==0 and all_zero_minors(H,2)==30

pivot_count=0
profile_receipts=[]
for chosen in combinations(range(6),4):
    rays=[col(K,j) for j in chosen]
    missing=[j for j in range(6) if j not in chosen]
    xplus,xminus=[col(K,j) for j in missing]
    E,s,t,D=comp_data(rays)
    pivots=[]
    for j in range(1,6):
        if not D[j][j]:
            continue
        c,p,q,aa,bb=coefficients(H,s,t,D,j)
        assert compatible(aa)
        u=(xplus[j]-xminus[j]).conj()
        assert u and u.abs2()==c
        U=u*u
        assert all(a*U+b==0 for a,b in zip(aa,bb))
        recovered_plus=[(s[i]+p[i]/u)/2 for i in range(6)]
        recovered_minus=[(s[i]-p[i]/u)/2 for i in range(6)]
        assert recovered_plus==xplus and recovered_minus==xminus
        assert [(t[i]+q[i]*u/c)/2 for i in range(6)]==[x.conj() for x in xplus]
        assert [(t[i]-q[i]*u/c)/2 for i in range(6)]==[x.conj() for x in xminus]
        ell=next(i for i,a in enumerate(aa) if a)
        assert U==-c*aa[ell].conj()/aa[ell]
        pivot_count+=1
        pivots.append(j)
    assert pivots
    profile_receipts.append({'retained_columns':list(chosen),'pivots':pivots})

# Generate only a declared finite orbit. No exhaustiveness claim.
ray_map={}
for shift in range(5):
    perm=[0]+[1+(i+shift)%5 for i in range(5)]
    Hperm=[[H[perm[i]][perm[j]] for j in range(6)] for i in range(6)]
    assert Hperm==H
    for j in range(6):
        ray=tuple(K[perm[i]][j] for i in range(6))
        assert is_common(H,ray)
        ray_map.setdefault(ray, {'shift':shift,'column':j})
rays=list(ray_map)
neighbors=[set() for _ in rays]
for i,j in combinations(range(len(rays)),2):
    if inner(rays[i],rays[j])==0:
        neighbors[i].add(j)
        neighbors[j].add(i)
checked=0
failed=None
for a in range(len(rays)):
    for b in sorted(j for j in neighbors[a] if j>a):
        for c in sorted(j for j in neighbors[a]&neighbors[b] if j>b):
            for d in sorted(j for j in neighbors[a]&neighbors[b]&neighbors[c] if j>c):
                ids=(a,b,c,d)
                E,s,t,D=comp_data([rays[i] for i in ids])
                pivot=next(j for j in range(1,6) if D[j][j])
                _,_,_,aa,_=coefficients(H,s,t,D,pivot)
                checked+=1
                if not compatible(aa):
                    pair=next((i,j) for i,j in combinations(range(12),2)
                              if aa[i]*aa[j].conj()!=aa[j]*aa[i].conj())
                    witness=aa[pair[0]]*aa[pair[1]].conj()-aa[pair[1]]*aa[pair[0]].conj()
                    failed={'ray_sources':[ray_map[rays[i]] for i in ids],
                            'pivot':pivot,'coefficient_pair':list(pair),
                            'nonzero_rank_minor':witness.serial()}
                    break
            if failed: break
        if failed: break
    if failed: break

# Sharp support lemma example, without sqrt normalization.
F=[[OMEGA**((i%3)*(j%3))*(-1 if i>=3 and j>=3 else 1)
    for j in range(6)] for i in range(6)]
assert is_hadamard(F)
z=[Q(1),Q(1),Q(1),ZERO,ZERO,ZERO]
fz=mv(adjoint(F),z)
assert sum(bool(x) for x in fz)==2
assert all(x.abs2()==9 for x in fz if x)

expected_bounds={162:(1327052160,1843128),
                 192:(2633783040,3658032),
                 252:(7874874000,10937325)}
for n,(ordered_expected,unordered_expected) in expected_bounds.items():
    assert 2*n*(n-1)*(n-2)*(n-3)==ordered_expected
    assert comb(n,4)//15==unordered_expected
n=252
ordered_bound,unordered_bound=expected_bounds[n]
old_bound=comb(n,5)//6
assert old_bound==124*unordered_bound
receipt={'status':'PASS','arithmetic':'Q(i,sqrt(2),sqrt(3),sqrt(5)); exact fractions',
         'anchor_zero_two_minors':30,'anchor_zero_three_minors':0,
         'four_subsets_verified':len(profile_receipts),'nonzero_pivots_verified':pivot_count,
         'profiles':profile_receipts,
         'declared_orbit_ray_count':len(rays),'orbit_four_cliques_checked_until_witness':checked,
         'noncompletable_orbit_witness':failed,
         'support_lemma_sharp_fixture':{'native_support':3,'transformed_support':2,
                                       'raw_nonzero_modulus_squared':9},
         'verified_length_and_basis_bounds':expected_bounds,
         'ordered_algebra_length_bound_at_252':ordered_bound,
         'unordered_basis_bound_at_252':unordered_bound,
         'prior_basis_bound':old_bound,'improvement_factor':124,
         'scope':'Fixtures and finite arithmetic only. Universal arguments are written; no global A,C,F,F-prime certificate.'}
path=ROOT/'certificates/FOUR_RAY_RECEIPT.json'
path.write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in receipt.items() if k not in ('profiles',)},sort_keys=True))
