"""Reuse checked nodes 58/68 and the original numerator swap for node 69.

Only the previously unprepared intermediate table is emitted. The original
numerator and every through-68 source stay unchanged. Integer arithmetic is
untrusted input to the existing Lean coefficient checker, never a proof.
"""
from pathlib import Path
import hashlib
import json

from diagnose_nonzero_sum_dag import values
from prepare_nonzero_moment_clearing import integer_coefficients, CTX
from prepare_nonzero_polynomial_checks import DC, C, IR
from prepare_nonzero_sum_stage_pilot import ROOT, AUDIT, OUT, BASE, NS, EX
from reuse_preflight import require_reuse_review

SC = 'NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.SwapCoefficients'
S = 'NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing'
REVIEW = 'CRITICAL_NONZERO_SUM_SWAP_REUSE_REVIEW.json'
AUDITS = ['KERNEL_AUDIT_CRITICAL_NONZERO_SUM_REMAINING_STATUS_THROUGH0068.json',
          'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_SWAP_ADAPTER_STATUS.json']


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    require_reuse_review('critical_nonzero_sum_swap_reuse')
    pins = {}
    for name in AUDITS:
        receipt = json.loads((AUDIT/name).read_text())
        assert receipt['status'] == 'PASS'
        for p, h in (receipt['source_hashes'] | receipt.get('dependency_source_hashes', {})).items():
            assert digest(ROOT/'lean'/p) == h
            pins[p] = h
    _, polys, lengths = values(max_nodes=70)
    terms = polys[69].to_dict()
    assert all(e[1] >= 1 for e in terms)
    quotient = CTX.from_dict({(e[0], e[1]-1, e[2], e[3]): c for e, c in terms.items()})
    scale, rows = integer_coefficients(quotient)
    assert scale == 1
    rows += [[] for _ in range(lengths[69]-len(rows))]
    records, endpoints = [], []

    def header(imports):
        return ''.join('import '+m+'\n' for m in imports) + f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace {NS}
'''

    def save(name, text):
        p = OUT/(name+'.lean')
        text += '\nend '+NS+'\n'
        if p.exists():
            assert p.read_text() == text, f'Preserve existing source: {p}'
        else:
            p.write_text(text)
        records.append({'active_path': str(p.relative_to(ROOT/'lean')),
                        'active_sha256': digest(p), 'module': BASE+name,
                        'local_model_adapter': True, 'review': REVIEW})
        return BASE+name

    source = header([BASE+'Remaining0068', BASE+'SwapCoefficients', BASE+'Swap0069'])
    parts = []
    for i in range(0, len(rows), 8):
        part = f'n0069_quotient_part{i//8:02d}'
        parts.append(part)
        source += f'def {part} : List {DC}.XY := '+json.dumps(rows[i:i+8],separators=(',',':'))+'\n'
    source += f'def n0069_quotient : List {DC}.XY := '+' ++ '.join(parts)+'\n'
    source += f'''def n0069 : List {DC}.XY := {SC}.shiftY 1 n0069_quotient
def n0069SwapResidual : List {DC}.XY :=
  {DC}.add ({SC}.shiftY 3 n0069)
    ({DC}.add ({SC}.shiftX 2 ({SC}.swap r0068))
      ({DC}.shift 1 ({DC}.scale [[16]] ({SC}.shiftY 2 r0058))))
theorem n0069_length : n0069.length = {len(rows)} := by rfl
theorem n0069SwapResidual_length : n0069SwapResidual.length = {len(rows)} := by rfl
theorem n0069_eval_zero (X k : ℂ) :
    {C}.eval k ({DC}.interpret X 0 n0069) = 0 := by
  simp only [n0069,{SC}.interpret_shiftY,{C}.eval_scale,pow_one,zero_mul]
'''
    endpoints += [NS+'.'+s for s in ['n0069_length','n0069SwapResidual_length','n0069_eval_zero']]
    data = save('Reused0069Data', source)
    modules = []
    order = sorted(range(len(rows)), key=lambda n: abs(n-len(rows)//2))
    for i in range(0, len(order), 4):
        source = header([data])
        for n in order[i:i+4]:
            ep = f'n0069_swap_coefficient_{n:03d}'
            source += f'theorem {ep} : {IR}.zeroII (n0069SwapResidual.getD {n} []) = true := by rfl\n'
            endpoints.append(NS+'.'+ep)
        modules.append(save(f'Reused0069Check{i//4:02d}', source))
    source = header(modules+['Lean.Elab.Tactic.Omega'])
    source += f'''theorem n0069_swap_all (n : ℕ) (hn : n < n0069SwapResidual.length) :
    {IR}.zeroII (n0069SwapResidual.getD n []) = true := by
  rw [n0069SwapResidual_length] at hn
  have hc : '''+' ∨ '.join(f'n = {i}' for i in range(len(rows)))+' := by omega\n'
    source += '  rcases hc with '+' | '.join('he' for _ in rows)+'\n'
    source += ''.join(f'  · subst n\n    exact n0069_swap_coefficient_{i:03d}\n' for i in range(len(rows)))
    source += f'''theorem n0069_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y n0069) = {EX}.v0069 X Y k := by
  by_cases hY : Y = 0
  · subst Y
    rw [n0069_eval_zero,{S}.node0069_at_zero]
  have hz := {C}.eval_allZero k _
    ({DC}.allZero_of_certificates X Y n0069SwapResidual n0069_swap_all)
  simp only [n0069SwapResidual,{DC}.interpret_add,{SC}.interpret_shiftY,
    {SC}.interpret_shiftX,{SC}.interpret_swap,{DC}.interpret_shift,
    {DC}.interpret_scale,{C}.eval_add,{C}.eval_scale,{C}.eval_shift,
    {IR}.evalII,{IR}.evalI,Int.cast_ofNat,Int.cast_zero,
    mul_zero,add_zero,pow_one,r0068_eval,r0058_eval] at hz
  apply mul_left_cancel₀ (pow_ne_zero 3 hY)
  linear_combination hz - {S}.node0069_swap X Y k
'''
    entry = save('Reused0069', source)
    endpoints += [NS+'.n0069_swap_all',NS+'.n0069_eval']
    manifest = {'scope':'critical_nonzero_sum_swap_reuse','records':records,
                'axiom_endpoints':endpoints,'dependency_audits':AUDITS,
                'dependency_pins':[{'active_path':p,'active_sha256':h} for p,h in sorted(pins.items())],
                'last_entry_module':entry,'last_endpoint':NS+'.n0069_eval',
                'checked_nodes_reused':[58,68],'original_numerator_unchanged':True,
                'atlas_certification':False,'status':'PREPARED_NOT_COMPILED'}
    (AUDIT/'CRITICAL_NONZERO_SUM_REUSED0069_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'node':69,'status':'PREPARED_NOT_COMPILED'}))


if __name__ == '__main__':
    main()
