#!/usr/bin/env python3
"""NUMERICAL, NOT A REGION CERTIFIER.
48 fixed-seed Record centres. Multistart roots are not exhaustive. Phase Taylor
coefficients are floating point. The cubic tube sizes are hypothetical inputs.
The reported shares are conditional screen estimates, not certified coverage.
Run OPENBLAS_NUM_THREADS=1 python sample_regions.py
"""
import json, time, csv
from pathlib import Path
import numpy as np
from numerics import *
OUT=Path(__file__).resolve().parent


def chart_second(H,T):
    rows=[]; seconds=[]; TT=T.reshape(6,6,4)
    for i in range(6):
        for j in range(i+1,6):
            z=H[i]*H[j].conj(); diff=TT[i]-TT[j]
            a=np.zeros((6,6),complex);a[i]=1j*z;a[j]=-1j*z
            b=-np.einsum('k,ka,kb->ab',z,diff,diff)
            rows.extend([a.real.ravel(),a.imag.ravel()]);seconds.extend([b.real,b.imag])
    for i in range(6):
        a=np.zeros((6,6));a[i]=1;rows.append(a.ravel());seconds.append(np.zeros((4,4)))
    for j in range(6):
        a=np.zeros((6,6));a[:,j]=1;rows.append(a.ravel());seconds.append(np.zeros((4,4)))
    A=np.array(rows); S=np.array(seconds)
    Q=-np.einsum('ij,jab->iab',np.linalg.pinv(A,rcond=1e-10),S)
    residual=np.max(abs(np.einsum('ij,jab->iab',A,Q)+S))
    return Q.reshape(6,6,4,4),float(residual)


def ray_second(H,X,T,Q,D):
    n=len(X);TT=T.reshape(6,6,4)
    DD=np.concatenate([np.zeros((n,1,4)),D],axis=1)
    coeff=X[:,:,None]*H.conj()[None,:,:]
    Y=np.sum(coeff,axis=1)
    diff=DD[:,:,None,:]-TT[None,:,:,:]
    Y1=1j*np.einsum('nij,nija->nja',coeff,diff)
    Y2rest=np.einsum('nij,ijab->njab',coeff,-1j*Q)-np.einsum('nij,nija,nijb->njab',coeff,diff,diff)
    f2=2*np.real(Y.conj()[:,:,None,None]*Y2rest+Y1.conj()[:,:,:,None]*Y1[:,:,None,:])
    J=-2*np.imag(Y.conj()[:,:,None]*H.conj().T[None,:,1:]*X[:,None,1:])
    P=-np.einsum('nij,njab->niab',np.linalg.pinv(J,rcond=1e-12),f2)
    residual=np.max(abs(np.einsum('nij,njab->niab',J,P)+f2))
    return P,float(residual)


def quadratic_screen(X,D,P,rho,tube,angles=64):
    """Conservative analytic support bound FOR THE SUPPLIED PHASE MODELS.
    This is still numerical and conditional on a uniform real-ray tube/coverage.
    A discarded edge has model projection > sqrt(5)*2*tube + 0.1.
    """
    n=len(X);ia,ib=np.triu_indices(n,1)
    z=X[ia].conj()*X[ib]
    dd=np.concatenate([np.zeros((len(ia),1,4)),D[ib]-D[ia]],axis=1)
    qq=np.concatenate([np.zeros((len(ia),1,4,4)),P[ib]-P[ia]],axis=1)
    g0=np.sum(z,axis=1)
    ell=1j*np.einsum('nj,nja->na',z,dd)
    mat=np.einsum('nj,njab->nab',z,1j*qq)-np.einsum('nj,nja,njb->nab',z,dd,dd)
    u=rho*np.linalg.norm(dd,axis=2)
    v=.5*rho*rho*np.max(abs(np.linalg.eigvalsh(qq)),axis=2)
    rem=np.sum((u+v)**3/6+u*v+v*v/2,axis=1)
    lower=np.full(len(ia),-np.inf)
    for angle in np.linspace(0,2*np.pi,angles,endpoint=False):
        zz=np.exp(-1j*angle)
        lin=np.real(zz*ell)
        A=.5*np.real(zz*mat)
        mineig=np.linalg.eigvalsh(A)[:,0]
        lb=np.real(zz*g0)-rho*np.linalg.norm(lin,axis=1)+rho*rho*np.minimum(mineig,0)-rem
        lower=np.maximum(lower,lb)
    margin=lower-2*np.sqrt(5)*tube
    graph=np.zeros((n,n),bool);graph[ia,ib]=margin<=.1;graph|=graph.T
    q5=clique(graph,5)
    return q5 is None,float(np.mean(graph[ia,ib])),int(np.sum(margin>.1))


