import sys,time,json
from itertools import permutations
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import side_cover_lift as old
import family_side_lift as family
from flint import acb_mat
arb,acb=old.arb,old.acb

def aligned(side,refs):
 vs,ts=side
 costs=[[sum(abs(v[k]-r[k])**2 for k in range(3)).upper() for r in refs]for v in vs]
 near=[min(range(3),key=lambda j:row[j]) for row in costs]
 out=[]
 for ids in ts:
  p=tuple(near[i]for i in ids)
  if len(set(p))!=3:p=min(permutations(range(3)),key=lambda p:sum(costs[ids[k]][p[k]]for k in range(3)).upper())
  inds=[None]*3
  for i,j in zip(ids,p):inds[j]=i
  out.append(tuple(inds))
 return vs,out

def norm(v):return sum(abs(x)**2 for x in v).upper().sqrt().upper()
def mul(A,x):return [sum(a*b for a,b in zip(row,x))for row in A]
def hull(a,b):return acb(a.real.union(b.real),a.imag.union(b.imag))

def residual(H,cc,hh,B,C):
 E0=[r[:3]for r in H[:3]];C0=[r[:3]for r in H[3:]]
 E=[[acb(1)]*3,[acb(1),*map(lambda k:acb(0,cc[k]+arb(0,hh[k])).exp(),(0,1))],
   [acb(1),*map(lambda k:acb(0,cc[k]+arb(0,hh[k])).exp(),(2,3))]]
 k0=old.reference_gram_bound(H)
 Kmat=acb_mat([[C0[j][i].conjugate()for j in range(3)]for i in range(3)]).inv()
 K=[[Kmat[i,j]for j in range(3)]for i in range(3)]
 bref=[[H[k][j+3]for k in range(3)]for j in range(3)]
 bv,bt=aligned(B,bref);cv,ct=aligned(C,C0)
 cbound=arb(0);first=arb(0);chulls=[None]*3
 for ids in ct:
  delta=[[cv[ids[i]][k]-C0[i][k]for k in range(3)]for i in range(3)]
  cbound=max(cbound,sum(abs(x)**2 for row in delta for x in row).upper().sqrt().upper())
  for j in range(3):
   first=max(first,sum(abs(E[i][j]-E0[i][j])**2+abs(delta[i][j])**2 for i in range(3)).upper().sqrt().upper())
   q=[sum(delta[i][k].conjugate()*H[i+3][j+3]for i in range(3))for k in range(3)]
   v=mul(K,q)
   chulls[j]=v if chulls[j]is None else [hull(a,b)for a,b in zip(chulls[j],v)]
 eta=cbound/k0.sqrt()
 if not eta<1:return None
 bound=first;nominal=arb(0);preconditioned=arb(0)
 active=sorted(set((i,j)for ids in bt for j,i in enumerate(ids)))
 for i,j in active:
  v=bv[i];delta=[x-y for x,y in zip(v,bref[j])]
  q=[sum((E[l][k]-E0[l][k]).conjugate()*v[l]+E0[l][k].conjugate()*delta[l]for l in range(3))for k in range(3)]
  q=mul(K,q)
  residual=[a+b for a,b in zip(q,chulls[j])]
  res=norm(residual);d=res/(1-eta)
  if d<1:
   tangents=[abs((v*H[k+3][j+3].conjugate()).imag).upper()+eta*d for k,v in enumerate(residual)]
   tangent_bound=(sum(t*t for t in tangents)/(1-d*d/4)).sqrt().upper()
   d=min(d,tangent_bound)
  preconditioned=max(preconditioned,res)
  bound=max(bound,(sum(abs(x)**2 for x in delta)+d*d).upper().sqrt().upper())
 return dict(column=str((bound/arb(6).sqrt()).upper()),eta=str(eta),residual=str(preconditioned),C_bound=str(cbound))

def certify(cc,hh,H=None,depth=18):
 H=H or old.fourier_reference()
 cap=old.sharp_R_cap(cc,hh)
 if cap<=0:return dict(ok=True,reason='outside_strict_D0')
 sides=[];stats=[]
 for order in ((0,1,2,3),(0,2,1,3)):
  labs,gram,info=old.collect_labels([cc[i]for i in order],[hh[i]for i in order],cap,depth=depth,maxlabels=1200)
  if labs is None:return dict(ok=False,reason=info['reason'],sides=stats+[info])
  side,info2=old.side_triples(labs,gram,800000,500000)
  stats.append(dict(info,**info2))
  if side is None:return dict(ok=False,reason=info2['reason'],sides=stats)
  if not side[1]:return dict(ok=True,reason='outside_D0',sides=stats)
  sides.append(side)
 out=residual(H,cc,hh,*sides)
 if out is None:return dict(ok=False,reason='contraction',sides=stats)
 return dict(ok=arb(out['column'])<arb(1)/36,reason='residual',**out,sides=stats)

if __name__=='__main__':
 cc,_=old.cube_box(old.CUBES[0])
 for h in [arb(1)/2048,arb(1)/1024,arb(1)/512,arb.pi()/512]:
  start=time.monotonic();r=certify(cc,[h]*4);print(str(h),time.monotonic()-start,json.dumps(r),flush=True)
 cc=family.certified_patch_center();H=family.family_reference('7/360',0,(0,1,2,3,4,5),(0,2,5,1,3,4))
 for h in [arb(1)/10000,arb(1)/2000]:
  start=time.monotonic();r=certify(cc,[h]*4,H);print('FAMILY',str(h),time.monotonic()-start,json.dumps(r),flush=True)
