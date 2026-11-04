"""Numerical proposal cover for the edge sphere with CERTIFIED weighted tails.

The proposed cover must subsequently be replayed by edge_replay.py. This survey
uses at most 16 candidates per cell, chosen by centre distance; it is not optimal.
"""
import sys,json,gzip,time,itertools,collections
from pathlib import Path
import numpy as np
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE));sys.path.insert(0,str(HERE.parent));sys.path.insert(0,str(HERE.parent/'counts'))
import edge_augmented as EA
import zt_patch as P
from count_study import corner,array,read_float,children,misses,geometry,SIGNS
from weighted_study import side_selection,NU,SIG

class EdgeModels:
 def __init__(self,source,seeds,model,weights):
  self.source=source; self.r=float(model['r']);self.q0=model['Q0'];self.u=model['U']*self.r;self.h=model['H2']*self.r*self.r;self.X=model['X'];self.tau=float(model['tau'])
  self.n=len(source['transfers']); self.aa=[];self.bb=[];self.hh=[];self.tail=[];self.hnorm=[]
  self.ss=[collections.defaultdict(list),collections.defaultdict(list)]
  for i,g in enumerate(source['transfers']):
   tg=seeds[g['target']];tr=read_float(tg['r']);Mi=np.linalg.inv(array(tg,'Mth',(4,4)));A=Mi@corner(g['rows'],g['cols'],g['g'])/tr
   off=Mi@(2*np.pi*np.array(g['wind'])-array(tg,'theta0',(4,)))/tr
   self.aa.append(A@self.q0+off);self.bb.append(A@self.u);hh=np.einsum('en,nij->eij',A,self.h);self.hh.append(hh);self.hnorm.append(np.linalg.norm(hh.reshape(4,16),2));self.tail.append(weights[i]['weighted_tau']/tr)
   for side,(which,sg) in enumerate([('h',tg['o']),('v',-tg['o'])]):
    S,R=side_selection(g['g'],g['rows'],g['cols'],which);RH=np.einsum('en,nij->eij',R,self.h);RX=R@self.X
    for key,value in dict(S=S,R=R,sg=sg,RH=RH,RX=RX,RU=R@self.u,hn=np.linalg.norm(RH.reshape(9,16),2),xn=np.linalg.norm(RX,2)).items():self.ss[side][key].append(value)
  for key in ('aa','bb','hh','hnorm','tail'):setattr(self,key,np.array(getattr(self,key)))
  for s in self.ss:
   for key in s:s[key]=np.array(s[key])
 def check(self,boxes,kbest=16):
  c,h=geometry(boxes);n=len(boxes)
  # Candidate proposal only. Every accepted inequality is later replayed.
  centre=self.aa[None,:,:]+np.einsum('gei,ni->nge',self.bb,c)+.5*np.einsum('geij,ni,nj->nge',self.hh,c,c)
  score=np.linalg.norm(centre,axis=-1)+self.tail[None,:]+2*h[:,None]**2*self.hnorm[None,:]
  k=min(kbest,self.n);inds=np.argpartition(score,k-1,axis=1)[:,:k]
  Hc=np.einsum('ngeij,nj->ngei',self.hh[inds],c);B=self.bb[inds]+Hc
  a=self.aa[inds]+np.einsum('ngei,ni->nge',self.bb[inds],c)+.5*np.einsum('ngei,ni->nge',Hc,c)
  off=h[:,None,None]*SIGNS[None,:,:];v=c[:,None,:]+off;rad=np.einsum('nvi,nvi->nv',v,v)-1
  vals=a[:,:,None,:]+np.einsum('ngei,nvi->ngve',B,off);f=np.einsum('ngve,ngve->ngv',vals,vals)
  maj=f.max(-1);lam=np.linalg.svd(B,compute_uv=False)[...,-1]**2*(1-1e-9)
  for frac in (.25,.5,.75,1):maj=np.minimum(maj,(f-frac*lam[:,:,None]*rad[:,None,:]).max(-1))
  bound=np.sqrt(np.maximum(maj,0))+2*h[:,None]**2*self.hnorm[inds]+self.tail[inds];ok=bound<1-1e-8
  if ok.any():
   qpc=self.q0[None,:]+c@self.u.T+.5*np.einsum('eij,ni,nj->ne',self.h,c,c)
   for s in self.ss:
    phase=np.einsum('ngeo,no->nge',s['S'][inds],qpc)@NU.T
    ff=np.sin(phase)@SIG;grad=(np.cos(phase)*SIG[None,None,:])@NU
    RD=s['RU'][inds]+np.einsum('ngeij,nj->ngei',s['RH'][inds],c)
    eh=2*h[:,None]**2*s['hn'][inds]+s['xn'][inds]*self.tau
    ed=np.linalg.svd(RD,compute_uv=False)[...,0]*2*h[:,None]+eh
    gh=np.einsum('nge,ngeij->ngij',grad,s['RH'][inds]);eg=np.linalg.svd(gh,compute_uv=False)[...,0]*2*h[:,None]**2+np.linalg.norm(np.einsum('nge,ngej->ngj',grad,s['RX'][inds]),axis=-1)*self.tau
    gl=np.einsum('nge,ngei->ngi',grad,RD)
    margin=s['sg'][inds]*ff-h[:,None]*np.abs(gl).sum(-1)-eg-36*ed*ed
    ok &= margin>1e-8
  chosen=np.where(ok,bound,np.inf).argmin(1);good=ok[np.arange(n),chosen]
  return good,inds[np.arange(n),chosen]

