#!/usr/bin/env python3
"""NUMERICAL output-weighted Hessian sharpness survey.

Uses certified Z normal-form models exported as floating midpoints. This is
a diagnostic, not an interval replay. The denominator samples the exact
centre quadratic tensor, which is a lower witness for the whole-ball
Hessian supremum. It is not a Taylor-defect lower bound for every patch.
"""
import argparse, csv, gzip, itertools, json, math
from pathlib import Path
import numpy as np


def fhex(v):
    return float.fromhex(v) if isinstance(v, str) else float(v)


def corner_map(group):
    rows, cols = group['rows'], group['cols']
    i0, i1, i2 = rows
    j0, j1, j2 = cols
    L = np.zeros((4,36),dtype=float)
    for k,(i,j) in enumerate(((i1,j1),(i1,j2),(i2,j1),(i2,j2))):
        L[k,6*i+j] += 1
        L[k,6*i+j0] -= 1
        L[k,6*i0+j] -= 1
        L[k,6*i0+j0] += 1
    g = group['g']
    if g in ('T','conjT'):
        L=L.reshape(4,6,6).transpose(0,2,1).reshape(4,36)
    if g in ('conj','conjT'):
        L=-L
    assert g in ('id','conj','T','conjT')
    return L


def quantiles(a):
    a=np.asarray(a,float)
    if a.size==0:
        return None
    return dict(zip(('min','p10','median','p90','p99','max'),
        map(float,np.quantile(a,[0,.1,.5,.9,.99,1]))))


def run(cert_path, model_dir, output_dir, random_count=1024):
    with gzip.open(cert_path,'rt') as f:
        data=json.load(f)
    seeds=data['seeds']
    rng=np.random.default_rng(20261025)
    grid=np.array([v for v in itertools.product(range(-2,3),repeat=4)
        if any(v) and next(x for x in v if x)!=0 and next(x for x in v if x)>0],float)
    rand=rng.normal(size=(random_count,4))
    directions=np.concatenate([grid,rand],axis=0)
    directions/=np.linalg.norm(directions,axis=1)[:,None]
    vv=np.einsum('ni,nj->ijn',directions,directions).reshape(16,-1)
    out=Path(output_dir);out.mkdir(parents=True,exist_ok=True)
    rows=[]; ballrows=[]; seen=0; linear=0; small=0
    for path in sorted(Path(model_dir).glob('model_*.npz'),key=lambda p:int(p.stem.split('_')[-1])):
        seed=int(path.stem.split('_')[-1]); s=seeds[seed]
        mod=np.load(path)
        H2=mod['H2'].reshape(36,16); X=mod['X']; Z2=float(mod['Z2'])
        hdir=H2@vv
        ballR=float(s.get('info',{}).get('R',float('nan')))
        M=np.array(list(map(fhex,s['Mth']))).reshape(4,4)
        ballcond=float(np.linalg.cond(M))
        start=len(rows)
        for gi,g in enumerate(s.get('transfers',[])):
            if g['kind']!='T1':
                continue
            seen+=1
            if sorted(g['rows'])==[0,1,2] and sorted(g['cols'])==[0,1,2]:
                linear+=1
                continue
            tar=seeds[g['target']]
            Mt=np.array(list(map(fhex,tar['Mth']))).reshape(4,4)
            A=np.linalg.solve(Mt,corner_map(g))
            AH=A@H2; AX=A@X
            alpha=float(np.linalg.norm(AH,2))
            chi=float(np.linalg.norm(AX,2))
            vals=np.linalg.norm(A@hdir,axis=0)
            ix=int(np.argmax(vals)); sample=float(vals[ix])
            if sample<1e-10:
                small+=1
            C=alpha+chi*Z2
            ratio=C/sample if sample>0 else float('inf')
            rows.append(dict(seed=seed,group=gi,target=g['target'],g=g['g'],
                corner_rows=json.dumps(g['rows']),corner_cols=json.dumps(g['cols']),
                boxes=len(g['boxes']),R_center=ballR,source_frame_condition=ballcond,
                q=float(mod['q']),Z2=Z2,alpha=alpha,chi=chi,C_A=C,
                sampled_center_curvature=sample,ratio=ratio,
                flatten_ratio=alpha/sample if sample else float('inf'),
                best_direction=json.dumps(directions[ix].tolist())))
        vals=[r['ratio'] for r in rows[start:]]
        if vals:
            ballrows.append(dict(seed=seed,R_center=ballR,source_frame_condition=ballcond,
                q=float(mod['q']),Z2=Z2,groups=len(vals),ratio_min=min(vals),
                ratio_median=float(np.median(vals)),ratio_max=max(vals),
                groups_at_most_2=sum(v<=2 for v in vals),
                groups_at_most_3=sum(v<=3 for v in vals)))
    with (out/'curvature_groups.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    with (out/'curvature_balls.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(ballrows[0]));w.writeheader();w.writerows(ballrows)
    bins=[]
    for lo,hi in [(0,1),(1,10),(10,30),(30,100),(100,200),(200,300),(300,float('inf'))]:
        rr=[r for r in rows if lo<=r['R_center']<hi]
        bins.append(dict(R_low=lo,R_high=None if math.isinf(hi) else hi,groups=len(rr),
            ratio_quantiles=quantiles([r['ratio'] for r in rr]),
            fraction_at_most_3=sum(r['ratio']<=3 for r in rr)/len(rr) if rr else None))
    summary=dict(status='NUMERICAL',meaning='C_A / sampled centre curvature; global Hessian diagnostic, not patch Taylor-defect sharpness',
        random_seed=20261025,directions=len(directions),models=len(ballrows),
        T1_groups_seen=seen,exact_leading_corner_symmetries_skipped=linear,
        nonlinear_T1_groups=len(rows),groups_small_centre_curvature=small,
        ratio_quantiles=quantiles([r['ratio'] for r in rows]),
        flatten_ratio_quantiles=quantiles([r['flatten_ratio'] for r in rows]),
        groups_at_most_2=sum(r['ratio']<=2 for r in rows),
        groups_at_most_3=sum(r['ratio']<=3 for r in rows),
        all_groups_at_most_3_balls=sum(r['ratio_max']<=3 for r in ballrows),
        ball_worst_ratio_quantiles=quantiles([r['ratio_max'] for r in ballrows]),
        R_bins=bins,
        best_groups=sorted(rows,key=lambda r:r['ratio'])[:8],
        worst_groups=sorted(rows,key=lambda r:r['ratio'],reverse=True)[:8])
    (out/'curvature_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({k:v for k,v in summary.items() if k not in ('best_groups','worst_groups')},indent=2))


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('certificate');p.add_argument('models');p.add_argument('output')
    p.add_argument('--random',type=int,default=1024)
    a=p.parse_args();run(a.certificate,a.models,a.output,a.random)
