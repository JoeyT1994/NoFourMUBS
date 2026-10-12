"""First bounded coefficient checks for the one active sum-numerator route.

Only an intermediate product is expanded. The existing numerator is untouched;
the existing binary coefficient checker must validate this untrusted data.
The pilot checks are retained for the full stage, never regenerated as proofs.
"""
from pathlib import Path
import hashlib
import json

from diagnose_nonzero_sum_dag import values
from prepare_nonzero_moment_clearing import integer_coefficients
from prepare_nonzero_polynomial_checks import DC, C, IR
from reuse_preflight import require_reuse_review

ROOT=Path(__file__).resolve().parent.parent
AUDIT=ROOT/'audit'
OUT=ROOT/'lean/NoFourMUBs/Step2/CriticalZero/SumClearing'
BASE='NoFourMUBs.Step2.CriticalZero.SumClearing.'
NS='NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages'
EX='NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions'
CA='CriticalZeroSumAssembly20261003.CoefficientAt'


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    review=json.loads((AUDIT/'CRITICAL_NONZERO_SUM_STAGE_REUSE_REVIEW.json').read_text())
    for path,digest in review['source_pins'].items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest
    audited=json.loads((AUDIT/'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_DAG_STATUS.json').read_text())
    assert audited['status']=='PASS'
    for path,digest in audited['source_hashes'].items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    i=20
    dag,polys,lengths=values(i+1)
    node=dag['nodes'][i];assert node['kind']=='mul'
    scale,rows=integer_coefficients(polys[i]);assert scale==1
    rows += [[] for _ in range(lengths[i]-len(rows))]
    assert len(rows)==lengths[i]
    left,right=f'{EX}.e{node["a"]:04d}',f'{EX}.e{node["b"]:04d}'
    records=[];endpoints=[]
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace {NS}
'''
    def save(name,source):
        p=OUT/(name+'.lean');assert not p.exists(),p
        p.write_text(source+'\nend '+NS+'\n')
        records.append({'module':BASE+name,'active_path':str(p.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,'review':'CRITICAL_NONZERO_SUM_STAGE_REUSE_REVIEW.json'})
    source=header([BASE+'Expressions00','NoFourMUBs.Reuse.Archive.CriticalZeroSumBinaryCertificate'])
    parts=[]
    for start in range(0,len(rows),8):
        name=f'n0020_part{start//8:02d}';parts.append(name)
        source+=f'def {name} : List {DC}.XY := '+json.dumps(rows[start:start+8],separators=(',',':'))+'\n'
    source+=f'def n0020 : List {DC}.XY := '+' ++ '.join(parts)+'\n'
    source+=f'''theorem n0020_length : n0020.length = {len(rows)} := by rfl
theorem n0020_product_length : ({DC}.mul {left} {right}).length = n0020.length := by rfl
'''
    endpoints += [NS+'.n0020_length',NS+'.n0020_product_length']
    save('Stage0000Data',source)
    selected=[0,23,35,69]
    for j in selected:
        source=header([BASE+'Stage0000Data'])
        name=f'n0020_coefficient_{j:03d}'
        source+=f'''theorem {name} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt {left} {right} {j})
      ({C}.neg2 (n0020.getD {j} []))) = true := by rfl
#print axioms {name}
'''
        endpoints.append(NS+'.'+name)
        save(f'Stage0000Check{j:03d}',source)
    source=header([BASE+f'Stage0000Check{j:03d}' for j in selected])
    save('Stage0000Pilot',source)
    manifest={'scope':'critical_nonzero_raw_clearing','records':records,'axiom_endpoints':endpoints,
              'status':'PREPARED_NOT_COMPILED','node':i,'expected_coefficients':len(rows),
              'selected_coefficients':selected,'nonzero_terms':len(polys[i]),
              'dependency_audits':['KERNEL_AUDIT_CRITICAL_NONZERO_SUM_DAG_STATUS.json'],
              'raw_numerator_identity_claimed':False,'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_SUM_STAGE_PILOT_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'coefficients':selected,'total_stage_coefficients':len(rows)}))


if __name__=='__main__':main()
