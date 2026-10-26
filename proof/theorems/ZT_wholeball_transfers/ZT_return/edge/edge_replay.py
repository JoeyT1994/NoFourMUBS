"""Replay edge-sphere patches from one augmented Z certificate, using Arb.

Default files are the deterministic proposal output of edge_study.py. Every
patch, including a former original-leaf fallback, is checked anew. The result
is full-sphere CERTIFIED only after every transfer and exact coverage pass.
"""
import sys,json,gzip,time,argparse,collections
from pathlib import Path
from flint import arb,arb_mat
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE));sys.path.insert(0,str(HERE.parent))
import edge_augmented as EA
import zt_patch as P

def residual_jacobian(q,model,c):
 F,J=P.residual_jacobian(q)
 inds=[6*i+3+j for i in range(3) for j in range(3)]
 f,g=P.psi_gradient(arb_mat([[q[i,0]] for i in inds]))
 FF=arb_mat(31,1);JJ=arb_mat(31,36)
 for i in range(30):
  FF[i,0]=F[i,0]
  for j in range(36):JJ[i,j]=J[i,j]
 FF[30,0]=f-(model['Rhs']*c)[30,0]
 for k,i in enumerate(inds):JJ[30,i]=g[0,k]
 return FF,JJ

def centre_jet(model,c):
 qp=model['Qbase']+model['U']*c+P.tensor_at(model['H2'],c)*c/2
 qph=model['Q0']+model['U']*c+P.tensor_at(model['H2'],c)*c/2
 P1=model['U']+P.tensor_at(model['H2'],c);zm=arb_mat(22,1)
 for _ in range(5):
  F,J=residual_jacobian(qp+model['X']*zm,model,c)
  zm=(zm-(model['Y']*J*model['X']).solve(model['Y']*F)).mid()
 if not P.matrix_norm(zm)<model['tau']:raise ArithmeticError('edge centre proposal outside original normal tube')
 F,_=residual_jacobian(qp+model['X']*zm,model,c)
 eta=P.matrix_norm(model['Y']*F)/(1-model['q']);rad=arb(EA.W.upper(eta))
 zc=arb_mat([[arb(zm[i,0],rad)] for i in range(22)])
 _,J=residual_jacobian(qp+model['X']*zc,model,c)
 Dz=-(model['Y']*J*model['X']).solve(model['Y']*(J*P1-model['Rhs']))
 return qph+model['X']*zc,P1+model['X']*Dz,eta

class EdgeTransfer(P.Transfer):
 def __init__(self,model,target,group):
  super().__init__(model,target,group)
  self.weighted=EA.weighted_hessian(model,model['ball'].r,self.A)
 def check_global(self,box):
  old=self.xnorm
  try:
   self.xnorm=arb(self.weighted['weighted_tau'])/self.model['tau']
   return super().check(box)
  finally:self.xnorm=old
 def check_true_centre(self,box):
  c=P.anchor_for_box(box,self.r);jet=centre_jet(self.model,c);old=self.xnorm
  try:
   self.xnorm=(arb(self.weighted['weighted_Hessian'])-self.hnorm)/self.model['Z2']
   ans=super().check_local(box,jet=jet)
   ans['mode']='edge actual centre';return ans
  finally:self.xnorm=old

def main():
 p=argparse.ArgumentParser(description=__doc__)
 p.add_argument('--certificate',default=str(EA.DEFAULT_CERTIFICATE))
 p.add_argument('--groups',default=str(HERE/'edge_proposed_patches.json'))
 p.add_argument('--fallback',default=str(HERE/'edge_proposed_fallback.json'))
 p.add_argument('--limit',type=int,default=0)
 p.add_argument('--output',help='defaults to the full or partial replay summary as appropriate')
 args=p.parse_args();started=time.monotonic()
 with gzip.open(args.certificate,'rt') as f:cert=json.load(f)
 model=EA.edge_model(cert['edge'][0]);groups=json.loads(Path(args.groups).read_text());fallback=json.loads(Path(args.fallback).read_text()) if args.fallback else []
 counts=collections.Counter();listed=set();failures=[];mins={'target':float('inf'),'orientation':float('inf')};total=sum(len(g['boxes']) for g in groups+fallback)
 for local,gg in ((False,groups),(True,fallback)):
  for group in gg:
   target=group.get('target')
   if not isinstance(target,int) or isinstance(target,bool) or not 0<=target<len(cert['seeds']):raise ValueError('invalid edge transfer target')
   tr=EdgeTransfer(model,P.SC.Ball(cert['seeds'][target]),group)
   boxes=P.SC.dyadic_boxes(group['boxes'],cert['max_level'])
   for box in boxes:
    if args.limit and counts['tested']>=args.limit:break
    try:
     result=tr.check_true_centre(box) if local else tr.check_global(box)
     if not result['ok'] and not local:result=tr.check_true_centre(box)
    except (ArithmeticError,ValueError) as e:result=dict(ok=False,reason=str(e),box=list(box))
    counts['tested']+=1
    if result['ok']:
     counts['passed']+=1;counts['local' if result.get('mode')=='edge actual centre' else 'global']+=1;listed.add(tuple(box))
     mins['target']=min(mins['target'],result['target_margin_lower'])
     mins['orientation']=min(mins['orientation'],*result['orientation_margins_lower'])
    else:failures.append({'group':group.get('source_group'),'target':group['target'],**result})
    if counts['tested']%2000==0:print(json.dumps({'counts':dict(counts),'failures':len(failures),'seconds':time.monotonic()-started}),flush=True)
   if args.limit and counts['tested']>=args.limit:break
  if args.limit and counts['tested']>=args.limit:break
 out=dict(status='NOT ESTABLISHED full sphere',centre=model['summary'],counts=dict(counts),total_listed=total,failures=failures,minima=mins,seconds=time.monotonic()-started,partial=bool(args.limit))
 if not failures and not args.limit:
  cov,info=P.SC.covered(listed,cert['max_level'],P.SC.misses_unit_sphere);out['coverage']=dict(ok=cov,nodes=info)
  if cov:out['status']='CERTIFIED full edge sphere transfers'
 elif not failures:out['status']='CERTIFIED listed diagnostic patches only'
 output_path=Path(args.output or HERE/('edge_replay_partial_summary.json' if args.limit else 'edge_replay_summary.json'));output_path.parent.mkdir(parents=True,exist_ok=True)
 output_path.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2),flush=True)
if __name__=='__main__':main()
