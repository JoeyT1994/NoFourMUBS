"""Numerical spherical-cap proposals for the supplied ZC sample.

Every result emitted here is NUMERICAL until replayed by the independent Arb
checker and the exact cap-coverage checker.  Only seed transfer data are read;
no atlas or Stage C routine is called.
"""
from __future__ import annotations

import argparse
import csv
import gzip
import json
import math
from pathlib import Path
import sys
import time
import multiprocessing as mp
import gc
import pickle

import numpy as np
from scipy.optimize import minimize, minimize_scalar
from scipy.spatial import ConvexHull, QhullError

HERE = Path(__file__).resolve().parent
CONTEXT = next((p for p in (HERE/'vendor',HERE/'context',HERE.parent/'vendor',HERE.parent/'context',
                            HERE.parent/'ZC_cap_transfers'/'context')
                if (p/'patches.py').is_file()),HERE/'context')
sys.path.insert(0, str(CONTEXT))
import patches as P
import seedcert as SC
import wholeball as Z
from flint import arb


def arr(a):
    return Z.mid_np(a)


def sdual(d, F, e, t):
    """S-procedure upper bound for max ||d+Fx||², ||x||=1,e.x>=t.

    Floats propose multipliers only.  Returns bound, lambda, mu.  Scaling of
    d,F is by the target radius; e has numerical unit length.
    """
    G = F.T @ F
    b = F.T @ d
    vals, V = np.linalg.eigh(G)
    bh = V.T @ b
    eh = V.T @ e
    top = vals[-1]
    scale = max(1., top, np.linalg.norm(b))

    def value(loggap, details=False):
        la = top + scale * math.exp(float(loggap))
        inv = 1. / (la - vals)
        mu = max(0., 2. * (t - np.sum(eh * bh * inv)) / np.sum(eh * eh * inv))
        z = bh + .5 * mu * eh
        ub = float(d @ d + la - mu * t + np.sum(z*z*inv))
        return (ub, la, mu) if details else ub

    res = minimize_scalar(value, bounds=(-25., 12.), method="bounded",
                          options={"xatol": 1e-5})
    candidates = [value(res.x, True), value(-25., True), value(12., True)]
    return min(candidates)


def linear_cap_min(l, e, t):
    ll = float(l @ l)
    if ll <= 1e-30:
        return 0.
    le = float(l @ e)
    if -le >= t * math.sqrt(ll):
        return -math.sqrt(ll)
    return t * le - math.sqrt(max(0., 1.-t*t) * max(0., ll-le*le))


def tensor_at(H, c):
    return np.einsum("aij,j->ai", H, c)


