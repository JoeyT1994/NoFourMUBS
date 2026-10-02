"""Fresh replay of supplied forests followed by exact real-frontier queries."""
import bootstrap
import argparse,json,platform,sys,time
from pathlib import Path
from predicate import VerifiedRegion,sha
from frontier_boxes import read_boxes,build_region

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--region',type=Path,required=True)
    p.add_argument('--forest',type=Path,action='append',required=True)
    p.add_argument('--boxes',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--precision',type=int,default=160)
    p.add_argument('--jobs',type=int,default=4)
    p.add_argument('--check-built-region',action='store_true',help='require region exactly rebuilt from this source list')
    a=p.parse_args()
    if a.output.exists(): p.error('fresh receipt required')
    if not 64<=a.precision<=4096: p.error('invalid precision')
    if a.jobs<1: p.error('positive jobs required')
    wall=time.monotonic(); cpu=time.process_time()
    from runtime import check as runtime_check
    runtime=runtime_check()
    from campaign_terminals import external_cpu_total
    ext=external_cpu_total()
    rows=list(read_boxes(a.boxes))
    if a.check_built_region:
        old=json.loads(a.region.read_text()); new=build_region(rows,old.get('grid'))
        if any(old.get(k)!=v for k,v in new.items()): raise ValueError('region/source geometry mismatch')
    from compiler_check import check as compiler_check
    compiler=compiler_check()
    verified=VerifiedRegion(a.region,a.forest,a.precision,a.jobs,a.output.with_suffix('.covers'))
    results=verified.certify_boxes(rows); accepted=sum(q['ok'] for q in results)
    receipt=dict(status='PASS' if accepted==len(rows) else 'INCOMPLETE',
        scope='listed real frontier only; padding may remain open',frontier_boxes=len(rows),
        accepted_boxes=accepted,unresolved_boxes=len(rows)-accepted,
        unresolved_indices=[i for i,q in enumerate(results) if not q['ok']],
        audited_roots=len(verified.audits),whole_roots_closed=sum(q['closed'] for q in verified.audits),
        input_hashes=verified.input_hashes,boxes_sha256=sha(a.boxes),inputs_sha256=sha(bootstrap.HERE/'INPUTS.json'),
        python=sys.version,runtime=runtime,platform=platform.platform(),compiler=compiler,jobs=a.jobs,
        audit_cpu_seconds=sum(q['cpu_seconds'] for q in verified.audits)+(verified.parallel_covers or {}).get('cpu_seconds',0),
        main_cpu_seconds=time.process_time()-cpu,parallel_covers=verified.parallel_covers,
        wall_seconds=time.monotonic()-wall,audits=verified.audits)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n')
    print(json.dumps({k:v for k,v in receipt.items() if k not in ('audits','unresolved_indices')},sort_keys=True))
    return 0 if receipt['status']=='PASS' else 2
if __name__=='__main__': sys.exit(main())
