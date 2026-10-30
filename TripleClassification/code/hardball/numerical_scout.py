#!/usr/bin/env python3
"""NUMERICAL ONLY candidate and correlated branch-sensitivity discovery.

No result produced by this script proves completeness, root existence, or exclusion.
Candidates are proposals for the independent certified checker.
"""
import argparse,gzip,itertools,json,math,os,time
import numpy as np

def mid(x):
    if isinstance(x,(int,float)): return float(x)
    return float(x.strip('[]').split('+/-')[0])

def num(x):
    if isinstance(x,list): return np.array([num(v) for v in x])
    return mid(x)

def helmert():
    B=np.zeros((6,5))
    for j in range(5):
        d=math.sqrt((j+1)*(j+2)); B[:j+1,j]=1/d;B[j+1,j]=-(j+1)/d
    return B
B=helmert()

def fj(x,v,Q):
    x=np.atleast_2d(x)
    z=np.exp(1j*((v+x@B.T)[:,:,None]-Q))
    sm=z.sum(1)
    f=(abs(sm)**2-6)/6
    J=np.einsum('nja,ak->njk',2*np.real(np.conj(sm)[:,:,None]*(1j*z.transpose(0,2,1)))/6,B)
    return f,J

def newton(X,v,Q,iters=60,maxstep=.25):
    x=np.atleast_2d(X).copy()
    for t in range(iters):
        f,J=fj(x,v,Q)
        # Solve full-rank least squares through stable batched SVD.
        u,s,vh=np.linalg.svd(J,full_matrices=False)
        step=np.einsum('nki,ni->nk',vh.transpose(0,2,1),np.einsum('nji,nj->ni',u,f)/np.maximum(s,1e-14))
        ns=np.linalg.norm(step,axis=1)
        step*=np.minimum(1,maxstep/np.maximum(ns,1e-100))[:,None]
        x-=step
        if np.max(ns)<1e-13:break
    return x

def discover(v,Q,R,rng,starts=512):
    X=rng.normal(size=(starts,5));X*=R*rng.random(starts)[:,None]**.2/np.linalg.norm(X,axis=1)[:,None]
    X[0]=0
    X=newton(X,v,Q)
    f,J=fj(X,v,Q)
    roots=[]
    for x,ff in zip(X,f):
        if np.linalg.norm(ff)<1e-10 and np.linalg.norm(x)<R*1.05 and all(np.linalg.norm(x-y)>1e-7 for y in roots):
            roots.append(x)
    roots.sort(key=np.linalg.norm)
    return roots

def branch(v,Q,U,x,r):
    ph=v+B@x;z=np.exp(1j*(ph[:,None]-Q));sm=z.sum(0)
    f,J=fj(x,v,Q);J=J[0]
    A=np.einsum('aj,ajk->jk',np.zeros((6,6)),U) if False else 2*np.real(np.conj(sm)[:,None]*(-1j*np.einsum('aj,ajk->jk',z,U)))/6
    D=-np.linalg.lstsq(J,A,rcond=None)[0]
    return dict(x=x.tolist(),phases=ph.tolist(),residual=float(np.linalg.norm(f)),sigma_min=float(np.linalg.svd(J,compute_uv=False)[-1]),distance_from_column_centre=float(np.linalg.norm(x)),dx_dw=D.tolist(),linear_root_motion=r*float(np.linalg.norm(D,2)))

