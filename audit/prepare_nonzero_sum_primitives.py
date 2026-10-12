"""Bind existing numerator values to the existing dense checker.

Large tables and base factors are referenced, not regenerated. The smaller
tables are copies of pinned existing values, untrusted until the scalar
bindings compile. No moment discovery, raw numerator, or atlas work.
"""
from pathlib import Path
import hashlib
import json

from prepare_nonzero_moment_clearing import CTX, integer_coefficients, fmpq_mpoly
from prepare_nonzero_polynomial_checks import DC, C, IR
from reuse_preflight import require_reuse_review

ROOT=Path(__file__).resolve().parent.parent
AUDIT=ROOT/'audit'
OUT=ROOT/'lean/NoFourMUBs/Step2/CriticalZero/SumClearing'
BASE='NoFourMUBs.Step2.CriticalZero.SumClearing.'
NS='NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing'
P2='NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4'


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    review=json.loads((AUDIT/'CRITICAL_NONZERO_SUM_PRIMITIVE_REUSE_REVIEW.json').read_text())
    for path,digest in review['source_pins'].items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest
    candidates=json.loads((AUDIT/'CRITICAL_NONZERO_PAIRED_COEFFICIENT_CANDIDATES.json').read_text())['records']
    scales=json.loads((AUDIT/'CRITICAL_NONZERO_SUM_CLEARING_EXPRESSIONS.json').read_text())['scales']
    factors={'two':(3,'(2 : ℂ)'), 'X':(1,'X'), 'Y':(0,'Y'), 'k':(10,'k'),
             'H':(12,'h k'),'FXp':(6,'plusFactor X k'),'FXm':(141,'minusFactor X k'),
             'FYp':(64,'plusFactor Y k'),'FYm':(146,'minusFactor Y k'),
             'FZp':(62,'thirdPlusFactor X Y k'),'FZm':(144,'thirdMinusFactor X Y k')}
    records=[];endpoints=[];bindings={}
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace {NS}
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
'''
    def save(name,source):
        p=OUT/(name+'.lean');assert not p.exists(),p
        p.write_text(source+'\nend '+NS+'\n');rel=str(p.relative_to(ROOT/'lean'))
        records.append({'module':BASE+name,'active_path':rel,'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'local_model_adapter':True,'review':'CRITICAL_NONZERO_SUM_PRIMITIVE_REUSE_REVIEW.json'})
    source=header([BASE+'Base','NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4'])
    for key,(i,scalar) in factors.items():
        name='factor_'+key
        source+=f'''abbrev {name} := {P2}.e{i:03d}
theorem {name}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y {name}) = {scalar} :=
  {P2}.e{i:03d}_eval X Y k
'''
        endpoints.append(NS+'.'+name+'_eval')
        bindings[key]={'dense':name,'eval':name+'_eval','reused_node':i}
    save('PrimitiveFactors',source)
    for tag,record in candidates.items():
        source=header([BASE+'PrimitiveFactors'])
        for component in ['a','b']:
            key=tag+'_'+component;name='primitive_'+key;scale=scales[key]
            if tag in ['p2_m4','p2_p2','p4_m2']:
                source+=f'''abbrev {name} := numerator_{key}_coefficients
theorem {name}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y {name}) = integerNumerator_{key} X Y k := by
  have scale (a : ℂ) : a = {scale}*(a/{scale}) := by ring
  exact scale _
'''
                reused=True
            else:
                value=fmpq_mpoly(record[component]['numerator'],CTX)
                checked_scale,rows=integer_coefficients(value);assert checked_scale==scale
                parts=[]
                for offset in range(0,len(rows),8):
                    part=name+f'_part{offset//8:02d}';parts.append(part)
                    source+=f'def {part} : List {DC}.XY := '+json.dumps(rows[offset:offset+8],separators=(',',':'))+'\n'
                source+=f'def {name} : List {DC}.XY := '+' ++ '.join(parts)+'\n'
                source+=f'''theorem {name}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y {name}) = integerNumerator_{key} X Y k := by
  simp only [{name},'''+','.join(parts)+f''',integerNumerator_{key},numerator_{key},
    List.cons_append,List.nil_append,{DC}.interpret,{C}.eval,{IR}.evalII,{IR}.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
'''
                reused=False
            source+=f'#print axioms {name}_eval\n'
            endpoints.append(NS+'.'+name+'_eval')
            bindings['N_'+key]={'dense':name,'eval':name+'_eval','reused_existing_dense_data':reused,'integer_scale':scale}
        save('Primitive_'+tag,source)
    source=header([BASE+'Primitive_'+tag for tag in candidates])
    save('Primitives',source)
    manifest={'scope':'critical_nonzero_raw_clearing','status':'PREPARED_NOT_COMPILED','records':records,'axiom_endpoints':endpoints,'atlas_certification':False,'large_data_reused':6,'smaller_value_format_adapters':30,'raw_numerator_identity_claimed':False}
    (AUDIT/'CRITICAL_NONZERO_SUM_PRIMITIVE_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    (AUDIT/'CRITICAL_NONZERO_SUM_PRIMITIVE_BINDINGS.json').write_text(json.dumps(bindings,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'existing_large_arrays_reused':6,'new_moment_values':False}))


if __name__=='__main__':main()
