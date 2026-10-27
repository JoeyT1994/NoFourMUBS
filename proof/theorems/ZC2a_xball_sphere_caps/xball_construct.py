"""NUMERICAL proposals for ZC2a; only independent interval/exact replay accepts.

The source is the supplied X-ball and all target indices refer to its original
ordered T1 descriptors. No target charts, atlas records, or radii are changed.
"""
from __future__ import annotations
import argparse
import gzip
import json
import math
from pathlib import Path
import sys
import time

import numpy as np
from scipy.spatial import ConvexHull

ROOT = Path(__file__).resolve().parent
for directory in (ROOT/'atlas', ROOT/'cert', ROOT/'ZC'):
    sys.path.insert(0, str(directory))
import construction as C
import edge_wholeball as EW
import patches as P
import seedcert as SC
import wholeball as W
from flint import arb


def scalar(x):
    return float.fromhex(x) if isinstance(x, str) else float(x)


class EdgeNumericTransfer(C.NumericTransfer):
    """ZC's proposal interface, with the edge model's rigorous error constants."""
    def enable_weighting(self):
        if self.weighted_target:
            return
        bounds=EW.weighted_hessian(self.model,self.model['ball'].r,self.tr.A)
        self.tr.weighted=bounds
        self.tauA=bounds['weighted_tau']
        self.curvA=bounds['weighted_Hessian']
        self.weighted_target=True

    def local_data(self,v):
        key=tuple(int(x) for x in v)
        cache=self.model.setdefault('_numeric_edge_local_jets',{})
        if key not in cache:
            den=arb(sum(int(x)*int(x) for x in v)).sqrt()
            c=P.col([self.model['r']*int(x)/den for x in v])
            qc,dc,_=EW.edge_centre_jet(self.model,c)
            cache[key]=(C.arr(c).ravel(),C.arr(qc).ravel(),C.arr(dc))
        c,qc,dc=cache[key]
        bb=self.A@dc
        d=(self.A@qc+self.offset-bb@c)/self.rt
        ff=self.r*bb/self.rt
        z2=float(self.model['Z2'].upper())
        sides=[]
        for side in self.sides:
            th=self.freqs@(side['S']@qc)
            f=self.signs@np.sin(th)
            gradient=(self.signs*np.cos(th))@self.freqs
            rb=side['R']@dc
            cr=side['hn']+side['xn']*z2
            cg=np.linalg.norm(np.einsum('a,aij->ij',gradient,side['RH']),2)+np.linalg.norm(gradient@side['RX'])*z2
            linear=side['sg']*self.r*(gradient@rb)
            const=side['sg']*(f-(gradient@rb)@c)
            sides.append(dict(C_R=cr,C_g=cg,l=linear,const=const,RBn=np.linalg.norm(rb,2)))
        return dict(d=d,F=ff,C_A=self.curvA/self.rt,sides=sides)

    def cap(self,direction,slack=3e-5,mode='polynomial'):
        direction=np.asarray(direction,float)
        direction=direction/np.linalg.norm(direction)
        v=np.rint(direction*2**26).astype(np.int64)
        vn=np.linalg.norm(v.astype(float)); e=v/vn
        if mode=='local_sphere':
            data=self.local_data(v)
            checker=lambda t:self.check_local_data(e,t,data)
        else:
            checker=lambda t:self.check(e,t)
        if not checker(.99999999)['ok']:
            return None
        lo,hi=0.,.99999999
        for _ in range(17):
            mid=(lo+hi)/2
            if checker(mid)['ok']:hi=mid
            else:lo=mid
        h=math.ceil(min(.99999999,hi+slack)*vn)
        t=h/vn
        if not 0<t<1:return None
        out=checker(t)
        if not out['ok']:return None
        sval=out['s']+max(5e-10,abs(out['s'])*5e-10)
        return dict(group_index=self.index,mode=mode,weighted_target=self.weighted_target,
                    v=[int(x) for x in v],h=h,s=float(sval).hex(),
                    lambda_=float(out['lambda_']).hex(),mu=float(out['mu']).hex(),
                    info=dict(numerical_threshold=t,numerical_radius=math.acos(t),
                              numerical_target_margin=out['margin'],
                              numerical_orientation_margins=out['orientation']))


