"""Benchmark the direct interval F filter on already recorded hybrid nodes."""
import argparse,collections,hashlib,json,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CampaignLayerCoverage'))
from ordering import exclude_F
from flint import ctx

def main():
    p=argparse.ArgumentParser();p.add_argument('input',type=Path);p.add_argument('output',type=Path)
    a=p.parse_args();counts=collections.Counter();accepted=[];sources={};ctx.prec=96;start=time.process_time()
    for path in sorted(a.input.glob('*/cover.jsonl')):
        sources[str(path)]=hashlib.sha256(path.read_bytes()).hexdigest()
        for line in path.open():
            r=json.loads(line)
            if 'status' not in r:continue
            counts['nodes']+=1;res=exclude_F(r['theta'],[r['radius']]*4)
            if not res['ok']:continue
            counts['excluded']+=1;counts['old_'+r['method']]+=1
            accepted.append(dict(cell=r['cell'],path=r['path'],theta=r['theta'],radius=r['radius'],certificate=res))
    discovery_cpu=time.process_time()-start;ctx.prec=256;start=time.process_time()
    for r in accepted:assert exclude_F(r['theta'],[r['radius']]*4)['ok']
    result=dict(scope='Node-level F exclusions and performance evidence; not whole-parent closure',
        discovery_cpu_seconds=discovery_cpu,replay_cpu_seconds=time.process_time()-start,
        replay_precision=256,replay_status='PASS',counts=dict(counts),sources=sources,accepted=accepted)
    with a.output.open('x') as f:json.dump(result,f,indent=2);f.write('\n')
    print(json.dumps({k:v for k,v in result.items() if k not in ('sources','accepted')}))

if __name__=='__main__':main()
