#!/usr/bin/env python3
"""Adaptive sharded search. Inherited pairing proofs stay in the output tree."""
import bootstrap
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1');os.environ.setdefault('OMP_NUM_THREADS','1')
import argparse,json,gzip,time,sys,hashlib,platform,copy
from pathlib import Path
from fractions import Fraction as F
from collections import deque,Counter
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,wait,FIRST_COMPLETED
from flint import ctx
from geometry import HERE,initial_box,split_box
from kernel import evaluate
ALL=('00','01','10','11')
_WORKER_REGION=None
def initialize_worker(region):
    global _WORKER_REGION
    _WORKER_REGION=region

def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()

def process_root(task):
    rid,region,options,resume=task
    if region is None:region=_WORKER_REGION
    ctx.prec=options['precision'];start=time.process_time()
    from campaign_terminals import clear_root_cache,external_cpu_total
    clear_root_cache();external_start=external_cpu_total()
    targets=options.get('_frontier_boxes')
    from frontier_boxes import unpack,overlaps,certify
    target_boxes=None if targets is None else [unpack(q) for q in targets]
    subtree=options.get('subtree_prefix')
    if subtree is not None and resume is None:raise ValueError('subtree search requires inherited tree')
    c,r=initial_box(region,rid)
    from production_cover import contains_box as guarded_contains
    from rootfree_cubes import contains_box as primitive_contains
    for reason,checker in ([] if subtree is not None else [('guarded_production_cover',guarded_contains),('root_free_production_cube',primitive_contains)]):
        cover=checker(c,r)
        if cover['ok']:
            elapsed=time.process_time()-start;report=dict(closed=list(ALL),reason=reason,cover=cover)
            return dict(root=rid,nodes=1,resume_replay_cpu_seconds=0,tree=[dict(path='',kind='leaf',ok=True,reason=reason,report=report)],closed=True,leaves=1,accepted_leaves=1,cpu_seconds=elapsed,nodes_per_cpu_second=1/elapsed,pairing_attempts=0,inherited_pairing_skips=0,open_reasons={})
    # Root-free maximality prune before the singular-chart search. The
    # nearest-lattice gate is only a proposal for which proved test to try.
    from fallback import candidate_patch,prune
    if subtree is None and candidate_patch(c) and all(h>0 for h in r):
        try:
            pp=prune(c,r)
            if pp['ok']:
                elapsed=time.process_time()-start
                report=dict(closed=list(ALL),reason='paired_side_prune',prune=pp)
                return dict(root=rid,nodes=1,resume_replay_cpu_seconds=0,tree=[dict(path='',kind='leaf',ok=True,reason='paired_side_prune',report=report)],closed=True,leaves=1,accepted_leaves=1,cpu_seconds=elapsed,nodes_per_cpu_second=1/elapsed,pairing_attempts=0,inherited_pairing_skips=0,open_reasons={})
        except Exception:pass
    queue=deque([('',c,r,None,[],None,0)])
    records=[];resume_cpu=0
    if resume is not None:
        from tree import audit_root,frontier
        audit_root(region,resume,replay=True,precision=options["precision"],replay_prefix=subtree)
        records,pending=frontier(region,resume)
        if subtree is not None:
            old_nodes={n['path']:n for n in resume['tree']}
            records.extend(old_nodes[p[0]] for p in pending if not p[0].startswith(subtree))
            pending=[p for p in pending if p[0].startswith(subtree)]
        queue=deque(pending);resume_cpu=time.process_time()-start+external_cpu_total()-external_start
    nodes=0;terminal_counts=Counter();terminal_cpu=Counter();terminal_failures=Counter();pairing_attempts=0;inherited_skips=0;gauge_refinements=0;reasons=Counter();failures=Counter();cover_after={};cover_deferred=0;cover_failed_cpu=0.0;psd_after={};psd_failed_cpu=0.0;psd_deferred=0;exception_count=0;exception_messages=Counter();exception_samples=[];padding_skipped=0;ft_cache={}
    while queue:
        path,c,r,slab,inherited,plan,td=queue.popleft()
        retry_after=cover_after.pop(path,0);psd_retry=psd_after.pop(path,0)
        if target_boxes is not None and not any(overlaps(c,r,d,h) for d,h in target_boxes):
            records.append(dict(path=path,kind='leaf',ok=False,reason='outside_frontier'));reasons['outside_frontier']+=1;padding_skipped+=1;continue
        if nodes>=options['max_nodes'] or time.process_time()-start+external_cpu_total()-external_start>=options['cpu_per_root']:
            reason='node_budget' if nodes>=options['max_nodes'] else 'cpu_budget'
            leaf=dict(path=path,kind='leaf',ok=False,reason=reason)
            if plan is not None:leaf['report']=dict(closed=[],reason='unresolved_frontier_plan',plan=plan)
            records.append(leaf);reasons[reason]+=1;continue
        needed=[k for k in ALL if k not in inherited];nodes+=1;inherited_skips+=len(inherited)
        threshold=options.get('minimax_after',1024)
        optimize=options.get('minimax_gauge',False) or (threshold>=0 and nodes>threshold)
        if options.get('transverse',True):
            from transverse import attempt
            fk=tuple(c+r)
            if fk not in ft_cache:
                ft_cache[fk]=attempt(c,r);terminal_cpu['FT']+=ft_cache[fk].get('cpu_seconds',0)
            ft=ft_cache[fk]
            if ft['ok']:
                terminal_counts[ft['statement']]+=1
                records.append(dict(path=path,kind='leaf',ok=True,reason=ft['statement'],report=dict(closed=[],reason='campaign_terminal',terminal=ft)))
                continue
            terminal_failures['FT:'+ft.get('reason','unknown')]+=1
        pairing_attempts+=len(needed)
        try:report=evaluate(c,r,plan=plan,needed=needed,tau_slab=slab,direct_models=options.get('direct_models',False),minimax=optimize)
        except Exception as ex:report=dict(ok=False,closed=[],reason='exception',detail=f'{type(ex).__name__}: {ex}')
        gauge_refinements+=report.get('gauge_refinements',0)
        if not report['ok']:
            failed=[p.get('reason','unknown') for p in report.get('pairings',[]) if not p['ok']]
            failures.update(failed or [report.get('reason','unknown')])
        if not report['ok'] and options.get('fallback_depth',-1)>=0 and len(path)>=options['fallback_depth'] and len(path)%4==0:
            from fallback import propose,certify
            ref=propose(c)
            if ref is not None:
                try:
                    fb=certify(c,r,ref)
                    if fb['ok']:report=dict(ok=True,closed=needed,pairings=[],reason='root_free_side_cover',fallback=fb,plan=report.get('plan',plan))
                    else:report['fallback_failure']=fb['reason']
                except Exception as ex:report['fallback_failure']=f'{type(ex).__name__}: {ex}'
        if not report['ok'] and options.get('campaign_terminals',True):
            from campaign_terminals import try_psd,try_cover,failure_key
            terminal=dict(ok=False,reason='PSD_deferred')
            if len(path)-td>=psd_retry and psd_failed_cpu<options['cpu_per_root']*options.get('psd_failure_fraction',.10):
                terminal=try_psd(c,r)
                terminal_cpu['PSD']+=terminal.get('cpu_seconds',0)
                if not terminal['ok']:
                    terminal_failures[failure_key(terminal)]+=1;psd_failed_cpu+=terminal.get('cpu_seconds',0)
                    backoff=options.get('psd_backoff',-1)
                    psd_retry=float('inf') if backoff<0 else len(path)-td+backoff
            else: psd_deferred+=1
            cover_allowed=exception_count<options.get('cover_exception_limit',8) and len(path)-td>=retry_after and cover_failed_cpu<options['cpu_per_root']*options.get('cover_failure_fraction',0.25)
            if not terminal['ok'] and not cover_allowed:cover_deferred+=1
            if not terminal['ok'] and cover_allowed and float(max(r))<=options.get('cover_width',0.0001):
                remaining=options['cpu_per_root']-(time.process_time()-start+external_cpu_total()-external_start)
                if remaining>1:
                    cover_start=external_cpu_total()
                    terminal=try_cover(c,r,both=region.get('kind')=='production_cubes',
                        nodes=options.get('cover_nodes',500000),seconds=min(options.get('cover_seconds',20),remaining))
                    terminal_cpu['cover']+=terminal.get('cpu_seconds',0)
                    if not terminal['ok']:
                        terminal_failures[failure_key(terminal)]+=1
                        for q in terminal.get('covers',[]):
                            if not q.get('ok') and ('exception' in q.get('reason','') or q.get('detail')):
                                exception_count+=1;exception_messages[q.get('reason','')+': '+q.get('detail','')]+=1
                                if len(exception_samples)<options.get('cover_exception_samples',8):
                                    exception_samples.append(dict(path=path,centers=list(map(str,c)),radii=list(map(str,r)),response=q))
                        cover_failed_cpu+=external_cpu_total()-cover_start
                        retry_after=len(path)-td+options.get('cover_backoff',4)
            if terminal['ok']:
                terminal_counts[terminal['statement']]+=1
                records.append(dict(path=path,kind='leaf',ok=True,reason=terminal['statement'],
                    report=dict(closed=[],reason='campaign_terminal',terminal=terminal)))
                continue
        closed=sorted(set(inherited+report['closed']));nextplan=report.get('plan',plan)
        node=dict(path=path,report=report)
        if len(closed)==4:
            node.update(kind='leaf',ok=True,reason='all_pairings_covered');records.append(node);continue
        if len(path)>=options['max_depth']:
            node.update(kind='leaf',ok=False,reason='depth_budget');records.append(node);reasons['depth_budget']+=1;continue
        scores=report.get('scores',[0]*5)
        candidates=list(range(4));domain=slab or report.get('tau_bounds')
        if domain is not None and td<options['max_tau_depth'] and F(domain[0])<F(domain[1]):
            # A narrow, separated radical interval does not justify multiplying
            # theta-identical cover obligations. This is a split proposal only.
            if not options.get('tau_near_zero_only',True) or F(domain[0])<=F(domain[1])/4:candidates.append(4)
        # Scale comes directly from the failed bound's model coefficients.
        # Break equal/zero scores by the exact seed width, never acceptance.
        axis=max(candidates,key=lambda k:(scores[k] if k<len(scores) else 0,float(r[k]) if k<4 else 0,-k))
        node.update(kind='split',axis=axis)
        if axis==4:
            if options.get('direct_models'):node['direct_models']=True
            node['tau_precision']=options['precision']
            lo,hi=map(F,domain);mid=(lo+hi)/2;node['tau_domain']=list(map(str,(lo,hi)))
            children=[(c,r,[str(lo),str(mid)]),(c,r,[str(mid),str(hi)])]
        else:children=[(*split_box(c,r,axis,b),slab) for b in (0,1)]
        records.append(node)
        for b,(cc,rr,ss) in enumerate(children):
            child=path+str(b);cover_after[child]=retry_after;psd_after[child]=psd_retry
            queue.append((child,cc,rr,ss,closed,nextplan,td+(axis==4)))
    leaves=[n for n in records if n['kind']=='leaf'];elapsed=time.process_time()-start+external_cpu_total()-external_start
    record=dict(root=rid,nodes=nodes,resume_replay_cpu_seconds=resume_cpu,tree=records,closed=all(n['ok'] for n in leaves),leaves=len(leaves),accepted_leaves=sum(n['ok'] for n in leaves),cpu_seconds=elapsed,nodes_per_cpu_second=nodes/elapsed,pairing_attempts=pairing_attempts,inherited_pairing_skips=inherited_skips,open_reasons=dict(reasons),failing_bound_counts=dict(failures),gauge_refinements=gauge_refinements,terminal_counts=dict(terminal_counts),terminal_cpu_seconds=dict(terminal_cpu),terminal_failure_counts=dict(terminal_failures),cover_deferred_nodes=cover_deferred,cover_failed_cpu_seconds=cover_failed_cpu,psd_deferred_nodes=psd_deferred,psd_failed_cpu_seconds=psd_failed_cpu,cover_exception_count=exception_count,cover_exception_messages=dict(exception_messages),cover_exception_samples=exception_samples,padding_skipped_nodes=padding_skipped)
    if targets is not None:
        record['frontier_boxes']=len(targets)
        record['frontier_covered']=all(__import__('tree').query_tree(region,record,*__import__('frontier_boxes').clip(*unpack(q),*initial_box(region,rid))) for q in targets)
        record.pop('_node_index',None)
    return record

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--region',type=Path,default=HERE/'data/region.json');ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--shard',type=int,default=0);ap.add_argument('--shards',type=int,default=1)
    ap.add_argument('--resume',type=Path,action='append',default=[],help='complete v2 shard(s); inherited witnesses replay before reuse')
    ap.add_argument('--boxes',type=Path,help='exact real frontier JSONL; skip roots and leaves with no target intersection')
    ap.add_argument('--no-transverse',dest='transverse',action='store_false')
    ap.add_argument('--psd-backoff',type=int,default=-1,help='-1: after failure skip every descendant; otherwise retry after N seed splits')
    ap.add_argument('--psd-failure-fraction',type=float,default=.10,help='cap failed PSD CPU per root; one call may overshoot')
    ap.add_argument('--cover-exception-limit',type=int,default=8,help='disable cover on this root after N exceptions; 0 disables cover')
    ap.add_argument('--cover-exception-samples',type=int,default=8,help='retain exact boxes, messages and traces for first N exceptions')
    ap.add_argument('--sample',type=int,default=0);ap.add_argument('--root-ids',help='comma separated selected IDs')
    ap.add_argument('--jobs',type=int,default=1);ap.add_argument('--max-nodes',type=int,default=65535)
    ap.add_argument('--max-depth',type=int,default=40);ap.add_argument('--max-tau-depth',type=int,default=8)
    ap.add_argument('--fallback-depth',type=int,default=-1,help='enable root-free side cover at this depth, then every four levels; -1 disables')
    ap.add_argument('--direct-models',action='store_true',help='cancellation-aware exact Laurent models for difficult patches')
    ap.add_argument('--minimax-gauge',action='store_true',help='immediately refine row phases on near-passing tube failures')
    ap.add_argument('--minimax-after',type=int,default=1024,help='enable phase refinement after this many new nodes; -1 disables delayed refinement')
    ap.add_argument('--wide-tau-splits',dest='tau_near_zero_only',action='store_false',help='allow tau splitting even when tau is well separated from zero')
    ap.add_argument('--no-campaign-terminals',dest='campaign_terminals',action='store_false')
    ap.add_argument('--cover-nodes',type=int,default=500000)
    ap.add_argument('--cover-seconds',type=float,default=20)
    ap.add_argument('--cover-width',type=float,default=0.0001,help='defer expensive cover on larger internal nodes')
    ap.add_argument('--cover-backoff',type=int,default=4,help='seed halvings before retry after failed cover; 0 retries each descendant')
    ap.add_argument('--cover-failure-fraction',type=float,default=.25,help='fraction of root CPU allocated to unsuccessful cover trials; successful covers are not capped')
    ap.add_argument('--shard-cpu-budget',type=float,help='total worker CPU allocation; unscheduled roots remain explicit inconclusive leaves')
    ap.add_argument('--cpu-per-root',type=float,default=1800);ap.add_argument('--precision',type=int,default=128)
    args=ap.parse_args()
    from runtime import check as runtime_check
    runtime_check()
    from predicate import check_pins
    check_pins()
    if not 0<=args.shard<args.shards or min(args.jobs,args.max_nodes,args.cpu_per_root)<=0 or not 64<=args.precision<=4096 or args.minimax_after < -1:ap.error('invalid budget/shard/precision')
    if args.shard_cpu_budget is not None and not 0<args.shard_cpu_budget<float('inf'):ap.error('positive finite shard CPU budget')
    if args.psd_backoff < -1 or not 0<=args.psd_failure_fraction<=1 or min(args.cover_exception_limit,args.cover_exception_samples)<0:ap.error('invalid PSD or exception policy')
    if args.cover_backoff<0:ap.error('nonnegative cover retry backoff')
    if not 0<=args.cover_failure_fraction<=1:ap.error('cover failure fraction must be in [0,1]')
    if args.output.exists() or args.output.with_suffix(args.output.suffix+'.part').exists():ap.error('choose a fresh output')
    region=json.loads(args.region.read_text());ids=list(range(args.shard,len(region['roots']),args.shards))
    from frontier_boxes import validate_region
    validate_region(region)
    assigned=None;missing=[];padding_roots=0
    if args.boxes:
        from frontier_boxes import read_boxes,assignments
        assigned,missing=assignments(region,read_boxes(args.boxes))
        padding_roots=sum(i not in assigned for i in ids);ids=[i for i in ids if i in assigned]
    if args.root_ids:
        wanted=set(map(int,args.root_ids.split(',')))
        if not wanted<=set(range(len(region['roots']))):ap.error('root ID outside region')
        ids=[i for i in ids if i in wanted]
    if args.sample:ids=sorted({ids[i*(len(ids)-1)//max(1,args.sample-1)] for i in range(min(args.sample,len(ids)))})
    resumed={}
    selected_ids=set(ids)
    for source in args.resume:
        with gzip.open(source,'rt') as inp:
            h=json.loads(next(inp))
            if h.get('region_sha256')!=sha(args.region):ap.error('resume region mismatch')
            for line in inp:
                rr=json.loads(line)
                if 'root' in rr:
                    if rr['root'] not in selected_ids:continue
                    if rr['root'] in resumed:ap.error('duplicate authoritative resume root')
                    resumed[rr['root']]=rr
    opts={k:getattr(args,k) for k in ['max_nodes','max_depth','max_tau_depth','cpu_per_root','precision','fallback_depth','direct_models','minimax_gauge','minimax_after','campaign_terminals','cover_nodes','cover_seconds','cover_width','cover_backoff','cover_failure_fraction','tau_near_zero_only','transverse','psd_backoff','psd_failure_fraction','cover_exception_limit','cover_exception_samples']}
    header=dict(type='header',format=2,region_sha256=sha(args.region),roots=ids,options=opts,python=sys.version,platform=platform.platform(),shard_cpu_budget=args.shard_cpu_budget,source_hashes={p.name:sha(p) for p in bootstrap.HERE.glob('*.py')},frontier_sha256=sha(args.boxes) if args.boxes else None,padding_roots_skipped=padding_roots,unassigned_frontier_boxes=missing)
    args.output.parent.mkdir(parents=True,exist_ok=True);tmp=args.output.with_suffix(args.output.suffix+'.part');start=time.monotonic();main_start=time.process_time();results=[]
    with gzip.open(tmp,'wt') as out:
        out.write(json.dumps(header,sort_keys=True)+'\n');out.flush()
        iterator=iter(ids);spent=0.0;exhausted=False
        def emit(record):
            from tree import compact
            record=compact(record);out.write(json.dumps(record,sort_keys=True)+'\n');out.flush()
            stats={k:v for k,v in record.items() if k not in ('tree','cover_exception_samples')};results.append(stats)
            print(json.dumps(dict(roots_done=len(results),**stats)),flush=True)
        with ProcessPoolExecutor(max_workers=args.jobs,mp_context=get_context("spawn"),initializer=initialize_worker,initargs=(region,)) as pool:
            pending={}
            def schedule():
                nonlocal exhausted
                while not exhausted and len(pending)<args.jobs:
                    remaining=float('inf') if args.shard_cpu_budget is None else args.shard_cpu_budget-spent
                    if remaining<=0:return
                    try:i=next(iterator)
                    except StopIteration:exhausted=True;return
                    local=dict(opts,cpu_per_root=min(opts['cpu_per_root'],remaining/args.jobs))
                    if assigned is not None:local['_frontier_boxes']=assigned[i]
                    pending[pool.submit(process_root,(i,None,local,resumed.get(i)))]=i
            schedule()
            while pending:
                done,_=wait(pending,return_when=FIRST_COMPLETED)
                for fut in done:
                    pending.pop(fut);record=fut.result();spent+=record['cpu_seconds'];emit(record)
                schedule()
        for i in iterator:
            emit(dict(root=i,nodes=0,cpu_seconds=0,resume_replay_cpu_seconds=0,tree=[dict(path='',kind='leaf',ok=False,reason='shard_cpu_budget')],closed=False,leaves=1,accepted_leaves=0,nodes_per_cpu_second=0,pairing_attempts=0,inherited_pairing_skips=0,open_reasons={'shard_cpu_budget':1}))
        cpu=sum(r['cpu_seconds'] for r in results);nodes=sum(r['nodes'] for r in results);closed=sum(r['closed'] for r in results)
        targets_done=sum(r.get('frontier_covered',r['closed']) for r in results)
        complete=(targets_done==len(ids) and not missing) if assigned is not None else closed==len(ids)
        summary=dict(type='summary',roots=len(results),closed=closed,nodes=nodes,cpu_seconds=cpu,main_cpu_seconds=time.process_time()-main_start,wall_seconds=time.monotonic()-start,nodes_per_cpu_second=nodes/cpu if cpu else 0,inherited_pairing_skips=sum(r['inherited_pairing_skips'] for r in results),status='PASS' if complete else 'INCOMPLETE',frontier_roots_covered=targets_done if assigned is not None else None,padding_roots_skipped=padding_roots,unassigned_frontier_boxes=len(missing),scope='scheduled_shard_targets_only; clean replay required')
        out.write(json.dumps(summary,sort_keys=True)+'\n')
    tmp.rename(args.output);print(json.dumps(summary,sort_keys=True));return 0 if summary['status']=='PASS' else 2
if __name__=='__main__':sys.exit(main())
