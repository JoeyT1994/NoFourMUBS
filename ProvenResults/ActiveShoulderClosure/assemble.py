"""Assemble complete forests, choosing one authoritative tree per root.
This is structural assembly only; replay is mandatory before acceptance.
"""
import argparse,gzip,json,hashlib
from fractions import Fraction as F
from pathlib import Path
from geometry import HERE,path_audit

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('candidates',nargs='+',type=Path);args=ap.parse_args()
    region=HERE/'data/region.json';data=json.loads(region.read_text());best={}
    def score(r):return sum((F(1,2**len(x['path'])) for x in r['leaves'] if x['ok']),F(0))
    for path in args.candidates:
        rows=[json.loads(l) for l in gzip.open(path,'rt')]
        if rows[0].get('region_sha256')!=sha(region) or rows[-1].get('type')!='summary':raise ValueError('incomplete or wrong region shard')
        records=rows[1:-1]
        if sorted(x['root'] for x in records)!=sorted(rows[0]['roots']):raise ValueError('root census')
        for r in records:
            i=r['root']
            if r['key']!=data['roots'][i]:raise ValueError('root key mismatch')
            path_audit(x['path'] for x in r['leaves'])
            if i not in best or score(r)>score(best[i]):best[i]=r
    records=[]
    for i,key in enumerate(data['roots']):
        r=best.get(i,dict(root=i,key=key,nodes=0,cpu_seconds=0,closed=False,leaves=[dict(path='',ok=False,reason='not_attempted')]))
        # Unaccepted diagnostics are retained separately; only their path
        # and reason are required in the complete coverage forest.
        r['leaves']=[x if x['ok'] else {k:x[k] for k in ('path','ok','reason','exception') if k in x} for x in r['leaves']]
        records.append(r)
    out=HERE/'data/certificates';out.mkdir(exist_ok=True)
    shards=[]
    for start in range(0,len(records),64):
        p=out/f'shard_{start//64:03d}.jsonl.gz'
        with gzip.open(p,'wt') as f:
            for r in records[start:start+64]:f.write(json.dumps(r,sort_keys=True)+'\n')
        shards.append(dict(path=str(p.relative_to(HERE)),sha256=sha(p),roots=list(range(start,min(start+64,len(records))))))
    index=dict(format=1,scope='strict physical maximal carriers',region='data/region.json',region_sha256=sha(region),roots=len(records),closed_roots=sum(r['closed'] for r in records),leaves=sum(len(r['leaves']) for r in records),accepted_leaves=sum(x['ok'] for r in records for x in r['leaves']),status='INCOMPLETE',accepting_leaf_replay='PENDING',shards=shards)
    (HERE/'data/index.json').write_text(json.dumps(index,indent=2)+'\n');print(json.dumps({k:v for k,v in index.items() if k!='shards'},indent=2))
if __name__=='__main__':main()
