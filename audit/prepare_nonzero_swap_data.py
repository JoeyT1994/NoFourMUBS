"""Compare the existing two numerator tables; never regenerate their arrays."""
from pathlib import Path
import hashlib
import json
import re

from reuse_preflight import require_reuse_review

ROOT=Path(__file__).resolve().parent.parent
AUDIT=ROOT/'audit'
OUT=ROOT/'lean/NoFourMUBs/Step2/CriticalZero/ClearedMoments'
BASE='NoFourMUBs.Step2.CriticalZero.ClearedMoments.'
NS='NoFourMUBs.Step2.Critical.NonzeroClearing'
IR='CriticalZeroSplitReduction20261003.IntegerReflector'
DC='CriticalZeroSumAssembly20261003.DenseCoefficients'
C='CriticalZeroSplitReduction20261003.Coefficients'
CA='CriticalZeroSumAssembly20261003.CoefficientAt'


def header(imports):
    return '\n'.join('import '+BASE+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
noncomputable section
namespace {NS}
variable {{F : Type*}} [Field F] [CharZero F]
'''


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    pilot=json.loads((AUDIT/'CRITICAL_NONZERO_SWAP_DATA_PILOT_MANIFEST.json').read_text())
    status=json.loads((AUDIT/'CRITICAL_NONZERO_SWAP_DATA_PILOT_BUILD_STATUS.json').read_text())
    assert status['complete'] and status['returncode']==0
    records=list(pilot['records'])
    for r in records:
        assert hashlib.sha256((ROOT/'lean'/r['active_path']).read_bytes()).hexdigest()==r['active_sha256']
    endpoints=[NS+'.numerator_swap_a_22',NS+'.numerator_swap_b_23']
    sources={tag:(OUT/f'Data_{tag}.lean').read_text() for tag in ['p2_m4','p4_m2']}
    lengths={}
    definitions={}
    for comp in ['a','b']:
        definitions[comp]=[]
        for tag,source in sources.items():
            definitions[comp]+=re.findall(r'^def (numerator_'+tag+'_'+comp+r'_coefficients\w*) ',source,re.M)
            chunks=re.findall(r'^def numerator_'+tag+'_'+comp+r'_coefficients_\d+ : [^\n]+ := (\[[^\n]*\])$',source,re.M)
            assert chunks
            rows=[row for chunk in chunks for row in json.loads(chunk)]
            if comp in lengths:
                assert lengths[comp]==len(rows)
            lengths[comp]=len(rows)
    assert lengths=={'a':45,'b':40}

    def save(name,source):
        path=OUT/(name+'.lean');path.write_text(source+'\nend '+NS+'\n')
        rel=str(path.relative_to(ROOT/'lean'))
        records.append({'module':BASE+name,'active_path':rel,
                        'active_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
                        'local_model_adapter':True,'review':'CRITICAL_NONZERO_SWAP_REVIEW.json'})

    names=['SwapNumeratorPilot']
    for comp,length in lengths.items():
        pending=[n for n in range(length) if (comp,n) not in [('a',22),('b',23)]]
        for offset in range(0,len(pending),4):
            name=f'SwapNumerator{comp.upper()}{offset//4:02d}'
            names.append(name)
            source=header(['SwapNumeratorPilot'])
            for n in pending[offset:offset+4]:
                left=f'{IR}.evalII X Y (numerator_p4_m2_{comp}_coefficients.getD {n} [])'
                right=f'{IR}.evalII Y X (numerator_p2_m4_{comp}_coefficients.getD {n} [])'
                if comp=='b':
                    left='X*('+left+')';right='Y*('+right+')'
                theorem=f'numerator_swap_{comp}_{n:02d}'
                source+=f'''theorem {theorem} (X Y : F) :
    {left} = {right} := by
  simp only [{', '.join(definitions[comp])}, List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    {IR}.evalII,{IR}.evalI,Int.cast_ofNat,Int.cast_neg,
    Int.cast_zero,Int.cast_one,mul_zero,zero_mul,add_zero,zero_add,mul_one,one_mul]
  <;> ring
#print axioms {theorem}
'''
                endpoints.append(NS+'.'+theorem)
            save(name,source)

    source=header(names).replace('set_option autoImplicit false',
        'import Lean.Elab.Tactic.Omega\nset_option autoImplicit false',1)
    for comp,length in lengths.items():
        left=f'{IR}.evalII X Y (numerator_p4_m2_{comp}_coefficients.getD n [])'
        right=f'{IR}.evalII Y X (numerator_p2_m4_{comp}_coefficients.getD n [])'
        if comp=='b':
            left='X*('+left+')';right='Y*('+right+')'
        source+=f'''theorem numerator_swap_{comp}_all (X Y : F) (n : ℕ) (hn : n < {length}) :
    {left} = {right} := by
'''
        source+='  have hc : '+' ∨ '.join(f'n = {n}' for n in range(length))+' := by omega\n'
        source+='  rcases hc with '+' | '.join('he' for _ in range(length))+'\n'
        source+=''.join(f'  · subst n\n    exact numerator_swap_{comp}_{n:02d} X Y\n' for n in range(length))
    source+=f'''
theorem numerator_p4_m2_a_swap (X Y k : F) :
    numerator_p4_m2_a X Y k = numerator_p2_m4_a Y X k := by
  have he := {CA}.list_eq_of_getD
    ({DC}.interpret X Y numerator_p4_m2_a_coefficients)
    ({DC}.interpret Y X numerator_p2_m4_a_coefficients) (by rfl) (by
      intro n hn
      change n < 45 at hn
      simp only [{DC}.interpret_getD]
      exact numerator_swap_a_all X Y n hn)
  exact congrArg (fun a : F => a/4) (congrArg ({C}.eval k) he)

theorem numerator_p4_m2_b_swap (X Y k : F) :
    X*numerator_p4_m2_b X Y k = Y*numerator_p2_m4_b Y X k := by
  have he := {CA}.list_eq_of_getD
    ({C}.scale X ({DC}.interpret X Y numerator_p4_m2_b_coefficients))
    ({C}.scale Y ({DC}.interpret Y X numerator_p2_m4_b_coefficients)) (by rfl) (by
      intro n hn
      change n < 40 at hn
      simp only [{CA}.getD_scale,{DC}.interpret_getD]
      exact numerator_swap_b_all X Y n hn)
  have hv := congrArg ({C}.eval k) he
  simp only [{C}.eval_scale] at hv
  simpa only [numerator_p4_m2_b,numerator_p2_m4_b,mul_div_assoc] using
    congrArg (fun a : F => a/2) hv

#print axioms numerator_p4_m2_a_swap
#print axioms numerator_p4_m2_b_swap
'''
    endpoints += [NS+'.numerator_p4_m2_a_swap',NS+'.numerator_p4_m2_b_swap']
    save('SwapNumerator',source)
    manifest={'scope':'critical_nonzero_raw_clearing','records':records,
              'status':'PREPARED_NOT_COMPILED','axiom_endpoints':endpoints,
              'existing_coefficient_counts':lengths,'new_numerator_arrays':False,
              'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_SWAP_DATA_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'coefficient_comparisons':sum(lengths.values()),'reused_pilot':2}))


if __name__=='__main__':
    main()
