"""Numerical proposal only: separate the sum of six column projectors."""
import os
for key in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS','VECLIB_MAXIMUM_THREADS'):
    os.environ[key]='1'
import itertools,json,time,warnings
import numpy as np
from scipy.optimize import linprog,OptimizeWarning
import tube_graph_probe as P
warnings.filterwarnings('ignore',category=OptimizeWarning)
PAIRS=list(itertools.combinations(range(6),2))
ELL=np.array([[int(j==a)-int(j==b) for j in range(6)] for a,b in PAIRS])

def data(cs,r):
    cols=list(cs);v=np.concatenate([cs[c]['v'] for c in cols]);T=np.concatenate([cs[c]['T'] for c in cols])
    eps=np.concatenate([cs[c]['e'] for c in cols]);ci=np.concatenate([np.full(len(cs[c]['e']),j) for j,c in enumerate(cols)])
    z=np.exp(1j*np.einsum('na,pa->np',v,ELL));f=np.c_[z.real,z.imag]
    dg=np.concatenate([-z.imag[:,:,None]*ELL[None,:,:],z.real[:,:,None]*ELL[None,:,:]],axis=1)
    dn=np.linalg.svd(T,compute_uv=False)[:,0]*r+eps
    return dict(cols=cols,v=v,T=T,e=eps,ci=ci,z=z,f=f,dg=dg,dn=dn,r=r)

def bounds(d,y,derivative=False):
    N=len(d['v']);g=np.einsum('nka,k->na',d['dg'],y);wn=np.einsum('na,nak->nk',g,d['T'])
    gn=np.linalg.norm(g,axis=1);wgn=np.linalg.norm(wn,axis=1)
    a=d['z'].real*y[:15]+d['z'].imag*y[15:]
    h=-np.einsum('np,pa,pb->nab',a,ELL,ELL)
    eig,vec=np.linalg.eigh(h);en=np.maximum(0,-eig[:,0]);rho=d['dn'];yn=np.sqrt(y[:15]**2+y[15:]**2)
    cubic=np.sqrt(8)*rho**3/6*yn.sum()
    val=np.einsum('nk,k->n',d['f'],y)-d['e']*gn-d['r']*wgn-rho**2*en/2-cubic
    if not derivative:return val
    gg=np.einsum('nka,na->nk',d['dg'],g/np.maximum(gn[:,None],1e-100))*d['e'][:,None]
    gg+=d['r']*np.einsum('nka,naj,nj->nk',d['dg'],d['T'],wn/np.maximum(wgn[:,None],1e-100))
    ev=vec[:,:,0];eell=np.einsum('na,pa->np',ev,ELL)**2
    gg+=rho[:,None]**2/2*np.c_[d['z'].real*eell,d['z'].imag*eell]*(eig[:,0]<0)[:,None]
    gg+=np.sqrt(8)*rho[:,None]**3/6*np.r_[y[:15]/np.maximum(yn,1e-100),y[15:]/np.maximum(yn,1e-100)]
    return val,d['f']-gg

def propose(d,steps=160,verbose=False):
    N=len(d['f']);B=np.zeros((N,6));B[np.arange(N),d['ci']]=1
    rows=list(np.c_[-d['f'],B]);cost=np.r_[np.zeros(30),-np.ones(6)];best=(-float('inf'),None)
    for step in range(steps):
        fit=linprog(cost,A_ub=np.array(rows),b_ub=np.zeros(len(rows)),bounds=[(-1,1)]*30+[(None,None)]*6,
                    method='highs',options={'threads':1})
        if not fit.success:raise ArithmeticError(fit.message)
        y=fit.x[:30];val,grad=bounds(d,y,True)
        ids=[np.where(d['ci']==c)[0][np.argmin(val[d['ci']==c])] for c in range(6)]
        gap=float(sum(val[ids]));norm=np.linalg.norm(y)
        if norm>0 and gap/norm>best[0]:best=(gap/norm,y.copy())
        if verbose and step%10==0:print('row separator',step,'gap',gap,'upper',-fit.fun,'normalized best',best[0],flush=True)
        if gap>1e-4 or -fit.fun<1e-7:break
        for c,i in enumerate(ids):
            row=np.r_[-grad[i],np.zeros(6)];row[30+c]=1;rows.append(row)
    return best,step+1

if __name__=='__main__':
    start=time.monotonic();s,r,cs=P.read();d=data(cs,r);best,steps=propose(d,verbose=True)
    print('result',best[0],steps,'seconds',time.monotonic()-start,flush=True)
    out=dict(diagnostic_only=True,normalized_margin=best[0],steps=steps,seconds=time.monotonic()-start,
             direction_seed_hex=[float(x).hex() for x in best[1]])
    from pathlib import Path
    Path(__file__).with_name('row_separator_probe.json').write_text(json.dumps(out,indent=2)+'\n')
