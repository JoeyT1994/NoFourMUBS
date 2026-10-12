"""Stage the already reified p2_m4 expression with existing coefficient checks.

Intermediate arrays are untrusted until the original dense checker verifies
them. No original moment/raw numerator is recomputed or changed. This is a
resource refinement of one pending identity, not an alternative proof route.
"""
from pathlib import Path
import hashlib
import json
import sys

from prepare_nonzero_moment_clearing import CTX, integer_coefficients
from prepare_nonzero_polynomial_checks import DC, C, IR, CO, NS
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
OUT = ROOT / 'lean/NoFourMUBs/Step2/CriticalZero/ClearedMoments/PolynomialChecks'
BASE = 'NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.'


def header(imports):
    return '\n'.join('import '+BASE+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace {NS}
variable {{F : Type*}} [Field F] [CharZero F]
'''


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    dag_path = AUDIT/'CRITICAL_NONZERO_POLYNOMIAL_EXPRESSION_DAG.json'
    dag = json.loads(dag_path.read_text())
    nodes = dag['nodes']
    X, Y, k, _ = CTX.gens()
    polys, costs, cuts = [], [], []
    for i, n in enumerate(nodes):
        kind = n['kind']
        if kind == 'leaf':
            p = sum((int(c)*k**a*X**b*Y**v for a,row in enumerate(n['rows'])
                     for b,r in enumerate(row) for v,c in enumerate(r)), CTX.constant(0))
            cost = len(p)
        elif kind == 'neg':
            p = -polys[n['a']]
            cost = costs[n['a']]
        elif kind == 'pow':
            p = polys[n['a']]**n['exponent']
            cost = costs[n['a']]*n['exponent'] + len(polys[n['a']])**n['exponent']
        else:
            a, b = n['a'], n['b']
            pa, pb = polys[a], polys[b]
            p = {'add':lambda:pa+pb, 'sub':lambda:pa-pb, 'mul':lambda:pa*pb}[kind]()
            cost = costs[a]+costs[b]+(len(pa)*len(pb) if kind == 'mul' else len(p))
        polys.append(p)
        if cost > 20000:
            cuts.append(i)
            cost = len(p)
        costs.append(cost)

    records, endpoints, changed = [], [], set()

    def save(name, text):
        path = OUT/(name+'.lean')
        path.write_text(text+'\nend '+NS+'\n')
        rel = str(path.relative_to(ROOT/'lean'))
        records.append({'module':BASE+name, 'active_path':rel,
                        'active_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
                        'local_model_adapter':True,
                        'review':'CRITICAL_NONZERO_RAW_CLEARING_REVIEW.json'})

    def expression(i):
        n = nodes[i]
        kind = n['kind']
        if kind == 'leaf':
            return f'e{i:03d}', [f'e{i:03d}_eval']
        a = n['a']
        sa, ea = f's{a:03d}', f's{a:03d}_eval'
        if kind == 'neg':
            return f'{DC}.neg {sa}', [f'{DC}.interpret_neg',f'{C}.eval_neg',ea]
        if kind == 'pow':
            return f'{DC}.pow {sa} {n["exponent"]}', [f'{DC}.interpret_pow',f'{CO}.eval_pow',ea]
        b = n['b']
        sb, eb = f's{b:03d}',f's{b:03d}_eval'
        if kind == 'add':
            return f'{DC}.add {sa} {sb}', [f'{DC}.interpret_add',f'{C}.eval_add',ea,eb]
        if kind == 'sub':
            return f'{DC}.add {sa} ({DC}.neg {sb})', [f'{DC}.interpret_add',f'{DC}.interpret_neg',f'{C}.eval_add',f'{C}.eval_neg',ea,eb,'sub_eq_add_neg']
        return f'{DC}.mul {sa} {sb}', [f'{DC}.interpret_mul',f'{CO}.eval_mul',ea,eb]

    def definition(i, name):
        value, lemmas = expression(i)
        proof = 'simp only ['+', '.join(dict.fromkeys([name,f'v{i:03d}']+lemmas))+']'
        return f'''def {name} : List {DC}.XY := {value}
theorem {name}_eval (X Y k : F) :
    {C}.eval k ({DC}.interpret X Y {name}) = v{i:03d} X Y k := by
  {proof}
'''

    first = 0
    previous = 'P2M4'
    for stage, last in enumerate(cuts):
        name = f'P2M4Stage{stage:02d}'
        source = header([previous])
        for i in range(first, last):
            n = nodes[i]
            depends = any(n.get(key) in changed for key in ['a','b'])
            if depends:
                source += definition(i, f's{i:03d}')
                changed.add(i)
            else:
                source += f'''abbrev s{i:03d} := e{i:03d}
theorem s{i:03d}_eval (X Y k : F) :
    {C}.eval k ({DC}.interpret X Y s{i:03d}) = v{i:03d} X Y k := e{i:03d}_eval X Y k
'''
        scale, rows = integer_coefficients(polys[last])
        assert scale == 1 and len(rows) <= nodes[last]['length']
        rows += [[] for _ in range(nodes[last]['length']-len(rows))]
        # Check the literal coefficient copy before writing; this is not a proof.
        copy = sum((int(c)*k**a*X**b*Y**v for a,row in enumerate(rows)
                    for b,r in enumerate(row) for v,c in enumerate(r)), CTX.constant(0))
        assert copy == polys[last]
        parts = []
        for offset in range(0,len(rows),8):
            part = f's{last:03d}_part{offset//8:02d}'
            source += f'def {part} : List {DC}.XY := '+json.dumps(rows[offset:offset+8],separators=(',',':'))+'\n'
            parts.append(part)
        source += f'def s{last:03d} : List {DC}.XY := '+' ++ '.join(parts)+'\n'
        source += definition(last, f'calculation{last:03d}')
        source += f'''def residual{last:03d} : List {DC}.XY :=
  {DC}.add calculation{last:03d} ({DC}.neg s{last:03d})
theorem residual{last:03d}_length : residual{last:03d}.length = {len(rows)} := by rfl
'''
        save(name, source)
        # Four coefficients per module bounds memory while avoiding excessive
        # module startup. The midpoint pilot can be run independently first.
        check_names=[]
        for start in range(0,len(rows),4):
            check_name = name+f'Check{start//4:02d}'
            check_names.append(check_name)
            src=header([name])
            for j in range(start,min(start+4,len(rows))):
                endpoint=f's{last:03d}_coefficient_{j:02d}'
                src += f'''theorem {endpoint} :
    {IR}.zeroII (residual{last:03d}.getD {j} []) = true := by rfl
#print axioms {endpoint}
'''
                endpoints.append(NS+'.'+endpoint)
            save(check_name,src)
        exact_name=name+'Exact'
        src=header(check_names)
        src=src.replace('set_option autoImplicit false',
                        'import Lean.Elab.Tactic.Omega\nset_option autoImplicit false',1)
        src += f'''theorem s{last:03d}_all (n : ℕ) (hn : n < residual{last:03d}.length) :
    {IR}.zeroII (residual{last:03d}.getD n []) = true := by
  rw [residual{last:03d}_length] at hn
'''
        src += '  have hc : '+' ∨ '.join(f'n = {j}' for j in range(len(rows)))+' := by omega\n'
        src += '  rcases hc with '+' | '.join('hn' for _ in rows)+'\n'
        src += ''.join(f'  · subst n\n    exact s{last:03d}_coefficient_{j:02d}\n' for j in range(len(rows)))
        src += f'''theorem s{last:03d}_eval (X Y k : F) :
    {C}.eval k ({DC}.interpret X Y s{last:03d}) = v{last:03d} X Y k := by
  have h := {DC}.allZero_of_certificates X Y residual{last:03d} s{last:03d}_all
  have hz := {C}.eval_allZero k _ h
  simp only [residual{last:03d}, {DC}.interpret_add, {DC}.interpret_neg,
    {C}.eval_add, {C}.eval_neg, calculation{last:03d}_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm
#print axioms s{last:03d}_eval
'''
        endpoints.append(NS+f'.s{last:03d}_eval')
        save(exact_name,src)
        previous=exact_name
        changed.add(last)
        first=last+1

    # Tail retains the existing numerator as the unique target.
    source=header([previous])
    for i in range(first,len(nodes)):
        source+=definition(i,f's{i:03d}')
    for component,r in dag['roots'].items():
        lhs,factor=r['lhs'],r['factor']
        source+=f'''def staged_residual_{component} : List {DC}.XY :=
  {DC}.add s{lhs:03d} ({DC}.neg ({DC}.mul s{factor:03d} numerator_p2_m4_{component}_coefficients))
theorem staged_residual_{component}_eval (X Y k : F) :
    {C}.eval k ({DC}.interpret X Y staged_residual_{component}) =
    v{lhs:03d} X Y k - v{factor:03d} X Y k *
      {C}.eval k ({DC}.interpret X Y numerator_p2_m4_{component}_coefficients) := by
  simp only [staged_residual_{component}, {DC}.interpret_add, {DC}.interpret_neg,
    {DC}.interpret_mul, {C}.eval_add, {C}.eval_neg, {CO}.eval_mul,
    s{lhs:03d}_eval, s{factor:03d}_eval, sub_eq_add_neg]
'''
    save('P2M4Staged',source)
    # Pilot uses a central coefficient from the first bounded subexpression.
    pilot_modules=[BASE+'P2M4Stage00',BASE+'P2M4Stage00Check03']
    manifest={'scope':'critical_nonzero_raw_clearing','records':records,
              'status':'PREPARED_NOT_COMPILED','expression_dag_sha256':hashlib.sha256(dag_path.read_bytes()).hexdigest(),
              'checkpoints':cuts,'coefficient_checks':sum(nodes[i]['length'] for i in cuts),
              'axiom_endpoints':endpoints,'atlas_certification':False,
              'numerator_data_unchanged':True}
    (AUDIT/'CRITICAL_NONZERO_STAGED_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    pilot=dict(manifest,records=[r for r in records if r['module'] in pilot_modules])
    (AUDIT/'CRITICAL_NONZERO_STAGED_PILOT_MANIFEST.json').write_text(json.dumps(pilot,indent=2)+'\n')
    print(json.dumps({'stages':len(cuts),'modules':len(records),'coefficient_checks':manifest['coefficient_checks'],'pilot':pilot_modules}))


if __name__ == '__main__':
    main()