class NumericTransfer:
    def __init__(self, model, target, group, gi):
        tr = P.Transfer(model, target, group)
        self.index = gi
        self.group = group
        self.tr = tr
        self.model = model
        self.linear = tr.linear
        self.weighted_target = False
        self.r = float(model['ball'].r)
        self.rt = float(target.r)
        self.a0 = arr(tr.a0).ravel()
        self.B0 = arr(tr.B0)
        self.tau = float(model['tau'].upper())
        self.sides = []
        if not self.linear:
            self.A=arr(tr.A)
            self.offset=arr(tr.offset).ravel()
            self.AH = arr(tr.AH).reshape(4, 4, 4)
            self.hn = float(tr.hnorm.upper())
            self.xn = float(tr.xnorm.upper())
            self.tauA = self.xn*self.tau
            self.curvA = self.hn+self.xn*float(model['Z2'].upper())
            self.Q0 = arr(model['Q0']).ravel()
            self.U = arr(model['U'])
            self.H2 = arr(model['H2']).reshape(36, 4, 4)
            for side in tr.sides:
                self.sides.append(dict(
                    S=arr(side['S']), R=arr(side['R']), sg=side['sg'],
                    RH=arr(side['RH']).reshape(9,4,4), RX=arr(side['RX']),
                    hn=float(side['hn'].upper()), xn=float(side['xn'].upper())))
        signs, freqs = [], []
        for sg, nu in Z.signature_terms()[1]:
            signs.append(sg); freqs.append(nu)
        self.signs = np.array(signs)
        self.freqs = np.array(freqs)

    def enable_weighting(self):
        if self.linear or self.weighted_target:return
        import weighted as WT
        bounds=WT.target_bounds(self.tr)
        self.tauA=float(bounds['T0'].upper())
        self.curvA=float(bounds['local_hessian'].upper())
        self.weighted_target=True

    def predictor(self, x):
        """Target predictor for an array of sphere points."""
        w = self.r*np.asarray(x)
        y = self.a0 + w@self.B0.T
        if not self.linear:
            y += .5*np.einsum('aij,...i,...j->...a', self.AH, w, w)
        return y / self.rt

    def check(self, e, t, orientations=True):
        c = self.r*t*e
        dsq = self.r*self.r*max(0.,1.-t*t)
        if self.linear:
            d = self.a0/self.rt
            F = self.r*self.B0/self.rt
            eps = 0.
        else:
            Hc = tensor_at(self.AH,c)
            d = (self.a0-.5*Hc@c)/self.rt
            F = self.r*(self.B0+Hc)/self.rt
            eps = (.5*self.hn*dsq+self.tauA)/self.rt
        s, la, mu = sdual(d,F,e,t)
        margin = 1.-math.sqrt(max(0.,s))-eps
        omargins = []
        if not self.linear and orientations and margin > -1e-8:
            Qc = self.Q0+self.U@c+.5*tensor_at(self.H2,c)@c
            Dc = self.U+tensor_at(self.H2,c)
            for side in self.sides:
                th = self.freqs@(side['S']@Qc)
                f = self.signs@np.sin(th)
                g = (self.signs*np.cos(th))@self.freqs
                RB = side['R']@Dc
                eg = .5*np.linalg.norm(np.einsum('a,aij->ij',g,side['RH']),2)*dsq
                eg += np.linalg.norm(g@side['RX'])*self.tau
                ed = np.linalg.norm(RB,2)*math.sqrt(dsq)+.5*side['hn']*dsq+side['xn']*self.tau
                l = side['sg']*self.r*(g@RB)
                const = side['sg']*(f-(g@RB)@c)
                low = const+linear_cap_min(l,e,t)-eg-36.*ed*ed
                omargins.append(float(low))
        ok = margin > 1e-8 and all(v>1e-8 for v in omargins)
        return dict(ok=ok, margin=margin, orientation=omargins, s=s, lambda_=la, mu=mu, error=eps)

    def local_data(self,v):
        """A fixed true-centre jet at r*v/||v||, computed once per normal."""
        key=tuple(int(x) for x in v)
        cache=self.model.setdefault('_numeric_local_jets',{})
        if key not in cache:
            den=arb(sum(int(x)*int(x) for x in v)).sqrt()
            c=P.col([self.model['r']*int(x)/den for x in v])
            Qc,Dc,eta=P.centre_jet(self.model,c)
            cache[key]=(arr(c).ravel(),arr(Qc).ravel(),arr(Dc))
        c,Qc,Dc=cache[key]
        B=self.A@Dc
        d=(self.A@Qc+self.offset-B@c)/self.rt
        F=self.r*B/self.rt
        z2=float(self.model['Z2'].upper())
        C_A=self.curvA/self.rt
        sides=[]
        for side in self.sides:
            th=self.freqs@(side['S']@Qc)
            f=self.signs@np.sin(th)
            g=(self.signs*np.cos(th))@self.freqs
            RB=side['R']@Dc
            C_R=side['hn']+side['xn']*z2
            C_g=np.linalg.norm(np.einsum('a,aij->ij',g,side['RH']),2)+np.linalg.norm(g@side['RX'])*z2
            l=side['sg']*self.r*(g@RB)
            const=side['sg']*(f-(g@RB)@c)
            sides.append(dict(C_R=C_R,C_g=C_g,l=l,const=const,RBn=np.linalg.norm(RB,2)))
        return dict(d=d,F=F,C_A=C_A,sides=sides)

    def check_local_data(self,e,t,data):
        dsq=2*self.r*self.r*max(0.,1.-t)
        eps=.5*data['C_A']*dsq
        s,la,mu=sdual(data['d'],data['F'],e,t)
        margin=1.-math.sqrt(max(0.,s))-eps
        omargins=[]
        if margin>-1e-8:
            for side in data['sides']:
                ed=side['RBn']*math.sqrt(dsq)+.5*side['C_R']*dsq
                lo=side['const']+linear_cap_min(side['l'],e,t)-.5*side['C_g']*dsq-36.*ed*ed
                omargins.append(float(lo))
        return dict(ok=margin>1e-8 and all(v>1e-8 for v in omargins),margin=margin,
                    orientation=omargins,s=s,lambda_=la,mu=mu,error=eps)

    def cap(self, direction, slack=3e-5, mode='polynomial'):
        direction = np.asarray(direction,dtype=float)
        direction /= np.linalg.norm(direction)
        v = np.rint(direction*2**30).astype(np.int64)
        vn = np.linalg.norm(v.astype(float))
        e = v/vn
        if self.linear:mode='polynomial'
        if mode=='local_sphere':
            data=self.local_data(v)
            checker=lambda t:self.check_local_data(e,t,data)
        else:
            checker=lambda t:self.check(e,t)
        if not checker(.999999)['ok']:
            return None
        lo,hi = 0.,.999999
        if checker(lo)['ok']:
            hi=0.
        else:
            for _ in range(14):
                mid=.5*(lo+hi)
                if checker(mid)['ok']: hi=mid
                else: lo=mid
        t=min(.999999,hi+slack)
        h=float(t*vn)
        t=h/vn
        out=checker(t)
        if not out['ok']:
            return None
        # Strict positive slack makes the PSD witness replayable by LDL.
        sval=out['s']+max(2e-10,abs(out['s'])*2e-10)
        return dict(group_index=self.index, mode=mode, weighted_target=self.weighted_target, v=[int(x) for x in v],
                    h=h.hex(), s=float(sval).hex(), lambda_=float(out['lambda_']).hex(),
                    mu=float(out['mu']).hex(), info=dict(
                        numerical_threshold=t, numerical_radius=math.acos(t),
                        numerical_target_margin=out['margin'],
                        numerical_orientation_margins=out['orientation']))


