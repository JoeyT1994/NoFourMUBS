"""Stream a huge frontier into bounded contiguous chunks in one input pass."""
import bootstrap
import argparse,gzip,hashlib,json
from pathlib import Path
from frontier_boxes import read_boxes

def sha(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for chunk in iter(lambda:f.read(1024*1024),b''):h.update(chunk)
    return h.hexdigest()

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--boxes',type=Path,required=True)
    p.add_argument('--output-dir',type=Path,required=True)
    p.add_argument('--boxes-per-shard',type=int,default=50000)
    a=p.parse_args()
    if a.output_dir.exists() or a.boxes_per_shard<1:p.error('fresh directory and positive chunk size required')
    a.output_dir.mkdir(parents=True); out=None; inventory=[]; count=0
    try:
        for q in read_boxes(a.boxes):
            if count%a.boxes_per_shard==0:
                if out is not None:out.close();inventory[-1]['sha256']=sha(path)
                path=a.output_dir/f'boxes_{len(inventory):06d}.jsonl.gz'
                out=gzip.open(path,'wt',compresslevel=1)
                inventory.append(dict(path=path.name,first_source_index=count,boxes=0))
            out.write(json.dumps(q,separators=(',',':'),sort_keys=True)+'\n')
            inventory[-1]['boxes']+=1;count+=1
    finally:
        if out is not None:out.close()
    if inventory:inventory[-1]['sha256']=sha(path)
    result=dict(source=dict(path=str(a.boxes),sha256=sha(a.boxes)),boxes=count,
                boxes_per_shard=a.boxes_per_shard,shards=inventory)
    (a.output_dir/'MANIFEST.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(json.dumps(dict(boxes=count,shards=len(inventory))))
if __name__=='__main__':main()
