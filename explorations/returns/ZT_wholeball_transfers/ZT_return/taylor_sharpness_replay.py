#!/usr/bin/env python3
"""Exact-Arb consequence of exported weighted bounds: source-ball Taylor sharpness.

This is the Taylor remainder about the ORIGINAL centre, over its whole ball.
It makes no claim about every recentered sphere patch. The input weighted
bound files are generated/replayed by refined_export.py.
"""
import argparse,json
from pathlib import Path
import numpy as np
import zt_patch as ZT


def run(certificate,directory,output):
    data=ZT.load_certificate(certificate);results=[];balls=[]
    files=sorted(Path(directory).glob('refined_weights_seed_*.json'),
                 key=lambda p:int(p.stem.split('_')[-1]))
    for path in files:
        d=json.loads(path.read_text());seed=d['seed'];source=data['seeds'][seed]
        r=ZT.arb(float.fromhex(source['r']) if isinstance(source['r'],str) else float(source['r']))
        local=[]
        for row in d['weights']:
            b=row['bounds'];alpha=ZT.arb(b['alpha']);tail=ZT.arb(b['normal_value'])
            curv=ZT.arb(row['center_directional_curvature_lower'])
            U=alpha*r*r/2+tail;L=curv*r*r/2-tail
            ans=dict(seed=seed,group=row['group'],target=row['target'],
                R_center_numerical=row['R_center_numerical'],strict_R_lower=row['strict_R_lower'],
                Taylor_upper=ZT.Z.upper(U),directional_lower=ZT.Z.lower(L),
                ratio_upper=ZT.Z.upper(U/L) if L>0 else None,
                factor2_certified=bool(L>0 and U<2*L),
                factor3_certified=bool(L>0 and U<3*L))
            local.append(ans);results.append(ans)
        balls.append(dict(seed=seed,groups=len(local),
            factor2_all_groups=all(x['factor2_certified'] for x in local),
            factor3_all_groups=all(x['factor3_certified'] for x in local),
            ratio_max=max(x['ratio_upper'] for x in local) if all(x['ratio_upper'] is not None for x in local) else None))
    finite=[x['ratio_upper'] for x in results if x['ratio_upper'] is not None]
    qs=dict(zip(('min','median','p90','p99','max'),map(float,np.quantile(finite,[0,.5,.9,.99,1]))))
    result=dict(status='CERTIFIED consequences of the replayed weighted-bound files',
        claim='For each map marked factor3_certified, the explicit upper bound on sup_{||w||<=r} ||A(Q(w)-Q(0)-DQ(0)w)|| is less than 3 times that supremum.',
        qualification='Original source centre only; this is not a factor-three guarantee on every sphere-centred patch. To verify the trusted input bounds, first run refined_export.py.',
        balls=len(balls),groups=len(results),positive_lower_witnesses=len(finite),
        factor2_groups=sum(x['factor2_certified'] for x in results),
        factor3_groups=sum(x['factor3_certified'] for x in results),
        factor2_all_groups_balls=sum(x['factor2_all_groups'] for x in balls),
        factor3_all_groups_balls=sum(x['factor3_all_groups'] for x in balls),
        finite_ratio_quantiles=qs,ball_results=balls,witnesses=results)
    Path(output).write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k not in ('ball_results','witnesses')},indent=2))


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('certificate');p.add_argument('weighted_directory');p.add_argument('output')
    a=p.parse_args();run(a.certificate,a.weighted_directory,a.output)
