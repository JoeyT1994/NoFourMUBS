"""Revalidate whole closed v1 roots into v2 trees, with exact cyclic geometry.

No unavailable cluster output or v1 status bit is accepted as a proof.
Open v1 roots are skipped by default so the adaptive search can start fresh.
"""
import argparse,json,gzip,time
from pathlib import Path
from flint import ctx
from geometry import HERE,root_box,path_audit
from kernel import evaluate
from assemble import sha
from tree import audit_root,compact

def convert(old,region):
    start=time.process_time();path_audit(w['path'] for w in old['leaves']);nodes={};rid=old['root']
    if old['key']!=region['roots'][rid]:raise ValueError('v1 root key mismatch')
    for w in old['leaves']:
        path=w['path']
        for d in range(len(path)):nodes.setdefault(path[:d],dict(path=path[:d],kind='split',axis=d%4))
        report=dict(closed=[],reason='not_replayed_open_v1_leaf')
        if w['ok']:
            c,r=root_box(old['key'],region['grid'],path)
            try:report=evaluate(c,r,plan=w.get('plan'),reference_search=False)
            except Exception as ex:report=dict(closed=[],reason='exception',detail=str(ex))
        nodes[path]=dict(path=path,kind='leaf',ok=len(report['closed'])==4,report=report,reason=report['reason'])
    leaves=[n for n in nodes.values() if n['kind']=='leaf']
    out=dict(root=rid,nodes=0,closed=all(n['ok'] for n in leaves),leaves=len(leaves),accepted_leaves=sum(n['ok'] for n in leaves),cpu_seconds=time.process_time()-start,tree=list(nodes.values()),origin='v1 complete tree; every accepting claim freshly revalidated')
    audit_root(region,out);return compact(out)

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('input',type=Path);ap.add_argument('--output',type=Path,required=True);ap.add_argument('--region',type=Path,default=HERE/'data/region.json');ap.add_argument('--include-open',action='store_true');ap.add_argument('--shard',type=int,default=0);ap.add_argument('--shards',type=int,default=1);a=ap.parse_args()
    from predicate import check_pins
    check_pins()
    if not 0<=a.shard<a.shards:ap.error('invalid shard')
    if a.output.exists():ap.error('fresh output required')
    ctx.prec=160;reg=json.loads(a.region.read_text());rows=[]
    with gzip.open(a.input,'rt') as f:
        head=json.loads(next(f))
        if head.get('region_sha256')!=sha(a.region):raise ValueError('v1 region hash mismatch')
        for line in f:
            r=json.loads(line)
            if 'root' in r and r['root']%a.shards==a.shard and (r['closed'] or a.include_open):rows.append(convert(r,reg));print('revalidated root',r['root'],flush=True)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    with gzip.open(a.output,'wt') as f:
        for r in [dict(type='header',format=2,region_sha256=sha(a.region),roots=[r['root'] for r in rows],v1_sha256=sha(a.input)),*rows,dict(type='summary',roots=len(rows),closed=sum(r['closed'] for r in rows),status='SEARCH_RESULT')]:f.write(json.dumps(r,sort_keys=True)+'\n')
if __name__=='__main__':main()
