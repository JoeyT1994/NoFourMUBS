from fractions import Fraction as Q
from provider import terminal,library,CpuBudget
import time,signal

def certify(c,r,cpu=1.,depth=12,nodes=127):
 start=time.process_time();library().set_budget(cpu);stack=[('',c,r)];leaves=[];splits={};count=0;last=None
 try:
  while stack:
   if time.process_time()-start>=cpu:return dict(ok=False,reason='cpu_budget',nodes=count,cpu_seconds=time.process_time()-start)
   if count>=nodes:return dict(ok=False,reason='node_budget',nodes=count,cpu_seconds=time.process_time()-start)
   p,cc,rr=stack.pop();count+=1;q=terminal(cc,rr)
   if time.process_time()-start>=cpu:return dict(ok=False,reason='cpu_budget',nodes=count,cpu_seconds=time.process_time()-start)
   if q['ok']:leaves.append(dict(path=p,terminal=q));continue
   last=q
   if len(p)>=depth:return dict(ok=False,reason='depth_budget',nodes=count,diagnostic=q,cpu_seconds=time.process_time()-start)
   axis=q['axis'];splits[p]=axis;nr=rr[:];nr[axis]/=2;nc=cc[:];nc[axis]-=nr[axis];pc=cc[:];pc[axis]+=nr[axis]
   stack.extend([(p+'1',pc,nr),(p+'0',nc,nr)])
  assert sum((Q(1,2**len(q['path'])) for q in leaves),Q(0))==1
  return dict(ok=True,reason='whole_box_signed_mean_cover',statement='outside_strict_D0_all_physical_completions',nodes=count,leaves=leaves,splits=splits,cpu_seconds=time.process_time()-start)
 except CpuBudget:return dict(ok=False,reason='cpu_budget',nodes=count,diagnostic=last,cpu_seconds=time.process_time()-start)
 except Exception as ex:return dict(ok=False,reason='exception',detail=f'{type(ex).__name__}: {ex}',nodes=count,cpu_seconds=time.process_time()-start)
