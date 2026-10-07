"""Exact conjugation closure and representatives of the current seed frontier.

Conjugation negates all four phases, preserves canonical modulus order,
M, and d_F, and sends a dyadic path to its bitwise complement.
This is an equivalence reduction; unresolved partners are NOT called closed.
"""
from pathlib import Path
import gzip,json,hashlib
HERE=Path(__file__).resolve().parent
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def mirror(p):return p.translate(str.maketrans('01','10'))

def run():
    progress=json.loads((HERE/'CURRENT_PROGRESS.json').read_text())
    for name,h in {**progress['reports'],**progress['new_receipts']}.items():assert digest(HERE/name)==h
    with gzip.open(HERE/'global_scalar24_closed.jsonl.gz','rt') as f:closed={json.loads(x)['path'] for x in f}
    closed.update(json.loads((HERE/'global_dual_extension.json').read_text())['removed_parents'])
    for name in ['global_complementary_extension.json','global_positive_extension.json','global_scalar_regions_extension.json']:
        closed.update(r['path'] for r in json.loads((HERE/name).read_text())['excluded'])
    with gzip.open(HERE/'global_scalar24_open.jsonl.gz','rt') as f:base=[json.loads(x)['path'] for x in f]
    opened=[s for s in base if s not in closed]
    assert len(opened)==progress['open'] and len(closed)==progress['closed']
    removed=[]
    for path in opened:
        reflected=mirror(path)
        matches=[reflected[:j] for j in range(len(reflected)+1) if reflected[:j] in closed]
        if matches:
            assert len(matches)==1
            removed.append(dict(path=path,closed_reflected_ancestor=matches[0]))
    excluded={r['path'] for r in removed};remaining=set(opened)-excluded
    assert len(excluded)==len(removed) and excluded<=set(opened)
    assert set(opened)==remaining|excluded and remaining.isdisjoint(excluded)
    assert all(mirror(s) in remaining and mirror(s)!=s for s in remaining)
    representatives=sorted(s for s in remaining if s>mirror(s))
    assert len(representatives)*2==len(remaining)
    assert {q for p in representatives for q in [p,mirror(p)]}==remaining
    out=HERE/'conjugation_representatives.jsonl.gz'
    with gzip.open(out,'wt') as f:
        for p in representatives:f.write(json.dumps(dict(path=p,partner=mirror(p)))+'\n')
    result=dict(status='PASS_EXACT_CONJUGATION_REDUCTION',global_confinement_proved=False,
        base_open=len(opened),new_closed=len(removed),remaining_open=len(remaining),
        total_closed=len(closed)+len(removed),unresolved_conjugacy_classes=len(representatives),
        exact_partition_preserved=True,unresolved_partners_not_counted_closed=True,excluded=removed,
        inputs={name:digest(HERE/name) for name in ['global_scalar24_closed.jsonl.gz','global_scalar24_open.jsonl.gz','global_dual_extension.json','global_complementary_extension.json','global_positive_extension.json','global_scalar_regions_extension.json']},
        sources={'conjugation_frontier.py':digest(Path(__file__))},
        outputs={out.name:digest(out)})
    (HERE/'global_conjugation_extension.json').write_text(json.dumps(result,indent=2)+'\n')
    progress['open']=len(remaining);progress['closed']=result['total_closed']
    progress['unresolved_conjugacy_classes']=len(representatives)
    progress['reports']['global_conjugation_extension.json']=digest(HERE/'global_conjugation_extension.json')
    (HERE/'CURRENT_PROGRESS.json').write_text(json.dumps(progress,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k not in ['inputs','sources','outputs','excluded']},indent=2))

if __name__=='__main__':run()
