#!/usr/bin/env python3
"""NUMERICAL ONLY: 252-path bihomogeneous homotopy for the inverse-dual system.
Requires numpy (numba is optional acceleration); consumes ../reference/toolkit/data/record_centres.npz.
No success of this floating point tracker is a certificate of completeness.
"""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
os.environ.setdefault('OMP_NUM_THREADS','1')
import sys, time, json, argparse, itertools
from pathlib import Path
import numpy as np
try:
    from numba import njit
except ImportError:
    def njit(*args, **kwargs):
        # Optional acceleration only; the numerical algorithm also runs in NumPy.
        return lambda f: f

HERE=Path(__file__).resolve().parent

def target_forms(A):
    n=len(A); B=np.linalg.inv(A).T
    C=np.zeros((2*n-2,n,n),complex)
    for i in range(1,n):
        C[i-1,i,i]=1; C[i-1,0,0]=-1
    for j in range(n-1):
        C[n-1+j]=np.outer(A[j],B[j]); C[n-1+j,0,0]-=1
    # Scaling equations does not change their zero set.
    for k in range(len(C)): C[k]/=np.linalg.norm(C[k])
    return C

def start_system(n=6,seed=20261015):
    rng=np.random.default_rng(seed)
    L=rng.normal(size=(2*n-2,n))+1j*rng.normal(size=(2*n-2,n))
    M=rng.normal(size=(2*n-2,n))+1j*rng.normal(size=(2*n-2,n))
    L/=np.linalg.norm(L,axis=1)[:,None]; M/=np.linalg.norm(M,axis=1)[:,None]
    C=np.einsum('ki,kj->kij',L,M)
    W=[]
    for I in itertools.combinations(range(2*n-2),n-1):
        J=tuple(k for k in range(2*n-2) if k not in I)
        x=np.linalg.svd(L[list(I)])[2][-1].conj()
        y=np.linalg.svd(M[list(J)])[2][-1].conj()
        W.append(np.r_[x,y])
    return C,np.array(W)

@njit(cache=True)
def ev(C,w):
    n=len(w)//2; m=len(C)
    f=np.zeros(2*n,np.complex128); J=np.zeros((2*n,2*n),np.complex128)
    for k in range(m):
        for i in range(n):
            for j in range(n):
                c=C[k,i,j]
                f[k]+=c*w[i]*w[n+j]
                J[k,i]+=c*w[n+j]
                J[k,n+j]+=c*w[i]
    return f,J

@njit(cache=True)
def normalize(w):
    n=len(w)//2
    w[:n]/=np.linalg.norm(w[:n]);w[n:]/=np.linalg.norm(w[n:])
    return w

@njit(cache=True)
def tangent(C,D,w):
    n=len(w)//2
    f,J=ev(C,w);ft,_=ev(D,w)
    for i in range(n):
        J[2*n-2,i]=np.conj(w[i]);J[2*n-1,n+i]=np.conj(w[n+i])
    return np.linalg.solve(J,-ft)

@njit(cache=True)
def correct(C,pred,tol=2e-12,maxit=12):
    n=len(pred)//2; w=pred.copy()
    cx=np.conj(pred[:n]);cy=np.conj(pred[n:])
    movement=0.
    for it in range(maxit):
        f,J=ev(C,w)
        for i in range(n):
            J[2*n-2,i]=cx[i];J[2*n-1,n+i]=cy[i]
            f[2*n-2]+=cx[i]*(w[i]-pred[i]);f[2*n-1]+=cy[i]*(w[n+i]-pred[n+i])
        try: d=np.linalg.solve(J,-f)
        except: return w,False,it,1e20
        w+=d
        nd=np.linalg.norm(d)
        if not np.isfinite(nd):return w,False,it,1e20
        if nd<tol:
            movement=np.linalg.norm(w-pred)
            return normalize(w),True,it+1,movement
        if nd>100.:return w,False,it,1e20
    return w,False,maxit,1e20

