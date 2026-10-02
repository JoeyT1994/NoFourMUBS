#!/usr/bin/env python3
"""Bounded, local 1000-box pilot; never launches a cluster or full-list run."""
import argparse, json, sys, time, platform
from pathlib import Path
from collections import Counter
from predicate import predicate, radius_for_level, library
HERE=Path(__file__).resolve().parent

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--project-root',type=Path,required=True);ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--mode',choices=['fast','root','bounded'],default='bounded')
    args=ap.parse_args();src=args.project_root/'ProvenResults/SymmetricSignedCornerPrune/data/sample_1000.json'
    rows=json.loads(src.read_text());assert len(rows)==1000
    baseline=[json.loads(l) for l in (args.project_root/'ProvenResults/SymmetricSignedCornerPrune/data/pilot_00000.jsonl').read_text().splitlines()]
    if args.output.exists():raise FileExistsError(args.output)
    if 'nofourmubs_rescaled_2026-09-30' in str(args.output.resolve()):raise ValueError('run-of-record writes prohibited')
    library();cpu0=time.process_time();wall=time.perf_counter();records=[]
    with args.output.open('w') as f:
        for i,row in enumerate(rows):
            start=time.process_time();rad=radius_for_level(row['level'])
            result=predicate(row['theta'],[rad]*4,extra=args.mode!='fast',seed_depth=8 if args.mode=='bounded' else 0)
            record=dict(index=i,mode=args.mode,source=row,seed_radii=[rad]*4,result=result,old_ok=baseline[i]['result']['ok'],cpu_seconds=time.process_time()-start)
            records.append(record);f.write(json.dumps(record,allow_nan=False)+'\n')
        f.flush()
    by={}
    for cls in sorted({x['source']['f6class'] for x in records}):
        rr=[x for x in records if x['source']['f6class']==cls]
        by[cls]=dict(n=len(rr),closed=sum(x['result']['ok'] for x in rr),old_closed=sum(x['old_ok'] for x in rr),new=sum(x['result']['ok'] and not x['old_ok'] for x in rr),lost=sum(x['old_ok'] and not x['result']['ok'] for x in rr),cpu_seconds=sum(x['cpu_seconds'] for x in rr))
    summary=dict(configuration=args.mode,n=1000,closed=sum(x['result']['ok'] for x in records),cpu_seconds=sum(x['cpu_seconds'] for x in records),driver_cpu_seconds=time.process_time()-cpu0,wall_seconds=time.perf_counter()-wall,by_class=by,platform=platform.platform(),mode='serial; warm compiled core; no cluster')
    summary['max_cpu_seconds']=max(x['cpu_seconds'] for x in records)
    for item in by.values(): item['mean_cpu_seconds']=item['cpu_seconds']/item['n']
    summary['mean_cpu_seconds']=summary['cpu_seconds']/1000
    (args.output.parent/(args.output.stem+'_summary.json')).write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary,indent=2))
if __name__=='__main__':main()
