#!/usr/bin/env python3
"""Arb replay of output-weighted whole-ball Hessian sharpness witnesses.

The sampled direction is merely a proposal. It is renormalized exactly in
Arb, and every successful ratio is a strict interval comparison. This does
not claim a sharpness ratio for the Taylor remainder on each sphere patch.
"""
import argparse, csv, json
from pathlib import Path
import numpy as np
import zt_patch as ZT


def run(certificate, proposal_csv, output, seed_list=None):
    data=ZT.load_certificate(certificate)
    with open(proposal_csv,newline='') as f:
        proposals=list(csv.DictReader(f))
    byseed={}
    for row in proposals:
        byseed.setdefault(int(row['seed']),[]).append(row)
    if seed_list is None:
        seeds=sorted(s for s,rows in byseed.items() if all(float(r['ratio'])<=3 for r in rows))
    else:
        seeds=list(map(int,seed_list))
    output=Path(output)
    results=[];ball_results=[]
    for seed in seeds:
        ball=ZT.SC.Ball(data['seeds'][seed])
        model=ZT.normal_form(ball)
        start=len(results)
        for row in byseed[seed]:
            gi=int(row['group']);group=data['seeds'][seed]['transfers'][gi]
            assert group['kind']=='T1'
            target=ZT.SC.Ball(data['seeds'][group['target']])
            L=ZT.SC.corner_L(group['rows'],group['cols'])@ZT.SC.g_matrix(group['g'])
            A=ZT.Z.mat(target.Mth).inv()*ZT.Z.mat(L)
            AH=A*model['H2'];AX=A*model['X']
            C=ZT.matrix_norm(AH)+ZT.matrix_norm(AX)*model['Z2']
            proposed=json.loads(row['best_direction'])
            assert len(proposed)==4 and all(np.isfinite(x) for x in proposed)
            v=ZT.col(proposed)
            vn=sum((x**2 for x in v.entries()),ZT.arb(0)).sqrt()
            if not vn>0:
                raise ArithmeticError('zero direction')
            v=v/vn
            vv=ZT.arb_mat([[v[i,0]*v[j,0]] for i in range(4) for j in range(4)])
            curvature=sum((x**2 for x in (AH*vv).entries()),ZT.arb(0)).sqrt()
            good=bool(curvature>0 and C<3*curvature)
            result=dict(seed=seed,group=gi,target=group['target'],
                direction_hex=[float(x).hex() for x in proposed],
                status='CERTIFIED' if good else 'NOT ESTABLISHED',
                Hessian_bound_upper=ZT.Z.upper(C),
                center_directional_curvature_lower=ZT.Z.lower(curvature),
                ratio_upper=ZT.Z.upper(C/curvature) if curvature>0 else None)
            results.append(result)
        local=results[start:]
        ball_results.append(dict(seed=seed,groups=len(local),
            status='CERTIFIED' if all(r['status']=='CERTIFIED' for r in local) else 'NOT ESTABLISHED',
            ratio_upper=max(r['ratio_upper'] for r in local),
            strict_R_lower=model['summary']['strict_R_lower']))
    answer=dict(status='CERTIFIED' if all(r['status']=='CERTIFIED' for r in results) else 'NOT ESTABLISHED',
        claim='For each listed T1 output map A, the stated upper bound on sup_{||w||<=r} ||A D^2 Q(w)|| is less than 3 times that supremum.',
        qualification='Conditional on the supplied local matched-completion germ; does not certify 3x Taylor-defect sharpness on every sphere patch.',
        balls=len(ball_results),groups=len(results),
        max_ratio_upper=max(r['ratio_upper'] for r in results),
        ball_results=ball_results,witnesses=results)
    output.write_text(json.dumps(answer,indent=2)+'\n')
    print(json.dumps({k:v for k,v in answer.items() if k not in ('ball_results','witnesses')},indent=2))


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('certificate');p.add_argument('proposals_csv');p.add_argument('output')
    p.add_argument('--seeds',nargs='+',type=int)
    a=p.parse_args();run(a.certificate,a.proposals_csv,a.output,a.seeds)
