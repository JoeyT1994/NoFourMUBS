"""Stream exact radian JSONL boxes into a reproducible rational-grid region."""
import argparse,json,gzip,hashlib
from pathlib import Path
from geometry import build_region

def read_boxes(path):
    opener=gzip.open if path.suffix=='.gz' else open
    with opener(path,'rt') as inp:
        for line in inp:
            if line.strip():yield json.loads(line)

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--boxes',type=Path,required=True);ap.add_argument('--grid',type=int,default=256);ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    if a.output.exists():ap.error('fresh output required')
    region=build_region(read_boxes(a.boxes),a.grid)
    h=hashlib.sha256()
    with a.boxes.open('rb') as inp:
        for chunk in iter(lambda:inp.read(1024*1024),b''):h.update(chunk)
    region['source_file']=dict(path=str(a.boxes.resolve()),sha256=h.hexdigest())
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(region,sort_keys=True,indent=2)+'\n')
    print(json.dumps(dict(boxes=region['source_count'],roots=len(region['roots']),sha256=hashlib.sha256(a.output.read_bytes()).hexdigest())))
if __name__=='__main__':main()
