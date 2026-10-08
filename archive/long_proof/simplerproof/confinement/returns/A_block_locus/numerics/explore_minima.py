"""Numerical minimax descent; exploration only, never a certificate."""
import argparse, json, sys, time
from pathlib import Path
import numpy as np
from scipy.optimize import linprog
sys.path.insert(0, str(Path(__file__).parent.parent / 'inputs' / 'toolkit'))
import common as C

SEL = np.array([i for i,(r,c) in enumerate(C.CORNERS) if 0 in r])
RI, CI = C.RI[SEL], C.CCI[SEL]

def values_gradient(phi):
    H=C.Hmat(phi)
    B=H[RI[:,:,None],CI[:,None,:]]
    p=np.zeros(len(SEL),complex);d=p.copy()
    dp=np.zeros((len(SEL),3,3),complex);dd=dp.copy()
    for sg,per in zip(C.SGN3,C.PERMS3):
        m=B[:,0,per[0]]*B[:,1,per[1]]*B[:,2,per[2]]
        p+=m;d+=sg*m
        for k in range(3):
            dp[:,k,per[k]]+=m;dd[:,k,per[k]]+=sg*m
    prod=B.reshape(-1,9).prod(1)
    q=p*d*d/prod
    dq=1j*(dp*d[:,None,None]**2+2*p[:,None,None]*d[:,None,None]*dd-p[:,None,None]*d[:,None,None]**2)/prod[:,None,None]
    f=2*q.imag
    grad=np.zeros((len(SEL),25))
    for a in range(3):
        for b in range(3):
            good=(RI[:,a]>0)&(CI[:,b]>0)
            k=(RI[good,a]-1)*5+CI[good,b]-1
            grad[np.nonzero(good)[0],k]=4*f[good]*dq[good,a,b].imag
    return f*f,grad

def descend(phi, steps=250):
    start=time.time();trust=.10;hist=[]
    for it in range(steps):
        R,G=values_gradient(phi);m=float(R.max())
        if m<1e-13:break
        _,sv,Vt=np.linalg.svd(C.hjac(phi),full_matrices=True)
        rank=int((sv>1e-7).sum())
        if rank==25:break
        N=Vt[rank:].T
        A=np.c_[G@N,-np.ones(len(R))]
        out=linprog(np.r_[np.zeros(N.shape[1]),1.], A_ub=A,b_ub=m-R,
                    bounds=[(-trust,trust)]*N.shape[1]+[(None,None)],method='highs')
        if not out.success:break
        predicted=-float(out.fun);direction=N@out.x[:-1]
        accepted=False
        for k in range(12):
            trial,ok=C.project(phi+direction*2.**(-k))
            if ok:
                mt=float(C.R_all(C.Hmat(trial)).max())
                if mt<m-max(1e-14,1e-5*predicted*2.**(-k)):
                    phi=trial;accepted=True;break
        if it%10==0:hist.append([it,m,rank,trust,predicted])
        if not accepted:
            trust*=.4
            if trust<1e-8:break
        elif k==0:trust=min(.20,trust*1.2)
        elif k>2:trust*=.65
    R,_=values_gradient(phi)
    return phi,dict(M=float(R.max()),iterations=it+1,residual=float(np.max(abs(C.hres(phi)))),
                    seconds=time.time()-start,history=hist,rank=rank,trust=trust,
                    singular_values=sv.tolist())

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--samples',type=int,default=24)
    parser.add_argument('--steps',type=int,default=300);parser.add_argument('--seed',type=int,default=1837)
    parser.add_argument('--output',default='minima_exploration.json')
    args=parser.parse_args();rng=np.random.default_rng(args.seed);results=[]
    for i in range(args.samples):
        phi=C.random_hadamard(rng)
        if phi is None:continue
        initial=float(C.R_all(C.Hmat(phi)).max())
        phi,rec=descend(phi,args.steps)
        rec.update(index=i,initial_M=initial,phi=phi.tolist())
        results.append(rec)
        print(i,'initial',round(initial,7),'final',format(rec['M'],'.9g'),
              'rank',rec['rank'],'steps',rec['iterations'],'seconds',round(rec['seconds'],3),flush=True)
        Path(args.output).write_text(json.dumps(dict(disclaimer='NUMERICAL EVIDENCE ONLY; NO GLOBAL COVERAGE',seed=args.seed,results=results),indent=2))

if __name__=='__main__':main()
