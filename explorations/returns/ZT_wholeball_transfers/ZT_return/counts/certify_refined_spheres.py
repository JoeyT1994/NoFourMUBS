#!/usr/bin/env python3
"""Parallel Arb replay of every refined zero-fallback source sphere.

The input is loaded once and reduced to exact seed headers before forking.
Workers reconstruct each source normal form and every output-projected
normal bound. The survey's numeric models and weight JSONs are not trusted.
"""
from __future__ import annotations
import argparse,csv,gc,gzip,hashlib,json,multiprocessing,sys,time
from concurrent.futures import ProcessPoolExecutor,as_completed
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import zt_patch as ZT
import weighted_replay as WR
import seed_weighted as SW
from count_study import ROOT

WORK={}
BALLS={}


def sha(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def get_ball(j):
    if j not in BALLS:BALLS[j]=ZT.SC.Ball(WORK['seeds'][j])
    return BALLS[j]


def certify(row):
    j=int(row['seed']);t0=time.perf_counter()
    suffix='hybrid' if WORK.get('hybrid') else 'patches'
    expected=int(row['total'] if WORK.get('hybrid') else row['patch_pass'])
    grpath=Path(WORK['survey'])/f'seed_{j}_{suffix}.json'
    result=dict(seed=j,status='NOT ESTABLISHED',original_count=int(row['original']),
                proposed_count=expected,groups_sha256=sha(grpath),
                certificate_sha256=WORK['input_hash'],verifier_sha256=WORK['verifier_hash'],
                weighted_replay_sha256=WORK['weighted_replay_hash'],
                seed_weighted_sha256=WORK['seed_weighted_hash'])
    passed=0;mintarget=float('inf');minorient=float('inf');maxerror=0.
    levels={};kinds={};listed=set();failures=[];global_passes=0;local_passes=0;local_attempts=0
    try:
        groups=json.loads(grpath.read_text())
        model=ZT.normal_form(get_ball(j));result['centre']=model['summary']
        for group in groups:
            if group['kind'] not in ('T0','T1'):raise ValueError('unhandled transfer kind')
            t=group['target']
            if not isinstance(t,int) or isinstance(t,bool) or not 0<=t<len(WORK['seeds']):
                raise ValueError('bad target')
            transfer=WR.WeightedTransfer(model,get_ball(t),group)
            for bx in group['boxes']:
                ans=transfer.check(bx)
                used_local=False
                if not ans['ok'] and WORK.get('hybrid'):
                    used_local=True;local_attempts+=1
                    try:
                        ans=transfer.check_local(bx)
                    except (ArithmeticError,ValueError,ZT.SC.CertError) as e:
                        ans=dict(ok=False,box=list(bx),reason='local centre: '+str(e))
                if not ans['ok']:
                    failure=dict(group={k:v for k,v in group.items() if k!='boxes'},**ans)
                    if WORK.get('hybrid'):
                        failures.append(failure);continue
                    result['failed_patch']=failure
                    raise ArithmeticError('patch inequality did not certify')
                if used_local:local_passes+=1
                else:global_passes+=1
                passed+=1;mintarget=min(mintarget,ans['target_margin_lower'])
                minorient=min(minorient,min(ans.get('orientation_margins_lower',[float('inf')])))
                maxerror=max(maxerror,ans['error_upper'])
                levels[bx[0]]=levels.get(bx[0],0)+1;kinds[group['kind']]=kinds.get(group['kind'],0)+1
                listed.add(tuple(bx))
        if passed+len(failures)!=expected:raise ValueError('survey/replay count mismatch')
        if failures:
            result.update(failed_patches=failures,failure_count=len(failures))
            raise ArithmeticError('one or more hybrid patches did not certify')
        ok,info=ZT.SC.covered(listed,WORK['max_level'],ZT.SC.misses_unit_sphere)
        if not ok:raise ValueError('exact sphere coverage failed at '+str(info))
        result.update(status='CERTIFIED full sphere transfers',count=passed,
                      target_margin_lower=mintarget,orientation_margin_lower=minorient if minorient!=float('inf') else None,
                      max_error_upper=maxerror,coverage_nodes=info,levels=levels,kinds=kinds)
    except (ArithmeticError,ValueError,ZT.SC.CertError) as e:
        result['failure']=str(e);result['passed_before_failure']=passed
    result['seconds']=time.perf_counter()-t0
    result.update(global_passes=global_passes,local_passes=local_passes,local_attempts=local_attempts)
    (Path(WORK['output'])/f'seed_{j}.json').write_text(json.dumps(result,indent=2)+'\n')
    return {k:v for k,v in result.items() if k not in ('centre','failed_patch','failed_patches')}


def main(args):
    start=time.perf_counter();path=Path(args.certificate)
    with gzip.open(path,'rt') as f:d=json.load(f)
    # Boundary lists and info diagnostics never enter an analytic replay.
    # Drop them before fork so workers share a compact immutable header set.
    seeds=[{k:v for k,v in s.items() if k not in ('transfers','info')} for s in d['seeds']]
    max_level=d['max_level'];del d;gc.collect()
    base=Path(args.survey)
    rows=list(csv.DictReader((base/'weighted_counts.csv').open()))
    todo=[r for r in rows if r['status']=='NUMERICAL' and
          bool(int(r.get('original_fallback') or 0))==bool(args.hybrid)]
    if args.seeds:
        selected={int(s) for s in args.seeds.split(',')};todo=[r for r in todo if int(r['seed']) in selected]
    out=Path(args.output);out.mkdir(exist_ok=True,parents=True)
    input_hash=sha(path);zt_hash=sha(ZT.__file__);wr_hash=sha(WR.__file__);sw_hash=sha(SW.__file__)
    vendor_hashes={p.name:sha(p) for p in (Path(ZT.__file__).parent/'vendor').glob('*.py')}
    WORK.update(seeds=seeds,max_level=max_level,survey=str(base),output=str(out),input_hash=input_hash,
                verifier_hash=zt_hash,weighted_replay_hash=wr_hash,seed_weighted_hash=sw_hash,hybrid=args.hybrid)
    summaries=[]
    if args.workers==1:
        for row in todo:
            summary=certify(row);summaries.append(summary);print(json.dumps(summary),flush=True)
    else:
        # Separate processes are required: Arb's precision context is global.
        with ProcessPoolExecutor(max_workers=args.workers,mp_context=multiprocessing.get_context('fork')) as pool:
            futures={pool.submit(certify,row):int(row['seed']) for row in todo}
            for future in as_completed(futures):
                summary=future.result();summaries.append(summary);print(json.dumps(summary),flush=True)
    summaries.sort(key=lambda r:r['seed'])
    certified=[r for r in summaries if r['status']=='CERTIFIED full sphere transfers']
    aggregate=dict(status=('CERTIFIED all refined hybrid spheres' if args.hybrid else 'CERTIFIED all refined zero-fallback spheres') if len(certified)==len(todo) else 'PARTIAL',
                   source_count=len(todo),certified_count=len(certified),workers=args.workers,
                   original_box_count=sum(r['original_count'] for r in certified),
                   certified_patch_count=sum(r['count'] for r in certified),
                   min_target_margin_lower=min((r['target_margin_lower'] for r in certified),default=None),
                   min_orientation_margin_lower=min((r['orientation_margin_lower'] for r in certified if r['orientation_margin_lower'] is not None),default=None),
                   certificate_sha256=input_hash,verifier_sha256=zt_hash,weighted_replay_sha256=wr_hash,
                   seed_weighted_sha256=sw_hash,vendor_sha256=vendor_hashes,
                   seconds=time.perf_counter()-start,worker_seconds=sum(r['seconds'] for r in summaries),
                   global_passes=sum(r.get('global_passes',0) for r in summaries),
                   local_passes=sum(r.get('local_passes',0) for r in summaries),
                   local_attempts=sum(r.get('local_attempts',0) for r in summaries),balls=summaries)
    (out/'summary.json').write_text(json.dumps(aggregate,indent=2)+'\n')
    print(json.dumps({k:v for k,v in aggregate.items() if k!='balls'},indent=2),flush=True)


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--certificate',default=str(ROOT/'sample_certificate.json.gz'))
    p.add_argument('--survey',default=str(Path(__file__).resolve().parent/'refined_results'))
    p.add_argument('--output',default=str(Path(__file__).resolve().parent/'certified_refined_spheres'))
    p.add_argument('--workers',type=int,default=3)
    p.add_argument('--hybrid',action='store_true',help='attempt the remaining modeled sources, using true-centre local jets on global-test failures')
    p.add_argument('--seeds')
    main(p.parse_args())
