#!/usr/bin/env python3
"""Clean replay. Exit 2 for incomplete closure, 1 for invalid evidence.

--audit-partial explicitly asks only whether the retained partial evidence
is valid; its exit 0 does NOT establish closure. Receipt remains INCOMPLETE.
"""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
os.environ.setdefault('OMP_NUM_THREADS','1')
import argparse,gzip,json,sys,time,platform,hashlib,traceback
from pathlib import Path
from concurrent.futures import ProcessPoolExecutor,as_completed
from collections import Counter
from fractions import Fraction as F
from flint import ctx
import flint,numpy,sympy
from geometry import HERE,ROOT,build_region,root_box,pilot_rows,pilot_radius,grid_keys
from predicate import check_pins,load_forest,certify_box,_assets,load_box_certificates
from audits import run as run_controls,require
from kernel import leaf


def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def replay(t):
    key,grid,w,precision=t;ctx.prec=precision;start=time.process_time();c,r=root_box(key,grid,w['path'])
    try:rr=leaf(c,r,plan=w.get('plan'),reference_search=False)
    except Exception as ex:rr=dict(ok=False,reason=f'{type(ex).__name__}: {ex}')
    return dict(root=key,path=w['path'],ok=rr['ok'],reason=rr['reason'],cpu_seconds=time.process_time()-start)


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--output-dir',type=Path,required=True);ap.add_argument('--jobs',type=int,default=1)
    ap.add_argument('--audit-partial',action='store_true');args=ap.parse_args()
    if args.jobs<1:ap.error('jobs must be positive')
    if not __debug__:ap.error('critical upstream assertions require Python without -O')
    if args.output_dir.exists():ap.error('choose a fresh output directory')
    args.output_dir.mkdir(parents=True)
    start=time.monotonic();cpu0=time.process_time()
    receipt=dict(status='FAIL',scope='partial regional certificate audit; whole-region closure separately gated',python=sys.version,platform=platform.platform(),packages=dict(python_flint=flint.__version__,numpy=numpy.__version__,sympy=sympy.__version__),precision=160,inputs_sha256=sha(HERE/'INPUTS.json'),index_sha256=sha(HERE/'data/index.json'))
    receipt['runtime_files']={str(p):sha(p) for p in [Path(sys.executable),Path(flint.__file__),Path(numpy.__file__),*Path(flint.__file__).parent.rglob('*.so')] if p.is_file()}
    try:
        check_pins();index,region,forest=load_forest(check_hashes=False)
        regenerated=build_region(region['grid'])
        require(region==regenerated,'exact region regeneration')
        receipt['input_hashes']='PASS';receipt['geometry']='PASS';receipt['controls']=run_controls()
        from extra_tubes import run as replay_extra_tubes
        receipt['new_regional_tubes']=replay_extra_tubes(args.output_dir/'extra_tubes')
        # Independent checks of the exact lookup on synthetic partitions.
        from predicate import within_tree
        tree={'0':{'ok':True},'1':{'ok':False,'reason':'control'}}
        require(within_tree((0,0,0,0),1,tree,[F(1,4)]*4,[F(1,10)]*4)[0],'contained child positive control')
        require(not within_tree((0,0,0,0),1,tree,[F(1,2)]*4,[F(1,4)]*4)[0],'open child not skipped')
        tasks=[(list(k),region['grid'],w,160) for k,tree in forest.items() for w in tree.values() if w['ok']]
        failures=[];worker_cpu=0;replayed=0
        with gzip.open(args.output_dir/'leaf_replay.jsonl.gz','wt') as out:
            with ProcessPoolExecutor(max_workers=args.jobs) as pool:
                for fut in as_completed([pool.submit(replay,t) for t in tasks]):
                    r=fut.result();out.write(json.dumps(r,sort_keys=True)+'\n');worker_cpu+=r['cpu_seconds'];replayed+=1
                    if not r['ok']:failures.append(r)
                    if replayed%500==0:print(json.dumps(dict(replayed=replayed,failures=len(failures))),flush=True)
        receipt['accepting_leaves_replayed']=replayed;receipt['replay_worker_cpu_seconds']=worker_cpu
        receipt['replay_failures']=failures
        require(not failures,'some retained accepting leaves did not replay')
        require(index['accepting_leaf_replay']=='PASS','delivery index was not released after preflight replay')
        boxes=load_box_certificates(index,region)
        source={r['id']:r for r in pilot_rows() if r['id'] in {b['id'] for b in boxes}}
        box_cpu=time.process_time();ctx.prec=160
        for b in boxes:
            cc=list(map(F,b['centers']));rr=[F(b['radius'])]*4
            require(cc==source[b['id']]['centers'] and rr==[pilot_radius()]*4,'box source/guard binding')
            report=leaf(cc,rr,plan=b['report'].get('plan'),reference_search=False)
            require(report['ok'],'supplemental box failed fresh replay')
        receipt['supplemental_boxes_replayed']=len(boxes)
        receipt['supplemental_box_cpu_seconds']=time.process_time()-box_cpu
        receipt['accepting_leaf_replay']='PASS'
        _assets.cache_clear();count=0;closed=0;reasons=Counter();group=Counter();lookup_cpu=time.process_time()
        with gzip.open(args.output_dir/'pilot.jsonl.gz','wt') as allout,gzip.open(args.output_dir/'uncovered.jsonl.gz','wt') as missing:
            for row in pilot_rows():
                r=certify_box(row['centers'],[pilot_radius()]*4)
                record=dict(id=row['id'],centers=[str(v) for v in row['centers']],radius=str(pilot_radius()),source_line=row['line'],**r)
                allout.write(json.dumps(record,sort_keys=True)+'\n');count+=1;closed+=int(r['ok']);reasons[r['reason']]+=1;group[(row['family'],r['ok'])]+=1
                if not r['ok']:missing.write(json.dumps(record,sort_keys=True)+'\n')
        require(count==80613==region['pilot_count'],'full pilot census')
        receipt['pilot']=dict(total=count,closed=closed,uncovered=count-closed,reasons=dict(reasons),by_family=[dict(family=f,ok=o,count=n) for (f,o),n in sorted(group.items())],cpu_seconds=time.process_time()-lookup_cpu,input_radius=str(pilot_radius()),exact_pi_guard_contained=True)
        receipt['roots']=index['roots'];receipt['closed_roots']=index['closed_roots'];receipt['leaves']=index['leaves'];receipt['accepted_leaves']=index['accepted_leaves']
        done=index['accepted_leaves']==index['leaves'] and closed==count
        receipt['whole_region']='PASS' if done else 'INCOMPLETE';receipt['partial_audit']='PASS';receipt['status']='PASS' if done else 'INCOMPLETE'
        receipt['wall_seconds']=time.monotonic()-start;receipt['main_cpu_seconds']=time.process_time()-cpu0
        receipt['files']={str(p.relative_to(args.output_dir)):sha(p) for p in args.output_dir.rglob('*') if p.is_file()}
        (args.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
        print(json.dumps({k:v for k,v in receipt.items() if k not in ('files','controls','replay_failures')},indent=2),flush=True)
        return 0 if done or args.audit_partial else 2
    except Exception as ex:
        receipt['error']=f'{type(ex).__name__}: {ex}';receipt['wall_seconds']=time.monotonic()-start
        (args.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');traceback.print_exc();return 1
if __name__=='__main__':sys.exit(main())
