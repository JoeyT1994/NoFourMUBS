"""NUMERICAL target-centred X-ball cap proposals for original T1 groups.

Each cap keeps its original group index. Floating search never certifies a
transfer or sphere coverage; the independent Arb/exact checker is mandatory.
The cached scalar dual search changes only proposal cost, not its witness.
"""
from __future__ import annotations
import argparse
from collections import Counter
import gc
import gzip
import json
import math
import multiprocessing as mp
from pathlib import Path
import time
import numpy as np
from scipy.optimize import minimize_scalar
import xball_fast as F
from xball_axis_heuristics import optimized_axis


class CachedTransfer(F.FastTransfer):
    def check_local_data(self,e,t,data):
        if getattr(self,'_dual_data',None) is not data:
            self._dual_data=data
            d,ff=data['d'],data['F']
            vals,vectors=np.linalg.eigh(ff.T@ff)
            bh=vectors.T@(ff.T@d);eh=vectors.T@e
            self._dual_cache=(tuple(map(float,vals)),tuple(map(float,bh)),tuple(map(float,eh)),
                              float(d@d),max(1.,float(vals[-1]),float(np.linalg.norm(ff.T@d))))
        vals,bh,eh,dnorm,scale=self._dual_cache
        top=vals[-1]
        def value(loggap,details=False):
            la=top+scale*math.exp(float(loggap))
            inv=[1./(la-z) for z in vals]
            mu=max(0.,2.*(t-sum(eh[i]*bh[i]*inv[i] for i in range(4)))/
                          sum(eh[i]*eh[i]*inv[i] for i in range(4)))
            ub=dnorm+la-mu*t+sum((bh[i]+.5*mu*eh[i])**2*inv[i] for i in range(4))
            return (ub,la,mu) if details else ub
        result=minimize_scalar(value,bounds=(-25.,12.),method='bounded',options={'xatol':1e-5})
        s,la,mu=min(value(result.x,True),value(-25.,True),value(12.,True))
        dsq=2*self.r*self.r*max(0.,1.-t)
        eps=.5*data['C_A']*dsq
        margin=1.-math.sqrt(max(0.,s))-eps
        orientation=[]
        if margin>-1e-8:
            for side in data['sides']:
                ed=side['RBn']*math.sqrt(dsq)+.5*side['C_R']*dsq
                lower=side['const']+F.B.C.linear_cap_min(side['l'],e,t)-.5*side['C_g']*dsq-36.*ed*ed
                orientation.append(float(lower))
        return dict(ok=margin>1e-8 and all(v>1e-8 for v in orientation),margin=margin,
                    orientation=orientation,s=s,lambda_=la,mu=mu,error=eps)


class GroupSearch(F.FastSearch):
    def transfer(self,gi):
        if gi not in self.transfers:self.transfers[gi]=CachedTransfer(self,gi)
        return self.transfers[gi]


_SEARCH=None
_OPTIMIZED_ONLY=False


def propose_group(gi):
    search=_SEARCH
    group=search.groups[gi]
    direction=np.asarray(group['_proposal_avg'],float)
    if np.linalg.norm(direction)<1e-12:
        direction=F.B.C.box_points(group['_proposal_sample_boxes'])[0]
    direction/=np.linalg.norm(direction)
    tr=search.transfer(gi)
    candidates=[];record=dict(group_index=gi,box_count=group['_proposal_box_count'])
    axes=[] if _OPTIMIZED_ONLY else [('mean',direction)]
    axes.append(('target_minimum',optimized_axis(search,gi,direction,max_angle=.65)))
    for label,axis in axes:
        try:cap=tr.cap(axis,mode='local_sphere')
        except (ArithmeticError,ValueError,np.linalg.LinAlgError):cap=None
        record[label]=None if cap is None else cap['info']['numerical_radius']
        if cap is not None:candidates.append((label,cap))
    best=None
    if candidates:
        label,best=max(candidates,key=lambda pair:pair[1]['info']['numerical_radius'])
        record['chosen']=label;record['radius']=best['info']['numerical_radius']
    return record,best


