"""Bounded numerical diagnostics. Nothing in this file accepts a proof."""
import os
for key in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS','VECLIB_MAXIMUM_THREADS'):
    os.environ[key]='1'
import json,itertools,time
from pathlib import Path
import numpy as np
from flint import arb

SOURCE=Path(__file__).resolve().parent.parent/'TC_joint_kw_20261030/data/tubes/588_2_0_2_2_1.tubes.json'

def read():
    s=json.loads(SOURCE.read_text());num=lambda x:float(arb(x).mid());cols={}
    for key,c in s['columns'].items():
        ids=list(c['tubes']);ts=[c['tubes'][i] for i in ids]
        cols[int(key)]=dict(ids=ids,v=np.array([[num(a) for a in t['v0']] for t in ts]),
            T=np.array([[[num(a) for a in row] for row in t['T']] for t in ts]),
            e=np.array([num(t['epsilon']) for t in ts]))
    return s,num(s['r']),cols

def pair_matrix(a,b,r):
    # Directional first-order error, tighter than sqrt(6)*(ea+eb).
    v=b['v'][None,:,:]-a['v'][:,None,:];z=np.exp(1j*v);s=z.sum(2)
    y=s/np.maximum(abs(s),1e-100);g=(y.conj()[:,:,None]*1j*z).real
    eps=a['e'][:,None]+b['e'][None,:]
    loss=np.linalg.norm(g,axis=2)*eps;motion=np.zeros_like(loss);width=np.zeros_like(loss)
    # All but two supplied tubes have T=0; handle only nonzero rows/columns.
    ai=np.where(np.linalg.norm(a['T'],axis=(1,2))>0)[0];bi=np.where(np.linalg.norm(b['T'],axis=(1,2))>0)[0]
    for i in ai:
        dt=b['T']-a['T'][i];motion[i]=np.linalg.norm(np.einsum('bj,bjk->bk',g[i],dt),axis=1)*r
        width[i]=np.linalg.svd(dt,compute_uv=False)[:,0]*r
    for j in bi:
        dt=b['T'][j]-a['T'];motion[:,j]=np.linalg.norm(np.einsum('aj,ajk->ak',g[:,j],dt),axis=1)*r
        width[:,j]=np.linalg.svd(dt,compute_uv=False)[:,0]*r
    return abs(s)-loss-motion-(width+eps)**2/2

if __name__=='__main__':
    start=time.monotonic();s,r,cs=read();graphs={};report={}
    for a,b in itertools.combinations(cs,2):
        m=pair_matrix(cs[a],cs[b],r);graphs[a,b]=m<=0
        report[str((a,b))]=dict(compatible=int((m<=0).sum()),total=m.size,min=float(m.min()),max=float(m.max()))
        print(a,b,report[str((a,b))],flush=True)
    def edge(a,b):return graphs[a,b] if a<b else graphs[b,a].T
    for c in (0,2,19,27):
        total=0;maximum=0
        for i in range(len(cs[25]['e'])):
            for j in np.where(edge(25,43)[i])[0]:
                nn=int(np.sum(edge(25,c)[i]&edge(43,c)[j]));total+=nn;maximum=max(maximum,nn)
        print('TRIPLES',25,43,c,total,'max',maximum,flush=True)
    print('seconds',time.monotonic()-start)
