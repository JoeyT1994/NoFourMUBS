#!/usr/bin/env python3
"""NUMERICAL batch survey of the replayable ZT weighted patch inequalities.

Matches zt_patch.Transfer.check, using exported midpoint normal forms only
for proposals. A passing survey row is not an interval certificate; the main
Arb verifier must reconstruct the model and replay the selected boxes.
"""
from __future__ import annotations
import argparse, collections, csv, gzip, itertools, json, time
from pathlib import Path
import numpy as np
from count_study import (ROOT,SIGNS,misses,children,geometry,original_map,array,
                         read_float,corner,affine_models,summary)


def signature_terms():
    pp=list(itertools.permutations(range(3)))
    signs=[(-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3)) for p in pp]
    coeff=collections.Counter()
    for a,b,d in itertools.product(range(6),repeat=3):
        nu=[-1]*9
        for p in (pp[a],pp[b],pp[d]):
            for i,j in enumerate(p):nu[3*i+j]+=1
        coeff[tuple(nu)]+=signs[b]*signs[d]
    coeff={nu:z for nu,z in coeff.items() if z}
    seen=set();nu=[];sg=[]
    for v in sorted(set(coeff)|{tuple(-x for x in v) for v in coeff}):
        if v in seen:continue
        neg=tuple(-x for x in v);seen.update((v,neg))
        z=coeff.get(v,0)-coeff.get(neg,0)
        if z:nu.append(v);sg.append(z)
    assert len(sg)==24 and all(abs(x)==1 for x in sg)
    return np.array(nu),np.array(sg)


NU,SIG=signature_terms()
PROJ=np.kron(np.eye(3)-np.ones((3,3))/3,np.eye(3)-np.ones((3,3))/3)


def side_selection(g,rows,cols,which):
    rc=[i for i in range(6) if i not in rows]
    cc=[i for i in range(6) if i not in cols]
    pairs=[(i,j) for i in rows for j in cc] if which=='h' else [(i,j) for j in cols for i in rc]
    if g in ('T','conjT'):pairs=[(j,i) for i,j in pairs]
    sign=-1 if g in ('conj','conjT') else 1
    S=np.zeros((9,36))
    S[np.arange(9),[6*i+j for i,j in pairs]]=sign
    return S,PROJ@S