def hull_diagnostic(caps, bad_count=64):
    if len(caps)<5:return dict(covers=False,minimum_distance=-1,facets=0),np.eye(4)
    v=np.array([c['v'] for c in caps],float)
    h=np.array([scalar(c['h']) for c in caps])
    try:hull=ConvexHull(v/h[:,None])
    except Exception as ex:return dict(covers=False,minimum_distance=-1,facets=0,reason=str(ex)),np.eye(4)
    normals=hull.equations[:,:4]
    ns=np.linalg.norm(normals,axis=1)
    radii=-hull.equations[:,4]/ns
    ix=np.argsort(radii)
    bad=ix[radii[ix]<1.00002][:bad_count]
    return dict(covers=bool(radii[ix[0]]>1),minimum_distance=float(radii[ix[0]]),
                facets=len(ix),vertices=len(hull.vertices)),normals[bad]/ns[bad,None]


class Search:
    def __init__(self,data):
        st=time.perf_counter()
        self.data=data;self.edge=data['edge'][0];self.groups=self.edge['transfers']
        self.model=EW.edge_model(self.edge)
        self.targets={}
        self.transfers={}
        self.q0=C.arr(self.model['Q0']).ravel()
        self.u=C.arr(self.model['U'])
        self.h2=C.arr(self.model['H2']).reshape(36,4,4)
        self.r=scalar(self.edge['r'])
        geom={}; inv={}; q0=[]; lin=[]; quad=[]
        for gi,g in enumerate(self.groups):
            target=g['target']
            if target not in inv:
                t=data['seed_headers'][target]
                inv[target]=(np.linalg.inv(np.array([scalar(x) for x in t['Mth']]).reshape(4,4)),
                             np.array([scalar(x) for x in t['theta0']]),scalar(t['r']))
            mi,theta,rt=inv[target]
            key=(tuple(g['rows']),tuple(g['cols']),g['g'])
            if key not in geom:geom[key]=SC.corner_L(g['rows'],g['cols'])@SC.g_matrix(g['g'])
            aa=mi@geom[key]
            q0.append((aa@self.q0+mi@(2*np.pi*np.array(g['wind'])-theta))/rt)
            lin.append(self.r*aa@self.u/rt)
            quad.append(.5*self.r*self.r*np.einsum('ab,bij->aij',aa,self.h2)/rt)
        self.a=np.asarray(q0); self.b=np.asarray(lin);self.h=np.asarray(quad)
        print(json.dumps(dict(event='ready',groups=len(self.groups),seconds=time.perf_counter()-st,
                              source=self.model['summary'])),flush=True)

    def transfer(self,gi):
        if gi not in self.transfers:
            g=self.groups[gi];ti=g['target']
            if ti not in self.targets:self.targets[ti]=SC.Ball(self.data['seed_headers'][ti])
            tr=EdgeNumericTransfer(self.model,self.targets[ti],g,gi)
            tr.enable_weighting()
            self.transfers[gi]=tr
        return self.transfers[gi]

    def scores(self,direction):
        y=self.a+np.einsum('gij,j->gi',self.b,direction)+np.einsum('gijk,j,k->gi',self.h,direction,direction)
        return np.sum(y*y,axis=1)

    def best_cap(self,direction,top=30,try_local=False):
        scores=self.scores(direction)
        ix=np.argsort(scores)[:top]
        choices=[];tries=[]
        for gi in ix:
            tr=self.transfer(int(gi))
            cap=tr.cap(direction)
            if cap is not None:
                choices.append(cap)
            if try_local:
                local_cap=tr.cap(direction,mode='local_sphere')
                if local_cap is not None:
                    choices.append(local_cap)
                    if cap is None or local_cap['info']['numerical_radius']>cap['info']['numerical_radius']:
                        cap=local_cap
            tries.append((int(gi),float(scores[gi]),None if cap is None else cap['info']['numerical_radius']))
            if len(choices)>=6:break
        if not choices:return None,tries
        return max(choices,key=lambda c:c['info']['numerical_radius']),tries


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--input',type=Path,default=ROOT/'data/xball_headers.json.gz')
    ap.add_argument('--out',type=Path,default=ROOT/'results/xball_caps_proposal.json')
    ap.add_argument('--pilot',action='store_true')
    ap.add_argument('--max-caps',type=int,default=5000)
    ap.add_argument('--resume',action='store_true')
    ap.add_argument('--top',type=int,default=24)
    args=ap.parse_args()
    st=time.perf_counter();search=Search(json.load(gzip.open(args.input,'rt')))
    caps=[];failures=[]
    if args.resume and args.out.exists():caps=json.loads(args.out.read_text())['caps']
    if args.pilot:
        order=sorted(range(len(search.groups)),key=lambda i:-sum(n*8**(-int(k)) for k,n in search.groups[i]['_proposal_box_levels'].items()))
        for gi in order[:5]:
            tr=search.transfer(gi)
            points=C.box_points(search.groups[gi]['_proposal_sample_boxes'])
            dirs=C.choose_directions(tr,points)
            for direction in dirs:
                cap=tr.cap(direction)
                print(json.dumps(dict(gi=gi,tauA=tr.tauA,hn=tr.hn,cap=cap)),flush=True)
                if cap is not None:caps.append(cap);break
        out=dict(status='NUMERICAL',caps=caps,source=search.model['summary'])
        args.out.parent.mkdir(exist_ok=True,parents=True);args.out.write_text(json.dumps(out,indent=2))
        return
    starts=[sg*e for e in np.eye(4) for sg in [-1,1]]
    for direction in starts:
        if caps:
            ee=np.array([c['v'] for c in caps],float);hh=np.array([scalar(c['h']) for c in caps])
            if np.any(ee@direction>=hh):continue
        cap,tries=search.best_cap(direction,args.top,try_local=True)
        if cap is not None:caps.append(cap)
        else:failures.append(dict(direction=direction.tolist(),tries=tries))
    for step in range(len(caps),args.max_caps):
        hull,bad=hull_diagnostic(caps)
        if hull['minimum_distance']>1.000001:break
        if not len(bad):break
        cap,tries=search.best_cap(bad[0],args.top,try_local=True)
        if cap is None:
            failures.append(dict(direction=bad[0].tolist(),tries=tries));break
        caps.append(cap)
        if step%20==0:
            print(json.dumps(dict(event='progress',caps=len(caps),hull=hull,cached_transfers=len(search.transfers),seconds=time.perf_counter()-st)),flush=True)
            args.out.parent.mkdir(exist_ok=True,parents=True)
            args.out.write_text(json.dumps(dict(status='NUMERICAL',caps=caps,info=dict(hull=hull,failures=failures,seconds=time.perf_counter()-st)),indent=2))
    hull,_=hull_diagnostic(caps)
    out=dict(format='zc2a-edge-cap-proposals-v1',status='NUMERICAL',caps=caps,
             info=dict(hull=hull,failures=failures,source=search.model['summary'],
                       seconds=time.perf_counter()-st,original_boxes=sum(g['_proposal_box_count'] for g in search.groups)))
    args.out.parent.mkdir(exist_ok=True,parents=True);args.out.write_text(json.dumps(out,indent=2))
    print(json.dumps(dict(event='done',caps=len(caps),**out['info'])),flush=True)


if __name__=='__main__':main()
