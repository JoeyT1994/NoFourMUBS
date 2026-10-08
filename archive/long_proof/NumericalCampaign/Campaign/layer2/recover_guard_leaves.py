"""Attempt Arb-only recovery of failed guarded leaves in a NEW ledger."""
import argparse,concurrent.futures,json,shutil,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
from second_pass import certify_box,replay
from flint import arb,ctx
def attempt(r):
    ctx.prec=96;c=list(map(arb,r['theta']));h=[arb(r['radius'])]*4;start=time.process_time()
    cert=certify_box(c,h,max_depth=4,node_budget=31)
    if cert['ok']:
        ctx.prec=160;assert replay(list(map(arb,r['theta'])),[arb(r['radius'])]*4,cert)
    return dict(cell=r['cell'],path=r['path'],theta=r['theta'],radius=r['radius'],certificate=cert,
                replay160=cert['ok'],cpu_seconds=time.process_time()-start)
def main():
    p=argparse.ArgumentParser();p.add_argument('ledger',type=Path);p.add_argument('output',type=Path);a=p.parse_args()
    a.output.mkdir(parents=True,exist_ok=False);tasks=[]
    for folder in a.ledger.iterdir():
        if not folder.is_dir():continue
        for l in (folder/'cover.jsonl').open():
            r=json.loads(l)
            if r.get('method')=='guarded_replay_failed':tasks.append(r)
    results=[]
    with concurrent.futures.ProcessPoolExecutor(max_workers=2) as pool,(a.output/'attempts.jsonl').open('x') as f:
        for r in pool.map(attempt,tasks):results.append(r);f.write(json.dumps(r)+'\n');f.flush()
    ledger=a.output/'ledger';shutil.copytree(a.ledger,ledger)
    bycell={}
    for r in results:bycell.setdefault(r['cell'],[]).append(r)
    for folder in ledger.iterdir():
        if not folder.is_dir():continue
        cells=[json.loads(l)['cell'] for l in (folder/'second.jsonl').open()]
        with (folder/'sideleaf.jsonl').open('a') as f:
            for cid in cells:
                for r in bycell.get(cid,[]):f.write(json.dumps(r)+'\n')
    report=dict(attempted=len(results),accepted=sum(r['certificate']['ok'] for r in results),
                cpu_seconds=sum(r['cpu_seconds'] for r in results),scope='Independent Arb tests plus 160-bit replay; new full audit required')
    (a.output/'receipt.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report),flush=True)
if __name__=='__main__':main()
