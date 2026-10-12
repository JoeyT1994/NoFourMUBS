"""Replace one unverified oversized expansion by its existing sum coordinate.

The same931term table is retained. Its31coefficient identities use the existing
list interpreter; the compact value is the same table at X=0, not new data.
"""
import hashlib
import json
import re

from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    mf=AUDIT/'CRITICAL_NONZERO_PAIRED_DENOMINATOR_MANIFEST.json'
    m=json.loads(mf.read_text());b=json.loads((AUDIT/'CRITICAL_NONZERO_PAIRED_DENOMINATOR_BUILD_STATUS.json').read_text())
    assert not b['complete'] and b['failure_returncode']!=0
    source_path=OUT/'DenominatorPairZ.lean';original=source_path.read_text()
    retired=AUDIT/'retired_attempts';retired.mkdir(exist_ok=True)
    p=retired/'DenominatorPairZ_unsplit_unverified.lean.txt';assert not p.exists();p.write_text(original)
    (retired/'DENOMINATOR_PAIRS_UNSPLIT_BUILD_STATUS.json').write_text(json.dumps(b,indent=2)+'\n')
    scalar_defs=re.search(r'dsimp only \[([^\]]+)\]',original).group(1)
    parts=re.findall(r'^def (denPairZ5_part\d+)',(OUT/'DenominatorPairsData.lean').read_text(),re.M)
    records=m['records'];endpoints=m['axiom_endpoints']
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace {NS}
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
'''
    def save(name,text,replace=False):
        p=OUT/(name+'.lean')
        if not replace:assert not p.exists(),p
        p.write_text(text+'\nend '+NS+'\n')
        record={'module':BASE+name,'active_path':str(p.relative_to(ROOT/'lean')),
                'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                'local_model_adapter':True,'review':'CRITICAL_NONZERO_PAIRED_DENOMINATOR_REUSE_REVIEW.json'}
        if replace:records[next(i for i,r in enumerate(records) if r['module']==BASE+name)]=record
        else:records.append(record)
    zero=original.replace('theorem denPairZ5_eval (X Y k : ℂ)',
                          'theorem denPairZ5_zero_eval (Y k : ℂ)')
    zero=zero.replace(DC+'.interpret X Y denPairZ5',DC+'.interpret 0 Y denPairZ5')
    zero=zero.replace(EX+'.v0025 X Y k',EX+'.v0025 0 Y k').replace(EX+'.v0028 X Y k',EX+'.v0028 0 Y k')
    zero=zero.replace('#print axioms denPairZ5_eval','#print axioms denPairZ5_zero_eval')
    zero=zero.rsplit('\nend '+NS,1)[0]
    save('DenominatorPairZZero',zero);endpoints.append(NS+'.denPairZ5_zero_eval')
    modules=[]
    for start in range(0,31,4):
        name=f'DenominatorPairZShift{start//4:02d}';modules.append(BASE+name)
        text=header([BASE+'DenominatorPairsData'])
        for j in range(start,min(start+4,31)):
            proof=f'denPairZ5_shift_coefficient_{j:03d}'
            text+=f'''theorem {proof} (X Y : ℂ) :
    {IR}.evalII X Y (denPairZ5.getD {j} []) =
      {IR}.evalII 0 (X+Y) (denPairZ5.getD {j} []) := by
  simp only [denPairZ5,{','.join(parts)},List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    {IR}.evalII,{IR}.evalI,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms {proof}
'''
            endpoints.append(NS+'.'+proof)
        save(name,text)
    text=header(modules+['Lean.Elab.Tactic.Omega'])
    text+=f'''theorem denPairZ5_shift (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y denPairZ5) =
      {C}.eval k ({DC}.interpret 0 (X+Y) denPairZ5) := by
  apply congrArg ({C}.eval k)
  apply {CA}.list_eq_of_getD
  · simp only [{DC}.interpret_length]
  · intro j hj
    have hj' : j<31 := by simpa only [{DC}.interpret_length,denPairZ5_length] using hj
    rw [{DC}.interpret_getD,{DC}.interpret_getD]
    have hc : '''+' ∨ '.join(f'j={j}' for j in range(31))+''' := by omega
    rcases hc with '''+' | '.join('hj' for _ in range(31))+'\n'
    text+=''.join(f'    · subst j\n      exact denPairZ5_shift_coefficient_{j:03d} X Y\n' for j in range(31))
    text+='#print axioms denPairZ5_shift\n'
    save('DenominatorPairZShift',text);endpoints.append(NS+'.denPairZ5_shift')
    text=header([BASE+'DenominatorPairZZero',BASE+'DenominatorPairZShift'])
    text+=f'''theorem denPairZ5_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y denPairZ5) = {EX}.v0025 X Y k * {EX}.v0028 X Y k := by
  have hp : {EX}.v0024 0 (X+Y) k={EX}.v0024 X Y k := by
    dsimp only [{scalar_defs}]
    ring
  have hm : {EX}.v0027 0 (X+Y) k={EX}.v0027 X Y k := by
    dsimp only [{scalar_defs}]
    ring
  rw [denPairZ5_shift,denPairZ5_zero_eval]
  simp only [{EX}.v0025,{EX}.v0028,hp,hm]
#print axioms denPairZ5_eval
'''
    save('DenominatorPairZ',text,replace=True)
    m['status']='PREPARED_SPLIT_ONLY_FAILED_Z_PROOF';m['unchanged_data']=True
    mf.write_text(json.dumps(m,indent=2)+'\n')
    p=AUDIT/'CRITICAL_NONZERO_PAIRED_DENOMINATOR_REUSE_REVIEW.json';r=json.loads(p.read_text())
    r['failed_attempt']='Full three-variable ring expansion for Z was terminated with exit137. Data and passed Y proof retained; unverified source preserved in retired_attempts.'
    r['split_argument']='The existing third factors depend on X+Y. Reuse the931term table at X=0 for a compact two-variable ring check, then check its31coefficient shift identities with existing evaluation and list soundness. No new arrays.'
    p.write_text(json.dumps(r,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'old_data_unchanged':True}))


if __name__=='__main__':main()
