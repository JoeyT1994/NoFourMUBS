"""Numerical prototype of a whole-ball quadratic-predictor majorant.
All printed quantities are NUMERICAL, not rounded certificates.
"""
import sys,itertools,csv,json,time
from pathlib import Path
import numpy as np
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'fullphase'))
from prototype import tensors,DIF,X


def op(T): return float(np.linalg.norm(T.reshape(T.shape[0],-1),2))

def constants(co,M,r):
    a=tensors(co,M); K=a['K']; H2=a['H2']; beta=op(H2)
    s=a['du'].reshape(-1,4)
    t=np.einsum('pka,aij->pkij',DIF,H2).reshape(-1,4,4)
    z=a['z'].reshape(-1)
    kap=((K[:,:15]-1j*K[:,15:])[:, :, None]*a['z'][None,:,:]).reshape(21,90)
    sn=np.linalg.norm(s,axis=1); tn=np.linalg.norm(t,ord=2,axis=(1,2))
    cn=np.linalg.norm(np.stack([kap.real.T,kap.imag.T],axis=2),ord=2,axis=(1,2))
    t3=-1j*np.einsum('ai,aj,ak->aijk',s,s,s)
    t3-=np.einsum('aij,ak->aijk',t,s)+np.einsum('aik,aj->aijk',t,s)+np.einsum('ajk,ai->aijk',t,s)
    R3=np.einsum('oa,aijk->oijk',kap,t3).real
    t4=np.einsum('ai,aj,ak,al->aijkl',s,s,s,s).astype(complex)
    for ij in itertools.combinations(range(4),2):
        kl=[i for i in range(4) if i not in ij]
        ijstr='ijkl'[ij[0]]+'ijkl'[ij[1]];klstr=['ijkl'[k] for k in kl]
        t4-=1j*np.einsum(f'a{ijstr},a{klstr[0]},a{klstr[1]}->aijkl',t,s,s)
    for ij,kl in [((0,1),(2,3)),((0,2),(1,3)),((0,3),(1,2))]:
        p='ijkl'[ij[0]]+'ijkl'[ij[1]];q='ijkl'[kl[0]]+'ijkl'[kl[1]]
        t4-=np.einsum(f'a{p},a{q}->aijkl',t,t)
    R4=np.einsum('oa,aijkl->oijkl',kap,t4).real
    t3n=op(R3);t4n=op(R4)
    an=sn+r*tn
    L5=float(np.sum(cn*(an**5+10*tn*an**3+15*tn**2*an)))
    b0=t3n*r**3/6+t4n*r**4/24+L5*r**5/120
    b1=t3n*r**2/2+t4n*r**3/6+L5*r**4/24
    b2=t3n*r+t4n*r**2/2+L5*r**3/6
    c=op(a['C']);d=op(a['DD']);kn=op(K)
    L2=2*np.sqrt(3)*kn;L3=2*np.sqrt(6)*kn
    rbase=r+0.5*beta*r*r
    def qfun(tube):return c*r+d*(0.5*beta*r*r+tube)+0.5*L3*(rbase+tube)**2
    tube=b0*1.1
    for _ in range(100):
        q=qfun(tube)
        if q>=1:break
        need=b0/(1-q)
        if tube>need:break
        tube=need*1.001
    else: q=1.
    if q>=1 or tube<=b0/(1-q):
        return dict(valid=False,beta=beta,t3=t3n,t4=t4n,L5=L5,b0=b0,b1=b1,b2=b2,q=q,tube=tube,c=c,d=d,kn=kn)
    delta=rbase+tube
    m1=c+d*beta*r+L3*delta*(1+beta*r)
    m2=L3*(1+beta*r)**2+L2*beta
    mzz=d+L3*delta
    dz=(b1+m1*tube)/(1-q)
    ddz=(b2+m2*tube+2*m1*dz+mzz*dz*dz)/(1-q)
    C=beta+ddz
    return dict(valid=True,C=C,beta=beta,t3=t3n,t4=t4n,L5=L5,b0=b0,b1=b1,b2=b2,q=q,tube=tube,c=c,d=d,kn=kn,dz=dz,ddz=ddz,n=0.5*C*r*r)

if __name__=='__main__':
    data=np.load(Path(__file__).resolve().parents[1]/'numerics/centres.npz')
    rows=list(csv.DictReader(open(Path(__file__).resolve().parents[1]/'Z_completion_hessian/context/ball_table.csv')))
    results=[]
    for i,row in enumerate(rows):
        co={k:data[k][i] for k in ['H','Q1','Q2']}
        out=constants(co,data['M'][i],float(row['r']))
        out.update(j=int(row['j']),r=float(row['r']),R=float(row['R_centre']),n_sampled=float(row['n_sampled']))
        if out['valid']:out['ratio_n']=out['n']/out['n_sampled']
        results.append(out)
        if i<10 or i%25==0:print(i,row['j'],out,flush=True)
    p=Path(__file__).resolve().parent/'quadratic_results.json';p.write_text(json.dumps(results,indent=2))
    keys=sorted(set().union(*[x.keys() for x in results]))
    with open(p.with_suffix('.csv'),'w') as f:
        wr=csv.DictWriter(f,fieldnames=keys);wr.writeheader();wr.writerows(results)
    good=[x for x in results if x['valid']]
    print('SUCCESS',len(good),'ratio_n quantiles',np.quantile([x['ratio_n'] for x in good],[0,.25,.5,.75,1]),flush=True)
