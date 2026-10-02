"""Fresh stratified leaf replay; never claims whole-cube coverage."""
from cube import HERE,sha
from certificate import check_pins,audit_leaf,rows
import argparse,json,time,collections
from pathlib import Path
from concurrent.futures import ProcessPoolExecutor,as_completed
from multiprocessing import get_context

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output-dir',type=Path,required=True);p.add_argument('--jobs',type=int,default=8);p.add_argument('--count',type=int,default=64);a=p.parse_args()
 if a.output_dir.exists() or a.jobs<1 or a.count<5:p.error('fresh output, positive jobs, count >=5 required')
 a.output_dir.mkdir(parents=True);start=time.monotonic();receipt={'status':'FAIL','scope':'sample only, not cube coverage'}
 try:
  check_pins()
  from runtime import check
  from compiler_check import check as compiler
  from julia_environment import check as julia
  receipt.update(runtime=check(),compiler=compiler(),julia=julia(),inputs_sha256=sha(HERE/'INPUTS.json'))
  groups=collections.defaultdict(list)
  for n in rows(HERE/'data/certificate.jsonl.gz'):groups[n['terminal']['method']].append(n)
  selected=[]
  for method,group in sorted(groups.items()):
   k=min(len(group),max(1,a.count//len(groups)))
   selected.extend(group[i*(len(group)-1)//max(1,k-1)] for i in range(k))
  totals=collections.defaultdict(lambda:dict(leaves=0,cpu_seconds=0.))
  with (a.output_dir/'leaves.jsonl').open('w') as log,ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context('spawn')) as pool:
   for f in as_completed([pool.submit(audit_leaf,n) for n in selected]):
    q=f.result();log.write(json.dumps(q)+'\n');log.flush();t=totals[q['method']];t['leaves']+=1;t['cpu_seconds']+=q['cpu_seconds']
  receipt.update(status='CALIBRATION_PASS',leaves=len(selected),methods=dict(totals))
 except Exception as ex:receipt['error']=f'{type(ex).__name__}: {ex}'
 receipt['wall_seconds']=time.monotonic()-start;(a.output_dir/'RECEIPT.json').write_text(json.dumps(receipt,indent=2)+'\n');print(json.dumps(receipt));return 0 if receipt['status']=='CALIBRATION_PASS' else 1
if __name__=='__main__':raise SystemExit(main())
