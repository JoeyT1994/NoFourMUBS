"""NUMERICAL refinement of the quadratic-predictor contraction (separate experiment)."""
from pathlib import Path
import sys,csv,json
import numpy as np
BASE=Path(__file__).resolve().parent
sys.path.insert(0,str(BASE.parent/'fullphase'))
from prototype import tensors,DIF,X

def op(T):return float(np.linalg.norm(T.reshape(T.shape[0],-1),2))

def refined(co,M,r,b):
 a=tensors(co,M);K=a['K'];H2=a['H2'];U=a['U']
 s=a['du'].reshape(90,4);T=np.einsum('pka,aij->pkij',DIF,H2).reshape(90,4,4);dx=a['dx'].reshape(90,21)
 kap=((K[:,:15]-1j*K[:,15:])[:,:,None]*a['z'][None,:,:]).reshape(21,90)
 A2=np.einsum('oa,aij,ak->oijk',kap,-1j*s[:,:,None]*s[:,None,:]-T,dx).real
 a2=op(A2)
 cn=np.linalg.norm(np.stack([kap.real.T,kap.imag.T],axis=2),ord=2,axis=(1,2));sn=np.linalg.norm(s,axis=1);tn=np.linalg.norm(T,ord=2,axis=(1,2));dxn=np.linalg.norm(dx,axis=1)
 an=sn+r*tn;L3a=float(np.sum(cn*dxn*(an**3+3*tn*an)))
 c=b['c'];d=b['d'];kn=b['kn'];beta=b['beta'];b0=b['b0'];b1=b['b1'];b2=b['b2'];L2=2*np.sqrt(3)*kn;L3=2*np.sqrt(6)*kn
 rbase=r+.5*beta*r*r
 qbase=c*r+.5*a2*r*r+L3a*r**3/6
 def qfun(t):return qbase+(d+L3*rbase)*t+.5*L3*t*t
 tube=b0*1.1
 for _ in range(150):
  q=qfun(tube)
  if q>=1:break
  need=b0/(1-q)
  if tube>need:break
  tube=1.001*need
 valid=q<1 and tube>b0/(1-q)
 result=dict(b);result.update(valid=bool(valid),q=q,tube=tube,qbase=qbase,a2=a2,L3a=L3a)
 if valid:
  delta=rbase+tube
  # Bound derivative A'(w) exactly to second order; then vary z.
  m2=L3*(1+beta*r)**2+L2*beta
  m1=c+a2*r+.5*L3a*r*r+L3*(1+beta*r)*tube
  mzz=d+L3*delta
  dz=(b1+m1*tube)/(1-q)
  ddz=(b2+m2*tube+2*m1*dz+mzz*dz*dz)/(1-q)
  C=beta+ddz;n=.5*beta*r*r+tube
  result.update(C=C,dz=dz,ddz=ddz,n=.5*C*r*r,n_direct=n,ratio_direct=n/b['n_sampled'])
 else:
  for k in ['C','n','n_direct','ratio_direct','ratio_n','dz','ddz']:result.pop(k,None)
 return result

def main():
 z=np.load(BASE/'centres.npz');b=json.load((BASE.parent/'bounds/quadratic_results.json').open());out=[]
 for i,bb in enumerate(b):
  co={k:z[k][i] for k in ['H','Q1','Q2']};rr=refined(co,z['M'][i],float(z['r'][i]),bb);out.append(rr)
  if i%50==0:print(i,rr['j'],rr['valid'],rr['q'],flush=True)
 (BASE/'refined_results.json').write_text(json.dumps(out,indent=2));keys=sorted(set().union(*(x.keys() for x in out)))
 with (BASE/'refined_results.csv').open('w') as f:w=csv.DictWriter(f,fieldnames=keys);w.writeheader();w.writerows(out)
 print('valid',sum(x['valid'] for x in out),'fails',[(x['j'],x['qbase'],x['q']) for x in out if not x['valid']])
if __name__=='__main__':main()
