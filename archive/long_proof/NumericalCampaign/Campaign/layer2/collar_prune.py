"""Try retained T2/F/side certificates on every open exact F6 collar slab."""
import argparse,collections,hashlib,json,multiprocessing,sys,time
from pathlib import Path
from f6_collars import ROOT,aq,certify,replay as replay_collar,normalize
sys.path.insert(0,str(ROOT/'ProvenResults/CampaignLayerCoverage'))
from ordering import exclude_F
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
from second_pass import certify_box,replay
from flint import ctx

def work(item):
    ctx.prec=160
    cid,index,raw=item;b=normalize(raw);c=[aq((a+z)/2) for a,z in b];h=[aq((z-a)/2) for a,z in b]
    start=time.process_time();tr=certify(b)
    if tr is not None:result=dict(ok=True,engine='T2',certificate=tr)
    else:
        r=exclude_F(c,h)
        if r['ok']:result=dict(ok=True,engine='F',certificate=r)
        else:
            r=certify_box(c,h,max_depth=4,node_budget=31)
            result=dict(ok=r['ok'],engine='side',certificate=r)
    elapsed=time.process_time()-start;ctx.prec=256;start=time.process_time()
    c=[aq((a+z)/2) for a,z in b];h=[aq((z-a)/2) for a,z in b]
    if result['ok']:
        if result['engine']=='T2':assert certify(b) is not None
        elif result['engine']=='F':assert exclude_F(c,h)['ok']
        else:assert replay(c,h,result['certificate'])
    return dict(cell=cid,leaf_index=index,bounds=raw,result=result,cpu_seconds=elapsed,
        replay_cpu_seconds=time.process_time()-start,replay256=result['ok'])

def main():
    p=argparse.ArgumentParser();p.add_argument('input',type=Path);p.add_argument('output',type=Path);p.add_argument('--workers',type=int,default=2)
    a=p.parse_args();rows=list(map(json.loads,a.input.open()));ctx.prec=256
    for row in rows:replay_collar(row)
    jobs=[(r['cell'],i,leaf['bounds']) for r in rows for i,leaf in enumerate(r['leaves']) if i]
    header=dict(type='header',input_sha256=hashlib.sha256(a.input.read_bytes()).hexdigest(),slabs=len(jobs),
        scope='All F6 collar slabs; successes replayed at 256 bits; failures remain open')
    if a.output.exists():raise ValueError('Output exists')
    outrows=[];started=time.perf_counter()
    with a.output.with_suffix('.jsonl.part').open('x') as f,multiprocessing.Pool(a.workers) as pool:
        f.write(json.dumps(header)+'\n')
        for r in pool.imap_unordered(work,jobs):
            f.write(json.dumps(r)+'\n');f.flush();outrows.append(r)
            if len(outrows)%32==0:print(len(outrows),'/',len(jobs),'slabs; accepted',sum(x['result']['ok'] for x in outrows),flush=True)
    a.output.with_suffix('.jsonl.part').rename(a.output)
    bykey={(r['cell'],r['leaf_index']):r for r in outrows};assert len(bykey)==len(jobs)
    closed=[];open_ids=[]
    for row in rows:
        cid=row['cell'];ok=True
        for i,leaf in enumerate(row['leaves']):
            if not i:continue
            r=bykey[cid,i];assert r['bounds']==leaf['bounds'];ok=ok and r['result']['ok']
        (closed if ok else open_ids).append(cid)
    summary=dict(status='PASS_PARTIAL_COVERS',whole_parent_closed_ids=closed,open_parent_ids=open_ids,
        slabs=len(jobs),accepted_slabs=sum(r['result']['ok'] for r in outrows),
        cpu_seconds=sum(r['cpu_seconds'] for r in outrows),replay_cpu_seconds=sum(r['replay_cpu_seconds'] for r in outrows),
        wall_seconds=time.perf_counter()-started,result_sha256=hashlib.sha256(a.output.read_bytes()).hexdigest())
    with a.output.with_suffix('.summary.json').open('x') as f:json.dump(summary,f,indent=2);f.write('\n')
    print(json.dumps(summary),flush=True)

if __name__=='__main__':main()
