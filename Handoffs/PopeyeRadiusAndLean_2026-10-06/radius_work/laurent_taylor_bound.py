"""Exact finite Laurent/Taylor computation. Research evidence, not a Lean theorem.
For R(u)=sum_e c_e exp(2*pi*i*(e0+2e1+2e2+e3)/3) exp(i e.u),
the scalar exponential integral remainder is <= |e.u|^(N+1)/(N+1)!.
All polynomial coefficients below are rational or rational times sqrt(3).
"""
from pathlib import Path
from fractions import Fraction as Q
from math import factorial,isqrt,prod
import importlib.util,json,hashlib,time
HERE=Path(__file__).resolve().parent
SOURCE=HERE.parent/'radius-input-1over40/ProvenResults/Patch2442Local/Radius025Complete/inputs/physical_algebra.py'
N=16
start=time.monotonic()
spec=importlib.util.spec_from_file_location('pinned_physical_algebra',SOURCE)
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
D,R=m.corner_algebra()
words=[]
for e,v in R.d.items():
    assert v.denominator==1
    phase=(e[0]+2*e[1]+2*e[2]+e[3])%3
    re=(2,-1,-1)[phase];im=(0,1,-1)[phase]
    words.append((e,int(v),re,im,[[x**k for k in range(N+1)] for x in e]))
assert R.star()==R
norms={};coefficients=[];quartic={}
for degree in range(N+1):
    norm=Q(0)
    sign_re=(1,-1,-1,1)[degree%4]
    for a in range(degree+1):
      for b in range(degree-a+1):
       for c in range(degree-a-b+1):
        d=degree-a-b-c;alpha=(a,b,c,d)
        real=imag=0
        for e,value,re,im,powers in words:
            moment=value*powers[0][a]*powers[1][b]*powers[2][c]*powers[3][d]
            real+=moment*(re if degree%2==0 else im)*sign_re
            imag+=moment*(im if degree%2==0 else re)
        assert imag==0,('reality',alpha,imag)
        coefficient=Q(real,2*prod(factorial(k) for k in alpha))
        if degree<4:assert coefficient==0,('lower order',alpha,coefficient)
        if degree==4 and coefficient:quartic[alpha]=coefficient
        norm+=abs(coefficient)
        if coefficient:coefficients.append({'alpha':alpha,'rational':str(coefficient),'sqrt3_factor':bool(degree%2)})
    norms[degree]=norm
    print(json.dumps({'degree':degree,'coefficient_l1_rational':str(norm),'sqrt3_factor':bool(degree%2),'wall_seconds':time.monotonic()-start}),flush=True)
assert quartic=={(2,0,0,2):Q(243),(1,1,1,1):Q(-486),(0,2,2,0):Q(243)},quartic
SQRT3_UP=Q(26,15)
assert SQRT3_UP**2>3
moment=sum(abs(v)*sum(abs(x) for x in e)**(N+1) for e,v,re,im,pw in words)
tail_coefficient=Q(moment,factorial(N+1))
rows=[]
for radius in (Q(1,40),Q(7,250),Q(3,100),Q(1,20),Q(3,40),Q(1,10)):
    polynomial=sum(norms[k]*(SQRT3_UP if k%2 else 1)*radius**(k-4) for k in range(4,N+1))
    tail=tail_coefficient*radius**(N-3)
    bound=polynomial+tail
    qnum=isqrt((bound.numerator*10**4)//bound.denominator)
    while Q(qnum,100)**2<bound:qnum+=1
    q=Q(qnum,100)
    rows.append({'radius':str(radius),'R_over_rho4_upper':str(bound),'R_over_rho4_display':float(bound),'polynomial_display':float(polynomial),'tail_display':float(tail),'q_coefficient':str(q),'q_squared_margin':str(q*q-bound)})
result={'status':'EXACT_SCALAR_CANDIDATE_PENDING_ANALYTIC_REVIEW_AND_LEAN','order':N,'physical_lean_admissions':0,'source':str(SOURCE),'source_sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest(),'laurent_terms':len(words),'maximum_frequency_l1':max(sum(abs(x) for x in e) for e,v,re,im,pw in words),'sum_abs_laurent_coefficients':sum(abs(v) for e,v,re,im,pw in words),'coefficient_count':len(coefficients),'norms':{str(k):{'rational':str(v),'sqrt3_factor':bool(k%2)} for k,v in norms.items()},'sqrt3_upper':str(SQRT3_UP),'tail_coefficient':str(tail_coefficient),'radius_bounds':rows,'wall_seconds':time.monotonic()-start}
(HERE/'LAURENT_TAYLOR_BOUND.json').write_text(json.dumps(result,indent=2)+'\n')
(HERE/'LAURENT_TAYLOR_COEFFICIENTS.json').write_text(json.dumps(coefficients,separators=(',',':'))+'\n')
print(json.dumps(result,indent=2),flush=True)
