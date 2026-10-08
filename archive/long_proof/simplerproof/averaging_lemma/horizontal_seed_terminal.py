"""Route a complete maximal-corner side cover into the proved local theorem.

The cutoff stays M<5. A normalized column Euclidean bound of 1/21
implies horizontal phase norm squared <=24/293<9/100. This terminal
uses the existing complete side-cover and physical completion estimates.
No incomplete cover or failed resource limit is accepted.
"""
from pathlib import Path
import sys,json,time,hashlib
from fractions import Fraction as Q
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
from residual_lift import completion_bound
from side_cover_lift import (arb,acb,sharp_R_cap,collect_labels,side_triples,fourier_reference)
from flint import ctx

def certify(centers,radii,rows=tuple(range(6)),cols=tuple(range(6)),depth=22,
            budget=200000,maxlabels=1800,pair_budget=1000000,triple_budget=1000000):
    cc=list(map(arb,centers));hh=list(map(arb,radii));assert len(cc)==len(hh)==4
    assert all(x.is_finite() for x in cc+hh) and all(x>=0 for x in hh)
    cap=sharp_R_cap(cc,hh)
    if cap is None:return dict(ok=False,reason='R_cap')
    if cap<=0:return dict(ok=True,reason='outside_strict_maximal_domain',R_cap=str(cap))
    cap=min(cap,arb(5));sides=[];reports=[]
    for order in [(0,1,2,3),(0,2,1,3)]:
        labels,gram,info=collect_labels([cc[j] for j in order],[hh[j] for j in order],cap,
            depth=depth,budget=budget,maxlabels=maxlabels)
        if labels is None:return dict(ok=False,reason=info['reason'],sides=reports+[info])
        side,stats=side_triples(labels,gram,pair_budget,triple_budget);reports.append(dict(info,**stats))
        if side is None:return dict(ok=False,reason=stats['reason'],sides=reports)
        if not side[1]:return dict(ok=True,reason='outside_strict_maximal_domain',sides=reports)
        sides.append(side)
    bound=completion_bound(fourier_reference(rows,cols),cc,hh,*sides)
    if not bound['ok']:return dict(bound,sides=reports)
    accepted=arb(bound['column_distance'])<=arb(1)/21
    assert Q(24,293)<Q(9,100)
    return dict(bound,ok=bool(accepted),reason='horizontal_phase_ball' if accepted else 'phase_bound_too_large',
        normalized_column_threshold='1/21',horizontal_phase_norm_squared_bound='24/293',
        R_cap=str(cap),sides=reports,conditional_on_M_less_than=5)

def main():
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('--denominators',default='2048,8192,32768');ap.add_argument('--depth',type=int,default=22)
    ap.add_argument('--output',default='horizontal_active_probe.json');args=ap.parse_args()
    ctx.prec=128;out=[]
    for den in map(int,args.denominators.split(',')):
        start=time.monotonic();centers=[arb.pi()*n/3 for n in [1,2,2,4]]
        r=certify(centers,[arb(1)/den]*4,depth=args.depth)
        out.append(dict(seed_pi_thirds=[1,2,2,4],halfwidth='1/'+str(den),depth=args.depth,result=r,seconds=time.monotonic()-start))
        print(den,r['ok'],r['reason'],r.get('column_distance'),time.monotonic()-start,flush=True)
        (HERE/args.output).write_text(json.dumps(dict(scope='Finite seed cubes, not global confinement',global_confinement_proved=False,rows=out),indent=2)+'\n')
if __name__=='__main__':main()
