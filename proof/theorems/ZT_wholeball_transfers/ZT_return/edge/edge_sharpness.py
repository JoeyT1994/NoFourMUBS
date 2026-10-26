"""Arb lower witnesses for Hessian sharpness on the full edge ellipsoid.

The floating optimizer only proposes directions. Directions are stored as exact
binary rational vectors and normalized with Arb before each lower-bound check.
"""
import sys,json,gzip,argparse,time
from pathlib import Path
import numpy as np
from flint import arb,arb_mat
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE));sys.path.insert(0,str(HERE.parent))
import edge_augmented as EA
import zt_patch as P

def lower_witness(H,vec):
 v=[arb(float(x)) for x in vec];n=sum((x*x for x in v),arb(0)).sqrt();v=[x/n for x in v]
 out=arb_mat([[sum((H[k,4*i+j]*v[i]*v[j] for i in range(4) for j in range(4)),arb(0))] for k in range(H.nrows())])
 return EA.W.lower(sum((x*x for x in out.entries()),arb(0)).sqrt())

def propose(tensors,starts=32):
 # Multiple quartic power iterations; no optimality claim is needed.
 rng=np.random.default_rng(271828);v=rng.normal(size=(len(tensors),starts,4));v/=np.linalg.norm(v,axis=-1,keepdims=True)
 for _ in range(50):
  values=np.einsum('geij,gni,gnj->gne',tensors,v,v)
  g=np.einsum('gne,geij,gnj->gni',values,tensors,v);gn=np.linalg.norm(g,axis=-1,keepdims=True)
  v=np.where(gn>0,g/np.maximum(gn,1e-300),v)
 norms=np.linalg.norm(np.einsum('geij,gni,gnj->gne',tensors,v,v),axis=-1)
 return v[np.arange(len(v)),norms.argmax(1)]

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--generate',action='store_true');p.add_argument('--only-full',action='store_true');args=p.parse_args();start=time.monotonic()
 with gzip.open(EA.DEFAULT_CERTIFICATE,'rt') as f:cert=json.load(f)
 model=EA.edge_model(cert['edge'][0]);H=EA.W.mid_np(model['H2']).reshape(36,4,4)
 path=HERE/'edge_sharpness_witnesses.json'
 if args.generate:
  direction=propose(H[None,:,:,:],starts=1000)[0]
  witness={'full_direction':[float(x).hex() for x in direction],'groups':[]}
 else:witness=json.loads(path.read_text());direction=np.array([float.fromhex(x) for x in witness['full_direction']])
 lo=lower_witness(model['H2'],direction);C=model['summary']['Hessian'];full=dict(lower=lo,upper=C,ratio_upper=EA.W.upper(arb(C)/arb(lo)))
 rows=[]
 if not args.only_full:
  A=[];HA=[]
  for group in cert['edge'][0]['transfers']:
   target=P.SC.Ball(cert['seeds'][group['target']]);a=P.Z.mat(target.Mth).inv()*P.Z.mat(P.SC.corner_L(group['rows'],group['cols'])@P.SC.g_matrix(group['g']))
   A.append(a);HA.append(a*model['H2'])
  if args.generate:directions=propose(np.array([EA.W.mid_np(h).reshape(4,4,4) for h in HA]))
  else:directions=np.array([[float.fromhex(x) for x in row['direction']] for row in witness['groups']])
  for gid,(a,h,direction) in enumerate(zip(A,HA,directions)):
   bound=EA.weighted_hessian(model,model['ball'].r,a)['weighted_Hessian'];low=lower_witness(h,direction);ratio=EA.W.upper(arb(bound)/arb(low))
   rows.append(dict(group=gid,lower=low,upper=bound,ratio_upper=ratio))
   if args.generate:witness['groups'].append({'group':gid,'direction':[float(x).hex() for x in direction]})
   if gid%300==0:print(json.dumps({'group':gid,'seconds':time.monotonic()-start}),flush=True)
 if args.generate:path.write_text(json.dumps(witness,separators=(',',':'))+'\n')
 out=dict(status='CERTIFIED lower witnesses and rigorous upper bounds',full=full,groups=rows,seconds=time.monotonic()-start)
 if rows:out['weighted_ratio_quantiles']=np.quantile([r['ratio_upper'] for r in rows],[0,.5,.9,1]).tolist();out['all_weighted_below_3']=all(arb(r['ratio_upper'])<3 for r in rows)
 (HERE/('edge_sharpness_full_only_summary.json' if args.only_full else 'edge_sharpness_summary.json')).write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({k:v for k,v in out.items() if k!='groups'},indent=2),flush=True)
if __name__=='__main__':main()
