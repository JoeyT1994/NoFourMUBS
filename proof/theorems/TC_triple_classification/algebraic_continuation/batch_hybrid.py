#!/usr/bin/env python3
"""Independent per-ball processes with externally enforced time limits."""
import argparse,concurrent.futures,json,os,subprocess,sys,time
from pathlib import Path

HERE=Path(__file__).resolve().parent


def job(index,directory,seconds,driver):
    path=directory/f'ball_{index}.jsonl';log=directory/f'ball_{index}.log'
    if path.exists():
        row=json.loads(path.read_text());return row
    start=time.monotonic()
    env=os.environ.copy()
    for name in ('OPENBLAS_NUM_THREADS','MKL_NUM_THREADS','VECLIB_MAXIMUM_THREADS','OMP_NUM_THREADS'):
        env[name]='1'
    with log.open('w') as stream:
        process=subprocess.Popen([sys.executable,str(HERE/driver),'--index',str(index),'--output',str(path)],
                                 stdout=stream,stderr=subprocess.STDOUT,env=env)
        try:
            code=process.wait(timeout=seconds)
        except subprocess.TimeoutExpired:
            process.terminate()
            try:process.wait(timeout=5)
            except subprocess.TimeoutExpired:process.kill();process.wait()
            row=dict(index=index,status='NOT ESTABLISHED',reason='external per-ball time limit',
                     seconds=time.monotonic()-start,time_limit_seconds=seconds)
            path.write_text(json.dumps(row)+'\n');return row
    if code!=0 or not path.exists():
        row=dict(index=index,status='NOT ESTABLISHED',reason=f'worker failed with exit {code}',
                 seconds=time.monotonic()-start)
        path.write_text(json.dumps(row)+'\n');return row
    return json.loads(path.read_text())


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--indices',type=Path,required=True)
    p.add_argument('--directory',type=Path,required=True);p.add_argument('--workers',type=int,default=3)
    p.add_argument('--seconds',type=int,default=240)
    p.add_argument('--driver',choices=['run_hybrid.py','run_bins.py','run_eager_bins.py','run_tight_bins.py','run_intersection_bins.py','run_cubic_bins.py','run_partition_bins.py','run_partition_fast.py','run_partition_cached.py','run_curvature_bins.py'],default='run_hybrid.py');a=p.parse_args()
    values=json.loads(a.indices.read_text())
    if len(values)!=len(set(values)) or any(type(i)is not int or not 0<=i<2775 for i in values):p.error('invalid index list')
    a.directory.mkdir(parents=True,exist_ok=True)
    with concurrent.futures.ThreadPoolExecutor(max_workers=a.workers) as pool:
        futures=[pool.submit(job,i,a.directory,a.seconds,a.driver) for i in values]
        for f in concurrent.futures.as_completed(futures):
            row=f.result();print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
