#!/usr/bin/env python3
"""Shard a single expensive root into prefix-disjoint fallback sweeps.

Each worker replays its assigned subtree and all ancestors. Merge verifies that the
prefixes partition the original open frontier and never adopts changes
outside a worker's assigned subtree. A final clean replay is still required.
"""
import argparse,gzip,json,time,os,tempfile
from pathlib import Path
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from geometry import HERE
from assemble import load_shard,sha
from tree import audit_root,compact
from terminal_sweep import process

def work(task):
    region,record,options=task
    if options.get('refine'):
        from driver import process_root
        return process_root((record['root'],region,dict(options,subtree_prefix=options['subtree']),record))
    return process(task)

def partition(record,parts):
    nodes={n['path']:n for n in record['tree']};counts={}
    for p in sorted(nodes,key=len,reverse=True):
        n=nodes[p];counts[p]=int(not n['ok']) if n['kind']=='leaf' else counts[p+'0']+counts[p+'1']
    prefixes=[''] if counts[''] else []
    while len(prefixes)<parts:
        candidates=[p for p in prefixes if nodes[p]['kind']=='split']
        if not candidates:break
        p=max(candidates,key=lambda q:counts[q]);prefixes.remove(p)
        prefixes.extend(p+b for b in '01' if counts[p+b])
    return sorted(prefixes)

def write(path,region_hash,record,**meta):
    with gzip.open(path,'wt') as f:
        f.write(json.dumps(dict(type='header',format=2,region_sha256=region_hash,roots=[record['root']],**meta))+'\n')
        f.write(json.dumps(compact(record))+'\n')
        f.write(json.dumps(dict(type='summary',roots=1,closed=int(record['closed']),nodes=record['nodes'],cpu_seconds=record['cpu_seconds']))+'\n')

def merge(region,baseline,prefixes,records):
    if len(prefixes)!=len(set(prefixes)) or any(a!=b and b.startswith(a) for a in prefixes for b in prefixes):raise ValueError('overlapping subtrees')
    if len(prefixes)!=len(records):raise ValueError('missing subtree result')
    base={n['path']:n for n in baseline['tree']}
    for n in baseline['tree']:
        if n['kind']=='leaf' and not n['ok'] and sum(n['path'].startswith(p) for p in prefixes)!=1:raise ValueError('open frontier not exactly partitioned')
    for prefix,r in zip(prefixes,records):
        audit_root(region,r)
        if r['root']!=baseline['root']:raise ValueError('wrong root')
        # Each shard must preserve all proof nodes outside its exact prefix.
        other={n['path']:n for n in r['tree'] if not n['path'].startswith(prefix)}
        expected={p:n for p,n in base.items() if not p.startswith(prefix)}
        if other!=expected:raise ValueError('shard changed an unassigned subtree')
    out=[n for n in baseline['tree'] if not any(n['path'].startswith(p) for p in prefixes)]
    for p,r in zip(prefixes,records):out.extend(n for n in r['tree'] if n['path'].startswith(p))
    leaves=[n for n in out if n['kind']=='leaf']
    result=dict(root=baseline['root'],tree=out,closed=all(n['ok'] for n in leaves),leaves=len(leaves),accepted_leaves=sum(n['ok'] for n in leaves),
                nodes=sum(r['nodes'] for r in records),cpu_seconds=sum(r['cpu_seconds'] for r in records),subtree_prefixes=prefixes)
    audit_root(region,result);return compact(result)

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--region',type=Path,required=True);ap.add_argument('--resume',type=Path,required=True);ap.add_argument('--root',type=int,required=True)
    ap.add_argument('--output-dir',type=Path,required=True);ap.add_argument('--parts',type=int,default=8);ap.add_argument('--jobs',type=int,default=1);ap.add_argument('--shard',type=int)
    ap.add_argument('--cpu-per-subtree',type=float,default=2400);ap.add_argument('--cover-nodes',type=int,default=500000);ap.add_argument('--cover-seconds',type=float,default=30);ap.add_argument('--merge-only',action='store_true')
    ap.add_argument('--refine',action='store_true',help='refine assigned open leaves with the adaptive driver')
    a=ap.parse_args()
    if min(a.parts,a.jobs,a.cpu_per_subtree,a.cover_nodes,a.cover_seconds)<=0:ap.error('positive budgets required')
    from predicate import check_pins
    check_pins();region=json.loads(a.region.read_text());rh=sha(a.region)
    baseline=next(r for r in load_shard(a.resume,region,rh) if r['root']==a.root);prefixes=partition(baseline,a.parts)
    plan=dict(region_sha256=rh,resume_sha256=sha(a.resume),root=a.root,prefixes=prefixes,options=dict(cpu_per_root=a.cpu_per_subtree,cover_width=.0006,cover_nodes=a.cover_nodes,cover_seconds=a.cover_seconds))
    if a.refine:plan['options'].update(refine=True,max_nodes=131071,max_depth=80,max_tau_depth=12,precision=128,fallback_depth=-1,minimax_after=-1,campaign_terminals=True,tau_near_zero_only=True)
    a.output_dir.mkdir(parents=True,exist_ok=True);pp=a.output_dir/'PLAN.json'
    fd,tmp=tempfile.mkstemp(prefix='plan.',dir=a.output_dir);os.close(fd)
    try:
        Path(tmp).write_text(json.dumps(plan,indent=2)+'\n')
        try:os.link(tmp,pp)
        except FileExistsError:pass
    finally:Path(tmp).unlink()
    if json.loads(pp.read_text())!=plan:ap.error('different existing plan')
    if not a.merge_only:
        ids=list(range(len(prefixes))) if a.shard is None else [a.shard]
        if any(not 0<=i<len(prefixes) for i in ids):ap.error('shard outside prefix census')
        if any((a.output_dir/f'part_{i}.jsonl.gz').exists() for i in ids):ap.error('fresh shard paths required')
        with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context("spawn")) as pool:
            futures={pool.submit(work,(region,baseline,dict(plan['options'],subtree=prefixes[i]))):i for i in ids}
            for future in as_completed(futures):
                i=futures[future];r=future.result();write(a.output_dir/f'part_{i}.jsonl.gz',rh,r,prefix=prefixes[i],resume_sha256=sha(a.resume))
                print(json.dumps(dict(shard=i,prefix=prefixes[i],**{k:v for k,v in r.items() if k!='tree'})),flush=True)
        if a.shard is not None:return 0
    records=[]
    for i,p in enumerate(prefixes):
        path=a.output_dir/f'part_{i}.jsonl.gz'
        with gzip.open(path,'rt') as f:header=json.loads(next(f))
        if header.get('prefix')!=p or header.get('resume_sha256')!=plan['resume_sha256']:raise ValueError('shard binding')
        records.append(load_shard(path,region,rh)[0])
    result=merge(region,baseline,prefixes,records);dest=a.output_dir/'merged.jsonl.gz'
    if dest.exists():ap.error('fresh merged output required')
    write(dest,rh,result,resume_sha256=plan['resume_sha256'],subtree_plan_sha256=sha(pp))
    print(json.dumps({k:v for k,v in result.items() if k!='tree'}),flush=True)
    return 0 if result['closed'] else 2
if __name__=='__main__':raise SystemExit(main())