def box_points(boxes):
    b=np.asarray(boxes,dtype=float)
    p=-1.+(2*b[:,1:]+1.)/(2.**b[:,0,None])
    n=np.linalg.norm(p,axis=1)
    return p[n>0]/n[n>0,None]


def choose_directions(tr, points, extra=0):
    ans=[]
    avg=np.mean(points,axis=0)
    if np.linalg.norm(avg)>1e-8: ans.append(avg/np.linalg.norm(avg))
    score=np.sum(tr.predictor(points)**2,axis=1)
    order=np.argsort(score)
    ans.append(points[order[0]])
    # A constrained numerical minimizer proposes a geometrically centred cap.
    def f(v):
        y=tr.predictor(v)
        return float(y@y)
    res=minimize(f,ans[-1],method='SLSQP',constraints={'type':'eq','fun':lambda v:float(v@v-1.)},
                 options={'maxiter':80,'ftol':1e-11})
    if res.success and np.linalg.norm(res.x)>0: ans.append(res.x/np.linalg.norm(res.x))
    if extra:
        centres=[points[order[0]]]
        for _ in range(extra):
            dist=np.min(np.sum((points[:,None,:]-np.array(centres)[None,:,:])**2,axis=2),axis=1)
            centres.append(points[np.argmax(dist)])
        ans+=centres[1:]
    return ans


def sphere_sample(n,seed=151):
    rng=np.random.default_rng(seed)
    a=rng.normal(size=(n,4))
    return a/np.linalg.norm(a,axis=1)[:,None]


def cap_arrays(caps):
    v=np.asarray([c['v'] for c in caps],float)
    norm=np.linalg.norm(v,axis=1)
    e=v/norm[:,None]
    h=np.asarray([float.fromhex(c['h']) for c in caps])
    return e,h/norm


def uncovered(caps, points):
    if not caps:return np.ones(len(points),bool)
    e,t=cap_arrays(caps)
    return np.max(points@e.T-t[None,:],axis=1)<0.


