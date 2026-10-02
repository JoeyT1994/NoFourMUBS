#!/usr/bin/env python3
"""Collapse unresolved subtrees using whole-theta-box campaign terminals.

An inherited split node already had its lift attempted. Fresh interval
replay validates its retained partial pairing claims before reuse. At
previously unvisited frontier leaves, try the lift before PSD and cover.
Every unvisited subtree is retained exactly when the budget expires.
"""
import argparse,copy,gzip,json,os,time
from collections import Counter
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from pathlib import Path
from fractions import Fraction as F
from flint import ctx
from geometry import HERE,initial_box,split_box
from assemble import load_shard,sha
from tree import audit_root,compact
from kernel import evaluate
from campaign_terminals import clear_root_cache,try_psd,try_cover,external_cpu_total,failure_key
ALL={'00','01','10','11'}

def process(task):
    region,record,options=task;ctx.prec=128;start=time.process_time();external_start=external_cpu_total();counts=Counter();failures=Counter();attempts=0
    prefix=options.get('subtree','')
    clear_root_cache();audit_root(region,record,replay=True,precision=160,replay_prefix=prefix or None);ctx.prec=128
    replay_cpu=time.process_time()-start+external_cpu_total()-external_start
    nodes={n['path']:n for n in record['tree']};open_prefixes=set()
    if prefix not in nodes:raise ValueError('subtree does not exist')
    for n in record['tree']:
        if n['kind']=='leaf' and not n['ok']:
            open_prefixes.update(n['path'][:j] for j in range(len(n['path'])+1))
    todo=[('',*initial_box(region,record['root']),None,set(),None,0)];out=[];cover_after={};cover_deferred=0
    def retain(path):
        stack=[path]
        while stack:
            q=stack.pop();n=nodes[q];out.append(n)
            if n['kind']=='split':stack.extend([q+'1',q+'0'])
    while todo:
        path,c,r,slab,inherited,plan,gd=todo.pop();n=nodes[path];retry_after=cover_after.pop(path,0)
        if not (path.startswith(prefix) or prefix.startswith(path)) or path not in open_prefixes or time.process_time()-start+external_cpu_total()-external_start>=options['cpu_per_root']:
            retain(path);continue
        old=n.get('report',{});plan=old.get('plan',plan)
        if path.startswith(prefix):
            if n['kind']=='leaf':
                try:report=evaluate(c,r,plan=plan,needed=sorted(ALL-inherited),tau_slab=slab,minimax=False)
                except Exception:report=dict(ok=False,closed=[])
                if set(report['closed'])|inherited==ALL:
                    out.append(dict(path=path,kind='leaf',ok=True,reason='all_pairings_covered',report=report));counts['lift']+=1;continue
            attempts+=1;t=try_psd(c,r)
            if not t['ok']:failures[failure_key(t)]+=1
            if not t['ok'] and gd<retry_after:cover_deferred+=1
            if not t['ok'] and gd>=retry_after and float(max(r))<=options['cover_width']:
                remaining=options['cpu_per_root']-(time.process_time()-start+external_cpu_total()-external_start)
                if remaining>1:
                    t=try_cover(c,r,both=region.get('kind')=='production_cubes',nodes=options['cover_nodes'],seconds=min(remaining,options['cover_seconds']))
                    if not t['ok']:
                        failures[failure_key(t)]+=1
                        retry_after=gd+options.get('cover_backoff',4)
            if t['ok']:
                out.append(dict(path=path,kind='leaf',ok=True,reason=t['statement'],report=dict(closed=[],reason='campaign_terminal',terminal=t)))
                counts[t['statement']]+=1;continue
        out.append(n)
        if n['kind']=='split':
            closed=inherited|set(old.get('closed',[]));axis=n['axis']
            if axis==4:
                lo,hi=map(F,n['tau_domain']);mid=(lo+hi)/2
                children=[(c,r,list(map(str,(lo,mid)))),(c,r,list(map(str,(mid,hi))))]
            else:children=[(*split_box(c,r,axis,b),slab) for b in (0,1)]
            for b in (1,0):
                child=path+str(b);cover_after[child]=retry_after
                todo.append((child,*children[b],closed,plan,gd+(axis!=4)))
    leaves=[n for n in out if n['kind']=='leaf'];cpu=time.process_time()-start+external_cpu_total()-external_start
    result=dict(root=record['root'],tree=out,nodes=attempts,closed=all(n['ok'] for n in leaves),leaves=len(leaves),accepted_leaves=sum(n['ok'] for n in leaves),cpu_seconds=cpu,
                resume_replay_cpu_seconds=replay_cpu,nodes_per_cpu_second=attempts/cpu,terminal_counts=dict(counts),terminal_failure_counts=dict(failures),cover_deferred_nodes=cover_deferred,open_reasons=dict(Counter(n['reason'] for n in leaves if not n['ok'])))
    audit_root(region,result);return compact(result)

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--region',type=Path,default=HERE/'data/region.json');ap.add_argument('--resume',type=Path,required=True);ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--shard',type=int,default=0);ap.add_argument('--shards',type=int,default=1);ap.add_argument('--jobs',type=int,default=1);ap.add_argument('--root-ids')
    ap.add_argument('--cpu-per-root',type=float,default=300);ap.add_argument('--cover-width',type=float,default=.0006);ap.add_argument('--cover-nodes',type=int,default=500000);ap.add_argument('--cover-seconds',type=float,default=20)
    ap.add_argument('--cover-backoff',type=int,default=4)
    a=ap.parse_args()
    if a.output.exists() or not 0<=a.shard<a.shards or min(a.jobs,a.cpu_per_root,a.cover_nodes,a.cover_seconds,a.cover_width)<=0 or a.cover_backoff<0:ap.error('invalid budget or existing output')
    from predicate import check_pins
    check_pins();region=json.loads(a.region.read_text());records=load_shard(a.resume,region,sha(a.region))
    records=[r for r in records if r['root']%a.shards==a.shard]
    if a.root_ids:
        wanted=set(map(int,a.root_ids.split(',')));records=[r for r in records if r['root'] in wanted]
    opts={k:getattr(a,k) for k in ('cpu_per_root','cover_width','cover_nodes','cover_seconds','cover_backoff')}
    start=time.monotonic();mainstart=time.process_time();stats=[]
    with gzip.open(a.output,'wt') as out:
        out.write(json.dumps(dict(type='header',format=2,region_sha256=sha(a.region),roots=[r['root'] for r in records],options=opts,resume_sha256=sha(a.resume)))+'\n');out.flush()
        with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context("spawn")) as pool:
            for future in as_completed([pool.submit(process,(region,r,opts)) for r in records]):
                result=future.result();out.write(json.dumps(result)+'\n');out.flush();stat={k:v for k,v in result.items() if k!='tree'};stats.append(stat);print(json.dumps(stat),flush=True)
        s=dict(type='summary',roots=len(stats),closed=sum(r['closed'] for r in stats),cpu_seconds=sum(r['cpu_seconds'] for r in stats),nodes=sum(r['nodes'] for r in stats),main_cpu_seconds=time.process_time()-mainstart,wall_seconds=time.monotonic()-start)
        out.write(json.dumps(s)+'\n');print(json.dumps(s),flush=True)
    return 0 if s['closed']==s['roots'] else 2
if __name__=='__main__':raise SystemExit(main())
