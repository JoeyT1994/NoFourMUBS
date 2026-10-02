"""Pilot alternative: side pruning precedes H+ reconstruction on descendants.

Uses the same audit format. Side-accepted nodes remain 'open' in the Julia
tree and are closed by their separate replayed sideleaf certificates.
"""
import argparse,csv,json,math,os,resource,subprocess,sys,time
from pathlib import Path
from pilot import ROOT,cell_box,load_rows,certify_box,replay,t2,ctx,arb
import hashlib

def radius(level,depth):return math.nextafter(math.pi/2**(level+depth)+2**-40+depth*2**-48,math.inf)

def main():
    p=argparse.ArgumentParser();p.add_argument('input',type=Path);p.add_argument('first',type=int);p.add_argument('last',type=int);p.add_argument('output',type=Path);p.add_argument('--classification',required=True,type=Path)
    a=p.parse_args();out=a.output.resolve();out.mkdir(parents=True,exist_ok=False);ctx.prec=96
    rows=list(load_rows(a.input,'layer'))[a.first-1:a.last]
    evidence={tuple(float(r['t'+str(k)]) for k in range(1,5)):r for r in csv.DictReader(a.classification.open(),delimiter='\t')}
    (out/'header.json').write_text(json.dumps(dict(input_sha256=hashlib.sha256(a.input.read_bytes()).hexdigest(),first=a.first,last=a.last,precision=96,host=os.uname().nodename,policy='side_first_depth2',settings={k:v for k,v in os.environ.items() if k.startswith('LAYER2_')})))
    trees={};side=[];targets=[];second=[];cost={}
    for row in rows:
        cid=row['cell'];start=time.process_time();r=certify_box(*cell_box(row));cost[cid]=time.process_time()-start
        second.append(dict(row,certificate=r,cpu_seconds=cost[cid]))
        if r['ok']:
            ctx.prec=160;assert replay(*cell_box(row),r);ctx.prec=96;continue
        nodes=[];t0=time.process_time()
        def visit(c,path):
            d=len(path);h=radius(row['level'],d)
            n=dict(cell=cid,theta=c,radius=h,path=path,status='open',method='side_pending',seconds=0.)
            nodes.append(n)
            # The root second-pass attempt already failed; retry only descendants.
            cert=None;ts=time.process_time()
            if d and time.process_time()-t0<60:
                cert=certify_box([arb(x) for x in c],[arb(h)]*4,max_depth=0,node_budget=1)
                if cert['ok']:
                    ctx.prec=160;assert replay([arb(x) for x in c],[arb(h)]*4,cert);ctx.prec=96
                    side.append(dict(cell=cid,path=path,theta=c,radius=h,certificate=cert,cpu_seconds=time.process_time()-ts,replay160=True));return
            n['seconds']=time.process_time()-ts
            if d<2:
                n.update(status='split',method='side_unresolved')
                step=math.pi/2**(row['level']+d+1)
                for j in range(16):visit([x+(step if j>>i&1 else -step) for i,x in enumerate(c)],path+[j])
            else:targets.append(n)
        visit(row['theta'],[]);trees[cid]=nodes
        cost[cid]=time.process_time()-t0
    with (out/'second.jsonl').open('x') as f:
        for row in second:f.write(json.dumps(row)+'\n')
    inp=out/'targets.txt'
    with inp.open('x') as f:
        for n in targets:f.write(' '.join(map(str,[n['cell'],','.join(map(str,n['path'])) or 'root',n['radius'],*n['theta']]))+'\n')
    env=dict(os.environ,CERT_COVER_ACCELERATED='1',OPENBLAS_NUM_THREADS='1',JULIA_NUM_THREADS='1',JULIA_PKG_PRECOMPILE_AUTO='0')
    before=resource.getrusage(resource.RUSAGE_CHILDREN);wall=time.perf_counter()
    cmd=[os.environ.get('JULIA',str(Path.home()/'.juliaup/bin/julia')),'--startup-file=no','--project='+str(ROOT/'NumericalCampaign/Certification/jlenv_cluster'),str(Path(__file__).with_name('target_worker.jl')),str(inp),str(out/'targets.jsonl')]
    with (out/'julia.log').open('x') as f:subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
    elapsed=time.perf_counter()-wall;after=resource.getrusage(resource.RUSAGE_CHILDREN)
    replacement={(r['cell'],tuple(r['path'])):r for r in map(json.loads,(out/'targets.jsonl').open())}
    assert len(replacement)==len(targets)
    with (out/'cover.jsonl').open('x') as f,(out/'t2.jsonl').open('x') as tf:
        for row in rows:
            cid=row['cell']
            if cid not in trees:continue
            er=evidence[tuple(row['theta'])]
            f.write(json.dumps(dict(cell=cid,evidence_only=True,nD0=int(er['nD0']),Rmin=float(er['Rmin']),Rmax=float(er['Rmax']),RD0min=None if er['RD0min']=='NA' else float(er['RD0min'])))+'\n')
            jt=0.
            for n in trees[cid]:
                key=(cid,tuple(n['path']))
                if key in replacement:n=replacement[key];jt+=n['seconds']
                f.write(json.dumps(n)+'\n')
                if n['status']=='open':
                    ts=time.process_time();ctx.prec=160
                    tr=None if n['method']=='side_pending' else t2([arb(x) for x in n['theta']],[arb(n['radius'])]*4)
                    tf.write(json.dumps(dict(cell=cid,path=n['path'],result=tr,cpu_seconds=time.process_time()-ts))+'\n')
            f.write(json.dumps(dict(cell=cid,done=True,wall_seconds=jt,side_tree_cpu_seconds=cost[cid]))+'\n')
    with (out/'sideleaf.jsonl').open('x') as f:
        for r in side:f.write(json.dumps(r)+'\n')
    (out/'done.json').write_text(json.dumps(dict(cells=len(rows),second_pass_excluded=len(rows)-len(trees),julia_cpu_seconds=after.ru_utime+after.ru_stime-before.ru_utime-before.ru_stime,julia_wall_seconds=elapsed,side_tree_cpu_seconds=sum(cost[cid] for cid in trees))))

if __name__=='__main__':main()
