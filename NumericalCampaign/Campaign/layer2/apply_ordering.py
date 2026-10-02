"""Apply exact F exclusions to a prior ledger, pruning whole subtrees safely."""
import argparse,hashlib,json,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CampaignLayerCoverage'))
from ordering import exclude_F
from flint import ctx

def read(p):return list(map(json.loads,p.open())) if p.exists() else []
def write(p,rows):
    with p.open('x') as f:
        for row in rows:f.write(json.dumps(row)+'\n')
def main():
    p=argparse.ArgumentParser();p.add_argument('input',type=Path);p.add_argument('output',type=Path)
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False);ctx.prec=160
    changed=0;sources={};start=time.process_time()
    for src in sorted(a.input.iterdir()):
        if not src.is_dir() or not (src/'done.json').exists():continue
        dst=a.output/src.name;dst.mkdir()
        for name in ('header.json','done.json','second.jsonl'):
            (dst/name).write_bytes((src/name).read_bytes())
            sources[str(src/name)]=hashlib.sha256((src/name).read_bytes()).hexdigest()
        rows=read(src/'cover.jsonl');ordinary=[r for r in rows if 'path' not in r]
        kept={};pruned=[]
        for r in sorted((x for x in rows if 'path' in x),key=lambda x:(len(x['path']),x['path'])):
            path=tuple(r['path'])
            if any(path[:len(p)]==p for p in pruned):continue
            if r['status'] in ('open','split'):
                cert=exclude_F(r['theta'],[r['radius']]*4)
                if cert['ok']:
                    r=dict(r,status='F_out',method='arb_F_order',ordering_certificate=cert)
                    pruned.append(path);changed+=1
            kept[path]=r
        write(dst/'cover.jsonl',ordinary+list(kept.values()))
        for name in ('t2','sideleaf','replayed'):
            selected=[]
            for r in read(src/(name+'.jsonl')):
                key=tuple(r['path'])
                if key not in kept or kept[key]['method']=='arb_F_order':continue
                selected.append(r)
            write(dst/(name+'.jsonl'),selected)
        for name in ('cover.jsonl','t2.jsonl','sideleaf.jsonl','replayed.jsonl'):
            path=src/name
            if path.exists():sources[str(path)]=hashlib.sha256(path.read_bytes()).hexdigest()
    receipt=dict(changed_nodes=changed,cpu_seconds=time.process_time()-start,sources=sources,
        note='Provisional until audit.py --replay checks exact geometry and all acceptance engines')
    (a.output/'ordering_application.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print('New F exclusions:',changed,'CPU-s:',receipt['cpu_seconds'])

if __name__=='__main__':main()