def hull_diagnostic(caps):
    """Numerical only; the independent integer hull checker supplies proof."""
    if len(caps)<5:
        return dict(covers=False,reason='too_few_caps',minimum_distance=-1.)
    v=np.asarray([c['v'] for c in caps],float)
    h=np.asarray([float.fromhex(c['h']) for c in caps])
    if np.any(h<=0):
        return dict(covers=False,reason='nonpositive_threshold',minimum_distance=-1.)
    try:
        hull=ConvexHull(v/h[:,None])
        eq=hull.equations
        ns=np.linalg.norm(eq[:,:-1],axis=1)
        radii=-eq[:,-1]/ns
        k=int(np.argmin(radii))
        return dict(covers=bool(radii[k]>1.),minimum_distance=float(radii[k]),
                    facets=len(eq),vertices=len(hull.vertices),
                    worst_direction=(eq[k,:-1]/ns[k]).tolist())
    except QhullError as ex:
        return dict(covers=False,reason='qhull_failure',minimum_distance=-1.)


def bad_hull_directions(caps,max_points=256):
    v=np.asarray([c['v'] for c in caps],float)
    h=np.asarray([float.fromhex(c['h']) for c in caps])
    hull=ConvexHull(v/h[:,None])
    eq=hull.equations
    ns=np.linalg.norm(eq[:,:-1],axis=1)
    radii=-eq[:,-1]/ns
    ix=np.argsort(radii)
    ix=ix[radii[ix]<1.0005][:max_points]
    return eq[ix,:-1]/ns[ix,None]


def prune_caps(caps,minimum_distance=1.0000001):
    """Greedily delete redundant caps; numerical proposals are replayed later."""
    keep=list(enumerate(caps))
    order=sorted(keep,key=lambda pair:pair[1]['info']['numerical_radius'])
    for key,_ in order:
        cand=[pair for pair in keep if pair[0]!=key]
        if hull_diagnostic([c for _,c in cand])['minimum_distance']>minimum_distance:
            keep=cand
    return [c for _,c in keep]


