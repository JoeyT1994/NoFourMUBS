#!/usr/bin/env python3
"""Generate proposals; ONLY kernel.accept_tile may accept a tile.

Replays must use verify.py, which never recomputes numerical inverses.
"""
import os
for k in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS'):
    os.environ[k] = '1'
from pathlib import Path
import argparse, json, time, math, concurrent.futures
from interval import *
from charts import *
from kernel import accept_tile
from geometry import PROFILES, rectangle, audit_partition, profile_json, MAX_DEPTH
HERE = Path(__file__).resolve().parent


def propose(profile, path):
    t = time.process_time()
    cfg = PROFILES[profile]
    hu,hv = cfg['hu'], cfg['hv']
    try:
        charts = make_charts(*rectangle(profile,path))
        retained = {}
        for name, chart in zip(('F','A'),charts):
            P,Q2,A = chart.proposal()
            eta,Kp = chart_enclosures(chart,hu,hv,P,Q2,A)
            radii = [ceild(eta[i,0]*v(Q(21,20))+v(Q(1,10**9)))
                     for i in range(chart.n)]
            for iteration in range(80):
                ok,K,combined,contract,S=correction_test(chart,eta,Kp,A,radii)
                if ok and float(combined) < 0.985:
                    break
                radii=[ceild(S[i,0]*v(Q(21,20))+v(Q(1,10**9)))
                       for i in range(chart.n)]
                if max(radii) > Q(1,40):
                    raise ValueError(name+' proposed correction radius too large')
            retained[name] = encode_proposal(chart,P,Q2,A,radii)
        metrics = accept_tile(profile,path,retained)
        return dict(ok=True, profile=profile,path=path,retained=retained,
                    metrics=metrics,cpu_seconds=time.process_time()-t)
    except Exception as ex:
        return dict(ok=False,profile=profile,path=path,reason=str(ex),
                    cpu_seconds=time.process_time()-t)


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--workers',type=int,default=8)
    ap.add_argument('--start-depth',type=int,default=3)
    ap.add_argument('--profiles',nargs='+',default=list(PROFILES))
    ap.add_argument('--out',type=Path,default=HERE/'data')
    args=ap.parse_args()
    from itertools import product
    tasks=[(pr,''.join(chars)) for pr in args.profiles
           for chars in product('0123',repeat=args.start_depth)]
    accepted=[];failures=[];total_cpu=0.0;t0=time.monotonic();roundno=0
    args.out.mkdir(parents=True,exist_ok=True)
    with concurrent.futures.ProcessPoolExecutor(max_workers=args.workers) as pool:
        while tasks:
            roundno+=1
            nexttasks=[];count=0
            futs={pool.submit(propose,pr,pa):(pr,pa) for pr,pa in tasks}
            for future in concurrent.futures.as_completed(futs):
                r=future.result();total_cpu+=r['cpu_seconds'];count+=1
                if r['ok']:
                    accepted.append(r)
                else:
                    failures.append({k:v for k,v in r.items() if k!='retained'})
                    if len(r['path'])>=MAX_DEPTH:
                        raise RuntimeError('open leaf at maximum depth: '+str(r))
                    nexttasks.extend((r['profile'],r['path']+c) for c in '0123')
                if count%100==0 or count==len(tasks):
                    print(json.dumps(dict(round=roundno,done=count,tasks=len(tasks),
                          accepted=len(accepted),next_tasks=len(nexttasks),
                          cpu_seconds=round(total_cpu,3),wall_seconds=round(time.monotonic()-t0,3))),flush=True)
            tasks=nexttasks
    accepted.sort(key=lambda x:(x['profile'],x['path']))
    audit={pr:audit_partition([r['path'] for r in accepted if r['profile']==pr])
           for pr in args.profiles}
    arrays={}
    for branch in ('F','A'):
        for kind in ('inverse','linear','quadratic','radii'):
            arrays[branch+'_'+kind]=np.stack([r['retained'][branch][kind] for r in accepted])
    np.savez_compressed(args.out/'predictors.npz',**arrays)
    (args.out/'tiles.json').write_text(json.dumps([dict(profile=r['profile'],path=r['path']) for r in accepted],indent=2)+'\n')
    (args.out/'profiles.json').write_text(json.dumps(profile_json(),indent=2)+'\n')
    receipt=dict(status='all_tiles_accepted_by_outward_kernel',precision_bits=iv.prec,
                 partition=audit,total_cpu_seconds=total_cpu,
                 wall_seconds=time.monotonic()-t0,workers=args.workers,
                 attempted_tiles=len(accepted)+len(failures),
                 accepted_tiles=len(accepted),subdivided_tiles=len(failures),
                 results=[r['metrics'] for r in accepted])
    (args.out/'build_receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    (args.out/'build_subdivisions.json').write_text(json.dumps(failures,indent=2)+'\n')
    print(json.dumps({k:v for k,v in receipt.items() if k!='results'},indent=2),flush=True)

if __name__=='__main__': main()
