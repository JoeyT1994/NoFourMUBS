"""Measure whole guarded boxes. A coordinate-centre sample is not a cover.

This script reads the original pilot's decimal serialized binary64 centres.
Every half-width is an outward rational enlargement of pi/8192+2^-40.
Use --input to supply that .txt.gz file; the missing sample4000 is not assumed.
"""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
import argparse,gzip,hashlib,json,time,multiprocessing as mp
from pathlib import Path
from geometry import *

def read_pilot(path):
 rows=[]
 with gzip.open(path,'rt') as f:
  for line in f:
   if not line.strip() or line.startswith('#'):continue
   fs=line.split();require(int(fs[0])==13,'pilot level must be 13')
   rows.append((list(map(float,fs[1:5])),fs[5],line.strip()))
 return rows

def chunk(args):
 start=time.process_time();results=[];h=standard_guard()
 for index,cc,kind in args:
  result=contains_box(cc,[h]*4)
  if result:results.append(dict(index_zero_based=index,kind=kind,certificate=result))
 return results,time.process_time()-start

def measure(path,output,workers=4,indices=None):
 rows=read_pilot(path);selected=list(range(len(rows))) if indices is None else indices
 tasks=[[(i,*rows[i][:2]) for i in selected[k:k+100]] for k in range(0,len(selected),100)]
 wall=time.time();cpu=0;results=[];done=0
 with mp.Pool(workers) as pool:
  for out,dt in pool.imap(chunk,tasks):
   results.extend(out);cpu+=dt;done+=len(tasks[min(done//100,len(tasks)-1)])
   if done%5000==0:print('Measured',done,'accepted',len(results),flush=True)
 output=Path(output);output.mkdir(exist_ok=True,parents=True)
 with gzip.open(output/'WHOLE_BOX_ACCEPTED.jsonl.gz','wt') as f:
  for result in results:
   cert=result['certificate'];compact=dict(index_zero_based=result['index_zero_based'],kind=result['kind'],R_interval=cert['R_interval'],branches=[{k:b[k] for k in ['original_side_Q_sign','frame_index','direct_Fourier_cell','total_projector_distance_upper']} for b in cert['branches']])
   f.write(json.dumps(compact,separators=(',',':'))+'\n')
 kinds=sorted(set(rows[i][1] for i in selected));accepted_indices={r['index_zero_based'] for r in results}
 counts={k:dict(total=sum(rows[i][1]==k for i in selected),accepted=sum(rows[i][1]==k and i in accepted_indices for i in selected)) for k in kinds}
 report=dict(status='COMPLETE',dataset='original 80613-box pilot; NOT the unavailable sample4000',input_path=str(path),input_sha256=hashlib.sha256(Path(path).read_bytes()).hexdigest(),total=len(selected),accepted=len(results),fraction_exact=str(Q(len(results),len(selected))),fraction=float(Q(len(results),len(selected))),by_kind=counts,guard_halfwidth_radians='pi/8192 + 2^-40',tested_halfwidth_rational=str(standard_guard()),centres='serialized binary64, interpreted as exact dyadics',scope='whole box restricted to physical seeds with R>0; R=0 is outside theorem',accepted_crossing_R1=sum(Q(r['certificate']['R_interval'][0])<=1 for r in results),accepted_crossing_R0=sum(Q(r['certificate']['R_interval'][0])<=0 for r in results),matrix_lifts=0,cpu_s=cpu,wall_s=time.time()-wall,workers=workers,requested_sample4000_status='NOT PROVIDED / NOT FOUND; no fraction is claimed for that sample')
 report['accepted_witnesses_sha256']=hashlib.sha256((output/'WHOLE_BOX_ACCEPTED.jsonl.gz').read_bytes()).hexdigest()
 (output/'MEASUREMENT.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report,indent=2),flush=True);return report

if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--input',required=True);p.add_argument('--output',default=str(HERE/'receipts'));p.add_argument('--workers',type=int,default=4);p.add_argument('--sample',type=int,default=0);a=p.parse_args()
 ids=None
 if a.sample:
  n=len(read_pilot(a.input));ids=[i*n//a.sample for i in range(a.sample)]
 measure(a.input,a.output,a.workers,ids)