def main():
    C,_=centres(); ids=np.random.default_rng(20261015).choice(len(C),48,replace=False)
    results=[]; allstart=time.time()
    for k,idx in enumerate(ids):
        start=time.time(); H=C[idx]
        X1=roots(H,starts=2048,seed=710000+int(idx))
        X2=roots(H,starts=2048,seed=810000+int(idx))
        X=list(X1)
        for x in X2:
            if len(X)==0 or np.min(np.max(abs(np.array(X)-x),axis=1))>2e-6:X.append(x)
        X=np.array(X)
        T,ss=tangent(H);D,sigma=ray_derivatives(H,X,T)
        Q,rh=chart_second(H,T);P,rx=ray_second(H,X,T,Q,D)
        d5,c5=defect(X,5);d6,c6=defect(X,6)
        row={'index':int(idx),'N1':len(X1),'N2':len(X2),'Nunion':len(X),'min_sigma_raw':float(min(sigma)),
             'b2':block_defect(H,2)[0],'b3':block_defect(H,3)[0],'d5_found':d5,'d6_found':d6,
             'chart_2jet_residual':rh,'ray_2jet_residual':rx,
             'max_unbiased_residual':float(np.max(abs(abs(X@H.conj())**2-6)))}
        for rho in [.16,.3,.5]:
            for tc in [0.,.25,1.]:
                passed,edgefrac,excl=quadratic_screen(X,D,P,rho,tc*rho**3)
                row[f'pass_r{rho}_c{tc}']=int(passed)
                row[f'edgefrac_r{rho}_c{tc}']=edgefrac
        results.append(row)
        np.savez_compressed(OUT/f'sample_roots_{int(idx)}.npz',H=H,X=X,T=T,D=D,Q=Q,P=P)
        with open(OUT/'region_sample.json','w') as f:json.dump(results,f,indent=2)
        print(f"NUMERICAL {k+1}/48 index={idx} N={len(X1)}/{len(X2)}/{len(X)} d5={d5:.5f} d6={d6:.5f} " +
              ' '.join(f"r={r}:{row[f'pass_r{r}_c0.0']}/{row[f'pass_r{r}_c0.25']}/{row[f'pass_r{r}_c1.0']}" for r in [.16,.3,.5])+
              f' seconds={time.time()-start:.2f}',flush=True)
    with open(OUT/'region_sample.csv','w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(results[0]));w.writeheader();w.writerows(results)
    summary={f'r{r}_c{c}':{'pass':sum(row[f'pass_r{r}_c{c}'] for row in results),'total':len(results)} for r in [.16,.3,.5] for c in [0.,.25,1.]}
    summary['elapsed_seconds']=time.time()-allstart
    summary['WARNING']='NUMERICAL CONDITIONAL SCREEN ONLY. No exhaustive roots, uniform ray tubes, or region coverage certified.'
    with open(OUT/'region_sample_summary.json','w') as f:json.dump(summary,f,indent=2)
    print(json.dumps(summary,indent=2),flush=True)
if __name__=='__main__':main()
