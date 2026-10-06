"""Exact rational checks for the radius-.1 analytic model draft.
Not a physical theorem: differentiability, model binding and semicircle lemma
remain explicit analytic/Lean obligations. All numbers are exact fractions.
"""
from fractions import Fraction as Q
from pathlib import Path
import json,hashlib,math
HERE=Path(__file__).resolve().parent
r=Q(1,10);lower_t=1-2*r;upper_t=1+2*r
L=Q(12,7);M=2+2*upper_t*L
checks={
 't_lower':lower_t==Q(4,5),
 't_upper':upper_t==Q(6,5),
 'chart_k_squared_lower':1/upper_t**2-Q(1,4)==Q(4,9),
 'derivative_denominator_monotonic_domain':3*upper_t**2<8,
 'derivative_square_upper':4/(lower_t**4*(4-lower_t**2))<L**2,
 'side_entry_constant':M==Q(214,35),
 'same_orientation_inner_lower':3-4*M*r==Q(97,175),
 'orientation_gap':3-4*M*r-4*r==Q(27,175)>0,
 'sqrt3_lower':Q(5,3)**2<3,
 'inverse_margin':Q(5,3)-2*M*r==Q(233,525)>0,
 'anchor_sum_below_one':2*r==Q(1,5)<1,
 'side_factor_constant':12+24*Q(7,4)+112*r==Q(326,5)<66,
}
assert all(checks.values())
report={'status':'EXACT_ARITHMETIC_FOR_ANALYTIC_DRAFT','radius':str(r),'Lipschitz_k':str(L),'side_entry_constant':str(M),'side_factor_constant':66,'checks':checks,'physical_lean_admissions':0}
(HERE/'MODEL_RADIUS_01_GUARDS.json').write_text(json.dumps(report,indent=2)+'\n')
source=json.loads((HERE/'LAURENT_TAYLOR_BOUND.json').read_text())
tail=Q(source['tail_coefficient']);order=source['order'];rows=[]
for v in source['radius_bounds']:
    radius=Q(v['radius']);bound=Q(v['R_over_rho4_upper'])+tail*radius**(order-3);q=Q(v['q_coefficient'])
    assert q*q>bound
    assert Q(source['maximum_frequency_l1'])*radius/(order+2)<=Q(1,2)
    rows.append({'radius':str(radius),'q_coefficient':str(q),'normalized_R_bound_with_doubled_tail':str(bound),'display':float(bound),'q_squared_margin':str(q*q-bound),'exp_bound_norm_ratio_upper':str(Q(source['maximum_frequency_l1'])*radius/(order+2))})
result={'status':'EXACT_CHECK_PASS_PENDING_LEAN_BRIDGE','tail_factor':2,'source_result_sha256':hashlib.sha256((HERE/'LAURENT_TAYLOR_BOUND.json').read_bytes()).hexdigest(),'lemma_candidate':'Complex.exp_bound\u0027 with n=16, norm(x)/18 <= 1/2','radius_bounds':rows,'physical_lean_admissions':0}
(HERE/'LAURENT_TAYLOR_DOUBLED_TAIL.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({'model':report,'doubled_tail':result},indent=2))
