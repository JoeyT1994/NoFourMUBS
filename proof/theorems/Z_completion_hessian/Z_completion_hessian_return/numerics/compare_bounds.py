"""Join numerical center/ball benchmark and a per-ball bound table, by j."""
from pathlib import Path
import csv,json,argparse,math
import numpy as np
BASE=Path(__file__).resolve().parent

def main():
 p=argparse.ArgumentParser();p.add_argument('--bounds',default=str(BASE.parent/'bounds/quadratic_results.csv'));p.add_argument('--prefix',default='comparison_quadratic');p.add_argument('--C',default='C');p.add_argument('--n',default='n');a=p.parse_args()
 centers=list(csv.DictReader((BASE/'centres.csv').open()));samples={int(x['j']):x for x in csv.DictReader((BASE/'sampled_balls.csv').open())};bounds={int(x['j']):x for x in csv.DictReader(open(a.bounds))};out=[]
 for cc in centers:
  j=int(cc['j']);ss=samples[j];bb=bounds.get(j,{})
  C=float(bb[a.C]) if bb.get(a.C) else math.nan;n=float(bb[a.n]) if bb.get(a.n) else math.nan
  valid=np.isfinite(C) and np.isfinite(n) and bb.get('valid','True') not in ['False','false','0']
  out.append(dict(j=j,R=float(cc['R']),r=float(cc['r']),valid=bool(valid),C=C,n=n,H_w_sample=float(ss['hessian_w_sample_est']),H_theta_sample=float(ss['hessian_theta_sample_est']),remainder_sample=float(ss['remainder_sample']),n_cert_input=float(cc['n_cert_input']),n_sampled_input=float(cc['n_sampled_input']),C_over_H_sample=C/float(ss['hessian_w_sample_est']),n_over_remainder_sample=n/float(ss['remainder_sample']),input_cert_over_remainder_sample=float(cc['n_cert_input'])/float(ss['remainder_sample']),scalar_center_n_over_input_cert=.5*float(cc['hessian_theta_est'])*float(cc['M_sv_max'])**2*float(cc['r'])**2/float(cc['n_cert_input'])))
 with (BASE/(a.prefix+'.csv')).open('w') as f:
  w=csv.DictWriter(f,fieldnames=out[0]);w.writeheader();w.writerows(out)
 def summarize(rows):
  vv=[r for r in rows if r['valid']]
  o=dict(count=len(rows),valid=len(vv),C_ratio_le_3=sum(r['C_over_H_sample']<=3 for r in vv),n_ratio_le_3=sum(r['n_over_remainder_sample']<=3 for r in vv))
  for k in ['C_over_H_sample','n_over_remainder_sample','input_cert_over_remainder_sample','scalar_center_n_over_input_cert']:
   v=np.array([r[k] for r in (vv if k in ['C_over_H_sample','n_over_remainder_sample'] else rows)])
   o[k]=dict(min=float(v.min()),median=float(np.median(v)),max=float(v.max())) if len(v) else None
  return o
 bins=[0,50,100,150,200,250,300,float('inf')]
 stats=dict(status='NUMERICAL comparisons against sampled lower estimates; not certified suprema',source=a.bounds,total=summarize(out),bins={str(lo)+' <= R < '+str(hi):summarize([r for r in out if lo<=r['R']<hi]) for lo,hi in zip(bins,bins[1:])})
 (BASE/(a.prefix+'.json')).write_text(json.dumps(stats,indent=2));print(json.dumps(stats,indent=2))
if __name__=='__main__':main()
