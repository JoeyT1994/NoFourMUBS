"""Deterministic bounded-memory reservoir sample retaining exact boxes."""
import bootstrap,argparse,json,random
from pathlib import Path
from frontier_boxes import read_boxes

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--boxes',type=Path,required=True);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--count',type=int,default=256);p.add_argument('--seed',type=int,default=20261002)
    a=p.parse_args()
    if a.output.exists() or a.count<1:p.error('fresh output and positive count required')
    rng=random.Random(a.seed);sample=[];seen=0
    for i,row in enumerate(read_boxes(a.boxes)):
        seen=i+1
        if i<a.count:sample.append((i,row))
        else:
            j=rng.randrange(i+1)
            if j<a.count:sample[j]=(i,row)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    with a.output.open('w') as f:
        for i,row in sorted(sample):f.write(json.dumps(dict(row,source_index=i),sort_keys=True)+'\n')
    print(json.dumps(dict(source_boxes=seen,sampled_boxes=len(sample),seed=a.seed)))
if __name__=='__main__':main()
