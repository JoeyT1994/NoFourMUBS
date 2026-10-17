"""Exact checks and all 6-cliques for a supplied 120-ray Diţă atlas.

This checker verifies every listed ray and the complete finite overlap graph.
It deliberately makes no claim that every physical ray occurs in the input.
Python standard library only; no numerical tolerance is used in its predicates.
"""
import sys
if not __debug__ or sys.flags.optimize:
    raise RuntimeError("Run without Python optimization")
from pathlib import Path
from fractions import Fraction
import hashlib
import json
from collections import Counter
from exact_core import Q,I,S2,S3,S5,parse

ROOT=Path(__file__).resolve().parent

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def load_q(serial):return Q({int(k):Fraction(v) for k,v in serial})
def dot(a,b):return sum((x.conj()*y for x,y in zip(a,b)),Q())

def all_cliques(neighbors,k):
    """Every sorted size-k clique exactly once, using exact adjacency bitsets."""
    found=[]
    def recurse(prefix,candidates):
        need=k-len(prefix)
        if need==0:
            found.append(prefix);return
        while candidates.bit_count()>=need:
            low=candidates&-candidates
            j=low.bit_length()-1
            candidates-=low
            recurse(prefix+[j],candidates&neighbors[j])
    recurse([], (1<<len(neighbors))-1)
    return found

def validate_atlas():
    atlas=json.loads((ROOT/"D0_RAY_ATLAS.json").read_text())
    raw=json.loads((ROOT/"INPUT_EXACT_TRIPLE.json").read_text())
    D=[[parse(x) for x in row] for row in raw['H_Dita']]
    assert len(D)==6 and all(len(row)==6 for row in D)
    assert all(z.abs2()==1 for row in D for z in row)
    columns=list(zip(*D))
    assert all(dot(a,b)==(6 if j==k else 0) for j,a in enumerate(columns) for k,b in enumerate(columns))
    nu=(S2*S3+S2+I*(S2*S3-S2))/4
    alphabet=[nu**k for k in range(24)]+[(I**k)*(Q(1)+s*2*I)/S5 for s in (-1,1) for k in range(4)]
    assert alphabet==list(map(load_q,atlas['alphabet_exact']))
    assert len(set(alphabet))==32 and all(z.abs2()==1 for z in alphabet)
    assert all(len(row)==6 and all(type(j)is int and 0<=j<32 for j in row) for row in atlas['rays'])
    rays=[[alphabet[j] for j in row] for row in atlas['rays']]
    assert len(rays)==120 and len(set(map(tuple,rays)))==120
    assert all(len(row)==6 and row[0]==1 for row in rays)
    for ray in rays:
        assert all(z.abs2()==1 for z in ray)
        assert all(dot(col,ray).abs2()==6 for col in columns)
    return D,atlas,rays

def main():
    D,atlas,rays=validate_atlas()
    neighbors=[0]*120
    overlaps={}
    distribution=Counter()
    for j,a in enumerate(rays):
        for k in range(j+1,120):
            q=dot(a,rays[k]).abs2()
            overlaps[j,k]=q
            distribution[tuple(tuple(x) for x in q.serial())]+=1
            if not q:
                neighbors[j]|=1<<k
                neighbors[k]|=1<<j
    bases=all_cliques(neighbors,6)
    assert len(bases)==10
    used=sorted({i for basis in bases for i in basis})
    assert len(used)==60
    witnesses=[]
    for b in range(len(bases)):
        for c in range(b+1,len(bases)):
            bad=[]
            for j in bases[b]:
                for k in bases[c]:
                    q=Q(36) if j==k else overlaps[min(j,k),max(j,k)]
                    if q!=6:bad.append((j,k,q))
            assert bad
            j,k,q=bad[0]
            witnesses.append({"bases":[b,c],"rays":[j,k],"raw_overlap_squared":q.serial(),"incompatible_entry_count":len(bad)})
    graph={"scope":"complete exact overlap graph on the 120 listed rays", "ray_atlas_sha256":sha(ROOT/"D0_RAY_ATLAS.json"), "orthogonal_edges":[[j,k] for (j,k),q in overlaps.items() if not q], "all_orthogonal_sextuples":bases,"rays_in_sextuples":used,"basis_pair_non_MU_witnesses":witnesses,"raw_overlap_squared_distribution":[{"value":list(map(list,key)),"multiplicity":count} for key,count in sorted(distribution.items())]}
    (ROOT/"D0_EXACT_GRAPH.json").write_text(json.dumps(graph,indent=2)+"\n")
    receipt={"status":"PASS_LISTED_RAYS_AND_GRAPH", "completeness_scope":"All rays are exact and all sextuples within the supplied list are enumerated. Global exhaustion of the physical ray set is a separate required gate.","ray_count":120,"orthogonal_edge_count":len(graph['orthogonal_edges']),"orthogonal_sextuple_count":len(bases),"rays_in_sextuples":len(used),"distinct_basis_pairs":len(witnesses),"mutually_unbiased_basis_pairs":0,"overlap_level_count":len(distribution),"assertions_enabled":True,"files":{name:sha(ROOT/name) for name in ('verify_dita_rays.py','exact_core.py','INPUT_EXACT_TRIPLE.json','D0_RAY_ATLAS.json','D0_EXACT_GRAPH.json')}}
    (ROOT/"D0_RAY_GRAPH_RECEIPT.json").write_text(json.dumps(receipt,indent=2)+"\n")
    print(json.dumps({k:v for k,v in receipt.items() if k not in ('files','completeness_scope')}))

if __name__=="__main__":main()
