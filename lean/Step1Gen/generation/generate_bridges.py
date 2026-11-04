#!/usr/bin/env python3
"""Small algebraic capture/coordinate certificates; no CAS is needed."""
from pathlib import Path
from fractions import Fraction as F
import json

OUT = Path(__file__).resolve().parents[1]
def A(*a): return ['add',*a]
def M(*a): return ['mul',*a]
def N(a): return ['neg',a]
def P(a,n): return ['pow',a,str(n)]

defs = {
  'f_y':A(M('4',P('y',2)),M('6','y'),'1'),
  'f_a':A(M('4',P('a',2)),M('6','a'),'1'),
  'cos_n':M('1/2',A('w','wi')),
  'chebyshev_three':A(M('4',P('cos_n',3)),M('-3','cos_n')),
  'cos_three_n':M('1/2',A(P('w',3),P('wi',3))),
  'Z':P('z',3),'Zi':P('zi',3),'W':P('w',3),'Wi':P('wi',3),
}
ids = [
 {'name':'quadratic_secant','lhs':A('f_y',N('f_a')),'rhs':M(A('y',N('a')),A(M('4',A('y','a')),'6'))},
 {'name':'physical_lower_secant_slope','lhs':A(M('4',A('y','-49/256')),'6'),'rhs':A(M('4',A('y','1')),'79/64')},
 {'name':'physical_upper_secant_slope','lhs':A(M('4',A('y','-3/16')),'6'),'rhs':A(M('4',A('y','1')),'5/4')},
 {'name':'curvature_strict_lower_bound','lhs':A(M('660',A(M('46','y'),'9')),'-4125/32'),
  'rhs':M('30360',A('y','49/256'))},
 {'name':'cosine_triple_angle_mod_unit','lhs':A('cos_three_n',N('chebyshev_three')),
  'rhs':M('3/2',A('w','wi'),A('1',N(M('w','wi'))))},
 {'name':'cosine_double_angle_mod_unit','lhs':A(M('2',P('cos_n',2)),'-1',N(M('1/2',A(P('w',2),P('wi',2))))),
  'rhs':A(M('w','wi'),'-1')},
 {'name':'equal_cosines_force_cusp_product','lhs':A(M(A('Z',N('W')),A(M('Z','W'),'-1')),
       N(M('Z','W',A('Z','Zi',N('W'),N('Wi'))))),
  'rhs':A(M('W',A('1',N(M('Z','Zi')))),M('Z',A(M('W','Wi'),'-1')))},
 {'name':'cube_unit_product','lhs':A(M('Z','Zi'),'-1'),
  'rhs':M(A(M('z','zi'),'-1'),A(P(M('z','zi'),2),M('z','zi'),'1'))},
 {'name':'quarter_real_part_two_unit_points','lhs':M(A(M('4','b'),N('s')),A(M('4','b'),'s')),
  'rhs':A(M('16',A(P('c',2),P('b',2),'-1')),M('-16',A('c','-1/4'),A('c','1/4')),N(A(P('s',2),'-15')))},
]
values=[]
for name,y in [('lower_endpoint','-49/256'),('upper_endpoint','-3/16')]:
 vals={v:'0' for v in ['y','a','z','zi','w','wi','c','b','s']};vals['y']=y
 yy=F(y)
 values.append({'name':name,'polynomial':'f_y','at':vals,'equals':str(4*yy*yy+6*yy+1)})
data={'kind':'polynomial_bundle','variables':['y','a','z','zi','w','wi','c','b','s'],
      'definitions':defs,'identities':ids,'evaluations':values}
(OUT/'certificates'/'coordinate_bridges.json').write_text(json.dumps(data,indent=2)+'\n')
print('Generated 11 coordinate/capture identities and evaluations.')
