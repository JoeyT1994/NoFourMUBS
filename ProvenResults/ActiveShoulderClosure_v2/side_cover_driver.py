#!/usr/bin/env python3
"""Sharded root-free search on production representatives or exact box roots.

Every leaf uses the complete outward side cover, with all pairings. It is
slower than the side-root kernel and is an alternative at singular charts.
"""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1');os.environ.setdefault('OMP_NUM_THREADS','1')
import argparse,json,gzip,time,sys,platform
from pathlib import Path
from collections import deque,Counter
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from flint import ctx
from geometry import HERE,initial_box,split_box
from fallback import propose,certify
from driver import sha,ALL
from tree import compact

def process_root(task):
    rid,region,opts,resume=task;ctx.prec=opts['precision'];start=time.process_time();c,r=initial_box(region,rid);ref=propose(c)
    prefix=opts.get('start_path','')
    if prefix and resume is not None:raise ValueError('frontier search cannot also resume a whole root')
    for d,bit in enumerate(prefix):
        if bit not in '01':raise ValueError('invalid frontier path')
        c,r=split_box(c,r,d%4,int(bit))
    pending=deque([(prefix,c,r)]);records=[];nodes=0;resume_cpu=0
    if resume is not None:
        from tree import audit_root,frontier
        # Only cyclic seed trees with whole four-pairing cover claims can
        # enter this specialized driver. No tau/sign relabelling occurs.
        for n in resume['tree']:
            if n['kind']=='split' and n['axis']!=len(n['path'])%4:raise ValueError('resume requires a cyclic seed-only tree')
            if set(n.get('report',{}).get('closed',[])) not in (set(),set(ALL)):raise ValueError('resume requires all-pairing primitive claims')
        audit_root(region,resume,replay=True,precision=opts['precision'])
        records,front=frontier(region,resume)
        if any(slab is not None or inherited for _,_,_,slab,inherited,_,_ in front):raise ValueError('unexpected lifted resume state')
        pending=deque((path,c,r) for path,c,r,_,_,_,_ in front);resume_cpu=time.process_time()-start
    while pending:
        path,c,r=pending.popleft();node=dict(path=path)
        if time.process_time()-start>=opts['cpu_per_root'] or nodes>=opts['max_nodes']:
            node.update(kind='leaf',ok=False,reason='cpu_budget' if time.process_time()-start>=opts['cpu_per_root'] else 'node_budget');records.append(node);continue
        if len(path)>=opts['min_depth']:
            nodes+=1
            try:
                if ref is None:raise ValueError('no F6 corner reference')
                result=certify(c,r,ref,opts['cover_options'])
            except Exception as ex:result=dict(ok=False,reason='exception',detail=str(ex))
            if result['ok']:
                node.update(kind='leaf',ok=True,reason='all_pairings_covered',report=dict(closed=list(ALL),reason='root_free_side_cover',fallback=result));records.append(node);continue
            node['failure']=result['reason']
        if len(path)>=opts['max_depth']:
            node.update(kind='leaf',ok=False,reason='depth_budget');records.append(node);continue
        axis=len(path)%4;node.update(kind='split',axis=axis);records.append(node)
        for bit in (0,1):pending.append((path+str(bit),*split_box(c,r,axis,bit)))
    leaves=[n for n in records if n['kind']=='leaf'];elapsed=time.process_time()-start
    return dict(root=rid,nodes=nodes,resume_replay_cpu_seconds=resume_cpu,closed=all(n['ok'] for n in leaves),leaves=len(leaves),accepted_leaves=sum(n['ok'] for n in leaves),tree=records,cpu_seconds=elapsed,nodes_per_cpu_second=nodes/elapsed,pairing_attempts=4*nodes,inherited_pairing_skips=0,open_reasons=dict(Counter(n['reason'] for n in leaves if not n['ok'])))

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--region',type=Path,default=HERE/'data/production_region.json');ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--shard',type=int,default=0);ap.add_argument('--shards',type=int,default=1);ap.add_argument('--root-ids');ap.add_argument('--resume',type=Path);ap.add_argument('--max-nodes',type=int,default=65535);ap.add_argument('--jobs',type=int,default=1)
    ap.add_argument('--cpu-per-root',type=float,default=3600);ap.add_argument('--min-depth',type=int,default=8);ap.add_argument('--max-depth',type=int,default=12);ap.add_argument('--phase-depth',type=int,default=18);ap.add_argument('--precision',type=int,default=160)
    a=ap.parse_args()
    from predicate import check_pins
    check_pins()
    if not __debug__ or not 0<=a.shard<a.shards or min(a.jobs,a.cpu_per_root,a.max_nodes)<=0 or not 64<=a.precision<=4096 or not 1<=a.phase_depth<=30 or not 0<=a.min_depth<=a.max_depth<=40:ap.error('invalid budget/depth/shard or -O')
    if a.output.exists() or a.output.with_suffix(a.output.suffix+'.part').exists():ap.error('fresh output required')
    region=json.loads(a.region.read_text());ids=list(range(a.shard,len(region['roots']),a.shards))
    if a.root_ids:
        wanted=set(map(int,a.root_ids.split(',')))
        if not wanted<=set(range(len(region['roots']))):ap.error('root ID outside region')
        ids=[i for i in ids if i in wanted]
    resumed={}
    if a.resume:
        from assemble import load_shard
        resumed={r['root']:r for r in load_shard(a.resume,region,sha(a.region))}
    options=dict(cpu_per_root=a.cpu_per_root,max_nodes=a.max_nodes,min_depth=a.min_depth,max_depth=a.max_depth,precision=a.precision,cover_options=dict(depth=a.phase_depth,budget=50000,maxlabels=1200,pair_budget=800000,triple_budget=500000))
    header=dict(type='header',format=2,region_sha256=sha(a.region),roots=ids,options=options,python=sys.version,platform=platform.platform(),source_hashes={p.name:sha(p) for p in HERE.glob('*.py')})
    a.output.parent.mkdir(parents=True,exist_ok=True);tmp=a.output.with_suffix(a.output.suffix+'.part');start=time.monotonic();cpu0=time.process_time();stats=[]
    with gzip.open(tmp,'wt') as out:
        out.write(json.dumps(header,sort_keys=True)+'\n')
        with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context("spawn")) as pool:
            for f in as_completed([pool.submit(process_root,(i,region,options,resumed.get(i))) for i in ids]):
                r=compact(f.result());out.write(json.dumps(r,sort_keys=True)+'\n');out.flush();s={k:v for k,v in r.items() if k!='tree'};stats.append(s);print(json.dumps(s),flush=True)
        cpu=sum(s['cpu_seconds'] for s in stats);nodes=sum(s['nodes'] for s in stats);closed=sum(s['closed'] for s in stats)
        summary=dict(type='summary',roots=len(stats),closed=closed,nodes=nodes,cpu_seconds=cpu,main_cpu_seconds=time.process_time()-cpu0,wall_seconds=time.monotonic()-start,nodes_per_cpu_second=nodes/cpu if cpu else 0,inherited_pairing_skips=0,status='PASS' if closed==len(stats) else 'INCOMPLETE')
        out.write(json.dumps(summary,sort_keys=True)+'\n')
    tmp.rename(a.output);print(json.dumps(summary),flush=True);return 0 if summary['status']=='PASS' else 2
if __name__=='__main__':sys.exit(main())
