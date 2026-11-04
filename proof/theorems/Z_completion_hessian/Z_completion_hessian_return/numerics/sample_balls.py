"""NUMERICAL sampled lower estimates on reconstructed canonical seed ellipsoids."""
from pathlib import Path
import csv,json,time
import numpy as np
from scipy.optimize import minimize
import core
BASE=Path(__file__).resolve().parent

def refine_norm(T,dirs):
    dirs=dirs/np.linalg.norm(dirs,axis=1)[:,None]
    vals=np.linalg.norm(np.einsum('aij,ni,nj->na',T,dirs,dirs),axis=1)
    v=dirs[np.argmax(vals)]
    def fun(u):
        un=np.linalg.norm(u); u=u/un
        y=np.einsum('aij,i,j->a',T,u,u)
        f=y@y; gu=4*np.einsum('aij,j,a->i',T,u,y)
        return -f,-(gu-u*(u@gu))/un
    sol=minimize(fun,v,jac=True,method='BFGS',options={'gtol':1e-8,'maxiter':40})
    if -sol.fun>vals.max()**2: return (-sol.fun)**.5,sol.x/np.linalg.norm(sol.x)
    return vals.max(),v

def main():
    zz=np.load(BASE/'centres.npz'); rows=list(csv.DictReader((BASE/'centres.csv').open())); out=[]; witnesses=[]; start=time.time()
    for ix,row in enumerate(rows):
        rng=np.random.default_rng(7103+ix)
        th=zz['theta'][ix];M=zz['M'][ix];r=zz['r'][ix]
        co={k:zz[k][ix] for k in ['H','theta','phih','phiv','Q1','Q2']}
        wmapped=np.linalg.solve(M,zz['theta_hess_dir'][ix]);wmapped/=np.linalg.norm(wmapped)
        boundary=np.r_[np.eye(4),-np.eye(4),rng.normal(size=(16,4)),[zz['w_hess_dir'][ix],-zz['w_hess_dir'][ix],wmapped,-wmapped]]
        boundary/=np.linalg.norm(boundary,axis=1)[:,None]
        normdirs=np.r_[np.eye(4),rng.normal(size=(32,4))]
        vtheta=zz['theta_hess_dir'][ix];vw=zz['w_hess_dir'][ix]
        worsttheta=float(row['hessian_theta_est']);worstw=float(row['hessian_w_est']);worstn=0.;minR=float(row['R']);maxflat=0.
        ptheta=np.zeros(4);pw=np.zeros(4);pn=np.zeros(4);dtheta=vtheta.copy();dw=vw.copy();failure=0
        for scale in [.5,1.]:
            for u in boundary:
                w=r*scale*u; theta=th+M@w
                try: z=core.jet(theta,previous=co)
                except RuntimeError: failure+=1;continue
                minR=min(minR,core.invariants(theta)['R'])
                maxflat=max(maxflat,abs(abs(z['H'])-1).max())
                nt,vtheta=refine_norm(z['Q2'],np.r_[normdirs,[vtheta], [zz['theta_hess_dir'][ix]]])
                Tw=np.einsum('aij,ik,jl->akl',z['Q2'],M,M)
                nw,vw=refine_norm(Tw,np.r_[normdirs,[vw],[zz['w_hess_dir'][ix]]])
                rem=core.horizontal(np.angle(z['H']*co['H'].conj())).reshape(36)-co['Q1']@M@w
                n=np.linalg.norm(rem)
                if nt>worsttheta: worsttheta=nt;ptheta=w;dtheta=vtheta.copy()
                if nw>worstw: worstw=nw;pw=w;dw=vw.copy()
                if n>worstn:worstn=n;pn=w
        out.append(dict(j=int(row['j']),r=float(r),hessian_theta_center_est=float(row['hessian_theta_est']),hessian_theta_sample_est=worsttheta,hessian_w_center_est=float(row['hessian_w_est']),hessian_w_sample_est=worstw,remainder_sample=worstn,remainder_input=float(row['n_sampled_input']),min_R_sample=minR,max_flat_error=maxflat,failed_sample_solves=failure,samples=2*len(boundary)))
        witnesses.append(dict(theta_hess_w=ptheta,theta_hess_dir=dtheta,w_hess_w=pw,w_hess_dir=dw,remainder_w=pn))
        if (ix+1)%10==0:print(ix+1,round(time.time()-start,1),flush=True)
    with (BASE/'sampled_balls.csv').open('w') as f:
        w=csv.DictWriter(f,fieldnames=out[0]);w.writeheader();w.writerows(out)
    np.savez_compressed(BASE/'sample_witnesses.npz',**{k:np.stack([z[k] for z in witnesses]) for k in witnesses[0]},j=zz['j'])
    stats={k:dict(min=float(np.min([x[k] for x in out])),median=float(np.median([x[k] for x in out])),max=float(np.max([x[k] for x in out]))) for k in out[0]}
    (BASE/'sample_summary.json').write_text(json.dumps(dict(status='NUMERICAL LOWER ESTIMATES, NOT SUPREMUM CERTIFICATES',count=len(out),summary=stats),indent=2))
    print(json.dumps(stats,indent=2))
if __name__=='__main__':main()
