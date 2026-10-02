"""Apply the proved side test to unresolved, already covered seed leaves.

The policy is deliberately bounded: no further seed subdivision, default
120 CPU seconds per original cell. Every success is replayed at 160 bits.
"""
import collections,json,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
from second_pass import certify_box,replay
from flint import ctx,arb

def main():
    folder=Path(sys.argv[1]);assert (folder/'done.json').exists()
    cap=float(sys.argv[2]) if len(sys.argv)>2 else 120.
    used=collections.defaultdict(float);ctx.prec=96
    t2={(r['cell'],tuple(r['path'])):r['result'] for r in map(json.loads,(folder/'t2.jsonl').open())}
    with (folder/'sideleaf.jsonl').open('x') as out:
        for r in map(json.loads,(folder/'cover.jsonl').open()):
            if r.get('status')!='open' or t2[(r['cell'],tuple(r['path']))] is not None:continue
            cid=r['cell'];start=time.process_time()
            if used[cid]>=cap:cert=dict(ok=False,reason='cell_cpu_limit')
            else:
                c=[arb(x) for x in r['theta']];h=[arb(r['radius'])]*4
                cert=certify_box(c,h,max_depth=0,node_budget=1)
                if cert['ok']:
                    ctx.prec=160;assert replay(c,h,cert);ctx.prec=96
            elapsed=time.process_time()-start;used[cid]+=elapsed
            out.write(json.dumps(dict(cell=cid,path=r['path'],theta=r['theta'],radius=r['radius'],
                certificate=cert,cpu_seconds=elapsed,replay160=cert['ok']))+'\n');out.flush()
    print('Side leaf pass',folder,dict(used),flush=True)

if __name__=='__main__':main()
