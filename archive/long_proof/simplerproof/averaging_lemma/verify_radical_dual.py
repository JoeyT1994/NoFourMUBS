"""Replay stored radical/conditioned certificates without running any solver.

Every row is checked afresh. A parent is accepted only when both signs
have verified exclusions on its entire closed cube. Failed rows stay open.
"""
import json,hashlib,time,gzip
from pathlib import Path
from flint import arb,ctx
from reconstruction_polynomials import combined_polynomials
from radical_dual import exact_polynomials as radical_polynomials
from conditioned_dual import exact_polynomials as conditioned_polynomials
from higher_support import taylor_support
from dual_parent_cover import guard
HERE=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    ctx.prec=160
    names=['radical_unresolved_pi64.json','conditioned_second_parent.json']
    polynomials={s:combined_polynomials(s) for s in [1,-1]};rows=[];success={};start=time.monotonic()
    for name in names:
        data=json.loads((HERE/name).read_text())
        for i,row in enumerate(data['rows']):
            path=row['path'];sg=row['sigma'];assert sg in [1,-1]
            assert len(path)%4==0 and set(path)<=set('01')
            den=2**(len(path)//4);assert row['radius']=='pi/'+str(den)
            nums=[2*int(path[j::4],2)+1-den for j in range(4)];h=arb.pi()/den
            g=guard(nums,den,h);assert g is not None
            factory=conditioned_polynomials if 'scalar_names' in row['proposal'] else radical_polynomials
            ps,shifts=factory(*polynomials[sg],row['proposal'])
            check=taylor_support(ps,nums,h,degree=5,denominator=den,hull_degree=3)
            rows.append(dict(input=name,index=i,path=path,sigma=sg,Tao_absence=g,
                positive_definite_dual_matrices_verified=True,diagonal_shifts=shifts,check=check))
            if check['verified']:success.setdefault(path,set()).add(sg)
            print(name,path,sg,check['support_upper_decimal'],flush=True)
    complete=sorted(p for p,s in success.items() if s=={-1,1})
    names_source=['verify_radical_dual.py','higher_support.py','verify_dual_witness.py','radical_dual.py',
        'conditioned_dual.py','scalar_bernstein.py','reconstruction_polynomials.py','dual_reconstruction.py','dual_parent_cover.py','seed_taylor.py']
    result=dict(status='CHECKED',scope='Independent finite parent certificates; not global confinement',global_confinement_proved=False,
        solver_used=False,fully_excluded_parents=complete,rows=rows,seconds=time.monotonic()-start,
        inputs={n:digest(HERE/n) for n in names},sources={n:digest(HERE/n) for n in names_source})
    (HERE/'dual_frontier_checks.json').write_text(json.dumps(result,indent=2)+'\n')
    base=json.loads((HERE/'global_scalar24_receipt.json').read_text())
    for n,h in base['outputs'].items():assert digest(HERE/n)==h
    with gzip.open(HERE/'global_scalar24_open.jsonl.gz','rt') as f:open_paths=[json.loads(line)['path'] for line in f]
    assert len(open_paths)==base['open'] and len(set(open_paths))==len(open_paths)
    removed=sorted(set(complete)&set(open_paths))
    extension=dict(status='PASS',scope='Overlay removing independently certified parents from global_scalar24',global_confinement_proved=False,
        removed_parents=removed,base_open=len(open_paths),remaining_open=len(open_paths)-len(removed),
        total_closed=base['total_closed']+len(removed),inputs={n:digest(HERE/n) for n in
            ['global_scalar24_receipt.json','global_scalar24_closed.jsonl.gz','global_scalar24_open.jsonl.gz','dual_frontier_checks.json']})
    (HERE/'global_dual_extension.json').write_text(json.dumps(extension,indent=2)+'\n')
    print(json.dumps(extension,indent=2),flush=True)
if __name__=='__main__':main()
