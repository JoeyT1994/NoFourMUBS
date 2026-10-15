#!/usr/bin/env python3
"""Exact real-locus classification and local no-third certificates.
Depends on the 252-root certificates from certify.py. The conclusion is for
every exact UNITARY A in each coefficient box; unitarity is a hypothesis,
not inferred from the floating point midpoint.
"""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
from pathlib import Path
import numpy as np
import json,time,argparse,itertools
from certify import CI,RI,P,S,box
HERE=Path(__file__).resolve().parent

def run(idx):
    # Never treat a saved JSON verdict as a proof. Replay the root checker.
    from certify import run as replay_roots
    replay_roots(idx)
    data=np.load(HERE/f'certified_charts_{idx}.npz')
    summary=json.loads((HERE/f'certificate_{idx}.json').read_text())
    assert summary['passed'] and summary['passing_roots']==252
    x=data['x'];patch=data['patches'];r=1<<(P-int(data['r_exp']))
    X=[[box(z,0 if j==patch[i,0] else r) for j,z in enumerate(row)] for i,row in enumerate(x)]
    tor=[i for i in range(252) if np.max(abs(abs(x[i])-1))<1e-6]
    off=[i for i in range(252) if i not in tor]
    t=time.perf_counter()
    # A nonfixed point cannot be a torus ray: two squared coordinate moduli
    # differ on its entire root enclosure.
    for i in off:
        p=int(np.argmax(abs(x[i])));q=int(np.argmin(abs(x[i])))
        D=X[i][p].conj()*X[i][p]-X[i][q].conj()*X[i][q]
        assert D.excludes_zero(),f'FAIL off-torus witness {idx},{i}'
    print(f'PASS centre {idx}: {len(off)} roots uniformly off the torus',flush=True)
    # Reciprocal-conjugation sends every root of the unitary specialization
    # to another root. For each proposed fixed ray, exclude all other boxes
    # as its reciprocal-conjugate image by exact cross-coordinate witnesses.
    count=0
    for i in tor:
        for j in range(252):
            if i==j:continue
            vals=x[j]*np.conj(x[i]);D=vals[:,None]-vals[None,:]
            p,q=np.unravel_index(np.argmax(abs(D)),D.shape)
            d=X[j][p]*X[i][p].conj()-X[j][q]*X[i][q].conj()
            assert d.excludes_zero(),f'FAIL fixed-root matching {idx},{i},{j}'
            count+=1
        print(f'PASS centre {idx}: root {i:03d} fixed by reciprocal conjugation for every unitary A in box',flush=True)
    assert len(tor)==48
    print(f'PASS centre {idx}: exactly 48 torus rays (using {count} involution-separation witnesses)',flush=True)
    # Orthogonality is projectively invariant, so chart normalization is harmless.
    potentially=[];minlb=None
    for i,j in itertools.combinations(tor,2):
        d=sum((a.conj()*b for a,b in zip(X[i],X[j])),CI())
        if not d.excludes_zero():potentially.append([i,j])
        else:
            lb=max(d.re.lo,-d.re.hi,d.im.lo,-d.im.hi,0)
            minlb=lb if minlb is None else min(minlb,lb)
    # Exact exhaustive clique search on the conservative O graph.
    index={v:k for k,v in enumerate(tor)};adj=[0]*len(tor)
    for i,j in potentially:
        a,b=index[i],index[j];adj[a]|=1<<b;adj[b]|=1<<a
    best=0
    def visit(size,candidates):
        nonlocal best
        if size+candidates.bit_count()<=best:return
        best=max(best,size)
        while candidates:
            bit=candidates&-candidates;candidates^=bit
            i=bit.bit_length()-1
            visit(size+1,candidates&adj[i])
    visit(0,(1<<len(tor))-1)
    assert best<6,f'FAIL no-six-clique test: clique number {best}'
    print(f'PASS centre {idx}: {len(potentially)} possible orthogonality edges, clique number {best}; no third MUB throughout unitary slice',flush=True)
    out={'centre':idx,'hypothesis':'A is exactly unitary and lies in the coefficient box of certificate_<idx>.json','torus_count':48,'off_torus_count':204,'torus_indices':tor,'involution_separation_witnesses':count,'orthogonality_witnesses':1128-len(potentially),'possible_orthogonality_edges':potentially,'clique_number':best,'orthogonality_component_lower_bound_chart_scaling':minlb/S,'seconds':time.perf_counter()-t,'status':'CERTIFIED conditional on the proved 252-root certificate and exact unitarity'}
    assert len(off)==204
    (HERE/f'torus_{idx}.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2),flush=True)
    return out

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--centres',type=int,nargs='+',default=[100,2471,5305]);a=p.parse_args()
    for i in a.centres:run(i)
