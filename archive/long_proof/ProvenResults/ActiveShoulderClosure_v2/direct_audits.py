"""Controls for the exact-Laurent alternative; independent formula evaluations."""
from fractions import Fraction as F
from itertools import permutations,product
from flint import ctx
from direct_models import polynomials,Context
from kernel import seed_models,invariants,chart_coefficients
from models import TM,set_tau_constraint,real

def run():
    ctx.prec=160;set_tau_constraint();base=polynomials()['R'];charts=0
    for tr,perm in product((False,True),permutations(range(3))):
        if polynomials(perm,tr)['R']!=base:raise ValueError('R Laurent frame identity')
        charts+=1
    c=[F(1,3),F(7,8),F(4,5),F(-2,3)];h=[F(1,512),F(1,1024),F(1,768),F(1,1536)]
    direct=Context(c,h).R().range();points=0
    for v in product((-1,0,1),repeat=4):
        cc=[x+y*z for x,y,z in zip(c,h,v)];reference=invariants(seed_models(cc,[F(0)]*4))[-1].range()
        if not direct.contains(reference):raise ValueError('Laurent Taylor point enclosure')
        points+=1
    dc=Context(c,[F(0)]*4);E=seed_models(c,[F(0)]*4);tau=TM(real(F(2,7)));sides=0
    for tr,perm,sign in product((False,True),permutations(range(3)),(-1,1)):
        A=list(map(list,zip(*E))) if tr else E
        old=chart_coefficients(A,perm,tau,sign);new=dc.side(perm,tr,tau,sign)
        if any(not (x-y).range().contains(0) for x,y in zip(old,new)):raise ValueError('Laurent side formula control')
        sides+=1
    if len(base)!=2083 or sum(abs(v) for v in base.values())!=5038848:raise ValueError('Laurent census')
    import json
    from geometry import HERE,initial_box
    from kernel import tau_bounds
    from tree import audit_root
    region=json.loads((HERE/'data/patch_region.json').read_text());cc,hh=initial_box(region,0);lo,hi=tau_bounds(Context(cc,hh).R())
    if not hi>0:raise ValueError('direct tau control requires positive upper endpoint')
    root=dict(root=0,closed=False,leaves=2,accepted_leaves=0,tree=[dict(path='',kind='split',axis=4,direct_models=True,tau_domain=[str(lo),str(hi)]),dict(path='0',kind='leaf',ok=False),dict(path='1',kind='leaf',ok=False)])
    audit_root(region,root)
    root['tree'][0]['tau_domain'][1]=str(hi/2)
    try:audit_root(region,root)
    except ValueError:pass
    else:raise ValueError('truncated direct tau domain accepted')
    return dict(status='PASS',exact_frame_identities=charts,independent_box_controls=points,side_formula_controls=sides,R_terms=len(base),taylor_degree=4,retained_model_degree=2,direct_tau_negative_control=True)
if __name__=='__main__':
    import json
    print(json.dumps(run(),indent=2))
