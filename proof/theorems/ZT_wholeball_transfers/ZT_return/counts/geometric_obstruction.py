#!/usr/bin/env python3
"""Propose exact spherical witness points excluding recorded transfer labels.

Each witness is r*v/sqrt(sum(v_i^2)) with integral v. For every candidate
descriptor, the global Z normal form gives
 ||A Q(w)+off|| >= ||A Qp(w)+off|| - ||A X|| tau.
This script proposes witnesses in binary64; root Arb replay is required.
"""
import argparse,gzip,itertools,json
from pathlib import Path
import numpy as np
from count_study import ROOT,children,misses,geometry,read_float
from weighted_study import Models


def inside_exact(v,box):
    """Compare signs and squared integers, avoiding numerical sphere tests."""
    m,*idx=box;n2=sum(int(x)**2 for x in v);d=1<<m
    if n2==0:return False
    def lower_ge(x,l):
        # x / sqrt(n2) >= l/d.
        if x>=0 and l<=0:return True
        if x<0 and l>=0:return False
        a=x*x*d*d;b=l*l*n2
        return a>=b if x>=0 else a<=b
    for x,i in zip(map(int,v),idx):
        lo=-d+2*i;hi=lo+2
        if not lower_ge(x,lo) or not lower_ge(-x,-hi):return False
    return True


def candidate_points(box,subdiv=4):
    m,*idx=box;den=1<<m
    lo=[(-den+2*i)*subdiv for i in idx]
    # All Cartesian grid points, then radial projection. An exact integer
    # test retains only those projections lying in the requested closed box.
    vectors=[]
    for off in itertools.product(range(2*subdiv+1),repeat=4):
        v=tuple(l+x for l,x in zip(lo,off))
        if inside_exact(v,box):vectors.append(v)
    if not vectors:return np.empty((0,4),int)
    # Normalize integral primitive vectors to avoid duplicated directions.
    out=set()
    from math import gcd
    from functools import reduce
    for v in vectors:
        d=reduce(gcd,map(abs,v));out.add(tuple(x//d for x in v))
    return np.array(sorted(out),int)


def exclude(models,box,subdiv=2):
    vv=candidate_points(box,subdiv)
    if not len(vv):return dict(box=list(box),excluded=False,reason='no sample points')
    u=vv/np.linalg.norm(vv,axis=1)[:,None]
    out=models.aa[None,:,:]+np.einsum('gei,ni->nge',models.bb,u)
    out+=.5*np.einsum('geij,ni,nj->nge',models.hh,u,u)
    lower=np.linalg.norm(out,axis=2)-models.tail[None,:]
    best=lower.argmax(0);vals=lower[best,np.arange(len(models.ids))]
    if not np.all(vals>1+1e-7):
        return dict(box=list(box),excluded=False,uncleared_candidates=[int(models.ids[k]) for k in np.nonzero(vals<=1+1e-7)[0]],
                    sampled_points=len(vv),minimum_of_candidate_maxima=float(vals.min()))
    witnesses=[dict(group=int(g),integer_vector=vv[b].tolist(),normalized_target_lower=float(v),margin=float(v-1))
               for g,b,v in zip(models.ids,best,vals)]
    return dict(box=list(box),excluded=True,witnesses=witnesses,
                sampled_points=len(vv),minimum_margin=float(vals.min()-1))


def main(args):
    with gzip.open(args.certificate,'rt') as f:d=json.load(f)
    seed=d['seeds'][args.seed];models=Models(seed,d['seeds'],dict(np.load(args.model)))
    if any(g['kind'] not in ('T0','T1') for g in seed['transfers']):
        raise ValueError('all-descriptor exclusion requires no T3 in this source')
    records=[];levels={};active=[(0,0,0,0,0)]
    for m in range(args.max_level+1):
        nextactive=[];counts={'tested':0,'excluded':0,'unresolved':0}
        for box in active:
            res=exclude(models,box,args.subdiv)
            if not res['excluded'] and args.retry_subdiv>args.subdiv:
                res=exclude(models,box,args.retry_subdiv)
            records.append(res);counts['tested']+=1
            if res['excluded']:
                counts['excluded']+=1
                nextactive.extend(ch for ch in children(box) if not misses(ch))
            else:counts['unresolved']+=1
        levels[m]=counts
        print(m,counts,flush=True)
        active=nextactive
    output=dict(status='NUMERICAL geometric-obstruction proposals; exact integer witness membership',
                seed=args.seed,candidate_count=len(models.ids),max_level=args.max_level,
                levels=levels,boxes=records)
    Path(args.output).write_text(json.dumps(output,separators=(',',':'))+'\n')


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--certificate',default=str(ROOT/'sample_certificate.json.gz'))
    p.add_argument('--seed',type=int,default=6)
    p.add_argument('--model',default=str(Path(__file__).resolve().parents[1]/'results/model_6.npz'))
    p.add_argument('--output',default=str(Path(__file__).resolve().parent/'seed6_geometric_obstruction.json'))
    p.add_argument('--max-level',type=int,default=2);p.add_argument('--subdiv',type=int,default=2)
    p.add_argument('--retry-subdiv',type=int,default=3)
    main(p.parse_args())
