#!/usr/bin/env python3
"""Independently replay completed original-ball certificates as they arrive."""
import argparse,concurrent.futures,json,os,subprocess,sys,time
from pathlib import Path

HERE=Path(__file__).resolve().parent


def replay(index,source,destination,seconds,driver):
    output=destination/f'ball_{index}.jsonl';log=destination/f'ball_{index}.log'
    env=os.environ.copy()
    for name in ('OPENBLAS_NUM_THREADS','MKL_NUM_THREADS','VECLIB_MAXIMUM_THREADS','OMP_NUM_THREADS'):env[name]='1'
    start=time.monotonic()
    with log.open('w') as stream:
        process=subprocess.Popen([sys.executable,str(HERE/driver)]+(['--eager'] if driver=='replay_bins.py' else [])+['--receipt',str(source),
                                  '--output',str(output)],stdout=stream,stderr=subprocess.STDOUT,env=env)
        try:code=process.wait(timeout=seconds)
        except subprocess.TimeoutExpired:
            process.terminate()
            try:process.wait(timeout=5)
            except subprocess.TimeoutExpired:process.kill();process.wait()
            code=-1
    if not output.exists():
        output.write_text(json.dumps(dict(index=index,status='NOT ESTABLISHED',
            reason=f'replay worker exit {code}',seconds=time.monotonic()-start))+'\n')
    return json.loads(output.read_text())


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--indices',type=Path,required=True)
    p.add_argument('--source',type=Path,required=True);p.add_argument('--destination',type=Path,required=True)
    p.add_argument('--workers',type=int,default=2);p.add_argument('--seconds',type=int,default=600)
    p.add_argument('--once',action='store_true')
    p.add_argument('--driver',choices=['replay_bins.py','replay_tight_bins.py','replay_cubic_bins.py','replay_partition_fast.py','replay_partition_cached.py','replay_curvature_bins.py'],default='replay_bins.py');a=p.parse_args()
    indices=set(json.loads(a.indices.read_text()));a.destination.mkdir(parents=True,exist_ok=True)
    submitted=set();futures={};seen=set()
    with concurrent.futures.ThreadPoolExecutor(max_workers=a.workers) as pool:
        while True:
            for i in sorted(indices-seen):
                path=a.source/f'ball_{i}.jsonl'
                try:row=json.loads(path.read_text())
                except (OSError,json.JSONDecodeError):continue
                seen.add(i)
                if row['status'] not in ('CERTIFIED','CERTIFIED EMPTY'):continue
                if (a.destination/f'ball_{i}.jsonl').exists():continue
                futures[pool.submit(replay,i,path,a.destination,a.seconds,a.driver)]=i;submitted.add(i)
            for f in list(futures):
                if f.done():
                    row=f.result();print(json.dumps({k:row[k] for k in ('index','status','seconds')}),flush=True)
                    del futures[f]
            if (seen==indices or a.once) and not futures:break
            time.sleep(2)
