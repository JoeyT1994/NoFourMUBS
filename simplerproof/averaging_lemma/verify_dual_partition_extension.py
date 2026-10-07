"""Audit the one-parent extension of the existing global partition.

This checks geometry, file binding and replay status. The mathematical
acceptance is established by the separate optimizer-free parent replay.
No assertion of completed global confinement is made.
"""
from pathlib import Path
from fractions import Fraction
import gzip,hashlib,json
HERE=Path(__file__).resolve().parent

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def main():
    base=json.loads((HERE/'global_taylor24_receipt.json').read_text())
    for name,digest in base['outputs'].items():assert sha(HERE/name)==digest
    proof=json.loads((HERE/'dual_parent_replay.json').read_text())
    assert proof['parent_closed'] and proof['partition_complete']
    assert not proof['solver_used'] and not proof['global_confinement_proved']
    for name,digest in proof['source_sha256'].items():assert sha(HERE/name)==digest
    parent=proof['parent'];paths=[];closed=0;open_paths=[]
    for name in ['global_taylor24_closed.jsonl.gz','global_taylor24_open.jsonl.gz']:
        with gzip.open(HERE/name,'rt') as f:
            pp=[json.loads(line)['path'] for line in f if line.strip()]
        paths+=pp
        if 'closed' in name:closed=len(pp)
        else:open_paths=pp
    assert open_paths.count(parent)==1
    assert len(open_paths)==base['open']
    paths.sort()
    assert all(set(p)<=set('01') for p in paths)
    assert all(not b.startswith(a) for a,b in zip(paths,paths[1:]))
    max_depth=max(map(len,paths))
    assert sum(2**(max_depth-len(p)) for p in paths)==2**max_depth
    children=[r['path'] for r in proof['rows']]
    assert len(set(children))==16 and all(r['closed'] for r in proof['rows'])
    assert all(p.startswith(parent) and len(p)==len(parent)+4 for p in children)
    remaining=[p for p in open_paths if p!=parent]
    volume=sum((Fraction(1,2**len(p)) for p in remaining),Fraction())
    receipt=dict(status='PASS',scope='One certified parent removed from a complete but still open global partition',
        global_confinement_proved=False,base_closed=closed,additional_closed_parents=1,
        total_closed_parents=closed+1,remaining_open=len(remaining),remaining_volume=str(volume),
        removed_parent=parent,exact_partition_verified=True,
        files={n:sha(HERE/n) for n in ['global_taylor24_receipt.json','global_taylor24_closed.jsonl.gz',
            'global_taylor24_open.jsonl.gz','dual_parent_complete.json','dual_parent_replay.json']},
        checker_sha256=sha(Path(__file__)))
    (HERE/'dual_partition_extension.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps(receipt,indent=2))
if __name__=='__main__':main()
