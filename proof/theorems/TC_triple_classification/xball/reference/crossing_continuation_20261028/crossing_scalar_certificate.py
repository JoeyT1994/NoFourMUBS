#!/usr/bin/env python3
"""Exact rational checks for the enlarged crossing lemma.

This file neither executes nor imports supplied project code. It verifies
scalar inequalities CONDITIONAL ON the stated derivative hypotheses and
exact restricted-frequency bounds. All acceptance decisions use Fraction.
"""
from fractions import Fraction as Q
from pathlib import Path
from decimal import Decimal, localcontext, ROUND_CEILING
import json

if not __debug__:
 raise RuntimeError('Run proof verification without Python optimization flags.')


def add(a,b):
 c=[Q(0)]*max(len(a),len(b))
 for i,v in enumerate(a):c[i]+=v
 for i,v in enumerate(b):c[i]+=v
 return c

def scale(a,s):return [v*s for v in a]
def mul(a,b):
 c=[Q(0)]*(len(a)+len(b)-1)
 for i,v in enumerate(a):
  for j,w in enumerate(b):c[i+j]+=v*w
 return c

def value(a,x):
 out=Q(0)
 for v in reversed(a):out=out*x+v
 return out

def display(x):
 with localcontext() as c:
  c.prec=32;c.rounding=ROUND_CEILING
  return str(Decimal(x.numerator)/Decimal(x.denominator))

def exact(x):return {'numerator':str(x.numerator),'denominator':str(x.denominator),'decimal_upper':display(x)}

def certify():
 rho=Q(1,50);eta=Q(1,1000);R=Q(201,10000)
 d=Q(1,10**14);h2=Q(1167,500);h3=Q(63);g2=Q(147,20);g3=Q(105)
 hm=Q(7);hk=Q(29);gm=Q(12);gk=Q(47)
 C=Q(3,2);chi=Q(1001,1000)
 q=d+h2*R+h3*R*R/2;D=1-q
 image=h2*rho*rho/2+h3*rho**3/6+q*eta
 zero_trap=(h2*rho*rho/2+h3*rho**3/6)/(1-d)
 c_required=(h2/2+h3*rho/6)/D
 X=[Q(0),chi]
 t=scale(add(scale(X,h2),scale(mul(X,X),hk/2)),1/D)
 s=scale(add(add([h2],scale(X,hm)),add(scale(mul(add([h2],scale(X,hk)),t),2),mul(add([h2],scale(X,h3)),mul(t,t)))),1/D)
 m=add(scale(X,g2),scale(mul(X,[Q(0),gk,g3*C]),Q(1,2)))
 eps=add(add(scale(X,gm),scale(mul(add([g2],scale(X,gk)),t),2)),add(mul(add([g2],scale(X,g3)),mul(t,t)),mul(m,s)))
 assert eps[0]==0 and all(v>=0 for v in eps)
 defect=eps[1]*Q(7,12)*rho+sum(eps[n]*rho**n/Q(n+1) for n in range(2,len(eps)))
 coarse_defect=eps[1]*Q(7,12)*rho+(value(eps,rho)-eps[1]*rho)/3
 checks={
  'ambient_geometry':rho*rho+eta*eta<R*R,
  'normal_contraction':q<1,
  'normal_image':image<eta,
  'quadratic_graph_bound':c_required<C,
  'graph_radius_factor':1+C*C*rho*rho<chi*chi,
  'full_phase_ball_zero_trapping':zero_trap<eta,
  'rank_one_mixed_defect':defect<1,
  'coarse_rank_one_mixed_defect':coarse_defect<1,
  'h_mixed_frequency_conversion':h3*h3*Q(7,2)/308<hm*hm,
  'g_mixed_frequency_conversion':g3*g3*Q(7,2)/308<gm*gm,
  'h_one_kernel_frequency_conversion':h3*h3*Q(61)/308<hk*hk,
  'g_one_kernel_frequency_conversion':g3*g3*Q(61)/308<gk*gk,
 }
 assert all(checks.values()),checks
 out={
  'status':'PROVED exact scalar inequalities, conditional on listed derivative hypotheses and frequency certificates',
  'imports_supplied_project_code':False,
  'classification_full_phase_radius':exact(rho),
  'ambient_radius':exact(R),'kernel_radius':exact(rho),'normal_radius':exact(eta),
  'hypotheses':{k:exact(v) for k,v in dict(d=d,h2=h2,h3=h3,g2=g2,g3=g3,h_mixed=hm,h_one_kernel=hk,g_mixed=gm,g_one_kernel=gk).items()},
  'graph_majorants':{'C':exact(C),'chi':exact(chi),'normal_q':exact(q),'normal_image':exact(image),'zero_trap':exact(zero_trap),'C_required':exact(c_required)},
  'mixed_defect_upper':exact(defect),'simpler_coarse_mixed_defect_upper':exact(coarse_defect),
  'pointwise_mixed_defect_at_rho':exact(value(eps,rho)),
  'positive_polynomial_coefficients':[exact(v) for v in eps],
  'checks':checks,'all_exact_scalar_checks_passed':True,
 }
 return out

if __name__=='__main__':
 out=certify();p=Path(__file__).with_suffix('.json');p.write_text(json.dumps(out,indent=2)+'\n')
 print(json.dumps({k:out[k] for k in ['status','classification_full_phase_radius','mixed_defect_upper','simpler_coarse_mixed_defect_upper','checks']},indent=2))
