"""Freshly replay every accepted whole-box forest; reject gaps and forged records."""
from pathlib import Path
from fractions import Fraction as Q
import argparse,gzip,json,time,hashlib,collections
from concurrent.futures import ProcessPoolExecutor
from multiprocessing import get_context
from verify import opener,init
from provider import terminal,library

def audit_paths(paths):
 if not paths or len(paths)!=len(set(paths)):raise ValueError('empty or duplicate partition')
 ss=set(paths)
 for p in paths:
  if not isinstance(p,str) or any(b not in '01' for b in p) or len(p)>24 or any(p[:i] in ss for i in range(len(p))):raise ValueError('invalid prefix partition')
 if sum((Q(1,2**len(p)) for p in paths),Q(0))!=1:raise ValueError('incomplete closed cover')

def replay_one(pair):
 row,cert,cap=pair;start=time.process_time();library().set_budget(cap)
 if cert.get('ok') is not True or cert.get('statement')!='no_physical_completion_in_strict_D0':raise ValueError('wrong certificate statement')
 c=list(map(Q,row['centers']));r=list(map(Q,row['radii']));leaves=cert['leaves'];paths=[x['path'] for x in leaves];audit_paths(paths);splits=cert['splits'];needed={p[:j] for p in paths for j in range(len(p))}
 if set(splits)!=needed or any(type(v)!=int or not 0<=v<4 for v in splits.values()):raise ValueError('incomplete split ledger')
 counts=collections.Counter()
 for p in paths:
  cc=c[:];rr=r[:]
  for j,b in enumerate(p):
   axis=splits[p[:j]];rr[axis]/=2;cc[axis]+=(1 if b=='1' else -1)*rr[axis]
  q=terminal(cc,rr)
  if q.get('ok') is not True:raise ValueError('fresh leaf failed: '+str(row['id'])+' '+p)
  counts[q['reason']]+=1
 return dict(id=row['id'],status='PASS',leaves=len(leaves),methods=counts,cpu_seconds=time.process_time()-start)

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--boxes',type=Path,required=True);p.add_argument('--results',type=Path,required=True);p.add_argument('--output',type=Path,required=True);p.add_argument('--jobs',type=int,default=8);p.add_argument('--cpu-per-box',type=float,default=6);a=p.parse_args()
 if not __debug__:raise ValueError('Python -O forbidden')
 if a.output.exists() or a.jobs<1 or not 0<a.cpu_per_box<=60:p.error('fresh output and positive bounded budgets required')
 from build import compile_engine
 binary,built=compile_engine();start=time.monotonic();accepted=0;total=0;cpu=0.;leaves=0
 with opener(a.boxes,'rt') as f:rows=[json.loads(s) for s in f]
 with opener(a.results,'rt') as f:certs=[json.loads(s) for s in f]
 if len(rows)!=len(certs) or any(r.get('id')!=c.get('id') or type(c.get('ok'))!=bool for r,c in zip(rows,certs)):raise ValueError('box/result census')
 todo=[(r,c,a.cpu_per_box) for r,c in zip(rows,certs) if c['ok']]
 with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context('spawn'),initializer=init,initargs=(binary,)) as pool,opener(a.output,'wt') as out:
  for q in pool.map(replay_one,todo,chunksize=1):
   out.write(json.dumps(q)+'\n');out.flush();accepted+=1;cpu+=q['cpu_seconds'];leaves+=q['leaves']
   if accepted%100==0:print(json.dumps(dict(replayed=accepted,total=len(todo),cpu_seconds=cpu)),flush=True)
 report=dict(status='PASS_ACCEPTED_SUBSET',input_boxes=len(rows),accepted=accepted,unresolved=len(rows)-accepted,replayed_leaves=leaves,cpu_seconds=cpu,wall_seconds=time.monotonic()-start,build=built,boxes_sha256=hashlib.sha256(a.boxes.read_bytes()).hexdigest(),results_sha256=hashlib.sha256(a.results.read_bytes()).hexdigest(),replay_sha256=hashlib.sha256(a.output.read_bytes()).hexdigest())
 a.output.with_suffix(a.output.suffix+'.receipt.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report),flush=True)
if __name__=='__main__':main()
