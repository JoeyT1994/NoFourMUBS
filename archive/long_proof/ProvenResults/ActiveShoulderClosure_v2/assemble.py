"""Create an explicit, unverified forest from complete root shard records."""
import argparse,gzip,json,hashlib
from pathlib import Path
from geometry import HERE
from tree import audit_root,compact
from fractions import Fraction as F

def preserves_acceptance(old,new):
    """Sufficient exact tree test, not an interval-proof substitute.

    The inputs must already pass audit_root's complete geometry audit. A
    different incomparable partition is not assumed better from leaf counts.
    """
    if old['root']!=new['root']:return False
    if new['closed'] or not old['accepted_leaves']:return True
    a={n['path']:n for n in old['tree']};b={n['path']:n for n in new['tree']}
    def counts(nodes):
        out={}
        for p in sorted(nodes,key=len,reverse=True):
            n=nodes[p]
            out[p]=(int(n['ok']),1) if n['kind']=='leaf' else tuple(x+y for x,y in zip(out[p+'0'],out[p+'1']))
        return out
    ac=counts(a);bc=counts(b);todo=['']
    while todo:
        p=todo.pop()
        if ac[p][0]==0 or bc[p][0]==bc[p][1]:continue
        x,y=a[p],b[p]
        if x['kind']=='leaf' or y['kind']=='leaf':return False
        if x['axis']!=y['axis']:return False
        if x['axis']==4 and list(map(F,x['tau_domain']))!=list(map(F,y['tau_domain'])):return False
        todo.extend([p+'0',p+'1'])
    return True

def select(old,new):
    """Keep baseline coverage; adopt only a whole-root or monotone gain."""
    if old is None:return new
    if old['closed']:return old
    if new['closed']:return new
    if new['accepted_leaves'] and preserves_acceptance(old,new):return new
    return old

def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def load_shard(p,region,region_hash):
    if 'grid' in region:
        roots=region['roots'];grid=region['grid']
        if type(grid)!=int or grid<=0 or any(len(k)!=4 or any(type(v)!=int for v in k) for k in roots) or len(roots)!=len({tuple(k) for k in roots}):raise ValueError('invalid rational region grid')
    with gzip.open(p,'rt') as f:
        h=json.loads(next(f))
        if h.get('format')!=2 or h.get('region_sha256')!=region_hash:raise ValueError('shard region/format mismatch')
        rows=[];summary=None
        for line in f:
            r=json.loads(line)
            if 'root' in r:rows.append(compact(r))
            elif r.get('type')=='summary':summary=r
            else:raise ValueError('unknown shard row')
        if summary is None or sorted(r['root'] for r in rows)!=sorted(h['roots']) or len(rows)!=len({r['root'] for r in rows}):raise ValueError('incomplete shard inventory')
        for r in rows:
            if type(r['root'])!=int or not 0<=r['root']<len(region['roots']):raise ValueError('root ID')
            audit_root(region,r)
        return rows

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--region',type=Path,required=True);ap.add_argument('--output',type=Path,required=True);ap.add_argument('shards',nargs='+',type=Path);args=ap.parse_args()
    if args.output.exists():ap.error('fresh output required')
    region=json.loads(args.region.read_text());rh=sha(args.region);best={}
    for p in args.shards:
        for r in load_shard(p,region,rh):
            best[r['root']]=select(best.get(r['root']),r)
    for i in range(len(region['roots'])):
        best.setdefault(i,dict(root=i,nodes=0,cpu_seconds=0,closed=False,leaves=1,accepted_leaves=0,tree=[dict(path='',kind='leaf',ok=False,reason='not_attempted')]))
    args.output.parent.mkdir(parents=True,exist_ok=True)
    with gzip.open(args.output,'wt') as f:
        f.write(json.dumps(dict(type='header',format=2,region_sha256=rh,roots=list(range(len(region['roots']))),sources=[dict(path=str(p),sha256=sha(p)) for p in args.shards]))+'\n')
        for i in sorted(best):f.write(json.dumps(compact(best[i]),sort_keys=True)+'\n')
        f.write(json.dumps(dict(type='summary',roots=len(best),closed=sum(r['closed'] for r in best.values()),status='UNVERIFIED'))+'\n')
    print(json.dumps(dict(roots=len(best),closed=sum(r['closed'] for r in best.values()),sha256=sha(args.output))))
if __name__=='__main__':main()