@njit(cache=True)
def track(C0,C1,w,maxsteps=50000):
    D=C1-C0; t=0.;h=.01;steps=0;reject=0;minh=1.
    w=normalize(w.copy())
    while t<1. and steps<maxsteps:
        h=min(h,1.-t); C=C0+t*D
        try: v=tangent(C,D,w)
        except: return w,False,steps,reject,t,minh
        # Fourth-order predictor with unit projective representatives.
        try:
            a=normalize(w+0.5*h*v)
            v2=tangent(C0+(t+.5*h)*D,D,a)
            a=normalize(w+0.5*h*v2)
            v3=tangent(C0+(t+.5*h)*D,D,a)
            a=normalize(w+h*v3)
            v4=tangent(C0+(t+h)*D,D,a)
            pred=normalize(w+h*(v+2*v2+2*v3+v4)/6.)
            wn,ok,it,movement=correct(C0+(t+h)*D,pred)
        except: ok=False;movement=1e20;it=20
        # Tight movement bound mitigates path jumping; not a rigorous guarantee.
        if ok and movement<.01 and np.linalg.norm(wn-w)<.3:
            w=wn;t+=h;steps+=1;minh=min(minh,h)
            if movement<.00002 and it<=3: h=min(.04,h*1.45)
            elif movement<.0005 and it<=4:h=min(.04,h*1.2)
            elif movement>.003:h*=.75
        else:
            h*=.5;reject+=1
            if h<1e-15:return w,False,steps,reject,t,minh
    return w,t>=1.,steps,reject,t,minh

def run(idx,seed=20261015):
    source=HERE.parent/'reference/toolkit/data/record_centres.npz'
    if source.exists():
        data=np.load(source);H=np.exp(1j*data['phases'][idx])
    else:
        # The returned package includes these input midpoint matrices.
        H=np.load(HERE/f'roots_{idx}.npz')['H']
    A=H.conj().T/np.sqrt(6)
    C1=target_forms(A); C0,W=start_system(seed=seed)
    gamma=np.exp(1j*.731);C0=gamma*C0
    # compile outside benchmark
    track(C0,C1,W[0],maxsteps=1)
    ts=time.perf_counter();roots=[];details=[]
    for k,w in enumerate(W):
        ans=track(C0,C1,w);r,ok,steps,rej,t,mh=ans
        if ok:roots.append(r)
        details.append([bool(ok),int(steps),int(rej),float(t),float(mh)])
        if (k+1)%42==0:print(f'NUMERICAL centre={idx} paths={k+1}/252 successes={len(roots)} elapsed={time.perf_counter()-ts:.2f}s',flush=True)
    roots=np.array(roots); sec=time.perf_counter()-ts
    z=roots[:,:6]/roots[:,0,None]
    # All roots must be distinct in projective x (then y is fixed).
    D=np.linalg.norm(roots[:,None,:6]*roots[None,:,0,None]-roots[None,:,:6]*roots[:,0,None,None],axis=2)
    # More robust angular metric, independent of x_0 scale.
    D=np.sqrt(np.maximum(0.,1-np.minimum(1.,abs(roots[:,:6].conj()@roots[:,:6].T)**2)))
    np.fill_diagonal(D,np.inf)
    # distinguish actual duplications from rounding in the distance formula
    near=np.argwhere(D<1e-5)
    duplicate=[]
    for i,j in near:
        if i<j:
            b=roots[j,:6];a=roots[i,:6];aligned=b*np.vdot(b,a)
            if np.linalg.norm(a-aligned)<1e-6:duplicate.append([int(i),int(j)])
    tor=np.max(abs(abs(z)-1),axis=1)<1e-6
    res=max(np.max(abs(ev(C1,w)[0][:10])) for w in roots)
    summary={'centre':idx,'seed':seed,'successes':len(roots),'duplicates':duplicate,'torus_count_with_duplicates':int(tor.sum()),'seconds':sec,'max_bilinear_residual':float(res),'min_coord':float(abs(z[:,1:]).min()),'max_coord':float(abs(z[:,1:]).max()),'min_pair_projective_distance':float(D.min()),'path_steps_max':max(d[1] for d in details),'rejections_total':sum(d[2] for d in details)}
    print(json.dumps(summary,indent=2),flush=True)
    np.savez(HERE/f'roots_{idx}.npz',H=H,A=A,projective=roots,z=z,torus=tor,details=np.array(details))
    (HERE/f'numerical_{idx}.json').write_text(json.dumps(summary,indent=2)+'\n')
    return summary

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--centres',type=int,nargs='+',default=[100,2471,5305]);ap.add_argument('--seed',type=int,default=20261015)
    args=ap.parse_args()
    for idx in args.centres:run(idx,args.seed)
