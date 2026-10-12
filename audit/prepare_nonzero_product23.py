"""Normalize original DAG node23 using its shared paired denominator factor.

Reuses the already checked n0017 and the supplied binary checker. No old
product or final raw numerator is regenerated or re-proved.
"""
import hashlib
import json

from diagnose_nonzero_sum_dag import values
from prepare_nonzero_moment_clearing import integer_coefficients
from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    dependencies=['KERNEL_AUDIT_CRITICAL_NONZERO_PAIRED_DENOMINATOR_STATUS.json',
                  'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_STAGE0_STATUS.json']
    pins={}
    for name in dependencies:
        d=json.loads((AUDIT/name).read_text());assert d['status']=='PASS'
        for path,digest in (d['source_hashes']|d.get('dependency_source_hashes',{})).items():
            assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
            pins[path]=digest
    dag,polys,lengths=values(24)
    scale,rows=integer_coefficients(polys[23]);assert scale==1
    length=lengths[23];rows += [[] for _ in range(length-len(rows))]
    records=[];endpoints=[]
    def header(imports):
        return '\n'.join('import '+m for m in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace {NS}
'''
    def save(name,text):
        p=OUT/(name+'.lean');assert not p.exists(),p
        p.write_text(text+'\nend '+NS+'\n')
        records.append({'module':BASE+name,'active_path':str(p.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,'review':'CRITICAL_NONZERO_PAIRED_DENOMINATOR_REUSE_REVIEW.json'})
    text=header([BASE+'DenominatorPairs',BASE+'Stage0000Factors'])
    parts=[]
    for start in range(0,len(rows),8):
        name=f'n0023_part{start//8:02d}';parts.append(name)
        text+=f'def {name} : List {DC}.XY := '+json.dumps(rows[start:start+8],separators=(',',':'))+'\n'
    text+='def n0023 : List '+DC+'.XY := '+' ++ '.join(parts)+'\n'
    text+=f'''theorem n0023_length : n0023.length={length} := by rfl
theorem n0023_product_length : ({DC}.mul n0017 denPairY5).length=n0023.length := by
  rw [{DC}.length_mul _ _ (by decide) (by decide)]
  rfl
'''
    endpoints += [NS+'.n0023_length',NS+'.n0023_product_length']
    save('Product0023Data',text)
    modules=[]
    # Central coefficients first expose the largest required check early.
    order=sorted(range(length),key=lambda n:abs(n-length//2))
    for start in range(0,length,6):
        name=f'Product0023Check{start//6:02d}';modules.append(BASE+name)
        text=header([BASE+'Product0023Data'])
        for j in order[start:start+6]:
            proof=f'n0023_coefficient_{j:03d}'
            text+=f'''theorem {proof} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt n0017 denPairY5 {j})
      ({C}.neg2 (n0023.getD {j} []))) = true := by rfl
#print axioms {proof}
'''
            endpoints.append(NS+'.'+proof)
        save(name,text)
    text=header(modules+['Lean.Elab.Tactic.Omega'])
    text+=f'''theorem n0023_all (j : ℕ) (hj : j<n0023.length) :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt n0017 denPairY5 j)
      ({C}.neg2 (n0023.getD j []))) = true := by
  rw [n0023_length] at hj
  have hc : '''+' ∨ '.join(f'j={i}' for i in range(length))+''' := by omega
  rcases hc with '''+' | '.join('hj' for _ in range(length))+'\n'
    text+=''.join(f'  · subst j\n    exact n0023_coefficient_{j:03d}\n' for j in range(length))
    text+=f'''theorem n0023_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y n0023) = {EX}.v0023 X Y k := by
  have checked := {CA}.binary_eval_eq X Y k n0017 denPairY5 n0023
    n0023_product_length n0023_all
  simpa only [n0017_eval,denPairY5_eval,{EX}.v0023,{EX}.v0020,mul_assoc] using checked
#print axioms n0023_eval
'''
    endpoints += [NS+'.n0023_all',NS+'.n0023_eval'];save('Product0023',text)
    m={'scope':'critical_nonzero_raw_clearing','status':'PREPARED_NOT_COMPILED',
       'records':records,'axiom_endpoints':endpoints,'dependency_audits':dependencies,
       'dependency_pins':[{'active_path':p,'active_sha256':h} for p,h in pins.items()],
       'raw_numerator_identity_claimed':False,'atlas_certification':False,
       'coefficient_checks':length,'node':23,'scope_note':'The same original node23, using n0017 and the paired Y denominator. All padded coefficients retained.'}
    (AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0023_MANIFEST.json').write_text(json.dumps(m,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'coefficients':length}))


if __name__=='__main__':main()