def augment_source(data,seed,path,max_add=150,weighted=False):
    """Add caps at numerical uncovered dual facets, then independently replay."""
    start=time.perf_counter()
    old=json.loads(path.read_text())
    if old.get('status')!='NUMERICAL':return old
    caps=old['caps']
    initial_count=len(caps)
    if hull_diagnostic(caps)['covers']:return old
    ball=SC.Ball(data['seeds'][seed])
    model=P.normal_form(ball)
    groups=data['seeds'][seed]['transfers']
    trs={gi:NumericTransfer(model,SC.Ball(data['seeds'][g['target']]),g,gi)
         for gi,g in enumerate(groups) if g['kind'] in ('T0','T1')}
    if weighted:
        enlarged=[]
        for cap in caps:
            tr=trs[cap['group_index']]
            if cap.get('weighted_target',False) or tr.linear:
                enlarged.append(cap)
                continue
            tr.enable_weighting()
            proposal=tr.cap(np.asarray(cap['v'],float),mode=cap.get('mode','polynomial'))
            enlarged.append(proposal if proposal is not None else cap)
        caps=enlarged
        represented={cap['group_index'] for cap in caps}
        for gi,tr in trs.items():
            if gi in represented:continue
            tr.enable_weighting()
            bp=box_points(groups[gi]['boxes'])
            if not len(bp):continue
            directions=choose_directions(tr,bp)
            proposal=tr.cap(directions[-1])
            if proposal is None and not tr.linear:
                proposal=tr.cap(directions[-1],mode='local_sphere')
            if proposal is not None:caps.append(proposal)
    bases={}
    for cap in caps:
        v=np.array(cap['v'],float)
        bases.setdefault(cap['group_index'],[]).append(v/np.linalg.norm(v))
    reason='addition_budget'
    for step in range(max_add):
        hull=hull_diagnostic(caps)
        if hull['minimum_distance']>1.000001:
            reason='covered';break
        bad=bad_hull_directions(caps)
        if not len(bad):reason='covered';break
        witness=bad[0]
        scores=sorted((float(np.sum(tr.predictor(witness)**2)),gi) for gi,tr in trs.items())
        cands=[]
        considered=0
        for _,gi in scores:
            tr=trs[gi]
            if weighted:tr.enable_weighting()
            poly_ok=tr.check(witness,.99999)['ok']
            mode='polynomial' if poly_ok else 'local_sphere'
            before=len(cands)
            first=tr.cap(witness,mode=mode)
            if first is None:continue
            dirs=[]
            nearby=sorted(bases.get(gi,[]),key=lambda base:-float(base@witness))[:1]
            for base in nearby:
                dirs += [(1-a)*base+a*witness for a in (.25,.5,.75)]
            proposals=[first]+[tr.cap(direction,mode=mode) for direction in dirs]
            for cap in proposals:
                if cap is None:continue
                ce,ct=cap_arrays([cap]);e,t=ce[0],ct[0]
                if e@witness<t+1e-5:continue
                gain=int(np.sum(bad@e>=t))
                cands.append((gain,cap['info']['numerical_radius'],cap))
            if mode=='polynomial' and not tr.linear:
                cap=tr.cap(witness,mode='local_sphere')
                if cap is not None:
                    ce,ct=cap_arrays([cap]);e,t=ce[0],ct[0]
                    if e@witness>=t+1e-5:
                        gain=int(np.sum(bad@e>=t))
                        cands.append((gain,cap['info']['numerical_radius'],cap))
            if len(cands)>before:considered+=1
            if considered>=4:break
        if not cands:
            reason='polynomial_remainder_stalled';break
        best=max(cands,key=lambda item:(item[0],item[1]))[2]
        caps.append(best)
        vnew=np.asarray(best['v'],float)
        bases.setdefault(best['group_index'],[]).append(vnew/np.linalg.norm(vnew))
        if step%10==9:
            old['caps']=caps
            old['info']['cap_count']=len(caps)
            old['info']['numerical_hull']=hull_diagnostic(caps)
            old['info']['augmentation']=dict(initial_count=initial_count,reason='in_progress',seconds=time.perf_counter()-start)
            tmp=path.with_suffix('.tmp')
            tmp.write_text(json.dumps(old,indent=2));tmp.replace(path)
        if step%10==0:
            print(json.dumps(dict(seed=seed,augment_step=step,caps=len(caps),minimum_distance=hull['minimum_distance'])),file=sys.stderr,flush=True)
    hull=hull_diagnostic(caps)
    if hull['covers']:
        caps=prune_caps(caps)
        hull=hull_diagnostic(caps)
    old['caps']=caps
    old['info']['cap_count']=len(caps)
    old['info']['numerical_hull']=hull
    old['info']['augmentation']=dict(initial_count=initial_count,reason=reason,seconds=time.perf_counter()-start)
    # Refresh sample diagnostic because caps may have changed.
    pts=sphere_sample(old['info']['sphere_sample_size'],151+seed)
    old['info']['sample_uncovered']=int(np.sum(uncovered(caps,pts)))
    tmp=path.with_suffix('.tmp')
    tmp.write_text(json.dumps(old,indent=2));tmp.replace(path)
    return old