def summary(values):
    if not values:return None
    return dict(count=len(values),min=float(min(values)),max=float(max(values)),
                quantiles=dict(zip(['10','25','50','75','90'],
                                   map(float,np.quantile(values,[.1,.25,.5,.75,.9])))))


def run(input_path,output_path,pilot=False,limit=None,optimized_only=False,workers=1,merge=None,
        seed=None,checkpoint=200):
    global _SEARCH,_OPTIMIZED_ONLY
    start=time.perf_counter()
    with gzip.open(input_path,'rt') as fp:data=json.load(fp)
    search=GroupSearch(data)
    _SEARCH=search;_OPTIMIZED_ONLY=optimized_only
    init_seconds=time.perf_counter()-start
    order=sorted(range(len(search.groups)),key=lambda i:search.groups[i]['_proposal_box_count'],reverse=True)
    if pilot:
        ranks=list(range(10))+list(map(int,np.linspace(10,len(order)-1,40)))
        selected=[order[rank] for rank in ranks]
    else:selected=order[:limit] if limit else order
    requested_count=len(selected)
    caps=[];rows=[];previous_seconds=0.
    if seed:
        previous=json.loads(seed.read_text())
        caps=previous['caps'];rows=previous['info']['groups']
        previous_seconds=previous['info']['seconds']
        done={row['group_index'] for row in rows}
        if len(done)!=len(rows):raise ValueError('seed proposal has duplicate group rows')
        if not done.issubset(set(selected)):raise ValueError('seed group outside requested set')
        selected=[gi for gi in selected if gi not in done]
    resumed_from=len(rows)
    pool=None
    if workers>1:
        gc.collect();gc.freeze()
        pool=mp.get_context('fork').Pool(workers)
        iterator=pool.imap_unordered(propose_group,selected,chunksize=8)
    else:iterator=map(propose_group,selected)
    try:
        for record,best in iterator:
            if best is not None:caps.append(best)
            rows.append(record)
            count=len(rows)
            if count%checkpoint==0 or count==requested_count:
                out=dict(status='NUMERICAL',caps=caps,info=dict(pilot=pilot,optimized_only=optimized_only,
                    workers=workers,groups_tried=count,initialization_seconds=init_seconds,
                    resumed_from_groups=resumed_from,previous_seconds=previous_seconds,
                    seconds=time.perf_counter()-start,
                    radius_stats=summary([r['radius'] for r in rows if 'radius' in r]),
                    mean_stats=summary([r['mean'] for r in rows if r.get('mean') is not None]),
                    target_minimum_stats=summary([r['target_minimum'] for r in rows if r['target_minimum'] is not None]),
                    selected_modes=dict(Counter(r.get('chosen','failed') for r in rows)),groups=rows))
                if merge and merge.exists():
                    combined=json.loads(merge.read_text())['caps']+caps
                    unique={tuple(c['v'])+(c['h'],):c for c in combined}
                    out['info']['merged_hull']=F.B.hull_diagnostic(list(unique.values()))[0]
                    out['info']['merged_caps']=len(unique)
                output_path.parent.mkdir(parents=True,exist_ok=True)
                temp=output_path.with_suffix('.tmp');temp.write_text(json.dumps(out,separators=(',',':')));temp.replace(output_path)
                print(json.dumps({k:v for k,v in out['info'].items() if k!='groups'}),flush=True)
    finally:
        if pool:pool.close();pool.join()
    return out


if __name__=='__main__':
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--input',type=Path,default=F.B.ROOT/'data/xball_headers.json.gz')
    ap.add_argument('--out',type=Path,default=F.B.ROOT/'results/groups_caps_proposal.json')
    ap.add_argument('--pilot',action='store_true')
    ap.add_argument('--limit',type=int)
    ap.add_argument('--optimized-only',action='store_true')
    ap.add_argument('--workers',type=int,default=1)
    ap.add_argument('--merge',type=Path)
    ap.add_argument('--seed',type=Path)
    ap.add_argument('--checkpoint',type=int,default=200)
    a=ap.parse_args()
    run(a.input,a.out,a.pilot,a.limit,a.optimized_only,a.workers,a.merge,a.seed,a.checkpoint)
