#!/usr/bin/env python3
"""Bounded parallel replay of supplied snapshot certificates."""
import argparse,concurrent.futures,json,os,subprocess,sys,time
from pathlib import Path

def main():
    p=argparse.ArgumentParser();p.add_argument('snapshots');p.add_argument('proposals');p.add_argument('--out',required=True)
    p.add_argument('--jobs',type=int,default=3);p.add_argument('--max-nodes',type=int,default=100000)
    p.add_argument('--max-pairs',type=int,default=1);p.add_argument('--affine',action='store_true');p.add_argument('--only',nargs='*')
    p.add_argument('--graph',action='store_true');p.add_argument('--engine',choices=('auto','fiber','svd'),default='auto')
    a=p.parse_args();dest=Path(a.out);dest.mkdir(parents=True,exist_ok=True)
    files=sorted(Path(a.snapshots).glob('*.json.gz'))
    if a.only:files=[f for f in files if any(t in f.name for t in a.only)]
    start=time.monotonic()
    def run(f):
        stem=f.name.removesuffix('.json.gz');proposal=Path(a.proposals)/(stem+'.numerical.json');out=dest/(stem+'.receipt.json')
        cmd=[sys.executable,str(Path(__file__).with_name('certify_graph.py' if a.graph else 'certify_snapshot.py')),str(f),'--proposals',str(proposal),'--out',str(out),'--max-nodes',str(a.max_nodes),'--engine',a.engine]
        if not a.graph:cmd+=['--max-pairs',str(a.max_pairs)]
        if a.affine and not a.graph:cmd.append('--affine')
        r=subprocess.run(cmd,capture_output=True,text=True)
        (dest/(stem+'.log')).write_text(r.stdout+r.stderr)
        if out.exists():
            rec=json.loads(out.read_text());ans={k:rec.get(k) for k in ('snapshot','status','minimum_normalized_overlap_lower','wall_seconds','reason')}
            ans['attempts']=[{'columns':t['columns'],'reason':t.get('reason'),'nodes':sum(v['stats']['nodes'] for v in t['column_results'])} for t in rec.get('attempts',[])]
        else:ans={'snapshot':f.name,'status':'ERROR','returncode':r.returncode,'stderr':r.stderr[-2000:]}
        return ans
    rows=[]
    with concurrent.futures.ThreadPoolExecutor(max_workers=a.jobs) as pool:
        for future in concurrent.futures.as_completed([pool.submit(run,f) for f in files]):
            row=future.result()
            rows.append(row);print(json.dumps(row),flush=True)
            (dest/'SUMMARY.json').write_text(json.dumps({'wall_seconds':time.monotonic()-start,'results':rows},indent=2)+'\n')
    return 0
if __name__=='__main__':raise SystemExit(main())
