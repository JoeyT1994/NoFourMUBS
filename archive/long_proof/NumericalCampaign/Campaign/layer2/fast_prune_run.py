"""Measure and independently replay the bounded F-first side-only policy."""
import argparse,hashlib,json,multiprocessing,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
from run import cell_box,load_rows
sys.path.insert(0,str(ROOT/'ProvenResults/CampaignLayerCoverage'))
import fast_prune
from flint import ctx

def work(row):
    ctx.prec=96;start=time.process_time();cert=fast_prune.certify_box(*cell_box(row));cpu=time.process_time()-start
    rcpu=0.
    if cert['ok']:
        ctx.prec=256;start=time.process_time();assert fast_prune.replay(*cell_box(row),cert);rcpu=time.process_time()-start
    return dict(row,certificate=cert,certificate_engine='F_first_side',cpu_seconds=cpu,replay_cpu_seconds=rcpu,replay256=cert['ok'])

def main():
    p=argparse.ArgumentParser();p.add_argument('input',type=Path);p.add_argument('output',type=Path)
    p.add_argument('--first',type=int,default=1);p.add_argument('--last',type=int,required=True);p.add_argument('--workers',type=int,default=4)
    a=p.parse_args();selected=list(load_rows(a.input,'layer'))[a.first-1:a.last]
    if a.output.exists():raise ValueError('Output exists')
    header=dict(type='header',input_sha256=hashlib.sha256(a.input.read_bytes()).hexdigest(),precision=96,replay_precision=256,
        policy='F then phase8; terminal phase10; binary depth8; node budget511',first=a.first,last=a.last,
        source_hashes={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in [Path(__file__),Path(fast_prune.__file__),ROOT/'ProvenResults/CampaignLayerCoverage/ordering.py']})
    count=ok=0;cpu=replay_cpu=0.;start=time.perf_counter()
    with a.output.with_suffix('.jsonl.part').open('x') as f,multiprocessing.Pool(a.workers) as pool:
        f.write(json.dumps(header)+'\n')
        for r in pool.imap_unordered(work,selected):
            f.write(json.dumps(r)+'\n');f.flush();count+=1;ok+=r['certificate']['ok'];cpu+=r['cpu_seconds'];replay_cpu+=r['replay_cpu_seconds']
            if count%16==0:print(count,'/',len(selected),'excluded',ok,'CPU-s',round(cpu,3),'replay CPU-s',round(replay_cpu,3),flush=True)
    a.output.with_suffix('.jsonl.part').rename(a.output)
    print('DONE',ok,'/',count,'discovery CPU-s',cpu,'replay CPU-s',replay_cpu,'wall-s',time.perf_counter()-start,flush=True)

if __name__=='__main__':main()