def group_boxes(source,chosen):
 by=collections.defaultdict(list)
 for gid,b in chosen:by[gid].append(list(b))
 return [{**{k:v for k,v in source['transfers'][gid].items() if k!='boxes'},'boxes':bs,'source_group':gid} for gid,bs in by.items()]

def main():
 start=time.monotonic()
 with gzip.open(EA.DEFAULT_CERTIFICATE,'rt') as f:cert=json.load(f)
 source=cert['edge'][0];model=EA.edge_model(source);P.export_numeric(model,HERE/'edge_model.npz')
 (HERE/'edge_model_summary.json').write_text(json.dumps(model['summary'],indent=2)+'\n')
 wp=HERE/'edge_weighted_constants.json'
 if wp.exists():weights=json.loads(wp.read_text())['groups']
 else:
  weights=[]
  for i,g in enumerate(source['transfers']):
   tg=P.SC.Ball(cert['seeds'][g['target']]);A=P.Z.mat(tg.Mth).inv()*P.Z.mat(P.SC.corner_L(g['rows'],g['cols'])@P.SC.g_matrix(g['g']))
   weights.append(EA.weighted_hessian(model,model['ball'].r,A))
   if i%200==0:print(json.dumps({'weighted_groups':i,'seconds':time.monotonic()-start}),flush=True)
  wp.write_text(json.dumps({'status':'CERTIFIED constants over full edge ball','groups':weights},separators=(',',':'))+'\n')
 data=dict(np.load(HERE/'edge_model.npz'));models=EdgeModels(source,cert['seeds'],data,weights)
 listed={tuple(b):gid for gid,g in enumerate(source['transfers']) for b in g['boxes']}
 active=[(0,0,0,0,0)];selected=[];fallback=[];levels={};examined=0
 for level in range(cert['max_level']+1):
  if not active:break
  nxt=[]
  for lo in range(0,len(active),256):
   ch=active[lo:lo+256];ok,gids=models.check(ch)
   for b,good,gid in zip(ch,ok,gids):
    examined+=1
    if good:selected.append((int(gid),b));levels[level]=levels.get(level,0)+1
    elif b in listed:fallback.append((listed[b],b));levels[level]=levels.get(level,0)+1
    elif level<cert['max_level']:nxt.extend(x for x in children(b) if not misses(x))
    else:raise ValueError('uncovered box '+str(b))
  print(json.dumps({'level':level,'nodes':len(active),'selected_total':len(selected),'fallback_total':len(fallback),'next':len(nxt),'seconds':time.monotonic()-start}),flush=True);active=nxt
 selected_groups=group_boxes(source,selected);fallback_groups=group_boxes(source,fallback)
 (HERE/'edge_proposed_patches.json').write_text(json.dumps(selected_groups,separators=(',',':'))+'\n')
 (HERE/'edge_proposed_fallback.json').write_text(json.dumps(fallback_groups,separators=(',',':'))+'\n')
 summary=dict(status='NUMERICAL proposal; certified constants but patch inequalities require replay',original_boxes=len(listed),patch_boxes=len(selected),fallback_boxes=len(fallback),total_boxes=len(selected)+len(fallback),levels=levels,examined=examined,seconds=time.monotonic()-start)
 (HERE/'edge_count_summary.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2),flush=True)
if __name__=='__main__':main()
