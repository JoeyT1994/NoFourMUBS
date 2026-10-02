"""Seed-only direct-cover search; shard prefixes partition the representative."""
from cube import HERE,F,box,split_box,sha,audit_geometry
import argparse,json,gzip,time,sys,collections,os
from concurrent.futures import ProcessPoolExecutor,as_completed
from multiprocessing import get_context
from terminals import test
from campaign_terminals import external_cpu_total,clear_root_cache

def worker(task):
 prefix,opts=task;clear_root_cache();beg=time.process_time();ext=external_cpu_total();queue=collections.deque([(prefix,*box(prefix))]);leaves=[];nodes=0;counts=collections.Counter();fail=collections.Counter();sample=[]
 while queue:
  p,c,r=queue.popleft()
  if (HERE/'STOP').exists():
   leaves.append(dict(path=p,ok=False,reason='stopped'));continue
  if time.process_time()-beg+external_cpu_total()-ext>=opts['cpu'] or nodes>=opts['nodes']:
   leaves.append(dict(path=p,ok=False,reason='budget'));continue
  nodes+=1
  try:t=test(c,r,cover=len(p)>=opts['cover_depth'],seconds=opts['cover_seconds'],nodes=opts['cover_nodes'],psd=opts['psd'])
  except Exception as ex:t=dict(ok=False,reason='exception',detail=f'{type(ex).__name__}: {ex}')
  if t['ok']:leaves.append(dict(path=p,ok=True,terminal=t));counts[t['method']]+=1;continue
  why=next((q.get('reason') for q in t.get('covers',[]) if not q['ok']),t.get('reason','no_certificate'));fail[why]+=1
  if len(sample)<8:sample.append(dict(path=p,result=t))
  if t.get('defer_cover') or len(p)>=opts['depth']:leaves.append(dict(path=p,ok=False,reason=why));continue
  for b in (0,1):queue.append((p+str(b),*split_box(c,r,len(p)%4,b)))
 cpu=time.process_time()-beg+external_cpu_total()-ext
 return dict(prefix=prefix,closed=all(q['ok'] for q in leaves),nodes=nodes,leaves=leaves,counts=dict(counts),failures=dict(fail),failure_samples=sample,cpu_seconds=cpu,nodes_per_cpu_second=nodes/cpu)

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=str,required=True);p.add_argument('--jobs',type=int,default=4);p.add_argument('--prefix-depth',type=int,default=8);p.add_argument('--shard',type=int,default=0);p.add_argument('--shards',type=int,default=1);p.add_argument('--cpu-per-prefix',type=float,default=1200);p.add_argument('--max-depth',type=int,default=24);p.add_argument('--max-nodes',type=int,default=65535);p.add_argument('--cover-depth',type=int,default=12);p.add_argument('--cover-seconds',type=float,default=20);p.add_argument('--cover-nodes',type=int,default=1000000);p.add_argument('--psd',action='store_true');p.add_argument('--sample',type=int,default=0);p.add_argument('--prefix-list',type=str);a=p.parse_args()
 from pathlib import Path
 output=Path(a.output)
 if output.exists() or output.with_suffix('.part').exists():p.error('fresh output required')
 if not 0<=a.shard<a.shards or not 0<=a.prefix_depth<=16 or not a.prefix_depth<=a.max_depth<=40 or min(a.jobs,a.cpu_per_prefix,a.max_nodes)<=0:p.error('invalid budgets')
 audit_geometry()
 from certificate import check_pins
 check_pins()
 prefixes=[format(i,f'0{a.prefix_depth}b') if a.prefix_depth else '' for i in range(a.shard,2**a.prefix_depth,a.shards)]
 if a.prefix_list:
  prefixes=json.loads(Path(a.prefix_list).read_text())[a.shard::a.shards]
  if len(prefixes)!=len(set(prefixes)) or any(not isinstance(q,str) or any(b not in '01' for b in q) or len(q)>a.max_depth for q in prefixes):raise ValueError('invalid prefixes')
  pp=set(prefixes)
  if any(q[:k] in pp for q in prefixes for k in range(len(q))):raise ValueError('overlapping prefixes')
 if a.sample:prefixes=[prefixes[i*(len(prefixes)-1)//max(1,a.sample-1)] for i in range(min(a.sample,len(prefixes)))]
 opts=dict(cpu=a.cpu_per_prefix,depth=a.max_depth,nodes=a.max_nodes,cover_depth=a.cover_depth,cover_seconds=a.cover_seconds,cover_nodes=a.cover_nodes,psd=a.psd)
 output.parent.mkdir(parents=True,exist_ok=True);tmp=output.with_suffix('.part');stats=[];start=time.monotonic()
 with gzip.open(tmp,'wt') as out:
  out.write(json.dumps(dict(type='header',prefixes=prefixes,options=opts,geometry_sha256=sha(HERE.with_name('ActiveShoulderClosure_v2')/'data/production_region.json')))+'\n')
  with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context('spawn')) as pool:
   for f in as_completed([pool.submit(worker,(q,opts)) for q in prefixes]):
    q=f.result();out.write(json.dumps(q)+'\n');out.flush();s={k:v for k,v in q.items() if k not in ('leaves','failure_samples')};stats.append(s);print(json.dumps(dict(done=len(stats),**s)),flush=True)
  summary=dict(type='summary',status='PASS' if all(q['closed'] for q in stats) else 'INCOMPLETE',prefixes=len(stats),closed=sum(q['closed'] for q in stats),cpu_seconds=sum(q['cpu_seconds'] for q in stats),nodes=sum(q['nodes'] for q in stats),wall_seconds=time.monotonic()-start)
  out.write(json.dumps(summary)+'\n')
 tmp.rename(output);print(json.dumps(summary),flush=True);return 0 if summary['status']=='PASS' else 2
if __name__=='__main__':sys.exit(main())
