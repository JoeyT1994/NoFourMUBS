"""Bounded whole-box certification from exact-rational JSONL (plain or gzip)."""
from pathlib import Path
from fractions import Fraction as Q
import argparse,json,gzip,time,sys,hashlib,collections,signal
from collections import deque
from concurrent.futures import ProcessPoolExecutor
from multiprocessing import get_context
HERE=Path(__file__).resolve().parent
STATEMENT='no_physical_completion_in_strict_D0'

def opener(p,mode):return gzip.open(p,mode) if str(p).endswith('.gz') else open(p,mode)
def init(binary):
 import provider
 provider.LIBFILE=Path(binary)
 provider.library()

def task(args):
 row,opts=args;start=time.process_time();base=dict(id=row.get('id') if isinstance(row,dict) else None,ok=False,statement=STATEMENT)
 try:
  c0=row['centers'];r0=row['radii']
  if len(c0)!=4 or len(r0)!=4 or any(type(s)!=str or len(s)>2000 for s in c0+r0):raise ValueError('four exact rational strings required')
  c=list(map(Q,c0));r=list(map(Q,r0))
  if any(abs(x)>100 for x in c) or any(not 0<x<=1 for x in r):raise ValueError('outside supported radian input range')
  from search import certify
  q=certify(c,r,cpu=opts['cpu'],depth=opts['depth'],nodes=opts['nodes'])
  q.pop('statement',None);base.update(q)
  base['hypotheses']=['SignedCornerPSDPrune Sections 2,3,5','strict side exhaustion and strict nonzero P divisors','fixed-corner nonmatched Tao classification only for coupled signs']
 except Exception as ex:base.update(ok=False,reason='invalid_or_exception',detail=f'{type(ex).__name__}: {ex}')
 base['total_cpu_seconds']=time.process_time()-start
 return base

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--boxes',type=Path,required=True);p.add_argument('--output',type=Path,required=True);p.add_argument('--jobs',type=int,default=1);p.add_argument('--cpu-per-box',type=float,default=0.3);p.add_argument('--max-depth',type=int,default=16);p.add_argument('--max-nodes',type=int,default=255);p.add_argument('--order',type=int,default=4,choices=[3,4,5]);p.add_argument('--limit',type=int,default=0);a=p.parse_args()
 if a.output.exists() or a.jobs<1 or not 0<a.cpu_per_box<=60 or not 0<=a.max_depth<=24 or not 1<=a.max_nodes<=65535:p.error('fresh output and supported positive budgets required')
 from build import compile_engine
 start=time.monotonic();binary,built=compile_engine(a.order);counts=collections.Counter();cpu=0.;maxcpu=0.;n=0
 a.output.parent.mkdir(parents=True,exist_ok=True)
 opts=dict(cpu=a.cpu_per_box,depth=a.max_depth,nodes=a.max_nodes)
 def items():
  with opener(a.boxes,'rt') as f:
   for i,line in enumerate(f):
    if a.limit and i>=a.limit:break
    try:row=json.loads(line)
    except Exception as ex:row=dict(id=i,parse_error=str(ex))
    yield row,opts
 with opener(a.output,'wt') as out,ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context('spawn'),initializer=init,initargs=(binary,)) as pool:
  iterator=iter(items());pending=deque()
  for _ in range(4*a.jobs):
   try:pending.append(pool.submit(task,next(iterator)))
   except StopIteration:break
  while pending:
   q=pending.popleft().result()
   try:pending.append(pool.submit(task,next(iterator)))
   except StopIteration:pass
   out.write(json.dumps(q,allow_nan=False,separators=(',',':'))+'\n');out.flush();n+=1;counts['accepted' if q['ok'] else q['reason']]+=1;cpu+=q['total_cpu_seconds'];maxcpu=max(maxcpu,q['total_cpu_seconds'])
   if n%100==0:print(json.dumps(dict(done=n,counts=counts,cpu_seconds=cpu)),flush=True)
 from pins import sha
 receipt=dict(status='COMPLETE_LIST_SCAN',boxes=n,counts=counts,cpu_seconds=cpu,cpu_per_box=cpu/n if n else None,max_box_cpu=maxcpu,wall_seconds=time.monotonic()-start,budgets=opts,build=built,input_sha256=sha(a.boxes),output_sha256=sha(a.output),statement=STATEMENT,accepted_scope='whole closed boxes only')
 a.output.with_suffix(a.output.suffix+'.receipt.json').write_text(json.dumps(receipt,indent=2)+'\n');print(json.dumps(receipt),flush=True)
 return 0
if __name__=='__main__':raise SystemExit(main())
