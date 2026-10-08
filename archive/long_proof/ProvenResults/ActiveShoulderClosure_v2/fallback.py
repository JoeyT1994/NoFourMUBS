"""Validated root-free alternative for singular side charts; failure is inconclusive."""
from itertools import permutations,product
from functools import lru_cache
import sys,math
from geometry import ROOT
from models import real
from flint import ctx

@lru_cache(1)
def references():
    refs={}
    for rr,cc in product(permutations(range(1,6),2),repeat=2):
        seed=tuple(r*c%6 for r in rr for c in cc)
        refs.setdefault(seed,dict(rows=[0,*rr]+[r for r in range(1,6) if r not in rr],cols=[0,*cc]+[c for c in range(1,6) if c not in cc]))
    return refs

def propose(centers):
    key=tuple(round(float(c)*3/math.pi)%6 for c in centers)
    return references().get(key)

def certify(centers,radii,reference,options=None):
    if set(reference)!={'rows','cols'} or any(len(reference[k])!=6 or any(type(i)!=int for i in reference[k]) or sorted(reference[k])!=list(range(6)) for k in ('rows','cols')):
        raise ValueError('F6 reference requires two genuine permutations')
    precision=ctx.prec
    sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
    from residual_lift import _certify, fourier_reference
    from transfer import matrix_radius
    radius=matrix_radius(dict(grid=180,a=0,b=0,tolerance_denominator=5))
    ctx.prec=precision
    options=options or dict(depth=22,budget=50000,maxlabels=1200,pair_budget=800000,triple_budget=500000)
    out=_certify(list(map(real,centers)),list(map(real,radii)),fourier_reference(**reference),real(radius),**options)
    return dict(out,reference=reference,options=options)

@lru_cache(1)
def singular_patch_seeds():
    from production import frames,apply
    return {tuple(v%6 for v in apply(f['matrix'],base)) for f in frames() for base in [(4,5,0,3),(2,4,4,2)]}

def candidate_patch(centers):
    try:return tuple(round(float(c)*3/math.pi)%6 for c in centers) in singular_patch_seeds()
    except (ValueError,OverflowError):return False

def prune(centers,radii,options=None):
    precision=ctx.prec
    sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/PairedSidePrune'))
    from paired_prune import prune_box
    ctx.prec=precision
    options=options or dict(depth=16,budget=20000,maxlabels=800,pair_budget=400000)
    out=prune_box(list(map(real,centers)),list(map(real,radii)),**options)
    return dict(out,options=options)
