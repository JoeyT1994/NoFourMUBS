"""Fast floating-only X-ball cap proposals. Independent Arb replay is mandatory."""
from __future__ import annotations
import gzip,json,math,time,argparse,multiprocessing as mp,gc
from pathlib import Path
import numpy as np
from scipy.spatial import ConvexHull
import xball_construct as B
import xball_axis_heuristics as AXIS


class NumericSource:
    def __init__(self,model):
        self.model=model
        self.u=B.C.arr(model['U']);self.x=B.C.arr(model['X'])
        self.h=B.C.arr(model['H2']).reshape(36,4,4)
        self.q0=B.C.arr(model['Q0']).ravel()
        self.s=B.C.arr(model['s']);self.t=B.C.arr(model['t']).reshape(-1,4,4)
        self.dx=B.C.arr(model['dx'])
        self.k=np.array([[complex(z) for z in row] for row in model['K']])
        self.yt=B.C.arr(model['Y']*model['Rhs'])
        self.cache={}

    def jet(self,v):
        key=tuple(int(x) for x in v)
        if key not in self.cache:
            e=np.array(v,float);e/=np.linalg.norm(e)
            c=float(self.model['r'])*e
            z=np.zeros(22)
            ph=self.s@c+.5*np.einsum('aij,i,j->a',self.t,c,c)
            for _ in range(6):
                ke=self.k*np.exp(1j*(ph+self.dx@z))[None,:]
                residual=ke.real.sum(axis=1)-self.yt@c
                jz=-ke.imag@self.dx
                dz=np.linalg.solve(jz,residual)
                z-=dz
                if np.linalg.norm(dz)<1e-14:break
            ke=self.k*np.exp(1j*(ph+self.dx@z))[None,:]
            jz=-ke.imag@self.dx
            dz=np.linalg.solve(jz,self.yt+ke.imag@(self.s+np.einsum('aij,j->ai',self.t,c)))
            hc=np.einsum('aij,j->ai',self.h,c)
            self.cache[key]=(c,self.q0+self.u@c+.5*hc@c+self.x@z,self.u+hc+self.x@dz)
        return self.cache[key]


class FastTransfer(B.EdgeNumericTransfer):
    def __init__(self,search,gi):
        self.search=search;self.index=gi;self.group=search.groups[gi]
        self.model=search.model;self.linear=False;self.weighted_target=True
        self.r=search.r;self.rt=search.radii[gi]
        self.A=search.amat[gi];self.offset=search.offsets[gi]
        self.a0=search.a[gi]*self.rt
        self.B0=search.b[gi]*self.rt/self.r
        self.AH=search.h[gi]*self.rt/(.5*self.r*self.r)
        self.hn=np.linalg.norm(self.AH.reshape(4,16),2)*1.000001
        self.xn=np.linalg.norm(self.A@search.source.x,2)*1.000001
        self.tau=search.tau;self.tauA=self.xn*self.tau
        self.curvA=self.hn+self.xn*search.z2
        self.Q0=search.source.q0;self.U=search.source.u;self.H2=search.source.h
        self.signs=search.signs;self.freqs=search.freqs
        g=self.group;key=(tuple(g['rows']),tuple(g['cols']),g['g'])
        if key not in search.side_cache:
            ri=g['rows'];ci=g['cols'];rc=[x for x in range(6) if x not in ri];cc=[x for x in range(6) if x not in ci]
            gg=B.SC.g_matrix(g['g']);pp=np.eye(3)-np.ones((3,3))/3
            proj=np.kron(pp,pp);sides=[]
            for inds in [[6*i+j for i in ri for j in cc],[6*i+j for j in ci for i in rc]]:
                ss=gg[inds];rr=proj@ss
                rh=np.einsum('ab,bij->aij',rr,self.H2);rx=rr@search.source.x
                sides.append(dict(S=ss,R=rr,RH=rh,RX=rx,
                                  hn=np.linalg.norm(rh.reshape(9,16),2)*1.000001,
                                  xn=np.linalg.norm(rx,2)*1.000001))
            search.side_cache[key]=sides
        orientation=search.data['seed_headers'][g['target']]['o']
        self.sides=[dict(side,sg=orientation*(1 if j==0 else -1)) for j,side in enumerate(search.side_cache[key])]

    def local_data(self,v):
        c,qc,dc=self.search.source.jet(v)
        bb=self.A@dc;d=(self.A@qc+self.offset-bb@c)/self.rt;ff=self.r*bb/self.rt
        sides=[]
        for side in self.sides:
            th=self.freqs@(side['S']@qc)
            f=self.signs@np.sin(th);g=(self.signs*np.cos(th))@self.freqs
            rb=side['R']@dc
            cr=side['hn']+side['xn']*self.search.z2
            cg=np.linalg.norm(np.einsum('a,aij->ij',g,side['RH']),2)*1.000001+np.linalg.norm(g@side['RX'])*self.search.z2*1.000001
            sides.append(dict(C_R=cr,C_g=cg,l=side['sg']*self.r*(g@rb),
                              const=side['sg']*(f-(g@rb)@c),RBn=np.linalg.norm(rb,2)*1.000001))
        return dict(d=d,F=ff,C_A=self.curvA/self.rt,sides=sides)


