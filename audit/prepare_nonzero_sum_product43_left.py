"""Check and share the linear input to the first large numerator product."""
import hashlib
import json

from diagnose_nonzero_sum_dag import values
from prepare_nonzero_moment_clearing import integer_coefficients
from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    dag,polys,lengths,old=values(42,include_old=True)
    p=polys[41]
    matches={'old':[j for j,q in enumerate(old) if q==p],
             'earlier_sum_nodes':[j for j,q in enumerate(polys[:41]) if q==p]}
    assert not any(matches.values()),matches
    path=AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0043_PILOT_MANIFEST.json'
    original=json.loads(path.read_text());retired=AUDIT/'retired_attempts'
    (retired/'SUM_PRODUCT0043_BEFORE_INPUT_SHARING_MANIFEST.json').write_text(path.read_text())
    (retired/'SUM_PRODUCT0043_BEFORE_INPUT_SHARING_BUILD_STATUS.json').write_text((AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0043_PILOT_BUILD_STATUS.json').read_text())
    records=original['records'][:1];endpoints=original['axiom_endpoints'][:2]
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
noncomputable section
namespace {NS}
'''
    def save(name,source):
        p=OUT/(name+'.lean');assert not p.exists(),p
        p.write_text(source+'\nend '+NS+'\n')
        record={'module':BASE+name,'active_path':str(p.relative_to(ROOT/'lean')),
                'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                'local_model_adapter':True,'review':'CRITICAL_NONZERO_SUM_PRODUCT0043_REUSE_REVIEW.json'}
        records.append(record)
    scale,rows=integer_coefficients(p);assert scale==1
    rows += [[] for _ in range(lengths[41]-len(rows))]
    source=header([BASE+'Expressions00'])
    parts=[]
    for start in range(0,len(rows),8):
        part=f'n0041_part{start//8:02d}';parts.append(part)
        source+=f'def {part} : List {DC}.XY := '+json.dumps(rows[start:start+8],separators=(',',':'))+'\n'
    source+=f'def n0041 : List {DC}.XY := '+' ++ '.join(parts)+'\n'
    source+=f'''def n0041_residual : List {DC}.XY :=
  {DC}.add {EX}.e0041 ({DC}.neg n0041)
theorem n0041_residual_length : n0041_residual.length = {len(rows)} := by rfl
'''
    endpoints.append(NS+'.n0041_residual_length')
    save('Product0043LeftData',source)
    modules=[]
    for start in range(0,len(rows),5):
        name=f'Product0043LeftCheck{start//5:02d}';modules.append(BASE+name)
        source=header([BASE+'Product0043LeftData'])
        for j in range(start,min(start+5,len(rows))):
            namej=f'n0041_coefficient_{j:03d}'
            source+=f'''theorem {namej} :
    {IR}.zeroII (n0041_residual.getD {j} []) = true := by rfl
#print axioms {namej}
'''
            endpoints.append(NS+'.'+namej)
        save(name,source)
    source=header(modules+['Lean.Elab.Tactic.Omega'])
    source+=f'''theorem n0041_all (j : ℕ) (hj : j < n0041_residual.length) :
    {IR}.zeroII (n0041_residual.getD j []) = true := by
  rw [n0041_residual_length] at hj
  have hc : '''+' ∨ '.join(f'j = {n}' for n in range(len(rows)))+''' := by omega
  rcases hc with '''+' | '.join('hj' for _ in rows)+'\n'
    source+=''.join(f'  · subst j\n    exact n0041_coefficient_{j:03d}\n' for j in range(len(rows)))
    source+=f'''theorem n0041_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y n0041) = {EX}.v0041 X Y k := by
  have hz := {C}.eval_allZero k _ ({DC}.allZero_of_certificates X Y n0041_residual n0041_all)
  simp only [n0041_residual,{DC}.interpret_add,{DC}.interpret_neg,
    {C}.eval_add,{C}.eval_neg,{EX}.e0041_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm
#print axioms n0041_eval
'''
    endpoints += [NS+'.n0041_all',NS+'.n0041_eval']
    save('Product0043Left',source)
    target=OUT/'Product0043Check044.lean'
    (retired/'Product0043Check044_before_input_sharing.lean.txt').write_text(target.read_text())
    source=header([BASE+'Product0043Data',BASE+'Product0043Left'])
    source+=f'''theorem n0043_coefficient_044 :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt n0041 {EX}.e0042 44)
      ({C}.neg2 (n0043.getD 44 []))) = true := by rfl
#print axioms n0043_coefficient_044
end {NS}
'''
    target.write_text(source)
    rec=original['records'][-1];rec['active_sha256']=hashlib.sha256(target.read_bytes()).hexdigest();records.append(rec)
    endpoints.append(NS+'.n0043_coefficient_044')
    original.update(records=records,axiom_endpoints=endpoints,status='PREPARED_SHARED_INPUT_NOT_COMPILED',
                    left_expression='n0041',shared_input_node=41)
    path.write_text(json.dumps(original,indent=2)+'\n')
    path=AUDIT/'CRITICAL_NONZERO_SUM_PRODUCT0043_REUSE_REVIEW.json';review=json.loads(path.read_text())
    review['shared_input']={'node':41,'terms':len(p),'coefficient_checks':len(rows),'equal_polynomial_matches':matches,
                           'reason':'Avoid repeated expansion of a linear combination of existing numerator arrays inside every convolution coefficient. Existing target and passed data receipt retained.'}
    path.write_text(json.dumps(review,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'shared_input_coefficient_checks':len(rows)}))


if __name__=='__main__':main()
