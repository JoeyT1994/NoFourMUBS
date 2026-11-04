"""Replay all 300 center solves and diagnostic Hessian norms (NUMERICAL)."""
from pathlib import Path
import csv,json,time
import numpy as np
import core
BASE=Path(__file__).resolve().parent
TABLE=BASE.parent/'Z_completion_hessian/context/ball_table.csv'

def main():
 rows=list(csv.DictReader(TABLE.open())); out=[]; data=[]; previous=None; t0=time.time()
 for ii,row in enumerate(rows):
  th=np.array([float(row['theta0_'+str(k)]) for k in range(1,5)])
  z=core.jet(th,int(row['o']),previous)
  previous=z
  M=core.canonical_frame(z['Q1']); sv=np.linalg.svd(M,compute_uv=False)
  Tw=np.einsum('aij,ik,jl->akl',z['Q2'],M,M)
  hn,hv=core.quadratic_norm(z['Q2'],starts=4,seed=ii)
  wn,wv=core.quadratic_norm(Tw,starts=4,seed=ii)
  r=float(row['r'])
  rec=dict(j=int(row['j']),r=r,R=core.invariants(th)['R'],flat_error=float(np.max(abs(abs(z['H'])-1))),gram_error=float(np.max(abs(z['H']@z['H'].conj().T-6*np.eye(6)))),M_sv_max=float(sv[0]),M_sv_min=float(sv[-1]),sv_max_error=float(sv[0]-float(row['Mth_sv_max'])),sv_min_error=float(sv[-1]-float(row['Mth_sv_min'])),sigma_h=float(np.linalg.svd(z['jh']['J'],compute_uv=False)[-1]),sigma_v=float(np.linalg.svd(z['jv']['J'],compute_uv=False)[-1]),hessian_theta_est=hn,hessian_theta_flatten=core.flatten_bound(z['Q2']),hessian_w_est=wn,hessian_w_flatten=core.flatten_bound(Tw),quadratic_n_est=.5*wn*r*r,n_cert_input=float(row['n_cert']),n_sampled_input=float(row['n_sampled']))
  out.append(rec); data.append(z|dict(M=M,theta_hess_dir=hv,w_hess_dir=wv))
  if (ii+1)%25==0: print(ii+1,'elapsed',round(time.time()-t0,2),flush=True)
 keys=['H','theta','phih','phiv','Q0','Q1','Q2','M','theta_hess_dir','w_hess_dir']
 np.savez_compressed(BASE/'centres.npz',**{k:np.stack([z[k] for z in data]) for k in keys},j=np.array([int(r['j']) for r in rows]),r=np.array([float(r['r']) for r in rows]))
 with (BASE/'centres.csv').open('w') as f:
  w=csv.DictWriter(f,fieldnames=out[0].keys()); w.writeheader();w.writerows(out)
 stats={}
 for k in out[0]:
  a=np.array([r[k] for r in out]); stats[k]=dict(min=float(a.min()),median=float(np.median(a)),max=float(a.max()))
 (BASE/'centre_summary.json').write_text(json.dumps(dict(status='NUMERICAL',count=len(out),summary=stats),indent=2))
 print(json.dumps(stats,indent=2))
if __name__=='__main__': main()