class FastSearch(B.Search):
    def __init__(self,data):
        super().__init__(data)
        self.source=NumericSource(self.model)
        self.tau=float(self.model['tau'].upper());self.z2=float(self.model['Z2'].upper())
        terms=B.W.signature_terms()[1]
        self.signs=np.array([s for s,n in terms]);self.freqs=np.array([n for s,n in terms])
        self.side_cache={};amat=[];offset=[];radii=[];inv={};geom={}
        for g in self.groups:
            ti=g['target']
            if ti not in inv:
                t=data['seed_headers'][ti]
                inv[ti]=(np.linalg.inv(np.array([B.scalar(x) for x in t['Mth']]).reshape(4,4)),
                         np.array([B.scalar(x) for x in t['theta0']]),B.scalar(t['r']))
            mi,theta,rt=inv[ti]
            key=(tuple(g['rows']),tuple(g['cols']),g['g'])
            if key not in geom:geom[key]=B.SC.corner_L(g['rows'],g['cols'])@B.SC.g_matrix(g['g'])
            amat.append(mi@geom[key]);offset.append(mi@(2*np.pi*np.array(g['wind'])-theta));radii.append(rt)
        self.amat=np.array(amat);self.offsets=np.array(offset);self.radii=np.array(radii)
        self.transfers={}

    def transfer(self,gi):
        if gi not in self.transfers:self.transfers[gi]=FastTransfer(self,gi)
        return self.transfers[gi]

    def best_cap(self,direction,top=36,try_local=True):
        direction=np.asarray(direction,float);direction/=np.linalg.norm(direction)
        v=np.rint(direction*2**26).astype(np.int64)
        c,qc,dc=self.source.jet(v)
        y=(self.amat@qc+self.offsets)/self.radii[:,None]
        ff=self.r*(self.amat@dc)/self.radii[:,None,None]
        fe=ff@direction
        tangent2=np.sum(ff*ff,axis=(1,2))-np.sum(fe*fe,axis=1)
        scores=(1.-np.linalg.norm(y,axis=1))/np.maximum(1e-5,np.sqrt(np.maximum(tangent2,0.))/2**.5)
        ix=np.argsort(-scores)[:top]
        choices=[];tries=[]
        for gi in ix:
            tr=self.transfer(int(gi))
            local=tr.local_data(v)
            if any(side['const']+side['l']@direction<=1e-9 for side in local['sides']):continue
            cap=tr.cap(direction,mode='local_sphere')
            if cap is not None:choices.append(cap)
            # Relocate toward this target's centre while still covering the
            # actual uncovered direction. All candidates remain untrusted.
            for axis in AXIS.shifted_axes(self,int(gi),direction,fractions=(1.,.75,.5,.25)):
                shifted=tr.cap(axis,mode='local_sphere')
                if shifted is not None and AXIS.contains_direction(shifted,direction,margin=3e-6):
                    choices.append(shifted)
                    if cap is None or shifted['info']['numerical_radius']>cap['info']['numerical_radius']:
                        cap=shifted
                    break
            tries.append((int(gi),float(scores[gi]),None if cap is None else cap['info']['numerical_radius']))
            if len(choices)>=5:break
        if not choices:return None,tries
        return max(choices,key=lambda c:c['info']['numerical_radius']),tries


