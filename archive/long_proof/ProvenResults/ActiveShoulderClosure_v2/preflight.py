#!/usr/bin/env python3
"""Release helper: replay every retained witness before sealing index/pins.

Never used by the clean verifier to repair or refresh failed inputs.
The global finite tube and guarded-cover lemmas are redone by verify.py.
"""
import argparse,json,gzip,time
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from geometry import HERE
from assemble import load_shard,sha
from tree import audit_root

def task(arg):return audit_root(*arg,replay=True,precision=160)

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--jobs',type=int,default=1);ap.add_argument('--output-dir',required=True);a=ap.parse_args()
    from pathlib import Path
    out=Path(a.output_dir)
    if out.exists() or not __debug__ or a.jobs<1:ap.error('fresh output, nonoptimized Python and positive jobs required')
    out.mkdir(parents=True);index=json.loads((HERE/'data/index.json').read_text());receipt=dict(status='PENDING',populations={});start=time.monotonic()
    for label,meta in [('shoulder',index),('production',index['production']),('patches',index['patches'])]:
        reg=json.loads((HERE/meta['region']).read_text());path=HERE/meta['forest']
        if sha(path)!=meta['forest_sha256']:raise ValueError('forest hash')
        rows=load_shard(path,reg,sha(HERE/meta['region']))
        if {r['root'] for r in rows}!=set(range(len(reg['roots']))):raise ValueError('incomplete root inventory')
        rr=[]
        with gzip.open(out/(label+'.jsonl.gz'),'wt') as f:
            with ProcessPoolExecutor(max_workers=a.jobs,mp_context=get_context("spawn")) as pool:
                for future in as_completed([pool.submit(task,(reg,r)) for r in rows]):
                    r=future.result();rr.append(r);f.write(json.dumps(r,sort_keys=True)+'\n');f.flush()
                    if len(rr)%100==0:print(label,len(rr),'/',len(rows),flush=True)
        receipt['populations'][label]=dict(roots=len(rr),closed=sum(r['closed'] for r in rr),accepted_leaves=sum(r['accepted_leaves'] for r in rr),witness_nodes=sum(r['witness_nodes'] for r in rr),cpu_seconds=sum(r['cpu_seconds'] for r in rr),forest_sha256=sha(path))
    receipt.update(status='PASS',wall_seconds=time.monotonic()-start)
    (out/'RECEIPT.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
    index['replay']='PASS';(HERE/'data/index.json').write_text(json.dumps(index,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt,indent=2),flush=True)
if __name__=='__main__':main()
