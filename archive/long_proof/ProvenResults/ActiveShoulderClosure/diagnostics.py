#!/usr/bin/env python3
"""Repeat the bounded pilot/point diagnostics; never a region certificate."""
import os
os.environ.setdefault('OPENBLAS_NUM_THREADS','1')
import argparse,gzip,json,time
from pathlib import Path
from fractions import Fraction as F
from concurrent.futures import ProcessPoolExecutor,as_completed
import numpy as np
from flint import ctx
from geometry import HERE,pilot_rows,pilot_radius
from kernel import leaf
from discovery_numeric import project


def job(t):
    row,point=t;ctx.prec=160 if point else 128;t0=time.process_time()
    try:report=leaf(row['centers'],[F(0) if point else pilot_radius()]*4)
    except Exception as e:report=dict(ok=False,reason='exception',exception=repr(e))
    return dict(id=row['id'],family=row['family'],point_only=point,cpu_seconds=time.process_time()-t0,report=report)


def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--output-dir',type=Path,required=True);ap.add_argument('--jobs',type=int,default=1);args=ap.parse_args()
    if args.output_dir.exists():ap.error('choose a fresh directory')
    args.output_dir.mkdir(parents=True);rows=list(pilot_rows())
    ids=sorted({i*(len(rows)-1)//127 for i in range(128)}|{21,510,5328,8801,49329,51227})
    distances=[project(np.array(row['centers'],float))[0] for row in rows]
    summary=dict(count=len(rows),distance_quantiles_proposals=np.quantile(distances,[0,.5,.95,1]).tolist(),max_distance_id=int(np.argmax(distances)),sampling_ids=ids)
    for point in [False,True]:
        results=[]
        with gzip.open(args.output_dir/('point_benchmark.jsonl.gz' if point else 'pilot_benchmark.jsonl.gz'),'wt') as f:
            with ProcessPoolExecutor(max_workers=args.jobs) as pool:
                for fut in as_completed([pool.submit(job,(rows[i],point)) for i in ids]):
                    r=fut.result();results.append(r);f.write(json.dumps(r,sort_keys=True)+'\n')
        summary['points' if point else 'boxes']=dict(count=len(results),closed=sum(r['report']['ok'] for r in results),cpu_seconds=sum(r['cpu_seconds'] for r in results),unresolved_ids=sorted(r['id'] for r in results if not r['report']['ok']))
    (args.output_dir/'summary.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
if __name__=='__main__':main()