class Models:
    def __init__(self,seed,seeds,model,refined_weights=None):
        self.seed=seed;self.model=model
        self.q0=model['Q0'];self.u=model['U']*model['r']
        self.h=model['H2']*model['r']**2;self.X=model['X'];self.tau=float(model['tau'])
        self.aa,self.bb,self.ids,self.linear=affine_models(seed,seeds)
        self.hh=np.zeros((len(self.ids),4,4,4));self.tail=np.zeros(len(self.ids))
        self.hnorm=np.zeros(len(self.ids));self.sides={}
        self.refined_groups=0
        lookup={w['group']:w for w in (refined_weights or {}).get('weights',[]) if w.get('status')=='CERTIFIED'}
        for k,idx in enumerate(self.ids):
            gr=seed['transfers'][idx]
            if self.linear[k]:continue
            tg=seeds[gr['target']];tr=read_float(tg['r'])
            Mi=np.linalg.inv(array(tg,'Mth',(4,4)))
            A=Mi@corner(gr['rows'],gr['cols'],gr['g'])/tr
            off=Mi@(2*np.pi*np.array(gr['wind'])-array(tg,'theta0',(4,)))/tr
            self.aa[k]=A@self.q0+off;self.bb[k]=A@self.u
            self.hh[k]=np.einsum('en,nij->eij',A,self.h)
            self.hnorm[k]=np.linalg.norm(self.hh[k].reshape(4,16),2)
            self.tail[k]=np.linalg.norm(A@self.X,2)*self.tau
            if int(idx) in lookup:
                weight=lookup[int(idx)]
                if weight['target']!=gr['target']:raise ValueError('refined weight target mismatch')
                normal=float(weight['bounds']['normal_value'])
                if not np.isfinite(normal) or normal<0:raise ValueError('invalid refined normal bound')
                # The stored Arb bound uses physical A=M_target^-1 Lg;
                # every target model in this survey is divided by r_target.
                self.tail[k]=normal/tr
                self.refined_groups+=1
            ss=[]
            for which,sg in [('h',tg['o']),('v',-tg['o'])]:
                S,R=side_selection(gr['g'],gr['rows'],gr['cols'],which)
                RH=np.einsum('en,nij->eij',R,self.h);RX=R@self.X
                ss.append(dict(S=S,R=R,sg=sg,RH=RH,RX=RX,RU=R@self.u,
                               hn=np.linalg.norm(RH.reshape(9,16),2),xn=np.linalg.norm(RX,2)))
            self.sides[k]=ss

    def target_bounds(self,boxes,sphere_aware=True,quadratic=True):
        c,h=geometry(boxes)
        offsets=h[:,None,None]*SIGNS[None,:,:]
        vv=c[:,None,:]+offsets
        radial=np.einsum('nvi,nvi->nv',vv,vv)-1
        bounds=np.full((len(boxes),len(self.ids)),np.inf)
        for lo in range(0,len(self.ids),16):
            inds=slice(lo,lo+16)
            Hc=np.einsum('geij,nj->ngei',self.hh[inds],c) if quadratic else 0
            B=self.bb[None,inds]+Hc
            a=self.aa[None,inds]+np.einsum('gei,ni->nge',self.bb[inds],c)
            if quadratic:a+=.5*np.einsum('ngei,ni->nge',Hc,c)
            vals=a[:,:,None,:]+np.einsum('ngei,nvi->ngve',B,offsets)
            f=np.einsum('ngvi,ngvi->ngv',vals,vals)
            major=f.max(2)
            if sphere_aware:
                lam=np.linalg.svd(B,compute_uv=False)[...,-1]**2*(1-1e-9)
                for frac in (.25,.5,.75,1):
                    major=np.minimum(major,(f-frac*lam[:,:,None]*radial[:,None,:]).max(2))
            eps=2*h[:,None]**2*self.hnorm[None,inds]+self.tail[None,inds] if quadratic else 0
            bounds[:,inds]=np.sqrt(np.maximum(major,0))+eps
        return bounds

    def orientation_bound(self,boxes,k):
        if self.linear[k]:return np.full(len(boxes),np.inf)
        c,h=geometry(boxes)
        qpc=self.q0[None,:]+c@self.u.T+.5*np.einsum('eij,ni,nj->ne',self.h,c,c)
        margins=[]
        for s in self.sides[k]:
            phase=qpc@s['S'].T@NU.T
            f=np.sin(phase)@SIG
            grad=(np.cos(phase)*SIG[None,:])@NU
            RD=s['RU'][None,:,:]+np.einsum('eij,nj->nei',s['RH'],c)
            eh=2*h*h*s['hn']+s['xn']*self.tau
            ed=np.linalg.svd(RD,compute_uv=False)[:,0]*2*h+eh
            gh=np.einsum('ne,eij->nij',grad,s['RH'])
            eg=np.linalg.svd(gh,compute_uv=False)[:,0]*2*h*h+np.linalg.norm(grad@s['RX'],axis=1)*self.tau
            gl=np.einsum('ne,nei->ni',grad,RD)
            lower=s['sg']*f-h*np.abs(gl).sum(1)-eg-36*ed*ed
            margins.append(lower)
        return np.minimum(*margins)

    def check(self,boxes,sphere_aware=True):
        bound=self.target_bounds(boxes,sphere_aware)
        feasible=bound<1-1e-8
        # Test orientations only on target-passing candidate/box pairs.
        rejected_orientation=np.zeros(len(boxes),bool)
        for k in range(len(self.ids)):
            eligible=np.nonzero(feasible[:,k])[0]
            if not len(eligible) or self.linear[k]:continue
            orient=self.orientation_bound([boxes[i] for i in eligible],k)
            bad=eligible[orient<=1e-8]
            feasible[bad,k]=False;rejected_orientation[bad]=True
        chosen=np.where(feasible,bound,np.inf).argmin(1)
        best=bound[np.arange(len(boxes)),chosen]
        ok=feasible[np.arange(len(boxes)),chosen]
        return ok,chosen,best,rejected_orientation


def benchmark(seed,seeds,model,sphere_aware=True,max_level=9,refined_weights=None):
    listed=original_map(seed);models=Models(seed,seeds,model,refined_weights)
    active=[(0,0,0,0,0)]
    counts=collections.Counter();selected=[];fallback=[];levels={};checked=0
    for m in range(max_level+1):
        if not active:break
        nextactive=[]
        for lo in range(0,len(active),512):
            chunk=active[lo:lo+512]
            ok,ki,best,ori=models.check(chunk,sphere_aware)
            for box,good,k,bb,orr in zip(chunk,ok,ki,best,ori):
                checked+=1
                if good:
                    counts['patch_pass']+=1
                    counts['exact_linear' if models.linear[k] else 'nonlinear']+=1
                    selected.append((int(models.ids[k]),list(box)))
                    levels[m]=levels.get(m,0)+1
                elif box in listed:
                    counts['original_fallback']+=1
                    if orr:counts['fallback_orientation']+=1
                    else:counts['fallback_target']+=1
                    gid=min(listed[box]);fallback.append((gid,list(box)))
                    if seed['transfers'][gid]['kind']=='T3':counts['fallback_T3']+=1
                    levels[m]=levels.get(m,0)+1
                elif m==max_level:
                    raise ValueError(f'uncovered fallback cell {box}')
                else:
                    nextactive.extend(ch for ch in children(box) if not misses(ch))
        active=nextactive
    counts['total']=counts['patch_pass']+counts['original_fallback'];counts['examined']=checked
    if refined_weights is not None:counts['refined_groups']=models.refined_groups
    return dict(counts),levels,selected,fallback


