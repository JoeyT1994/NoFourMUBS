"""Complete exact cube partition and fresh outward replay, with a CPU cap."""
from cube import HERE,sha,path_audit
from certificate import check_pins,audit_leaf
import argparse,gzip,json,time,sys
from pathlib import Path
from concurrent.futures import ProcessPoolExecutor,wait,FIRST_COMPLETED
from multiprocessing import get_context

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--forest',type=Path,default=HERE/'data/certificate.jsonl.gz');p.add_argument('--output-dir',type=Path,required=True);p.add_argument('--jobs',type=int,default=8);p.add_argument('--cpu-hours',type=float,default=12);a=p.parse_args()
 if a.output_dir.exists() or a.jobs<1 or a.cpu_hours<=0:p.error('fresh output and positive budgets required')
 a.output_dir.mkdir(parents=True);start=time.monotonic();receipt=dict(status='FAIL',scope='both guarded production cubes, maximal-corner domain')
 try:
  check_pins()
  from runtime import check as runtime_check
  from compiler_check import check as compiler_check
  from julia_environment import check as julia_check
  from symmetry import run as symmetry_check
  from controls import run as controls_check
  receipt.update(runtime=runtime_check(),compiler=compiler_check(),julia=julia_check(),symmetry=symmetry_check(),controls=controls_check(),inputs_sha256=sha(HERE/'INPUTS.json'),forest_sha256=sha(a.forest))
  with gzip.open(a.forest,'rt') as f:leaves=[json.loads(s) for s in f]
  path_audit(n['path'] for n in leaves)
  if any(n.get('ok') is not True for n in leaves):raise ValueError('open leaf in cube certificate')
  cpu=0.;done=0;counts={};iterator=iter(leaves)
  with (a.output_dir/'leaves.jsonl').open('w') as log:
   with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context('spawn')) as pool:
    pending=set()
    def schedule():
     while len(pending)<a.jobs:
      try:n=next(iterator)
      except StopIteration:break
      if cpu>=a.cpu_hours*3600:raise RuntimeError('replay CPU budget exhausted')
      pending.add(pool.submit(audit_leaf,n))
    schedule()
    while pending:
     ready,_=wait(pending,return_when=FIRST_COMPLETED)
     for f in ready:
      pending.remove(f);q=f.result();cpu+=q['cpu_seconds'];done+=1;counts[q['method']]=counts.get(q['method'],0)+1;log.write(json.dumps(q)+'\n');log.flush()
     if done%100==0:print(json.dumps(dict(replayed=done,total=len(leaves),cpu_seconds=cpu)),flush=True)
     schedule()
  receipt.update(status='PASS',cubes=2,leaves=len(leaves),replayed=done,cpu_seconds=cpu,methods=counts,all_boundaries=True,both_matched_sheets='global transpose symmetry',nonmatched='Tao R=243 excluded outwardly',R_zero='A1/MC1 and F6 exclusion')
 except Exception as ex:
  receipt['error']=f'{type(ex).__name__}: {ex}'
 finally:
  receipt['wall_seconds']=time.monotonic()-start;(a.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
 print(json.dumps(receipt),flush=True);return 0 if receipt['status']=='PASS' else 1
if __name__=='__main__':sys.exit(main())
