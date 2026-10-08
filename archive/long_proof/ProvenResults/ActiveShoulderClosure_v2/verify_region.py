"""Clean replay for a new exact-box list and its assembled complete forest."""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1');os.environ.setdefault('OMP_NUM_THREADS','1')
import argparse,json,gzip,time,traceback
from pathlib import Path
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from geometry import build_region,HERE
from build_region import read_boxes
from assemble import load_shard,sha
from predicate import check_pins
from verify import replay_task,runtime

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    for name in ['region','forest','output-dir']:ap.add_argument('--'+name,type=Path,required=True)
    source=ap.add_mutually_exclusive_group(required=True)
    source.add_argument('--boxes',type=Path)
    source.add_argument('--pilot',action='store_true',help='regenerate the supplied 80,613-box pilot instead of a new JSONL list')
    ap.add_argument('--jobs',type=int,default=1);a=ap.parse_args()
    if not __debug__ or a.jobs<1 or a.output_dir.exists():ap.error('fresh output, positive jobs, no -O')
    a.output_dir.mkdir(parents=True);beg=time.monotonic();receipt=dict(audit='FAIL',closure='INCOMPLETE',runtime=runtime())
    try:
        check_pins();receipt['inputs']={k:dict(path=str(getattr(a,k)),sha256=sha(getattr(a,k))) for k in ['region','forest']+(['boxes'] if a.boxes else [])};receipt['module_inputs_sha256']=sha(HERE/'INPUTS.json')
        reg=json.loads(a.region.read_text())
        if a.pilot:
            from geometry import build_pilot_region
            rebuilt=build_pilot_region(reg['grid'])
        else:rebuilt=build_region(read_boxes(a.boxes),reg['grid'])
        if any(reg.get(k)!=v for k,v in rebuilt.items()):raise ValueError('exact region regeneration mismatch')
        if a.boxes and reg.get('source_file',{}).get('sha256')!=sha(a.boxes):raise ValueError('source box byte hash mismatch')
        from audits import run as controls
        from v2_audits import run as controls2
        from direct_audits import run as controls3
        receipt['controls']=controls();receipt['v2_controls']=controls2();receipt['direct_controls']=controls3()
        from terminal_audits import run as terminal_controls
        from julia_environment import check as julia_check
        receipt['julia_environment']=julia_check();receipt['campaign_terminals']=terminal_controls()
        from extra_tubes import run as tubes
        from production_cover import run as production
        receipt['regional_tubes']=tubes(a.output_dir/'regional_tubes')
        from stronger_tubes import run as stronger
        receipt['stronger_tubes']=stronger(a.output_dir/'stronger_tubes')
        p=production(a.output_dir/'production_cover.json',a.jobs);receipt['production_cover']={k:v for k,v in p.items() if k!='leaves'}
        from rootfree_cubes import run as rootfree_cubes
        receipt['rootfree_cubes']=rootfree_cubes(a.output_dir/'rootfree_cubes',a.jobs)
        records=load_shard(a.forest,reg,sha(a.region))
        if {r['root'] for r in records}!=set(range(len(reg['roots']))):raise ValueError('missing root obligations')
        reports=[]
        with gzip.open(a.output_dir/'roots.jsonl.gz','wt') as out:
            with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context("spawn")) as pool:
                for f in as_completed([pool.submit(replay_task,(reg,r)) for r in records]):
                    r=f.result();reports.append(r);out.write(json.dumps(r,sort_keys=True)+'\n')
        receipt.update(audit='PASS',roots=len(reports),closed_roots=sum(r['closed'] for r in reports),cpu_seconds=sum(r['cpu_seconds'] for r in reports),source_boxes=80613 if a.pilot else reg['source_count'])
        done=receipt['closed_roots']==receipt['roots'];receipt['closure']='PASS' if done else 'INCOMPLETE';receipt['source_boxes_all_certified']=done
        receipt['wall_seconds']=time.monotonic()-beg;receipt['files']={str(p.relative_to(a.output_dir)):sha(p) for p in a.output_dir.rglob('*') if p.is_file()}
        (a.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n');print(receipt['audit'],receipt['closure']);return 0 if done else 2
    except Exception as ex:
        receipt['error']=f'{type(ex).__name__}: {ex}';(a.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n');traceback.print_exc();return 1
if __name__=='__main__':raise SystemExit(main())
