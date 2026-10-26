#!/usr/bin/env python3
"""Replay and export rigorous weighted bounds for every sampled nonlinear T1 map."""
import argparse, csv, json, time
from pathlib import Path
import numpy as np
import zt_patch as ZT
from seed_weighted import SeedWeighted, json_bounds


def run(certificate, proposals_csv, output_dir):
    data=ZT.load_certificate(certificate)
    with open(proposals_csv,newline='') as f:
        proposals=list(csv.DictReader(f))
    byseed={}
    for row in proposals:byseed.setdefault(int(row['seed']),[]).append(row)
    out=Path(output_dir);out.mkdir(parents=True,exist_ok=True)
    records=[];balls=[];started=time.monotonic()
    for count,seed in enumerate(sorted(byseed),1):
        st=time.monotonic();ball=ZT.SC.Ball(data['seeds'][seed])
        model=ZT.normal_form(ball);cache=SeedWeighted(model);groups=[]
        for row in byseed[seed]:
            gi=int(row['group']);g=data['seeds'][seed]['transfers'][gi]
            assert g['kind']=='T1'
            tar=ZT.SC.Ball(data['seeds'][g['target']])
            L=ZT.SC.corner_L(g['rows'],g['cols'])@ZT.SC.g_matrix(g['g'])
            A=ZT.Z.mat(tar.Mth).inv()*ZT.Z.mat(L)
            bounds=cache.bounds(A)
            proposed=json.loads(row['best_direction']);v=ZT.col(proposed)
            vn=sum((x**2 for x in v.entries()),ZT.arb(0)).sqrt()
            if not vn>0:raise ArithmeticError('zero direction')
            v=v/vn
            vv=ZT.arb_mat([[v[i,0]*v[j,0]] for i in range(4) for j in range(4)])
            ahvv=A*model['H2']*vv
            curvature=sum((x**2 for x in ahvv.entries()),ZT.arb(0)).sqrt()
            if not curvature>0:raise ArithmeticError('centre curvature lower bound failed')
            ratio=bounds['Hessian']/curvature
            rec=dict(seed=seed,group=gi,target=g['target'],status='CERTIFIED',
                R_center_numerical=float(row['R_center']),
                strict_R_lower=model['summary']['strict_R_lower'],
                bounds=json_bounds(bounds),
                direction_hex=[float(x).hex() for x in proposed],
                center_directional_curvature_lower=ZT.Z.lower(curvature),
                refined_Hessian_ratio_upper=ZT.Z.upper(ratio),
                simple_Hessian_ratio_upper=ZT.Z.upper(bounds['simple_Hessian']/curvature),
                factor3_certified=bool(bounds['Hessian']<3*curvature))
            groups.append(rec);records.append(rec)
        ball_result=dict(seed=seed,status='CERTIFIED',groups=len(groups),
            strict_R_lower=model['summary']['strict_R_lower'],
            R_center_numerical=float(byseed[seed][0]['R_center']),
            factor3_all_groups=all(x['factor3_certified'] for x in groups),
            refined_ratio_max=max(x['refined_Hessian_ratio_upper'] for x in groups),
            seconds=time.monotonic()-st,weights=groups)
        (out/f'refined_weights_seed_{seed}.json').write_text(json.dumps(ball_result,indent=2)+'\n')
        balls.append({k:v for k,v in ball_result.items() if k!='weights'})
        if count%20==0 or count==len(byseed):
            print(json.dumps(dict(completed=count,total=len(byseed),groups=len(records),seconds=time.monotonic()-started)),flush=True)
    ratios=[x['refined_Hessian_ratio_upper'] for x in records]
    reductions=[x['bounds']['old_normal_value']/x['bounds']['normal_value'] for x in records]
    def quantile(v):return dict(zip(('min','median','p90','p99','max'),map(float,np.quantile(v,[0,.5,.9,.99,1]))))
    summary=dict(status='CERTIFIED',claim='Every per-map normal value/gradient/Hessian bound is replayed in Arb.',
        qualification='Hessian ratio is against a centre directional lower witness; not a per-patch Taylor-defect ratio.',
        balls=len(balls),groups=len(records),factor3_groups=sum(x['factor3_certified'] for x in records),
        factor3_all_groups_balls=sum(x['factor3_all_groups'] for x in balls),
        refined_ratio_quantiles=quantile(ratios),normal_value_improvement_quantiles=quantile(reductions),
        elapsed_seconds=time.monotonic()-started,ball_results=balls)
    (out/'refined_weights_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({k:v for k,v in summary.items() if k!='ball_results'},indent=2),flush=True)


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('certificate');p.add_argument('proposals_csv');p.add_argument('output_dir')
    a=p.parse_args();run(a.certificate,a.proposals_csv,a.output_dir)
