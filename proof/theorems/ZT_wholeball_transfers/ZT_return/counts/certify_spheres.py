#!/usr/bin/env python3
"""Arb-replay every proposed zero-fallback source sphere.

Loads the input once and caches target Ball objects. Each source's normal
form, every target/orientation inequality, and exact dyadic sphere coverage
are recomputed. No numeric model exports are trusted.
"""
import argparse,csv,gzip,hashlib,json,sys,time
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import zt_patch as ZT
from count_study import ROOT


def sha(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def main(args):
    start=time.perf_counter()
    path=Path(args.certificate)
    with gzip.open(path,'rt') as f:d=json.load(f)
    base=Path(args.survey)
    rows=list(csv.DictReader((base/'weighted_counts.csv').open()))
    todo=[r for r in rows if r['status']=='NUMERICAL' and not int(r.get('original_fallback') or 0)]
    if args.seeds:
        selected={int(s) for s in args.seeds.split(',')}
        todo=[r for r in todo if int(r['seed']) in selected]
    out=Path(args.output);out.mkdir(exist_ok=True,parents=True)
    balls={}
    def ball(j):
        if j not in balls:balls[j]=ZT.SC.Ball(d['seeds'][j])
        return balls[j]
    input_hash=sha(path);zt_hash=sha(Path(ZT.__file__))
    vendor_hashes={p.name:sha(p) for p in (Path(ZT.__file__).parent/'vendor').glob('*.py')}
    summaries=[]
    for row in todo:
        j=int(row['seed']);t0=time.perf_counter()
        grpath=base/f'seed_{j}_patches.json'
        groups=json.loads(grpath.read_text())
        result=dict(seed=j,status='NOT ESTABLISHED',original_count=int(row['original']),
                    proposed_count=int(row['patch_pass']),groups_sha256=sha(grpath),
                    certificate_sha256=input_hash,verifier_sha256=zt_hash)
        passed=0;mintarget=float('inf');minorient=float('inf');maxerror=0.
        levels={};kinds={};listed=set()
        try:
            model=ZT.normal_form(ball(j));result['centre']=model['summary']
            for group in groups:
                if group['kind'] not in ('T0','T1'):raise ValueError('unhandled transfer kind')
                t=group['target']
                if not isinstance(t,int) or isinstance(t,bool) or not 0<=t<len(d['seeds']):
                    raise ValueError('bad target')
                tr=ZT.Transfer(model,ball(t),group)
                for bx in group['boxes']:
                    ans=tr.check(bx)
                    if not ans['ok']:
                        result['failed_patch']=dict(group={k:v for k,v in group.items() if k!='boxes'},**ans)
                        raise ArithmeticError('patch inequality did not certify')
                    passed+=1;mintarget=min(mintarget,ans['target_margin_lower'])
                    minori=min(ans.get('orientation_margins_lower',[float('inf')]))
                    minorient=min(minorient,minori);maxerror=max(maxerror,ans['error_upper'])
                    levels[bx[0]]=levels.get(bx[0],0)+1
                    kinds[group['kind']]=kinds.get(group['kind'],0)+1
                    listed.add(tuple(bx))
            if passed!=int(row['patch_pass']):raise ValueError('survey/replay count mismatch')
            ok,info=ZT.SC.covered(listed,d['max_level'],ZT.SC.misses_unit_sphere)
            if not ok:raise ValueError('exact sphere coverage failed at '+str(info))
            result.update(status='CERTIFIED full sphere transfers',count=passed,
                          target_margin_lower=mintarget,orientation_margin_lower=minorient if minorient!=float('inf') else None,
                          max_error_upper=maxerror,coverage_nodes=info,levels=levels,kinds=kinds)
        except (ArithmeticError,ValueError,ZT.SC.CertError) as e:
            result['failure']=str(e);result['passed_before_failure']=passed
        result['seconds']=time.perf_counter()-t0
        (out/f'seed_{j}.json').write_text(json.dumps(result,indent=2)+'\n')
        summaries.append({k:v for k,v in result.items() if k not in ('centre','failed_patch')})
        print(json.dumps(summaries[-1]),flush=True)
    certified=[r for r in summaries if r['status']=='CERTIFIED full sphere transfers']
    aggregate=dict(status='CERTIFIED all proposed zero-fallback spheres' if len(certified)==len(todo) else 'PARTIAL',
                   source_count=len(todo),certified_count=len(certified),
                   original_box_count=sum(r['original_count'] for r in certified),
                   certified_patch_count=sum(r['count'] for r in certified),
                   min_target_margin_lower=min((r['target_margin_lower'] for r in certified),default=None),
                   min_orientation_margin_lower=min((r['orientation_margin_lower'] for r in certified if r['orientation_margin_lower'] is not None),default=None),
                   certificate_sha256=input_hash,verifier_sha256=zt_hash,vendor_sha256=vendor_hashes,
                   seconds=time.perf_counter()-start,balls=summaries)
    (out/'summary.json').write_text(json.dumps(aggregate,indent=2)+'\n')
    print(json.dumps({k:v for k,v in aggregate.items() if k!='balls'},indent=2),flush=True)


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--certificate',default=str(ROOT/'sample_certificate.json.gz'))
    p.add_argument('--survey',default=str(Path(__file__).resolve().parent/'weighted_results'))
    p.add_argument('--output',default=str(Path(__file__).resolve().parent/'certified_spheres'))
    p.add_argument('--seeds')
    main(p.parse_args())
