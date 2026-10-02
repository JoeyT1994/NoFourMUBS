#!/usr/bin/env python3
"""Replay every accepted guarded pilot box at higher precision.

Only retained frame indices propose witnesses. All R bounds, signed roots,
reference ranges and strict tube inequalities are recalculated. Stored
projector-distance numbers and original centre acceptance flags are ignored.
"""
import os
for k in ['OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS']:os.environ[k]='1'
import argparse,gzip,hashlib,json,time,multiprocessing as mp
from pathlib import Path
from geometry import *
from measure import read_pilot

def chunk(task):
 rows,precision,h=task;iv.prec=precision;hh=[Q(h)]*4;start=time.process_time();largest=Q(0);bykind={};cross0=cross1=0
 for cert,centres in rows:
  cc=list(map(exact_number,centres));R=r_enclosure(cc,hh);require(R.b>0 and R.b<v(243),'replayed R bound failed')
  branches=cert['branches'];require(len(branches)==2 and {b['original_side_Q_sign'] for b in branches}=={-1,1},'both signed sheets required')
  for b in branches:
   fi=b['frame_index'];require(isinstance(fi,int) and 0<=fi<144,'retained frame ID');ans=frame_branch_test(cc,hh,R,fi,b['original_side_Q_sign']);require(ans is not None,'guarded whole-box replay failed, row '+str(cert['index_zero_based']))
   largest=max(largest,Q(ans['total_projector_distance_upper']))
  cross0+=bool(R.a<=0);cross1+=bool(R.a<=1);bykind[cert['kind']]=bykind.get(cert['kind'],0)+1
 return dict(count=len(rows),largest=str(largest),by_kind=bykind,cross0=cross0,cross1=cross1,cpu_s=time.process_time()-start)

def main():
 p=argparse.ArgumentParser();p.add_argument('--input',required=True);p.add_argument('--workers',type=int,default=4);p.add_argument('--precision',type=int,default=192);p.add_argument('--receipt',default=str(HERE/'receipts'/'MEASUREMENT_REPLAY.json'));a=p.parse_args();require(a.precision>=160 and a.workers>0,'measurement replay arguments')
 start=time.time();report=json.loads((HERE/'receipts'/'MEASUREMENT.json').read_text());path=Path(a.input);require(hashlib.sha256(path.read_bytes()).hexdigest()==report['input_sha256'],'pilot input pin')
 witnesses=HERE/'receipts'/'WHOLE_BOX_ACCEPTED.jsonl.gz';require(hashlib.sha256(witnesses.read_bytes()).hexdigest()==report['accepted_witnesses_sha256'],'accepted witness pin')
 rows=read_pilot(path);require(len(rows)==report['total'],'entire pilot denominator');records=[json.loads(x) for x in gzip.open(witnesses,'rt')];ids=[x['index_zero_based'] for x in records]
 require(len(ids)==len(set(ids))==report['accepted'] and all(isinstance(i,int) and 0<=i<len(rows) for i in ids),'unique accepted row indices')
 require(all(x['kind']==rows[x['index_zero_based']][1] for x in records),'input kind binding')
 h=Q(report['tested_halfwidth_rational']);iv.prec=a.precision;require(v(h).a>(iv.pi/8192+v(Q(1,2**40))).b,'retained guard encloses exact required half-width')
 jobs=[([(c,rows[c['index_zero_based']][0]) for c in records[k:k+100]],a.precision,str(h)) for k in range(0,len(records),100)]
 outputs=[]
 with mp.Pool(a.workers) as pool:
  for result in pool.imap(chunk,jobs):
   outputs.append(result)
   if len(outputs)%50==0:print('Replayed',sum(o['count'] for o in outputs),'accepted boxes',flush=True)
 counts={k:sum(o['by_kind'].get(k,0) for o in outputs) for k in report['by_kind']}
 require(all(counts[k]==report['by_kind'][k]['accepted'] for k in counts),'accepted kind counts')
 result=dict(status='PASS',precision_bits=a.precision,accepted_boxes_replayed=sum(o['count'] for o in outputs),total_original_pilot_boxes=len(rows),fraction_exact=report['fraction_exact'],by_kind=counts,accepted_crossing_R0=sum(o['cross0'] for o in outputs),accepted_crossing_R1=sum(o['cross1'] for o in outputs),largest_projector_distance_upper=str(max(Q(o['largest']) for o in outputs)),tube_radius='1/36',matrix_lifts=0,input_sha256=report['input_sha256'],accepted_witnesses_sha256=report['accepted_witnesses_sha256'],cpu_s=sum(o['cpu_s'] for o in outputs),wall_s=time.time()-start,scope='all accepted whole guarded boxes restricted to physical R>0 points; not the unavailable sample4000')
 Path(a.receipt).write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2),flush=True)
if __name__=='__main__':main()
