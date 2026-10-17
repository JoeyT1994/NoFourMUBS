"""Exact quantitative separation and minor census for the Diţă ray atlas.

No assertion here exhausts the physical common-ray set. The asserted bounds
hold for every element of the supplied exact 120-ray list and its 10 bases.
"""
import sys
if not __debug__ or sys.flags.optimize:
    raise RuntimeError("Run without Python optimization")
from pathlib import Path
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
from collections import Counter
from math import isqrt
import json
from exact_core import Q,parse
from verify_dita_rays import ROOT,sha,load_q,dot,validate_atlas,all_cliques

@lru_cache(None)
def real_interval(q):
    """A rational enclosure certified using integer square roots only."""
    low=high=F(0)
    scale=10**24
    for mask,c in q.c.items():
        assert not(mask&1)
        rad=1
        for bit,r in ((1,2),(2,3),(3,5)):
            if mask&(1<<bit):rad*=r
        n=isqrt(rad*scale*scale)
        assert n*n<=rad*scale*scale<(n+1)*(n+1)
        a,b=F(n,scale),F(n+1,scale)
        if n*n==rad*scale*scale:b=a
        if c>=0:low+=c*a;high+=c*b
        else:low+=c*b;high+=c*a
    return low,high

def cmp(a,b=0):
    q=a-Q(b)
    if not q:return 0
    lo,hi=real_interval(q)
    assert lo>0 or hi<0, "Increase the exact enclosure precision"
    return 1 if lo>0 else -1

def absreal(q):return q if cmp(q)>=0 else -q
def qmax(values):
    it=iter(values);out=next(it)
    for q in it:
        if cmp(q,out)>0:out=q
    return out
def qmin(values):
    it=iter(values);out=next(it)
    for q in it:
        if cmp(q,out)<0:out=q
    return out

def det_small(a):
    if len(a)==2:return a[0][0]*a[1][1]-a[0][1]*a[1][0]
    assert len(a)==3
    return sum(((-1)**j*a[0][j]*det_small([[row[k] for k in range(3) if k!=j] for row in a[1:]]) for j in range(3)),Q())

def main():
    D,atlas,rays=validate_atlas()
    graph=json.loads((ROOT/'D0_EXACT_GRAPH.json').read_text())
    assert graph['ray_atlas_sha256']==sha(ROOT/'D0_RAY_ATLAS.json')
    bases=graph['all_orthogonal_sextuples']
    overlaps=[[dot(a,b).abs2() for b in rays] for a in rays]
    edges=[[j,k] for j in range(120) for k in range(j+1,120) if not overlaps[j][k]]
    assert edges==graph['orthogonal_edges']
    neighbors=[0]*120
    for j,k in edges:neighbors[j]|=1<<k;neighbors[k]|=1<<j
    assert bases==all_cliques(neighbors,6)
    assert len(bases)==10 and len({j for b in bases for j in b})==60
    m=qmin(q for j,row in enumerate(overlaps) for k,q in enumerate(row) if j<k and q)
    assert cmp(m,F(1,50))>0
    common_gaps=[]; common_energy=[]; witnesses=[]
    for b,basis in enumerate(bases):
        for r in range(120):
            gaps=[absreal(overlaps[j][r]-6) for j in basis]
            gap=qmax(gaps)
            energy=sum(((overlaps[j][r]-6)**2 for j in basis),Q())
            assert cmp(gap,6)>=0
            assert cmp(energy,F(1752,25))>=0
            j=next(j for j in basis if cmp(absreal(overlaps[j][r]-6),6)>=0)
            witnesses.append([b,r,j])
            common_gaps.append(gap);common_energy.append(energy)
    assert qmin(common_gaps)==6
    assert qmin(common_energy)==Q(F(1752,25))
    basis_gaps=[]
    for b,basis in enumerate(bases):
        for c in range(b+1,len(bases)):
            gap=qmax(absreal(overlaps[j][k]-6) for j in basis for k in bases[c])
            assert cmp(gap,6)>=0
            basis_gaps.append(gap)
    assert qmin(basis_gaps)==6
    counts={}
    for k in (2,3):
        count=Counter()
        for rr in combinations(range(6),k):
            for cc in combinations(range(6),k):
                q=det_small([[D[r][c] for c in cc] for r in rr]).abs2()
                assert set(q.c)<={0}
                count[str(q.c.get(0,F(0)))]+=1
        counts[str(k)]=dict(sorted(count.items(),key=lambda item:F(item[0])))
    assert counts['2'].get('0')==30
    assert counts['3']=={'4':120,'8':120,'16':80,'20':80}
    receipt={"status":"PASS_EXACT_LIST_GAPS_AND_MINOR_CENSUS", "scope":"Quantified over the listed rays and their exhaustive finite-list sextuples; whole physical-set completeness is separate.","minimum_nonzero_raw_overlap_squared":m.serial(),"minimum_nonzero_raw_overlap_squared_rational_lower_bound":"1/50 (strict)","minimum_basis_ray_max_raw_squared_overlap_deviation":"6", "minimum_basis_ray_sum_squared_raw_deviations":"1752/25","minimum_distinct_basis_pair_max_raw_squared_overlap_deviation":"6","basis_ray_pair_count":1200,"basis_ray_gap_witnesses":witnesses,"minor_squared_modulus_census":counts,"projective_complete_intersection_degree":252,"reduced_boundary_point_count_from_the_support_theorem":60,"affine_complex_scheme_length_from_the_degree_theorem":192,"assertions_enabled":True,"files":{name:sha(ROOT/name) for name in ('verify_dita_gaps.py','verify_dita_rays.py','exact_core.py','INPUT_EXACT_TRIPLE.json','D0_RAY_ATLAS.json','D0_EXACT_GRAPH.json')}}
    (ROOT/'D0_GAP_RECEIPT.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps({k:v for k,v in receipt.items() if k not in ('files','basis_ray_gap_witnesses','scope','minimum_nonzero_raw_overlap_squared')}))

if __name__=='__main__':main()
