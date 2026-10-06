"""Independent paired-cosine check of the Laurent Taylor scalar evidence."""
from pathlib import Path
from fractions import Fraction as Q
from math import factorial
import importlib.util,json,hashlib,time
HERE=Path(__file__).resolve().parent
radius=HERE.parent/'radius_work'
record=json.loads((radius/'LAURENT_TAYLOR_BOUND.json').read_text())
source=HERE.parent/'radius025/inputs/physical_algebra.py'
assert hashlib.sha256(source.read_bytes()).hexdigest()==record['source_sha256']
spec=importlib.util.spec_from_file_location('physical_algebra_review',source)
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
_,R=m.corner_algebra();words=R.d
pairs=[]
for e,c in words.items():
 opposite=tuple(-x for x in e)
 assert words.get(opposite)==c and c.denominator==1
 if e>opposite:
  phase=(e[0]+2*e[1]+2*e[2]+e[3])%3
  pairs.append((e,int(c),phase,[[v**i for i in range(17)] for v in e]))
authored={tuple(x['alpha']):(Q(x['rational']),x['sqrt3_factor']) for x in json.loads((radius/'LAURENT_TAYLOR_COEFFICIENTS.json').read_text())}
expected={};norms={};start=time.monotonic()
for n in range(17):
 total=Q(0)
 for a in range(n+1):
  for b in range(n-a+1):
   for c in range(n-a-b+1):
    d=n-a-b-c;alpha=(a,b,c,d)
    moment=0
    for e,v,phase,powers in pairs:
     # R is a constant plus paired 2*c*cos(phi+e.u).
     trig=(2,-1,-1)[phase] if n%2==0 else (0,-1,1)[phase]
     sign=(-1)**(n//2)
     moment+=v*trig*sign*powers[0][a]*powers[1][b]*powers[2][c]*powers[3][d]
    coefficient=Q(moment,factorial(a)*factorial(b)*factorial(c)*factorial(d))
    if n==0:coefficient+=words.get((0,0,0,0),0)
    if coefficient:expected[alpha]=(coefficient,bool(n%2))
    total+=abs(coefficient)
 norms[n]=total
 assert total==Q(record['norms'][str(n)]['rational'])
assert expected==authored
moment=sum(abs(c)*sum(abs(v) for v in e)**17 for e,c in words.items())
tail=moment/factorial(17)
assert tail==Q(record['tail_coefficient'])
for row in record['radius_bounds']:
 r=Q(row['radius'])
 bound=sum(norms[n]*(Q(26,15) if n%2 else 1)*r**(n-4) for n in range(4,17))+tail*r**13
 assert bound==Q(row['R_over_rho4_upper']) and Q(row['q_coefficient'])**2>=bound
out={'status':'INDEPENDENT_PAIRED_COSINE_COEFFICIENTS_AND_TAIL_PASS','paired_frequencies':len(pairs),'matched_nonzero_coefficients':len(expected),'orders':16,'analytic_remainder':'For real t, the integral remainder of exp(i*t) has complex norm <=abs(t)^17/17!. All seed phases have norm1; triangle bound uses exact finite frequency moments. Monomial coefficient norms timesrho^n give a uniform4Dsup-norm bound.','conjugate_seed':'Real symmetric Laurent coefficients imply R(-theta)=R(theta); norms unchanged under u->-u.','wall_seconds':time.monotonic()-start,'physical_lean_admissions':0,'input_sha256':hashlib.sha256((radius/'LAURENT_TAYLOR_BOUND.json').read_bytes()).hexdigest()}
(HERE/'replayed-LAURENT_TAYLOR_INDEPENDENT_REVIEW.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
