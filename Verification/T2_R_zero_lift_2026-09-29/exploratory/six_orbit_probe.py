import sys,time
from itertools import permutations
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
from rzero_lift import *
from paired_prune import completion_coefficients
orbits=[(0,0,2,4),(0,2,3,0),(0,2,3,1),(0,2,3,2),(1,2,2,4),(2,4,4,2)]
for v in orbits:
 found=False
 for rr in permutations(range(6),3):
  for cs in permutations(range(6),3):
   if tuple((r-rr[0])*(c-cs[0])%6 for r in rr[1:]for c in cs[1:])==v:
    found=True;break
  if found:break
 rows=list(rr)+[r for r in range(6)if r not in rr];cols=list(cs)+[c for c in range(6)if c not in cs]
 H=[[acb(0,arb.pi()*((r-rows[0])*(c-cols[0])%6)/3).exp()for c in cols]for r in rows]
 cc=[arb.pi()*k/3 for k in v];hh=[arb(1)/2048]*4;cap=sharp_R_cap(cc,hh)
 refs=[[[H[r][c]for r in range(3)]for c in range(3,6)],[[H[r][c]for c in range(3)]for r in range(3,6)]]
 distances=[]
 print('ORBIT',v,'rows',rows,'cols',cols,'cap',cap,flush=True)
 for order,ref in zip(((0,1,2,3),(0,2,1,3)),refs):
  ll,gram,info=collect_labels([cc[i]for i in order],hh,cap,depth=20,maxlabels=512)
  if ll is None:print('FAIL cover',info,flush=True);break
  side,stats=side_triples(ll,gram)
  if side is None:print('FAIL triples',stats,flush=True);break
  bound=matched_side_bound(side,ref)
  print('SIDE',info,stats,'match',str(bound),flush=True)
