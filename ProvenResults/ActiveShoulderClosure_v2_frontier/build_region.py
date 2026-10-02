"""Build exact-box roots (default) or a chosen rational grid from JSONL."""
import bootstrap
import argparse, hashlib, json
from pathlib import Path
from frontier_boxes import read_boxes, build_region

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--boxes',type=Path,required=True)
    p.add_argument('--grid',type=int,help='optional grid denominator; omit for exact box roots')
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--production-cubes',action='store_true',help='require both cover signs for maximal-corner production obligations')
    a=p.parse_args()
    if a.output.exists(): p.error('fresh output required')
    q=build_region(read_boxes(a.boxes),a.grid)
    if a.production_cubes:q['kind']='production_cubes'
    q['source_file']=dict(path=str(a.boxes.resolve()),sha256=hashlib.sha256(a.boxes.read_bytes()).hexdigest())
    a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(q,sort_keys=True,indent=2)+'\n')
    print(json.dumps(dict(boxes=q['source_count'],roots=len(q['roots']))))
if __name__=='__main__': main()
