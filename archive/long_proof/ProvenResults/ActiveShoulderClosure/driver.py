#!/usr/bin/env python3
"""Shardable local/cluster region search. Budgets never imply closure."""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
os.environ.setdefault('OMP_NUM_THREADS','1')
import argparse,json,gzip,time,hashlib,sys,platform
from pathlib import Path
from collections import deque
from concurrent.futures import ProcessPoolExecutor,as_completed
from flint import ctx
from geometry import HERE,root_box,path_audit
from kernel import leaf


def process_root(task):
    rid,key,grid,max_nodes,max_depth,cpu_budget,precision=task
    ctx.prec=precision;start=time.process_time();leaves=[];stack=deque([('',None)]);nodes=0
    while stack:
        path,oldplan=stack.popleft()
        c,r=root_box(key,grid,path)
        if nodes>=max_nodes or time.process_time()-start>=cpu_budget:
            leaves.append(dict(path=path,ok=False,reason='node_budget' if nodes>=max_nodes else 'cpu_budget'));continue
        nodes+=1
        try:report=leaf(c,r,plan=oldplan,reference_search=True)
        except Exception as ex:report=dict(ok=False,reason='exception',exception=f'{type(ex).__name__}: {ex}')
        if report['ok'] or len(path)>=max_depth:
            leaves.append(dict(path=path,**report))
        else:
            # Root order and best references can change between leaves.
            # Discover afresh; replay uses that leaf's retained proposal.
            stack.extend([(path+'0',None),(path+'1',None)])
    path_audit(x['path'] for x in leaves)
    return dict(root=rid,key=key,nodes=nodes,cpu_seconds=time.process_time()-start,closed=all(x['ok'] for x in leaves),leaves=leaves)


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--region',type=Path,default=HERE/'data/region.json')
    ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--shard',type=int,default=0);ap.add_argument('--shards',type=int,default=1)
    ap.add_argument('--sample',type=int,default=0,help='deterministic evenly-spaced root benchmark, not a full shard')
    ap.add_argument('--jobs',type=int,default=1);ap.add_argument('--max-nodes',type=int,default=1023)
    ap.add_argument('--max-depth',type=int,default=24);ap.add_argument('--cpu-per-root',type=float,default=60)
    ap.add_argument('--precision',type=int,default=128)
    args=ap.parse_args()
    if not 0<=args.shard<args.shards or args.jobs<1 or args.max_nodes<1 or args.cpu_per_root<=0:ap.error('invalid budget or shard')
    if args.output.exists():ap.error('output already exists; choose a new path')
    data=json.loads(args.region.read_text());ids=list(range(args.shard,len(data['roots']),args.shards))
    if args.sample:
        if args.sample<1:ap.error('sample must be positive')
        ids=sorted({ids[i*(len(ids)-1)//max(1,args.sample-1)] for i in range(min(args.sample,len(ids)))})
    tasks=[(i,data['roots'][i],data['grid'],args.max_nodes,args.max_depth,args.cpu_per_root,args.precision) for i in ids]
    args.output.parent.mkdir(parents=True,exist_ok=True)
    tmp=args.output.with_suffix(args.output.suffix+'.part')
    header=dict(type='header',format=1,region_sha256=hashlib.sha256(args.region.read_bytes()).hexdigest(),roots=ids,precision=args.precision,max_nodes=args.max_nodes,max_depth=args.max_depth,cpu_per_root=args.cpu_per_root,python=sys.version,platform=platform.platform())
    total=0;closed=0;nleaves=0;cpu=0;wall=time.monotonic()
    with gzip.open(tmp,'wt') as out:
        out.write(json.dumps(header,sort_keys=True)+'\n')
        with ProcessPoolExecutor(max_workers=args.jobs) as pool:
            futs=[pool.submit(process_root,t) for t in tasks]
            for fut in as_completed(futs):
                r=fut.result();out.write(json.dumps(r,sort_keys=True)+'\n');out.flush()
                total+=1;closed+=int(r['closed']);nleaves+=len(r['leaves']);cpu+=r['cpu_seconds']
                print(json.dumps(dict(roots_done=total,roots_closed=closed,last_root=r['root'],leaves=nleaves,cpu_seconds=round(cpu,3))),flush=True)
        summary=dict(type='summary',roots=total,closed=closed,leaves=nleaves,cpu_seconds=cpu,wall_seconds=time.monotonic()-wall,status='PASS' if closed==total else 'INCOMPLETE')
        out.write(json.dumps(summary,sort_keys=True)+'\n')
    tmp.rename(args.output);print(json.dumps(summary,sort_keys=True),flush=True)
    return 0 if closed==total else 2

if __name__=='__main__':sys.exit(main())
