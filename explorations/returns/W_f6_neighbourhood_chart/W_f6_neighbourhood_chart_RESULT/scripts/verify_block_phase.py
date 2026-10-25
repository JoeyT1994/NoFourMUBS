#!/usr/bin/env python3
"""Exact entrywise lower-right completion displacement from tangent phase.
Uses the previously proved side tube; standard library only. Regenerates
its cubic predictor, and independently bounds nine six-term residuals.
"""
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parent))
from verify_chart import *

def swap(poly):return {(e[2],e[3],e[0],e[1]):c for e,c in poly.items()}

def linear_tangent(i,j):
 pa=linear(unit[0]);pb=linear(unit[1]);pc=linear(unit[2]);pd=linear(unit[3])
 ff=[{},pa,pb];gg=[{},pc,pd]
 return padd(ff[j%3] if i%2 else {},gg[i%3] if j%2 else {})

def complex_homogeneous_bound(re,im,r,lo=0,hi=100):
 ans=F()
 for d in range(lo,hi+1):
  rp={e:c for e,c in re.items() if sum(e)==d};ip={e:c for e,c in im.items() if sum(e)==d}
  if not rp and not ip:continue
  if d==2:
   br=quadnorm(rp) if rp else F();bi=quadnorm(ip) if ip else F()
   ans+=sqrtup(Q(br*br+bi*bi))*r*r
  else:
   sums=Q()
   for p in [rp,ip]:
    for e,c in p.items():
     mult=F(factorial(d),1)
     for ee in e:mult/=factorial(ee)
     sums+=c*c/mult
   ans+=sqrtup(sums)*r**d
 return ans

def exp_residual(terms,r,degree=6):
 re={};im={};tail=F()
 for coeff,phase in terms:
  power={Z:Q(1)}
  for k in range(degree+1):
   if k:power=pscale(pmul(power,phase,degree),F(1,k))
   ci=ipow(coeff,k)
   re=padd(re,pscale(power,ci[0]));im=padd(im,pscale(power,ci[1]))
  bydeg={d:pbound({e:c for e,c in phase.items() if sum(e)==d},r,sharp2=True) for d in (1,2,3)}
  powerd={0:F(1)};this_tail=F()
  for k in range(1,degree+1):
   new=defaultdict(F)
   for a,b in powerd.items():
    for d,v in bydeg.items():new[a+d]+=b*v/k
   powerd=new;this_tail+=sum(v for d,v in powerd.items() if d>degree)
  h=sum(bydeg.values());this_tail+=h**(degree+1)/factorial(degree+1)
  tail+=cnorm(coeff)*this_tail
 assert all(sum(e)>=2 for e in re) and all(sum(e)>=2 for e in im), 'constant/linear term failed'
 return complex_homogeneous_bound(re,im,r,2,degree)+tail

def run_block():
 started=time.time()
 V=makejet();assert V[0]==swap(V[0])
 r=F(141421357,10**9)
 tube=[F(n,10**7) for n in [18500,14700,13700,16200,18500,19700,16500]]
 detlower=determinant_bound(r,F(153,10000))
 row_bounds=[];entry_bounds=[]
 for i in range(3,6):
  bounds=[]
  for j in range(3):
   terms=[]
   for k in range(6):
    phase=padd(linear_tangent(i,k),pscale(linear_tangent(j,k),-1))
    if k<3:
     if k>0:phase=padd(phase,swap(V[1+(k-1)*3+(i-3)]))
     if j==2 and k==2:phase=padd(phase,pscale(V[0],-1))
    elif j>0:
     phase=padd(phase,pscale(V[1+(j-1)*3+(k-3)],-1))
    terms.append((roots[((i-j)*k)%6],phase))
   residual=exp_residual(terms,r)
   # Difference between actual certified side phases and cubic predictors.
   err=tube[1+i-3]+tube[4+i-3]
   if j==1:err+=sum(tube[1:4])
   if j==2:err+=sum(tube[4:7])+tube[0]
   val=residual+err
   bounds.append(val)
   print('residual entry',i,j,'polynomial',float(residual),'tube',float(err),'total',float(val),flush=True)
  rownorm=sqrtup(sum(v*v for v in bounds));chord=rownorm*3/detlower
  row_bounds.append(rownorm);entry_bounds.append(chord)
  print('row',i,'residual norm',float(rownorm),'all-entry chord bound',float(chord),flush=True)
 assert max(entry_bounds)<F(109,500)
 # |theta| < .22 follows from chord<.218 and 2 sin(.11)>.218.
 # sin t >= t-t^3/6 at t=.11.
 assert 2*(F(11,100)-F(11,100)**3/6)>F(109,500)
 receipt={'status':'PASS','tangent_radius':'1/5',
 'determinant_abs_lower':str(detlower),'residual_row_norm_upper':list(map(str,row_bounds)),
 'lower_right_entry_chord_upper':list(map(str,entry_bounds)),
 'uniform_chord_upper':'109/500','uniform_principal_phase_error_upper':'11/50',
 'elapsed_seconds_informational':time.time()-started}
 (Path(__file__).resolve().parents[1] / 'certificates' / 'block_phase.json').write_text(json.dumps(receipt,indent=2))
 print('PASS in',time.time()-started,'seconds',flush=True)
if __name__=='__main__':run_block()
