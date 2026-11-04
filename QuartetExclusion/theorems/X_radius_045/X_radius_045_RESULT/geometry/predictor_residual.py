if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

"""Exact homogeneous residual of eta+Q(eta)+P3(eta), through degree six."""
from fractions import Fraction as F
from pathlib import Path
from math import factorial,comb,lcm
from itertools import product
import importlib.util,json,time
spec=importlib.util.spec_from_file_location('cubic',Path(__file__).with_name('derive_cubic.py'));e=importlib.util.module_from_spec(spec);spec.loader.exec_module(e)
z=e.e
start=time.time()
MAX=6
zero=(F(0),F(0));one=(F(1),F(0))
def add(a,b):return (a[0]+b[0],a[1]+b[1])
def scale(a,c):return (a[0]*c,a[1]*c)
def mult(a,b):return (a[0]*b[0]+3*a[1]*b[1],a[0]*b[1]+a[1]*b[0])
def p_add(a,b,c=F(1)):
 out=dict(a)
 for k,v in b.items():
  out[k]=add(out.get(k,zero),scale(v,c))
  if out[k]==zero:del out[k]
 return out
def p_mul(a,b):
 out={}
 for k,v in a.items():
  for l,w in b.items():
   key=tuple(x+y for x,y in zip(k,l))
   if sum(key)>MAX:continue
   out[key]=add(out.get(key,zero),mult(v,w))
 return {k:v for k,v in out.items() if v!=zero}
D=[]
for i in range(36):
 d={e.key((a,)):(z.V[a][i],F(0)) for a in range(4) if z.V[a][i]}
 d=p_add(d,{k:(F(0),v[i]) for k,v in e.Qp.items() if v[i]})
 d=p_add(d,{k:(v[i],F(0)) for k,v in e.Pp.items() if v[i]})
 D.append(d)

def apply(phases):
 jt=[{} for _ in range(36)]
 for i,k in z.pairs:
  for j in range(6):
   phi=p_add(phases[6*i+j],phases[6*k+j],F(-1))
   p2=p_mul(phi,phi);p3=p_mul(p2,phi);p4=p_mul(p3,phi);p5=p_mul(p4,phi);p6=p_mul(p5,phi)
   co=p_add(p_add({k:scale(v,F(-1,2)) for k,v in p2.items()},p4,F(1,24)),p6,F(-1,720))
   si=p_add({k:scale(v,F(-1,6)) for k,v in p3.items()},p5,F(1,120))
   # F = GP Jt[ sqrt3 sin(theta_l-theta_j)(cos(phi)-1)
   #                      -cos(theta_l-theta_j)(sin(phi)-phi) ].
   for l in range(6):
    freq=((i-k)*(l-j))%6
    out={key:mult((0,z.si[freq]),v) for key,v in co.items() if z.si[freq]}
    out=p_add(out,si,-z.co[freq])
    jt[6*i+l]=p_add(jt[6*i+l],out)
    jt[6*k+l]=p_add(jt[6*k+l],out,F(-1))
 keys=set().union(*(d.keys() for d in jt));out={}
 for key in keys:
  inp=[d.get(key,zero) for d in jt]
  out[key]=[(sum(z.GP[i][j]*inp[j][0] for j in range(36)),sum(z.GP[i][j]*inp[j][1] for j in range(36))) for i in range(36)]
 return out
R=apply(D);RC=apply([D[i] for i in e.idx])
for k in set(R)|set(RC):
 a=R.get(k,[zero]*36);b=[RC.get(k,[zero]*36)[i] for i in e.idx]
 R[k]=[scale(add(x,y),F(1,2)) for x,y in zip(a,b)]
for k,v in e.Qp.items():R[k]=[add(x,(0,-y)) for x,y in zip(R[k],v)]
for k,v in e.Pp.items():R[k]=[add(x,(-y,0)) for x,y in zip(R[k],v)]
assert all(v==zero for k,row in R.items() if sum(k)<4 for v in row)
R={k:v for k,v in R.items() if any(x!=zero for x in v)}
# Every even degree has sqrt3 times rational coefficients, every odd degree rational.
for k,row in R.items():assert all(v[sum(k)%2]==0 for v in row)
# Convert natural inputs z to unscaled orthogonal inputs w:
# z0=w0+w1,z1=w0-w1,z2=w2+w3,z3=w2-w3.
S={}
for k,row in R.items():
 for a in range(k[0]+1):
  for b in range(k[1]+1):
   for c in range(k[2]+1):
    for d in range(k[3]+1):
     kk=(k[0]+k[1]-a-b,a+b,k[2]+k[3]-c-d,c+d)
     factor=F(comb(k[0],a)*comb(k[1],b)*comb(k[2],c)*comb(k[3],d)*(-1)**(b+d))
     rr=S.setdefault(kk,[F(0)]*36)
     actual=[v[1] if sum(k)%2==0 else v[0] for v in row]
     S[kk]=[x+factor*y for x,y in zip(rr,actual)]
receipts=[]
for degree in (4,5,6):
 CC=[[F(0)]*36 for _ in range(36)]
 for k,v in S.items():
  if sum(k)!=degree:continue
  multi=F(factorial(degree),1)
  for x in k:multi/=factorial(x)
  weight=F(3 if degree%2==0 else 1,2**(k[0]+k[2])*6**(k[1]+k[3]))/multi
  for i,x in enumerate(v):
   if not x:continue
   for j,y in enumerate(v):
    if y:CC[i][j]+=weight*x*y
 trace=sum(CC[i][i] for i in range(36));rowsum=max(sum(abs(x) for x in row) for row in CC)
 bound=min(trace,rowsum)
 if degree in (4,5):
  den=lcm(*(x.denominator for row in CC for x in row));A=[[int(x*den) for x in row] for row in CC]
  Rmat=A
  roots=[(1944,1),(648,1)] if degree==4 else [(8398080,173)]
  for aa,bb in roots:
   factor=[[aa*x-(bb*den if i==j else 0) for j,x in enumerate(row)] for i,row in enumerate(A)]
   Rmat=z.mm(Rmat,factor)
  assert all(x==0 for row in Rmat for x in row)
  bound=F(1,648) if degree==4 else F(173,8398080)
 receipts.append({'degree':degree,'tensor_frobenius_squared':str(trace),'flattened_gram_max_absolute_rowsum':str(rowsum),'operator_squared_upper':str(bound),'operator_upper_decimal':float(bound)**.5})
 print(receipts[-1],flush=True)
 Path(__file__).with_name(f'residual_gram_{degree}.json').write_text(json.dumps([[str(x) for x in row] for row in CC]))
export={','.join(map(str,k)):[[str(x) for x in v] for v in row] for k,row in R.items()}
out={'status':'PASS','predictor':'eta+Q(eta)+P3(eta)','residual':'Fsym(predictor)−Q(eta)−P3(eta)','homogeneous_coefficients_through_degree6':export,'tensor_bounds':receipts,'elapsed_seconds':time.time()-start}
Path(__file__).with_name('predictor_residual_receipt.json').write_text(json.dumps(out,indent=2));print('elapsed',time.time()-start,flush=True)