def build_source(data, seed, output, extra=0, samples=16000, model=None):
    started=time.perf_counter()
    sd=data['seeds'][seed]
    ball=SC.Ball(sd)
    if model is None: model=P.normal_form(ball)
    caps=[]; trs=[]; groups=sd['transfers']
    pts=sphere_sample(samples,151+seed)
    failures=[]
    order=sorted(range(len(groups)),key=lambda gi:-float(np.sum(8.**(-np.asarray(groups[gi]['boxes'])[:,0]))))
    visited=0
    for gi in order:
        g=groups[gi]
        if g['kind'] not in ('T0','T1'):
            failures.append(dict(group=gi,reason='unsupported_kind'));continue
        tr=NumericTransfer(model,SC.Ball(data['seeds'][g['target']]),g,gi)
        trs.append(tr)
        bp=box_points(g['boxes'])
        dirs=choose_directions(tr,bp,extra)
        # The target-norm minimizer is usually the best first proposal; exact
        # replay, not this heuristic, determines correctness.
        candidates=[tr.cap(dirs[-1])]
        if candidates[0] is None:
            candidates=[tr.cap(e) for e in dirs[:-1]]
        candidates=[c for c in candidates if c is not None]
        if not candidates:
            failures.append(dict(group=gi,reason='no_cap'));continue
        # Initial one-cap proposal per recorded transfer.
        best=min(candidates,key=lambda c:c['info']['numerical_threshold'])
        caps.append(best)
        visited+=1
        if len(caps)>=8 and hull_diagnostic(caps)['minimum_distance']>1.001:
            break
    initial_count=len(caps)
    hull=hull_diagnostic(caps)
    if hull['covers']:
        caps=prune_caps(caps)
        hull=hull_diagnostic(caps)
    miss=uncovered(caps,pts)
    out=dict(format='zc-caps-v1',status='NUMERICAL',seed=seed,caps=caps,
             info=dict(original_boxes=sum(len(g['boxes']) for g in groups),
                       descriptors=len(groups),cap_count=len(caps),
                       initial_cap_count=initial_count,numerical_hull=hull,
                       visited_descriptors=visited,
                       sphere_sample_size=samples,sample_uncovered=int(np.sum(miss)),
                       failed_groups=failures,normal_form=model['summary'],
                       seconds=time.perf_counter()-started))
    output.parent.mkdir(parents=True,exist_ok=True)
    output.write_text(json.dumps(out,indent=2))
    return out,trs,pts[miss],model


_POOL_DATA=None
_POOL_ARGS=None

def pool_one(seed):
    args=_POOL_ARGS
    try:
        path=args.out/f'seed_{seed}.json'
        if args.augment:
            out=augment_source(_POOL_DATA,seed,path,args.max_add,args.weighted)
        else:
            out,*_=build_source(_POOL_DATA,seed,path,args.extra,args.samples)
        if out.get('status')!='NUMERICAL':return out
        return dict(seed=seed,status='NUMERICAL',**out['info'])
    except Exception as ex:
        if args.augment and (args.out/f'seed_{seed}.json').exists():
            return dict(seed=seed,status='AUGMENTATION FAILED',reason=str(ex))
        out=dict(format='zc-caps-v1',seed=seed,status='NOT ESTABLISHED',reason=str(ex),caps=[])
        args.out.mkdir(parents=True,exist_ok=True)
        (args.out/f'seed_{seed}.json').write_text(json.dumps(out,indent=2))
        return out


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--input',type=Path,default=CONTEXT/'sample_certificate.json.gz')
    ap.add_argument('--seeds',default='6')
    ap.add_argument('--out',type=Path,default=HERE/'proposals')
    ap.add_argument('--extra',type=int,default=0)
    ap.add_argument('--samples',type=int,default=16000)
    ap.add_argument('--workers',type=int,default=1)
    ap.add_argument('--augment',action='store_true')
    ap.add_argument('--weighted',action='store_true')
    ap.add_argument('--max-add',type=int,default=150)
    ap.add_argument('--resume',action='store_true')
    args=ap.parse_args()
    if args.input.suffix=='.pkl':
        # Only use this optional cache for a local file created by this script.
        with args.input.open('rb') as f:data=pickle.load(f)
    else:
        data=json.load(gzip.open(args.input,'rt'))
        data['edge']=[]
        for seed in data['seeds']:
            for g in seed['transfers']:
                g['boxes']=np.asarray(g['boxes'],dtype=np.int32)
    gc.collect()
    gc.freeze()
    seeds=[i for i,s in enumerate(data['seeds']) if s.get('transfers')] if args.seeds=='all' else [int(x) for x in args.seeds.split(',')]
    if args.resume and not args.augment:
        seeds=[i for i in seeds if not (args.out/f'seed_{i}.json').exists()]
    global _POOL_DATA,_POOL_ARGS
    _POOL_DATA,_POOL_ARGS=data,args
    if args.workers>1:
        with mp.get_context('fork').Pool(args.workers) as pool:
            for result in pool.imap_unordered(pool_one,seeds):
                print(json.dumps(result),flush=True)
    else:
        for seed in seeds:
            print(json.dumps(pool_one(seed)),flush=True)


if __name__=='__main__':main()
