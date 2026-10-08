"""Exploratory floating-point minimax descent; never a certificate."""
import sys
from pathlib import Path
import numpy as np
from scipy.optimize import linprog
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'input_data'/'toolkit'))
import common as C

def rvalues_gradient(phi):
    H=C.Hmat(phi);B=C.blocks(H,'comp');n=len(B)
    P=np.zeros(n,complex);D=P.copy()
    Pij=np.zeros((n,3,3),complex);Dij=Pij.copy()
    for s,p in zip(C.SGN3,C.PERMS3):
        m=B[:,0,p[0]]*B[:,1,p[1]]*B[:,2,p[2]]
        P+=m;D+=s*m
        for i in range(3):Pij[:,i,p[i]]+=m;Dij[:,i,p[i]]+=s*m
    T=B.prod(axis=(1,2));q=P*D**2/T;S=2*q.imag
    dS=2*((Pij*D[:,None,None]**2+2*P[:,None,None]*D[:,None,None]*Dij-(P*D**2)[:,None,None])/T[:,None,None]).real
    dR=2*S[:,None,None]*dS
    G=np.zeros((n,25))
    for c in range(n):
        for i in range(3):
            a=C.RI[c,i]
            if not a:continue
            for j in range(3):
                b=C.CCI[c,j]
                if b:G[c,(a-1)*5+b-1]=dR[c,i,j]
    return S*S,G

def nullspace(phi):
    u,s,v=np.linalg.svd(C.hjac(phi),full_matrices=True)
    rank=(s>1e-7).sum()
    return v[rank:].T,s

def minimize_M(phi,steps=200,radius=0.08,verbose=False):
    history=[]
    for it in range(steps):
        r,g=rvalues_gradient(phi);m=r.max()
        N,s=nullspace(phi)
        if N.shape[1]==0:break
        G=g@N
        obj=np.r_[np.zeros(N.shape[1]),1]
        result=linprog(obj,A_ub=np.column_stack([G,-np.ones(len(r))]),b_ub=-r,bounds=[(-radius,radius)]*N.shape[1]+[(None,None)],method='highs')
        if not result.success:raise RuntimeError(result.message)
        d=N@result.x[:-1];pred=m-result.fun
        record=dict(step=it,M=m,rank=25-N.shape[1],radius=radius,pred=pred)
        history.append(record)
        if verbose and it%10==0:print(record,flush=True)
        if pred<1e-11:break
        best=None
        for j in range(15):
            scale=2.**(-j)
            pn,ok=C.project(phi+scale*d)
            if not ok:continue
            mn=C.R_all(C.Hmat(pn)).max()
            if mn<m-1e-4*scale*pred:
                best=(pn,mn,scale);break
        if best is None:
            radius*=.25
            if radius<1e-8:break
        else:
            phi,mn,scale=best
            if scale==1 and m-mn>0.5*pred:radius=min(0.2,radius*1.2)
            elif scale<0.1:radius*=.6
        if m<1e-14:break
    return phi,history

if __name__=='__main__':
    import argparse,json
    ap=argparse.ArgumentParser();ap.add_argument('--count',type=int,default=6);ap.add_argument('--steps',type=int,default=100);ap.add_argument('--seed',type=int,default=20261008);ap.add_argument('--output',type=Path,default=Path(__file__).with_name('numerical_runs_replay.json'));args=ap.parse_args()
    rng=np.random.default_rng(args.seed);out=[]
    for trial in range(args.count):
        phi=C.random_hadamard(rng)
        if phi is None:continue
        start=C.R_all(C.Hmat(phi)).max()
        print('START',trial,start,flush=True)
        finish,hist=minimize_M(phi,steps=args.steps,verbose=True)
        m=C.R_all(C.Hmat(finish)).max()
        print('FINISH',trial,m,'residual',abs(C.hres(finish)).max(),flush=True)
        out.append(dict(trial=trial,start_phi=phi.tolist(),final_phi=finish.tolist(),start_M=float(start),final_M=float(m),history=hist))
        args.output.write_text(json.dumps(out,indent=2))
