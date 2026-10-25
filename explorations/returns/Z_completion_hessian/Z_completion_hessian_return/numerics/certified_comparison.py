"""Join certified upper bounds and independently certified lower witnesses."""
from pathlib import Path
import csv,json,sys
import numpy as np
BASE=Path(__file__).resolve().parent
sys.path.insert(0,str(BASE.parent/'fullphase'))
from certify import arb,ctx,lower,upper

def main():
 ctx.prec=224
 cert={x['j']:x for x in map(json.loads,open(BASE.parent/'fullphase/FINAL_CERTIFICATES.jsonl'))}
 hs={x['j']:x for x in map(json.loads,open(BASE/'lower_witnesses.jsonl'))}
 ns={x['j']:x for x in map(json.loads,open(BASE/'remainder_lower_witnesses.jsonl'))}
 centers=list(csv.DictReader((BASE/'centres.csv').open()));dd=np.load(BASE/'centres.npz');out=[]
 if len(cert)!=len(centers):raise RuntimeError('whole-ball certificate file is incomplete')
 for ix,rr in enumerate(centers):
  j=int(rr['j']);c=cert[j];h=hs[j];n=ns[j]
  rec=dict(j=j,R_input=float(rr['R']),r=float(rr['r']),status=c['status'],H_w_lower=h.get('hessian_w_lower'),H_theta_lower=h.get('hessian_theta_lower'))
  if c.get('contraction') and c.get('orientation'):
   if not h['status']=='CERTIFIED' or not n['status']=='CERTIFIED':raise ValueError('missing certified lower witness')
   Mrecord=np.array([[float.fromhex(x) for x in row] for row in c['rounded_record']['Mth_hex']])
   if not np.array_equal(Mrecord,dd['M'][ix]):raise ValueError('M mismatch')
   rounded_lower=arb(n['remainder_lower'])-arb(c['P_rounding'])-arb(c['rounded_record']['r_decimal'])*arb(c['U_rounding'])
   if not rounded_lower>0:raise ValueError('rounded-record remainder lower bound nonpositive')
   rounded_lower_float=lower(rounded_lower)
   rec['rounded_record_remainder_lower']=rounded_lower_float
   rec['n_record_vs_exact_remainder_ratio_upper']=upper(arb(c['n_record'])/arb(n['remainder_lower']))
   for key,cu,lo in [('Cw',c['Cw'],h['hessian_w_lower']),('Ctheta',c['Ctheta_ellipsoid'],h['hessian_theta_lower']),('n_direct',c['n_direct'],n['remainder_lower']),('n_record',c['n_record'],rounded_lower_float)]:
    rec[key+'_upper']=cu;rec[key+'_ratio_upper']=upper(arb(cu)/arb(lo));rec[key+'_ratio_below_3']=bool(arb(cu)<3*arb(lo))
   rec['remainder_lower']=n['remainder_lower']
   rec['R_center_lower']=lower(4*arb(c['sign_h']['f_abs_lower'])**2)
  out.append(rec)
 keys=list(dict.fromkeys(k for row in out for k in row))
 with (BASE/'CERTIFIED_COMPARISON.csv').open('w') as f:
  w=csv.DictWriter(f,fieldnames=keys);w.writeheader();w.writerows(out)
 def summary(rows):
  valid=[x for x in rows if 'Cw_upper' in x]
  o=dict(rows=len(rows),strict_certified=len(valid))
  for key in ['Cw','Ctheta','n_direct','n_record']:
   v=[r[key+'_ratio_upper'] for r in valid]
   o[key]=dict(count_below_3=sum(r[key+'_ratio_below_3'] for r in valid),ratio_upper_min=min(v),ratio_upper_median=float(np.median(v)),ratio_upper_max=max(v)) if v else None
  return o
 stats=dict(status='CERTIFIED upper-to-true-supremum ratios; n_direct uses exact-center Taylor residual, n_record uses rounded-record residual after certified rounding correction',total=summary(out),thresholds={str(R):summary([x for x in out if x.get('R_center_lower',x['R_input'])>=R]) for R in [50,100,150,200,250,280,300]},failures=[x['j'] for x in out if 'Cw_upper' not in x])
 raw=json.load((BASE/'raw_scalar_witnesses.json').open())
 stats['scalar_recipe_failure']=[dict(j=x['j'],raw_seed_hessian_lower=x['raw_hessian_lower'],scalar_recipe_n_lower=x['scalar_recipe_n_lower'],direct_remainder_upper=cert[x['j']]['n_direct'],loss_factor_lower=lower(arb(x['scalar_recipe_n_lower'])/arb(cert[x['j']]['n_direct']))) for x in raw]
 (BASE/'CERTIFIED_COMPARISON.json').write_text(json.dumps(stats,indent=2));print(json.dumps(stats,indent=2))
if __name__=='__main__':main()
