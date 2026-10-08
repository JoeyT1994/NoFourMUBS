"""Solver-free replay and optional integration of the complete J-matrix parent."""
from pathlib import Path
import json,hashlib,gzip,itertools,argparse
from flint import arb,ctx
from reconstruction_polynomials import combined_polynomials
from j_localizing import exact_combined
from j_localizing_dual import exact_polynomials,checked_support
from practical_scalar_regions import certificate
from dual_parent_cover import guard
HERE=Path(__file__).resolve().parent
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def mirror(s):return s.translate(str.maketrans('01','10'))

def replay():
    ctx.prec=192;assert certificate()['status']=='PASS_EXACT_SCALAR_REGION_CERTIFICATE'
    proof=json.loads((HERE/'j_localizing_parent_cover.json').read_text())
    for name,h in proof['sources'].items():assert digest(HERE/name)==h
    algebra=json.loads((HERE/'j_localizing_algebra_receipt.json').read_text())
    for name,h in algebra['sources'].items():assert digest(HERE/name)==h
    assert proof['complete'] and proof['exact_child_partition'] and not proof['scalars']
    parent=proof['parent'];children=[parent+''.join(b) for b in itertools.product('01',repeat=4)]
    assert sorted(proof['closed_children'])==children and not proof['pending_children']
    assert {(r['path'],r['sigma']) for r in proof['dual_rows']}=={(p,s) for p in children for s in [-1,1]}
    assert len(proof['dual_rows'])==32
    models={s:combined_polynomials(s) for s in [-1,1]};AJ=exact_combined();checked=[]
    for i,row in enumerate(proof['dual_rows']):
        path=row['path'];sg=row['sigma'];den=128;h=arb.pi()/den
        nums=[2*int(path[j::4],2)+1-den for j in range(4)];g=guard(nums,den,h);assert g is not None
        polys,shifts=exact_polynomials(*models[sg],AJ,row['proposal'])
        check=checked_support(polys,nums,h,degree=5,denominator=den,hull_degree=3)
        assert check['verified'],(path,sg,check)
        checked.append(dict(path=path,sigma=sg,check=check,dual_positive_definiteness_verified=True,Tao_absence=g))
        if (i+1)%4==0:print('Replayed',i+1,'/32',flush=True)
    files=['verify_j_parent_cover.py','j_localizing.py','j_localizing_dual.py','practical_scalar_regions.py','practical_scalar_regions.json','j_localizing_algebra_receipt.json','conditioned_dual.py','radical_dual.py','higher_support.py','verify_dual_witness.py','reconstruction_polynomials.py','dual_parent_cover.py']
    result=dict(status='PASS_COMPLETE_PARENT',global_confinement_proved=False,solver_used=False,
        parent=parent,children=children,both_signs_on_each_entire_child=True,exact_partition_verified=True,
        checked=checked,worst_support_upper=max(r['check']['support_upper_decimal'] for r in checked),
        inputs={'j_localizing_parent_cover.json':digest(HERE/'j_localizing_parent_cover.json')},
        sources={name:digest(HERE/name) for name in files})
    (HERE/'j_localizing_parent_replay.json').write_text(json.dumps(result,indent=2)+'\n')
    return result

def integrate(result):
    progress=json.loads((HERE/'CURRENT_PROGRESS.json').read_text())
    for name,h in {**progress['reports'],**progress['new_receipts']}.items():assert digest(HERE/name)==h
    prior=json.loads((HERE/'global_conjugation_extension.json').read_text())
    for name,h in prior['outputs'].items():assert digest(HERE/name)==h
    with gzip.open(HERE/'conjugation_representatives.jsonl.gz','rt') as f:reps=[json.loads(x)['path'] for x in f]
    assert progress['open']==2*len(reps) and progress['closed']==prior['total_closed']
    parent=result['parent'];assert parent in reps
    removed=[parent,mirror(parent)];remaining=[p for p in reps if p!=parent]
    assert len(remaining)==len(reps)-1
    out=HERE/'j_localizing_representatives.jsonl.gz'
    with gzip.open(out,'wt') as f:
        for p in remaining:f.write(json.dumps(dict(path=p,partner=mirror(p)))+'\n')
    extension=dict(status='PASS',global_confinement_proved=False,removed_parents=removed,
        base_open=progress['open'],new_closed=2,remaining_open=progress['open']-2,
        total_closed=progress['closed']+2,unresolved_conjugacy_classes=len(remaining),
        exact_partition_preserved=True,closure_of_reflected_parent_by_conjugation=True,
        inputs={name:digest(HERE/name) for name in ['global_conjugation_extension.json','j_localizing_parent_replay.json','conjugation_representatives.jsonl.gz']},
        outputs={out.name:digest(out)})
    (HERE/'global_j_localizing_extension.json').write_text(json.dumps(extension,indent=2)+'\n')
    progress['open']=extension['remaining_open'];progress['closed']=extension['total_closed']
    progress['unresolved_conjugacy_classes']=len(remaining)
    progress['reports']['global_j_localizing_extension.json']=digest(HERE/'global_j_localizing_extension.json')
    progress['new_receipts']['j_localizing_algebra_receipt.json']=digest(HERE/'j_localizing_algebra_receipt.json')
    progress['new_receipts']['j_localizing_parent_replay.json']=digest(HERE/'j_localizing_parent_replay.json')
    (HERE/'CURRENT_PROGRESS.json').write_text(json.dumps(progress,indent=2)+'\n')
    print('Integrated parent and conjugate; open',progress['open'],'classes',len(remaining),flush=True)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--integrate',action='store_true');args=ap.parse_args()
    result=replay()
    if args.integrate:integrate(result)
