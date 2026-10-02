"""One independent shard: whole-cell second pass, production cover, T2 leaves.
All float diagnostic fields are evidence only. No production output is edited.
"""
import argparse,hashlib,json,os,subprocess,sys,time,resource
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
from run import cell_box,load_rows
from second_pass import certify_box,replay
from flint import ctx,arb
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
import near_f6,zero_neighbourhood

def t2(c,h):
    for name,func in [('near_f6',near_f6.certify_box),('zero_neighbourhood',zero_neighbourhood.certify_box)]:
        r=func(c,h)
        if r['ok']:return dict(engine=name,certificate=r)
    return None

def main():
    p=argparse.ArgumentParser();p.add_argument('input',type=Path);p.add_argument('first',type=int);p.add_argument('last',type=int);p.add_argument('output',type=Path)
    a=p.parse_args();out=a.output.resolve();out.mkdir(parents=True,exist_ok=False);ctx.prec=96
    rows=list(load_rows(a.input,'layer'))[a.first-1:a.last];remaining=[]
    header=dict(input_sha256=hashlib.sha256(a.input.read_bytes()).hexdigest(),first=a.first,last=a.last,
        precision=96,host=os.uname().nodename,settings={k:v for k,v in os.environ.items() if k.startswith('LAYER2_')})
    (out/'header.json').write_text(json.dumps(header,indent=2))
    with (out/'second.jsonl').open('x') as f:
        for row in rows:
            c,h=cell_box(row);start=time.process_time();r=certify_box(c,h)
            rec=dict(row,certificate=r,cpu_seconds=time.process_time()-start)
            if r['ok']:
                ctx.prec=160;assert replay(*cell_box(row),r);ctx.prec=96;rec['replay160']=True
            else:remaining.append(row)
            f.write(json.dumps(rec)+'\n');f.flush()
    inp=out/'remaining.txt'
    inp.write_text(''.join(' '.join(map(str,[r['cell'],r['job'],r['level'],*r['theta']]))+'\n' for r in remaining))
    env=dict(os.environ,CERT_COVER_ACCELERATED='1',OPENBLAS_NUM_THREADS='1',JULIA_NUM_THREADS='1',JULIA_PKG_PRECOMPILE_AUTO='0')
    julia_start=time.perf_counter();before=resource.getrusage(resource.RUSAGE_CHILDREN)
    cmd=[os.environ.get('JULIA',str(Path.home()/'.juliaup/bin/julia')),'--startup-file=no',
         '--project='+str(ROOT/'NumericalCampaign/Certification/jlenv_cluster'),str(Path(__file__).with_name('cover_worker.jl')),str(inp),str(out/'cover.jsonl')]
    with (out/'julia.log').open('x') as log:subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
    after=resource.getrusage(resource.RUSAGE_CHILDREN)
    julia_wall=time.perf_counter()-julia_start
    with (out/'t2.jsonl').open('x') as f:
        for line in (out/'cover.jsonl').open():
            row=json.loads(line)
            if row.get('status')!='open':continue
            ctx.prec=160;start=time.process_time();r=t2([arb(x) for x in row['theta']],[arb(row['radius'])]*4)
            f.write(json.dumps(dict(cell=row['cell'],path=row['path'],result=r,cpu_seconds=time.process_time()-start))+'\n');f.flush()
    (out/'done.json').write_text(json.dumps(dict(cells=len(rows),second_pass_excluded=len(rows)-len(remaining),
        julia_cpu_seconds=after.ru_utime+after.ru_stime-before.ru_utime-before.ru_stime,
        julia_wall_seconds=julia_wall)))

if __name__=='__main__':main()
