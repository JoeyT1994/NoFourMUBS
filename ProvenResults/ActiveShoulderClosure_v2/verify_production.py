#!/usr/bin/env python3
"""Clean replay of a newly assembled production forest, without repinning."""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
os.environ.setdefault('OMP_NUM_THREADS','1')
import argparse,gzip,json,time,traceback
from pathlib import Path
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from geometry import HERE
from assemble import load_shard,sha
from predicate import check_pins
from verify import runtime,replay_task

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--region',type=Path,default=HERE/'data/production_region.json')
    p.add_argument('--forest',type=Path,required=True)
    p.add_argument('--output-dir',type=Path,required=True)
    p.add_argument('--jobs',type=int,default=1)
    a=p.parse_args()
    if not __debug__ or a.jobs<1 or a.output_dir.exists():p.error('fresh output, positive jobs, no -O')
    a.output_dir.mkdir(parents=True);start=time.monotonic()
    receipt=dict(audit='FAIL',production_90='INCOMPLETE',runtime=runtime())
    try:
        check_pins()
        receipt['inputs']={str(path):sha(path) for path in [HERE/'INPUTS.json',a.region,a.forest]}
        from production import build
        region=json.loads(a.region.read_text())
        if region!=build():raise ValueError('exact 90-seed guarded cube census/transport mismatch')
        from audits import run as controls
        from v2_audits import run as controls2
        from direct_audits import run as controls3
        from structural import run as structural
        receipt['controls']=controls();receipt['v2_controls']=controls2()
        receipt['direct_controls']=controls3();receipt['structural']=structural()
        from terminal_audits import run as terminal_controls
        from julia_environment import check as julia_check
        receipt['julia_environment']=julia_check();receipt['campaign_terminals']=terminal_controls()
        from extra_tubes import run as tubes
        from stronger_tubes import run as stronger
        from production_cover import run as base_cover
        from rootfree_cubes import run as cube_covers
        receipt['regional_tubes']=tubes(a.output_dir/'regional_tubes')
        receipt['stronger_tubes']=stronger(a.output_dir/'stronger_tubes')
        base=base_cover(a.output_dir/'production_cover.json',a.jobs)
        receipt['production_cover']={k:v for k,v in base.items() if k!='leaves'}
        receipt['rootfree_cubes']=cube_covers(a.output_dir/'rootfree_cubes',a.jobs)
        records=load_shard(a.forest,region,sha(a.region))
        if {r['root'] for r in records}!=set(range(9)):raise ValueError('missing representative roots')
        reports=[]
        with gzip.open(a.output_dir/'roots.jsonl.gz','wt') as out:
            with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context("spawn")) as pool:
                for future in as_completed([pool.submit(replay_task,(region,r)) for r in records]):
                    r=future.result();reports.append(r);out.write(json.dumps(r,sort_keys=True)+'\n')
        closed={tuple(region['roots'][r['root']]['seed']):r['closed'] for r in reports}
        statuses=[dict(seed=s['seed'],representative=s['representative'],ok=closed[tuple(s['representative'])],frame=s['frame'],period_shifts=s['period_shifts']) for s in region['seeds']]
        (a.output_dir/'production_90.json').write_text(json.dumps(statuses,indent=2,sort_keys=True)+'\n')
        count=sum(s['ok'] for s in statuses)
        receipt.update(audit='PASS',production_90='PASS' if count==90 else 'INCOMPLETE',closed_cubes=count,cubes=90,closed_representatives=sum(r['closed'] for r in reports),representatives=9,cpu_seconds=sum(r['cpu_seconds'] for r in reports),wall_seconds=time.monotonic()-start)
        receipt['files']={str(q.relative_to(a.output_dir)):sha(q) for q in a.output_dir.rglob('*') if q.is_file()}
        (a.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
        print(receipt['audit'],receipt['production_90'],count,'/ 90')
        return 0 if count==90 else 2
    except Exception as ex:
        receipt['error']=f'{type(ex).__name__}: {ex}'
        (a.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
        traceback.print_exc();return 1

if __name__=='__main__':raise SystemExit(main())
