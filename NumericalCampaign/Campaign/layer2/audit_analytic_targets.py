"""Bind partial A/B/C certificates to frozen coordinates and audit coverage."""
import argparse,collections,hashlib,json,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/CampaignSecondPass'))
from second_pass import audit_partition
from fractions import Fraction as Q
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    p=argparse.ArgumentParser();p.add_argument('receipts',type=Path);p.add_argument('output',type=Path);a=p.parse_args()
    source=ROOT/'Verification/BranchLayer_2026-09-29a/layer2_inventory_20260929a/survivors.txt'
    assert sha(source)=='6e7ec2dc36d2ef1ef4802a51d1aabed85650357db16f1c6a7fd9542e2f4eaf68'
    expected={}
    for line in source.open():
        f=line.split();expected[int(f[0])]=(int(f[1]),int(f[2]),list(map(float,f[3:])))
    def bind(row):assert expected[row['cell']]==(row['job'],row['level'],row['theta'])
    opens=[];accepted=0;sources={};parents=[]
    for path in sorted((a.receipts/'target_A_refined6').glob('cell_*.jsonl')):
        meta=json.loads(path.with_suffix('.summary.json').read_text());bind(meta['input'])
        leaves=[json.loads(l) for l in path.open()];audit_partition(r['path'] for r in leaves)
        replaypath=a.receipts/'target_A_refined6_replay'/path.name
        replays=json.loads(replaypath.read_text());assert replays['source_sha256']==sha(path)
        want={(precision,r['path'],r['method']) for r in leaves if r['status']=='accepted' for precision in (96,160)}
        got={(r['precision'],r['path'],r['method']) for r in replays['replays']}
        assert len(got)==len(replays['replays']) and got==want
        assert all(r['certificate']['ok'] for r in replays['replays'])
        assert all(r['certificate']['reason'] in ('outside_D0','residual_tube') for r in replays['replays'] if r['method']=='residual_lift')
        accepted+=len(want)//2
        for r in leaves:
            if r['status']=='open':opens.append(dict(target='A',cell=meta['cell'],path=r['path'],root=meta['input'],
                reason=r['last_reason'],needed='Complete physical-D0 T2 lift for this F6 class at production width, or further rigorously covered refinement'))
        volume=sum((Q(1,2**len(r['path'])) for r in leaves if r['status']=='open'),Q())
        parents.append(dict(cell=meta['cell'],accepted=meta['accepted'],open=meta['open'],open_volume_fraction=str(volume)))
        sources[str(path)]=sha(path);sources[str(replaypath)]=sha(replaypath)
    assert len(parents)==6
    cparents=0;caccepted=0
    for path in sorted((a.receipts/'target_C_nearzero3_fullD0').glob('cell_*.jsonl')):
        meta=json.loads(path.with_suffix('.summary.json').read_text());bind(meta['input']);cparents+=1
        leaves=[json.loads(l) for l in path.open()];audit_partition(r['path'] for r in leaves)
        for r in leaves:
            if r['accepted']:
                successes=[t for t in r['attempts'] if t['certificate']['ok']]
                assert successes and all(t['replay160']['ok'] and t['replay160']['reason'] in ('outside_D0','residual_tube') for t in successes);caccepted+=1
            else:opens.append(dict(target='C',cell=meta['cell'],path=r['path'],root=meta['input'],
                reasons=[t['certificate']['reason'] for t in r['attempts']],
                needed='A complete moving-reference side cover/lift including R=0; strict-R exclusion alone is insufficient'))
        sources[str(path)]=sha(path)
    assert cparents==3
    gap=ROOT/'ProvenResults/CornerBounds/LocalBranchGap/data/nearzero10.json'
    data=json.loads(gap.read_text());bgaps=0
    for r in data['cells']:
        bind(r)
        if r['gap']:bgaps+=1
    assert bgaps==7
    report=dict(status='PASS_PARTIAL_COVERS_ONLY',inventory_scope='Historical coordinates; guarded ID migration pending',
                A_parents=parents,A_accepted_leaves=accepted,A_whole_parent_closures=0,
                B_positive_gap_boxes=bgaps,B_boxes=10,C_accepted_leaves=caccepted,C_boxes=cparents,
                open_leaves=len(opens),B_gap_source_sha256=sha(gap),source_hashes=sources)
    a.output.mkdir(parents=True,exist_ok=False)
    (a.output/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
    with (a.output/'open_analytic_leaves.jsonl').open('x') as f:
        for r in opens:f.write(json.dumps(r)+'\n')
    print(json.dumps({k:v for k,v in report.items() if k!='source_hashes'}))
if __name__=='__main__':main()