_WORKER_SEARCH=None
def worker_cap(task):
    direction,top=task
    return direction,_WORKER_SEARCH.best_cap(direction,top)


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--input',type=Path,default=B.ROOT/'data/xball_headers.json.gz')
    ap.add_argument('--out',type=Path,default=B.ROOT/'results/xball_fast_proposal.json')
    ap.add_argument('--max-caps',type=int,default=25000)
    ap.add_argument('--resume',action='store_true')
    ap.add_argument('--top',type=int,default=64)
    ap.add_argument('--seed',type=Path)
    ap.add_argument('--batch',type=int,default=24)
    ap.add_argument('--workers',type=int,default=1)
    args=ap.parse_args();st=time.perf_counter();search=FastSearch(json.load(gzip.open(args.input,'rt')))
    caps=[];failures=[]
    if args.resume and args.out.exists():caps=json.loads(args.out.read_text())['caps']
    elif args.seed:caps=json.loads(args.seed.read_text())['caps']
    starts=[sg*e for e in np.eye(4) for sg in [-1,1]]
    for direction in starts:
        if caps:
            ee=np.array([c['v'] for c in caps],float);hh=np.array([B.scalar(c['h']) for c in caps])
            if np.any(ee@direction>=hh):continue
        cap,tries=search.best_cap(direction,args.top)
        if cap is not None:caps.append(cap)
        else:failures.append(dict(direction=direction.tolist(),tries=tries))
    def checkpoint(hull):
        out=dict(format='zc2a-edge-cap-proposals-v1',status='NUMERICAL',caps=caps,
                 info=dict(hull=hull,failures=failures,source=search.model['summary'],
                           seconds=time.perf_counter()-st,original_boxes=sum(g['_proposal_box_count'] for g in search.groups)))
        args.out.parent.mkdir(exist_ok=True,parents=True)
        tmp=args.out.with_suffix('.tmp');tmp.write_text(json.dumps(out,separators=(',',':')));tmp.replace(args.out)
        return out
    global _WORKER_SEARCH
    _WORKER_SEARCH=search
    gc.collect();gc.freeze()
    pool=mp.get_context('fork').Pool(args.workers) if args.workers>1 else None
    iteration=0
    while len(caps)<args.max_caps:
        hull,bad=B.hull_diagnostic(caps,bad_count=4096)
        if hull['minimum_distance']>1.000001:break
        ee=np.array([c['v'] for c in caps],float);hh=np.array([B.scalar(c['h']) for c in caps])
        added=0
        if pool:
            directions=[]
            for direction in bad:
                if np.any(ee@direction>=hh*(1+2e-6)):continue
                if directions and np.max(np.array(directions)@direction)>math.cos(.09):continue
                directions.append(direction)
                if len(directions)>=args.batch:break
            candidates=pool.map(worker_cap,[(d,args.top) for d in directions])
            candidates.sort(key=lambda item:-(item[1][0]['info']['numerical_radius'] if item[1][0] else 0))
        else:
            candidates=((direction,search.best_cap(direction,args.top)) for direction in bad)
        for direction,(cap,tries) in candidates:
            if np.any(ee@direction>=hh*(1+2e-6)):continue
            if cap is None:
                failures.append(dict(direction=direction.tolist(),tries=tries));continue
            caps.append(cap);added+=1
            ee=np.vstack((ee,cap['v']));hh=np.append(hh,B.scalar(cap['h']))
            if added>=args.batch:break
        if iteration%2==0 or added==0:
            checkpoint(hull)
            print(json.dumps(dict(event='progress',iteration=iteration,caps=len(caps),hull=hull,
                                  cached_transfers=len(search.transfers),seconds=time.perf_counter()-st)),flush=True)
        if added==0:break
        iteration+=1
    if pool:pool.close();pool.join()
    hull,_=B.hull_diagnostic(caps);out=checkpoint(hull)
    print(json.dumps(dict(event='done',caps=len(caps),**out['info'])),flush=True)


if __name__=='__main__':main()
