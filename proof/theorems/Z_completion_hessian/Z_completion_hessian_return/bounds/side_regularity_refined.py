"""NUMERICAL centre-cancellation side-Jacobian sign majorant."""
from side_regularity import *

def refined_bound(phi,A,B,V,r,t):
 x=np.exp(1j*phi[:3]);y=np.exp(1j*phi[3:]);Y=np.linalg.inv(phase_jac(phi))
 atoms=[]
 for i in range(3):
  atoms.extend([(0,i,-1j*np.conj(x[i]),-A[i],-B[i]),(1,i+3,-1j*np.conj(y[i]),-A[i+3],-B[i+3]),
                (2,i,1j*x[i]*np.conj(y[i]),A[i]-A[i+3],B[i]-B[i+3]),
                (2,i+3,-1j*x[i]*np.conj(y[i]),A[i]-A[i+3],B[i]-B[i+3])])
 kap=[];ss=[];tt=[];cc=[]
 for row,col,z,s,T in atoms:
  kv=(Y[:,row]-1j*Y[:,row+3])*z
  km=np.zeros((6,6),complex);km[:,col]=kv
  kap.append(km);ss.append(s);tt.append(T)
  cc.append(np.linalg.norm(np.stack([kv.real,kv.imag],axis=1),2))
 kap=np.array(kap);ss=np.array(ss);tt=np.array(tt);cc=np.array(cc)
 a1=np.einsum('aoi,ak->oik',kap,1j*ss).real
 a2=np.einsum('aoi,akl->oikl',kap,1j*tt-ss[:,:,None]*ss[:,None,:]).real
 a1n=np.linalg.norm(a1.reshape(6,-1),2);a2n=np.linalg.norm(a2.reshape(6,-1),2)
 sn=np.linalg.norm(ss,axis=1);tn=np.linalg.norm(tt,ord=2,axis=(1,2));an=sn+r*tn
 L3=np.sum(cc*(an**3+3*tn*an))
 q0=a1n*r+.5*a2n*r*r+L3*r**3/6
 q=q0+np.sqrt(5)*np.linalg.norm(Y,2)*np.linalg.norm(V,2)*t
 return dict(q=float(q),q0=float(q0),a1=float(a1n),a2=float(a2n),L3=float(L3))

if __name__=='__main__':
 p=Path(__file__).resolve().parents[1];data=np.load(p/'numerics/centres.npz');res=json.load(open(p/'numerics/refined_results.json'));out=[]
 for i,a in enumerate(res):
  if not a['valid']:continue
  co={k:data[k][i] for k in ['H','Q1','Q2']};T=tensors(co,data['M'][i]);r=a['r'];tube=a['tube']
  item={'j':a['j'],'R':a['R']}
  for key,S,phi in [('h',SH,data['phih'][i]),('v',SV,data['phiv'][i])]:
   z=refined_bound(phi,S@T['U'],np.einsum('sa,aij->sij',S,T['H2']),S@X,r,tube)
   item.update({key+'_'+k:v for k,v in z.items()})
  item['pass']=max(item['h_q'],item['v_q'])<1;out.append(item)
 json.dump(out,open(p/'bounds/side_regularity_refined.json','w'),indent=2)
 print('passed',sum(x['pass'] for x in out),'/',len(out));print('q quantiles',np.quantile([max(x['h_q'],x['v_q']) for x in out],[0,.5,1]));print('fail',[(x['j'],x['R'],x['h_q'],x['v_q']) for x in out if not x['pass']])
