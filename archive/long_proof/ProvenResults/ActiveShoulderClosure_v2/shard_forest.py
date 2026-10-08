#!/usr/bin/env python3
"""Split an existing complete forest into independent resume files.

This changes packaging only. Geometry is audited here; the driver freshly
replays each retained interval witness before using it.
"""
import argparse,gzip,json
from pathlib import Path
from geometry import HERE
from assemble import load_shard,sha

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--region',type=Path,default=HERE/'data/region.json')
    p.add_argument('--forest',type=Path,default=HERE/'data/shoulder_forest.jsonl.gz')
    p.add_argument('--shards',type=int,default=256)
    p.add_argument('--output-dir',type=Path,required=True)
    a=p.parse_args()
    from predicate import check_pins
    check_pins()
    if a.shards<1 or a.output_dir.exists():p.error('positive shard count and fresh output required')
    region=json.loads(a.region.read_text());rh=sha(a.region)
    records=load_shard(a.forest,region,rh)
    if {r['root'] for r in records}!=set(range(len(region['roots']))):raise ValueError('missing roots')
    source_hash=sha(a.forest)
    groups=[[] for _ in range(a.shards)]
    for r in records:groups[r['root']%a.shards].append(r)
    a.output_dir.mkdir(parents=True)
    manifest={}
    for i,rows in enumerate(groups):
        path=a.output_dir/f'resume_{i}.jsonl.gz'
        with gzip.open(path,'wt') as f:
            f.write(json.dumps(dict(type='header',format=2,region_sha256=rh,roots=[r['root'] for r in rows],source_sha256=source_hash))+'\n')
            for r in rows:f.write(json.dumps(r,sort_keys=True)+'\n')
            f.write(json.dumps(dict(type='summary',roots=len(rows),closed=sum(r['closed'] for r in rows),status='REQUIRES_FRESH_WITNESS_REPLAY'))+'\n')
        manifest[path.name]=sha(path)
    (a.output_dir/'SHA256.json').write_text(json.dumps(manifest,indent=2,sort_keys=True)+'\n')
    print(json.dumps(dict(roots=len(records),shards=a.shards,geometry='PASS',interval_replay='required by driver')))

if __name__=='__main__':main()
