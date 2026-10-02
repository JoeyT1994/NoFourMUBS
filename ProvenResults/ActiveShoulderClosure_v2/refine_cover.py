#!/usr/bin/env python3
"""Parallel leaf replay/refinement of one cyclic root-free certificate tree.

Every retained accepting leaf is freshly revalidated. Open leaves are
independent bounded searches; exact tree assembly preserves every face.
"""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1');os.environ.setdefault('OMP_NUM_THREADS','1')
import argparse,gzip,json,time,sys,platform
from pathlib import Path
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from fractions import Fraction as F
from flint import ctx
from geometry import HERE,initial_box,split_box
from assemble import load_shard,sha
from tree import compact,audit_root
from side_cover_driver import process_root
from driver import ALL

def task(arg):
    rid,region,node,options=arg
    if not node['ok']:
        return process_root((rid,region,dict(options,start_path=node['path']),None))
    ctx.prec=options['precision'];start=time.process_time()
    c,r=initial_box(region,rid)
    for d,bit in enumerate(node['path']):c,r=split_box(c,r,d%4,int(bit))
    from fallback import certify
    fb=node['report']['fallback']
    try:result=certify(c,r,fb['reference'],fb['options'])
    except Exception as ex:result=dict(ok=False,reason='exception',detail=str(ex))
    n=dict(path=node['path'],kind='leaf',ok=bool(result['ok']))
    if result['ok']:n.update(reason='all_pairings_covered',report=dict(closed=list(ALL),reason='root_free_side_cover',fallback=result))
    else:n.update(reason='retained_witness_replay_failed',failure=result)
    return dict(tree=[n],nodes=0,cpu_seconds=time.process_time()-start,resume_replay_cpu_seconds=time.process_time()-start)

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--region',type=Path,default=HERE/'data/production_region.json')
    ap.add_argument('--input',type=Path,required=True);ap.add_argument('--root',type=int,required=True)
    ap.add_argument('--output',type=Path,required=True);ap.add_argument('--jobs',type=int,default=8)
    ap.add_argument('--cpu-per-leaf',type=float,default=60);ap.add_argument('--max-depth',type=int,default=18)
    a=ap.parse_args()
    from predicate import check_pins
    check_pins()
    if not __debug__ or min(a.jobs,a.cpu_per_leaf)<=0 or not 0<=a.max_depth<=40 or a.output.exists():ap.error('invalid budget, depth or output')
    start=time.monotonic();cpu0=time.process_time();region=json.loads(a.region.read_text())
    rows=load_shard(a.input,region,sha(a.region));matches=[r for r in rows if r['root']==a.root]
    if len(matches)!=1:raise ValueError('one source root required')
    old=matches[0];keep=[];leaves=[]
    for n in old['tree']:
        if n['kind']=='split':
            if n['axis']!=len(n['path'])%4 or n.get('report',{}).get('closed'):raise ValueError('cyclic root-free tree required')
            keep.append(n)
        else:
            if n['ok'] and (n.get('report',{}).get('reason')!='root_free_side_cover' or set(n['report']['closed'])!=set(ALL)):raise ValueError('primitive full-pairing witnesses required')
            if not n['ok'] and n.get('report',{}).get('closed'):raise ValueError('no inherited partial pairings allowed')
            leaves.append(n)
    options=dict(precision=160,cpu_per_root=a.cpu_per_leaf,max_nodes=2047,min_depth=0,max_depth=a.max_depth,cover_options=dict(depth=18,budget=50000,maxlabels=1200,pair_budget=800000,triple_budget=500000))
    cpu=replay_cpu=0;nodes=done=0
    with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context("spawn")) as pool:
        for future in as_completed([pool.submit(task,(a.root,region,n,options)) for n in leaves]):
            r=future.result();keep.extend(r['tree']);cpu+=r['cpu_seconds'];replay_cpu+=r.get('resume_replay_cpu_seconds',0);nodes+=r['nodes'];done+=1
            if done%50==0:print('frontier leaves checked',done,'/',len(leaves),flush=True)
    terminal=[n for n in keep if n['kind']=='leaf']
    result=dict(root=a.root,tree=keep,closed=all(n['ok'] for n in terminal),leaves=len(terminal),accepted_leaves=sum(n['ok'] for n in terminal),nodes=nodes,cpu_seconds=cpu,resume_replay_cpu_seconds=replay_cpu,inherited_pairing_skips=0)
    result=compact(result);audit_root(region,result)
    summary=dict(type='summary',roots=1,closed=int(result['closed']),cpu_seconds=cpu,main_cpu_seconds=time.process_time()-cpu0,nodes=nodes,nodes_per_cpu_second=nodes/cpu if cpu else 0,wall_seconds=time.monotonic()-start,status='PASS' if result['closed'] else 'INCOMPLETE')
    header=dict(type='header',format=2,region_sha256=sha(a.region),roots=[a.root],source_sha256=sha(a.input),options=options,python=sys.version,platform=platform.platform(),source_hashes={p.name:sha(p) for p in HERE.glob('*.py')})
    a.output.parent.mkdir(parents=True,exist_ok=True)
    with gzip.open(a.output,'wt') as f:
        for r in [header,result,summary]:f.write(json.dumps(r,sort_keys=True)+'\n')
    print(json.dumps(summary),flush=True);return 0 if result['closed'] else 2

if __name__=='__main__':raise SystemExit(main())
