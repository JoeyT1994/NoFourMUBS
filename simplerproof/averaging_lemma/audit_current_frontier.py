"""Exact current-partition audit, including all overlays and conjugate pairs."""
from pathlib import Path
import json,gzip,hashlib
HERE=Path(__file__).resolve().parent
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def run():
    progress=json.loads((HERE/'CURRENT_PROGRESS.json').read_text());references=0
    for name,h in {**progress['reports'],**progress['new_receipts']}.items():
        assert digest(HERE/name)==h
        receipt=json.loads((HERE/name).read_text())
        for field in ['sources','inputs','outputs']:
            for path,v in receipt.get(field,{}).items():
                if isinstance(v,str) and len(v)==64:
                    target=HERE/path
                    if not target.is_file():target=Path(path)
                    assert target.is_file() and digest(target)==v,(name,path)
                    references+=1
    with gzip.open(HERE/'global_scalar24_closed.jsonl.gz','rt') as f:closed=[json.loads(x)['path'] for x in f]
    with gzip.open(HERE/'global_scalar24_open.jsonl.gz','rt') as f:base=[json.loads(x)['path'] for x in f]
    extra=list(json.loads((HERE/'global_dual_extension.json').read_text())['removed_parents'])
    for name in ['global_complementary_extension.json','global_positive_extension.json','global_scalar_regions_extension.json','global_conjugation_extension.json']:
        extra.extend(r['path'] for r in json.loads((HERE/name).read_text())['excluded'])
    extra+=json.loads((HERE/'global_j_localizing_extension.json').read_text())['removed_parents']
    assert len(extra)==len(set(extra)) and set(extra)<=set(base)
    opened=set(base)-set(extra);closed+=extra
    assert len(closed)==progress['closed'] and len(opened)==progress['open']
    whole=sorted(closed+list(opened));assert len(whole)==len(set(whole))
    assert all(not b.startswith(a) for a,b in zip(whole,whole[1:]))
    depth=max(map(len,whole));assert sum(2**(depth-len(p)) for p in whole)==2**depth
    with gzip.open(HERE/'j_localizing_representatives.jsonl.gz','rt') as f:reps=[json.loads(x) for x in f]
    mirror=lambda p:p.translate(str.maketrans('01','10'))
    assert all(r['partner']==mirror(r['path']) for r in reps)
    assert {p for r in reps for p in [r['path'],r['partner']]}==opened
    assert 2*len(reps)==len(opened) and len(reps)==progress['unresolved_conjugacy_classes']
    assert not progress['global_confinement_proved'] and len(opened)>0
    result=dict(status='PASS_EXACT_CURRENT_PARTITION',closed=len(closed),open=len(opened),unresolved_conjugacy_classes=len(reps),
        complete_partition_verified=True,all_stored_hashes_verified=True,referenced_files_checked=references,
        global_confinement_proved=False,source_sha256=digest(Path(__file__)))
    (HERE/'CURRENT_FRONTIER_AUDIT.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))

if __name__=='__main__':run()