def grouped(seed,selected):
    groups=[]
    by=collections.defaultdict(list)
    for k,box in selected:by[k].append(box)
    for k,boxes in by.items():
        gr={k:v for k,v in seed['transfers'][k].items() if k!='boxes'}
        gr['boxes']=boxes;groups.append(gr)
    return groups


def run(args):
    with gzip.open(args.certificate,'rt') as f:cert=json.load(f)
    seeds=cert['seeds'];ids=[i for i,s in enumerate(seeds) if s['transfers']]
    if args.limit:ids=ids[:args.limit]
    if args.seeds:ids=[int(s) for s in args.seeds.split(',')]
    output=Path(args.output);output.mkdir(exist_ok=True,parents=True)
    rows=[];started=time.perf_counter()
    for j in ids:
        source=seeds[j];path=Path(args.models)/f'model_{j}.npz'
        row=dict(seed=j,original=sum(len(g['boxes']) for g in source['transfers']),
                 R_diagnostic=source.get('info',{}).get('R'),
                 frame_condition=float(np.linalg.cond(array(source,'Mth',(4,4)))),r=read_float(source['r']))
        if not path.exists():
            reason_path=Path(args.models)/f'model_{j}.json'
            reason=json.loads(reason_path.read_text()).get('failure','model unavailable') if reason_path.exists() else 'model unavailable'
            row.update(status='NO Z MODEL',total=row['original'],original_fallback=row['original'],
                       patch_pass=0,nonlinear=0,exact_linear=0,fallback_model_fail=row['original'],
                       fallback_T3=sum(len(g['boxes']) for g in source['transfers'] if g['kind']=='T3'),
                       model_failure=reason)
        else:
            model=dict(np.load(path))
            weights=None
            if args.weights:
                wp=Path(args.weights)/f'refined_weights_seed_{j}.json'
                waitstart=time.perf_counter()
                while not wp.exists() and args.wait_for_weights and time.perf_counter()-waitstart<args.wait_timeout:
                    time.sleep(2)
                if not wp.exists():raise FileNotFoundError(f'no refined weights for source {j}: {wp}')
                weights=json.loads(wp.read_text())
                if weights.get('seed')!=j:raise ValueError('refined weight source mismatch')
            counts,levels,selected,fallback=benchmark(source,seeds,model,not args.no_sphere,cert['max_level'],weights)
            row.update(counts);row.update(status='NUMERICAL',tau=float(model['tau']),Z2=float(model['Z2']))
            (output/f'seed_{j}_patches.json').write_text(json.dumps(grouped(source,selected),separators=(',',':'))+'\n')
            (output/f'seed_{j}_fallback.json').write_text(json.dumps(grouped(source,fallback),separators=(',',':'))+'\n')
            (output/f'seed_{j}_hybrid.json').write_text(json.dumps(grouped(source,selected+fallback),separators=(',',':'))+'\n')
        rows.append(row)
        print(json.dumps(row),flush=True)
    fields=list(dict.fromkeys(k for row in rows for k in row))
    with (output/'weighted_counts.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=fields);w.writeheader();w.writerows(rows)
    summ=dict(status='NUMERICAL proposed weighted-patch counts; original leaves remain fallbacks',
              target_tail_method='output-projected normal residual' if args.weights else '||A X|| tau',
              seed_count=len(rows),model_count=sum(r['status']=='NUMERICAL' for r in rows),
              seconds=time.perf_counter()-started,
              statistics={k:summary([r.get(k,0) for r in rows]) for k in
                          ('original','total','patch_pass','original_fallback','fallback_T3')})
    (output/'weighted_summary.json').write_text(json.dumps(summ,indent=2)+'\n')
    print(json.dumps(summ,indent=2),flush=True)


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--certificate',default=str(ROOT/'sample_certificate.json.gz'))
    p.add_argument('--output',default=str(Path(__file__).resolve().parent/'weighted_results'))
    p.add_argument('--models',default=str(Path(__file__).resolve().parents[1]/'results'))
    p.add_argument('--limit',type=int);p.add_argument('--seeds');p.add_argument('--no-sphere',action='store_true')
    p.add_argument('--weights',help='directory of certified refined_weights_seed_j.json files')
    p.add_argument('--wait-for-weights',action='store_true',help='wait for a concurrently produced weight file')
    p.add_argument('--wait-timeout',type=float,default=300)
    run(p.parse_args())
