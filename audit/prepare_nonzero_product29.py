"""Pilot bounded checks of original node29 with paired denominator factors."""
import hashlib
import json

from diagnose_nonzero_sum_dag import values
from prepare_nonzero_moment_clearing import integer_coefficients
from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from reuse_preflight import require_reuse_review

CR='CriticalZeroSumAssembly20261003.CoefficientRow'


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    deps=['KERNEL_AUDIT_CRITICAL_NONZERO_SUM_PRODUCT0023_STATUS.json',
          'KERNEL_AUDIT_CRITICAL_NONZERO_PAIRED_DENOMINATOR_STATUS.json']
    pins={}
    for name in deps:
        d=json.loads((AUDIT/name).read_text());assert d['status']=='PASS'
        for p,h in (d['source_hashes']|d.get('dependency_source_hashes',{})).items():
            assert hashlib.sha256((ROOT/'lean'/p).read_bytes()).hexdigest()==h
            pins[p]=h
    D,P,L=values(30);scale,rows=integer_coefficients(P[29]);assert scale==1
    length=L[29];rows += [[] for _ in range(length-len(rows))]
    records=[];endpoints=[]
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace {NS}
'''
    def record(name,review='CRITICAL_NONZERO_PAIRED_DENOMINATOR_REUSE_REVIEW.json'):
        p=OUT/(name+'.lean')
        records.append({'module':BASE+name,'active_path':str(p.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,'review':review})
    def save(name,text):
        p=OUT/(name+'.lean');assert not p.exists(),p;p.write_text(text+'\nend '+NS+'\n');record(name)
    record('RowProduct','CRITICAL_NONZERO_ROW_PRODUCT_REUSE_REVIEW.json')
    endpoints.append(NS+'.product_eval_eq_of_coefficients')
    text=header([BASE+'Product0023'])
    parts=[]
    for start in range(0,length,8):
        name=f'n0029_part{start//8:02d}';parts.append(name)
        text+=f'def {name} : List {DC}.XY := '+json.dumps(rows[start:start+8],separators=(',',':'))+'\n'
    text+='def n0029 : List '+DC+'.XY := '+' ++ '.join(parts)+'\n'
    text+=f'''theorem n0029_length : n0029.length={length} := by rfl
theorem n0029_product_length : ({DC}.mul denPairZ5 n0023).length=n0029.length := by
  rw [{DC}.length_mul _ _ (by decide) (by decide)]
  rfl
'''
    endpoints += [NS+'.n0029_length',NS+'.n0029_product_length'];save('Product0029Data',text)
    text=header([BASE+'Product0029Data',BASE+'RowProduct'])
    text+=f'''theorem n0029_row_058_014 :
    {IR}.zeroI ({C}.add ({CR}.mulAtRow denPairZ5 n0023 58 14)
      ({C}.neg ((n0029.getD 58 []).getD 14 []))) = true := by rfl
#print axioms n0029_row_058_014
'''
    endpoints.append(NS+'.n0029_row_058_014')
    for n in [0,57]:
        text+=f'''theorem n0029_whole_{n:03d} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt denPairZ5 n0023 {n})
      ({C}.neg2 (n0029.getD {n} []))) = true := by rfl
#print axioms n0029_whole_{n:03d}
'''
        endpoints.append(NS+f'.n0029_whole_{n:03d}')
    save('Product0029Pilot',text)
    m={'scope':'critical_nonzero_raw_clearing','status':'PREPARED_NOT_COMPILED','records':records,
       'axiom_endpoints':endpoints,'dependency_audits':deps,
       'dependency_pins':[{'active_path':p,'active_sha256':h} for p,h in pins.items()],
       'node':29,'length':length,'row_bound':30,'retained_pilot_row':[58,14],
       'whole_coefficients':[0,57],'raw_numerator_identity_claimed':False,'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0029_PILOT_MANIFEST.json').write_text(json.dumps(m,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'same_original_node':29}))


if __name__=='__main__':main()
