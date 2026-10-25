"""Numerical whole-ball side-Jacobian sign check on quadratic tubes."""
import sys,csv,json,itertools
from pathlib import Path
import numpy as np
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'fullphase'))
from prototype import tensors,X
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'numerics'))
from core import phase_jac,realify

def smap(coords):
 S=np.zeros((6,36))
 for k,(i,j) in enumerate(coords):S[k,6*i+j]=1;S[k,6*i]-=1;S[k,j]-=1;S[k,0]+=1
 return S
SH=smap([(i,j) for i in [1,2] for j in [3,4,5]])
SV=smap([(i,j) for j in [1,2] for i in [3,4,5]])

def bound(phi,A,B,V,r,t):
 x=np.exp(1j*phi[:3]);y=np.exp(1j*phi[3:])
 J=phase_jac(phi);Y=np.linalg.inv(J);kn=np.linalg.norm(Y,2)
 T=np.zeros((3,6,6),complex)
 for i in range(3):
  T[0,i,i]=-np.conj(x[i]);T[1,i+3,i+3]=-np.conj(y[i])
  z=-x[i]*np.conj(y[i]);T[2,i,i]=z;T[2,i+3,i+3]=z;T[2,i,i+3]=-z;T[2,i+3,i]=-z
 C=np.einsum('ab,bij,ik->akj',Y,realify(T),A)
 c=np.linalg.norm(C.reshape(6,-1),2)
 an=np.linalg.norm(A,2);bn=np.linalg.norm(B.reshape(6,-1),2);vn=np.linalg.norm(V,2)
 delta=an*r+.5*bn*r*r+vn*t
 q=c*r+np.sqrt(5)*kn*(.5*bn*r*r+vn*t)+1.5*kn*delta*delta
 return dict(q=float(q),c=float(c),an=float(an),bn=float(bn),vn=float(vn),delta=float(delta),sigma=float(1/kn))

if __name__=='__main__':
 p=Path(__file__).resolve().parents[1]
 data=np.load(p/'numerics/centres.npz');res=json.load(open(p/'bounds/quadratic_results.json'));out=[]
 for i,a in enumerate(res):
  if not a['valid']:continue
  co={k:data[k][i] for k in ['H','Q1','Q2']};T=tensors(co,data['M'][i]);r=a['r'];tube=a['tube']
  item={'j':a['j'],'R':a['R']}
  for key,S,phi in [('h',SH,data['phih'][i]),('v',SV,data['phiv'][i])]:
   z=bound(phi,S@T['U'],np.einsum('sa,aij->sij',S,T['H2']),S@X,r,tube)
   item.update({key+'_'+k:v for k,v in z.items()})
  item['pass']=max(item['h_q'],item['v_q'])<1
  out.append(item)
 json.dump(out,open(p/'bounds/side_regularity.json','w'),indent=2)
 print('passed',sum(x['pass'] for x in out),'/',len(out))
 print('q quantiles',np.quantile([max(x['h_q'],x['v_q']) for x in out],[0,.25,.5,.75,1]))
 print('failR>=100',[(x['j'],x['R'],x['h_q'],x['v_q']) for x in out if not x['pass'] and x['R']>=100])
 print(out[:2])