def analyse(path,starts=512,samples=16,proposal_factor=1.0,proposal_pad=0.0):
    start=time.monotonic();op=gzip.open if path.endswith('.gz') else open
    with op(path,'rt') as f:s=json.load(f)
    m=s['model'];Q=num(m['Q0']).reshape(6,6);U=num(m['U']).reshape(6,6,4);H2=num(m['H2']).reshape(6,6,4,4);r=mid(m['r'])
    rng=np.random.default_rng(10101)
    cols=[]
    for c in s['columns']:
        v=num(c['v0']);R=mid(c['phase_radius'])
        proposal_R=max(proposal_factor*R,R+proposal_pad)
        roots=discover(v,Q,proposal_R,rng,starts)
        cols.append(dict(v0=v.tolist(),radius=R,proposal_radius=proposal_R,roots=[branch(v,Q,U,x,r) for x in roots]))
    combos=[];edges=[]
    for a,b in itertools.combinations(range(6),2):
        for i,ra in enumerate(cols[a]['roots']):
            for j,rb in enumerate(cols[b]['roots']):
                va=np.array(ra['phases']);vb=np.array(rb['phases']);diff=np.exp(1j*(vb-va))
                dab=B@(np.array(rb['dx_dw'])-np.array(ra['dx_dw']))
                g=diff.sum()/6;dg=1j*diff@dab/6
                # Safe linear variation norm of complex-valued derivative, but nonlinear omitted.
                lin=r*np.linalg.norm(np.vstack([dg.real,dg.imag]),2)
                edges.append(dict(columns=[a,b],roots=[i,j],overlap=abs(g),linear_variation=float(lin),linear_lower=float(abs(g)-lin)))
    ed={(a,b,i,j):e for e in edges for (a,b),(i,j) in [(e['columns'],e['roots'])]}
    for choice in itertools.product(*[range(len(c['roots'])) for c in cols]):
        bad=[ed[a,b,choice[a],choice[b]] for a,b in itertools.combinations(range(6),2)]
        best=max(bad,key=lambda e:e['linear_lower'])
        combos.append(dict(choice=choice,witness=best))
    # Sample radius sphere using exact polynomial phase model; unphysical closure residual tau may remain.
    sample_stats=[]
    for cc,c in enumerate(cols):
        v=np.array(c['v0'])
        for ri,br in enumerate(c['roots']):
            x=np.array(br['x']);D=np.array(br['dx_dw']);motion=[];nonlinear=[];res=[]
            for k in range(samples):
                w=rng.normal(size=4);w*=r/np.linalg.norm(w)
                q=Q+np.einsum('ajk,k->aj',U,w)+np.einsum('ajkl,k,l->aj',H2,w,w)/2
                xx=newton(x+D@w,v,q,iters=20,maxstep=.2)[0]
                f,_=fj(xx,v,q)
                motion.append(np.linalg.norm(xx-x));nonlinear.append(np.linalg.norm(xx-x-D@w));res.append(np.linalg.norm(f))
            sample_stats.append(dict(column=cc,root=ri,max_sampled_motion=max(motion,default=0),max_sampled_nonlinear_remainder=max(nonlinear,default=0),max_sampled_residual=max(res,default=0)))
    return dict(status='NUMERICAL ONLY',snapshot=os.path.basename(path),radius=r,columns=cols,edges=edges,combinations=combos,sampling=sample_stats,nchoices=len(combos),min_combination_max_pair_overlap=min((max(ed[a,b,ch['choice'][a],ch['choice'][b]]['overlap'] for a,b in itertools.combinations(range(6),2)) for ch in combos),default=None),min_combination_linear_lower=min((ch['witness']['linear_lower'] for ch in combos),default=None),elapsed_seconds=time.monotonic()-start)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('snapshots',nargs='+');ap.add_argument('--out',required=True);ap.add_argument('--starts',type=int,default=512);ap.add_argument('--samples',type=int,default=16);ap.add_argument('--proposal-factor',type=float,default=1.0);ap.add_argument('--proposal-pad',type=float,default=0.0);args=ap.parse_args();os.makedirs(args.out,exist_ok=True)
    for p in args.snapshots:
        d=analyse(p,args.starts,args.samples,args.proposal_factor,args.proposal_pad)
        with open(os.path.join(args.out,os.path.basename(p).replace('.json.gz','.numerical.json')),'w') as f:json.dump(d,f,indent=2)
        print(d['snapshot'],[len(c['roots']) for c in d['columns']],d['min_combination_max_pair_overlap'],d['min_combination_linear_lower'],round(d['elapsed_seconds'],2),flush=True)
if __name__=='__main__':main()
