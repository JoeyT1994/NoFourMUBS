"""Finish the last representative using the already checked expression DAG.

Exact AST matches import P2M4Staged directly. Only missing expressions and
their bounded checks are emitted. Original numerator arrays stay unchanged.
"""
from pathlib import Path
import ast
import hashlib
import json
import re

from prepare_nonzero_moment_clearing import CTX, FACTORS, integer_coefficients, fmpq_mpoly
from prepare_nonzero_polynomial_checks import DC, C, IR, CO
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT/'audit'
OUT = ROOT/'lean/NoFourMUBs/Step2/CriticalZero/ClearedMoments/PolynomialChecks'
BASE = 'NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.'
NS = 'NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2P2'


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    review = json.loads((AUDIT/'CRITICAL_NONZERO_P2P2_REUSE_REVIEW.json').read_text())
    for path, digest in review['source_pins'].items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest() == digest
    old_dag = json.loads((AUDIT/'CRITICAL_NONZERO_POLYNOMIAL_EXPRESSION_DAG.json').read_text())
    old_stages = json.loads((AUDIT/'CRITICAL_NONZERO_STAGED_MANIFEST.json').read_text())
    old_audit = json.loads((AUDIT/review['dependency_audit']).read_text())
    assert old_audit['status'] == 'PASS'
    for path, digest in old_audit['source_hashes'].items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest() == digest
    diagnostic = next(r for r in json.loads((AUDIT/'CRITICAL_NONZERO_REMAINING_GOAL_DIAGNOSTICS.json').read_text())['records'] if r['tag'] == 'p2_p2')
    log_path = ROOT/diagnostic['log']
    assert hashlib.sha256(log_path.read_bytes()).hexdigest() == diagnostic['log_sha256']
    log = log_path.read_text()
    assert '⋯' not in log
    errors = [line for line in log.splitlines() if 'error:' in line]
    assert len(errors) == 2 and all('Diagnostic stop' in e for e in errors)
    aliases = {name: 'f'+str(i) for i, name in enumerate(FACTORS) if name not in ['X', 'Y']}
    nodes = list(old_dag['nodes'])
    original_count = len(nodes)
    known = {n['ast']:i for i,n in enumerate(nodes)}
    reused = set()

    def parse(text):
        for name, alias in sorted(aliases.items(), key=lambda p:-len(p[0])):
            text = re.sub(r'\b'+r'\s+'.join(map(re.escape,name.split()))+r'\b',alias,text)
        return ast.parse(' '.join(text.split()).replace('^','**'),mode='eval').body

    def intern(node):
        key = ast.dump(node)
        if key in known:
            i = known[key]
            if i < original_count:
                reused.add(i)
            return i
        record = {'ast':key}
        if isinstance(node,ast.Constant):
            assert type(node.value) is int
            record.update(kind='leaf',scalar=f'({node.value} : F)',rows=[[[node.value]]],length=1)
        elif isinstance(node,ast.UnaryOp):
            assert isinstance(node.op,ast.USub)
            a = intern(node.operand)
            record.update(kind='neg',a=a,length=nodes[a]['length'])
        else:
            assert isinstance(node,ast.BinOp),ast.dump(node)
            a = intern(node.left)
            if isinstance(node.op,ast.Pow):
                assert isinstance(node.right,ast.Constant) and type(node.right.value) is int and node.right.value >= 0
                record.update(kind='pow',a=a,exponent=node.right.value,length=node.right.value*(nodes[a]['length']-1)+1)
            else:
                b = intern(node.right)
                kind = {ast.Add:'add',ast.Sub:'sub',ast.Mult:'mul'}[type(node.op)]
                length = nodes[a]['length']+nodes[b]['length']-1 if kind=='mul' else max(nodes[a]['length'],nodes[b]['length'])
                record.update(kind=kind,a=a,b=b,length=length)
        i = len(nodes)
        known[key] = i
        nodes.append(record)
        return i

    roots = {}
    for component, block in zip(['a','b'],log.split('⊢')[1:]):
        goal = block.split('../audit/',1)[0].strip()
        assert goal.count('=') == 1
        lhs,rhs = goal.split('=')
        roots[component] = {'lhs':intern(parse(lhs)),'rhs_printed':rhs.strip()}
    factors = {'a':'2 * h k ^ 2 * X * Y ^ 3','b':'4 * h k ^ 4 * X ^ 2 * Y ^ 3'}
    for component, factor in factors.items():
        roots[component]['factor'] = intern(parse(factor))

    X,Y,k,_ = CTX.gens()
    polys,costs,cuts = [],[],[]
    for i,n in enumerate(nodes):
        kind = n['kind']
        if kind == 'leaf':
            p = sum((int(c)*k**a*X**b*Y**v for a,row in enumerate(n['rows']) for b,r in enumerate(row) for v,c in enumerate(r)),CTX.constant(0))
            cost = len(p)
        elif kind == 'neg':
            p,cost = -polys[n['a']],costs[n['a']]
        elif kind == 'pow':
            p = polys[n['a']]**n['exponent']
            cost = costs[n['a']]*n['exponent'] + len(polys[n['a']])**n['exponent']
        else:
            a,b = n['a'],n['b']
            pa,pb = polys[a],polys[b]
            p = {'add':lambda:pa+pb,'sub':lambda:pa-pb,'mul':lambda:pa*pb}[kind]()
            cost = costs[a]+costs[b]+(len(pa)*len(pb) if kind=='mul' else len(p))
        if i in old_stages['checkpoints']:
            cost = len(p)
        elif i >= original_count and cost > 20000:
            cuts.append(i)
            cost = len(p)
        polys.append(p)
        costs.append(cost)
    candidates = json.loads((AUDIT/'CRITICAL_NONZERO_PAIRED_COEFFICIENT_CANDIDATES.json').read_text())['records']['p2_p2']
    for component,r in roots.items():
        p = fmpq_mpoly(candidates[component]['numerator'],CTX)
        scale, rows = integer_coefficients(p)
        assert scale == {'a':4,'b':2}[component]
        assert polys[r['lhs']] == polys[r['factor']]*p*scale
        r.update(integer_scale=scale,length=max(nodes[r['lhs']]['length'],nodes[r['factor']]['length']+len(rows)-1))

    records,endpoints = [],[]
    def ref(i,prefix):
        return ('P2M4.' if i < original_count else '')+f'{prefix}{i:03d}'
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace {NS}
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {{F : Type*}} [Field F] [CharZero F]
'''
    def save(name,source):
        p = OUT/(name+'.lean')
        assert not p.exists(),p
        p.write_text(source+'\nend '+NS+'\n')
        rel = str(p.relative_to(ROOT/'lean'))
        records.append({'module':BASE+name,'active_path':rel,'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'local_model_adapter':True,'review':'CRITICAL_NONZERO_P2P2_REUSE_REVIEW.json'})
    def expression(i):
        n = nodes[i]
        kind = n['kind']
        if kind == 'leaf':
            return json.dumps(n['rows'],separators=(',',':')),n['scalar'],[]
        a = n['a']
        sa,va,ea = ref(a,'s'),ref(a,'v')+' X Y k',ref(a,'s')+'_eval'
        if kind == 'neg':
            return f'{DC}.neg {sa}',f'-({va})',[f'{DC}.interpret_neg',f'{C}.eval_neg',ea]
        if kind == 'pow':
            return f'{DC}.pow {sa} {n["exponent"]}',f'({va})^{n["exponent"]}',[f'{DC}.interpret_pow',f'{CO}.eval_pow',ea]
        b = n['b']
        sb,vb,eb = ref(b,'s'),ref(b,'v')+' X Y k',ref(b,'s')+'_eval'
        if kind == 'sub':
            return f'{DC}.add {sa} ({DC}.neg {sb})',f'({va})-({vb})',[f'{DC}.interpret_add',f'{DC}.interpret_neg',f'{C}.eval_add',f'{C}.eval_neg',ea,eb,'sub_eq_add_neg']
        op = '+' if kind=='add' else '*'
        evalmul = C if kind=='add' else CO
        return f'{DC}.{kind} {sa} {sb}',f'({va}){op}({vb})',[f'{DC}.interpret_{kind}',f'{evalmul}.eval_{kind}',ea,eb]
    def definition(i,calculation=False):
        dense,scalar,lemmas = expression(i)
        name = f'calculation{i:03d}' if calculation else f's{i:03d}'
        proof = 'simp only ['+', '.join(dict.fromkeys([name,f'v{i:03d}']+lemmas))+']'
        if nodes[i]['kind']=='leaf':
            proof = f'simp only [{name}, v{i:03d}, {DC}.interpret, {C}.eval, {IR}.evalII, {IR}.evalI, Int.cast_ofNat, Int.cast_neg, Int.cast_zero, Int.cast_one, mul_zero, zero_mul, add_zero, zero_add, mul_one]\n  <;> ring'
        endpoints.append(NS+'.'+name+'_eval')
        return f'''def v{i:03d} (X Y k : F) : F := {scalar}
def {name} : List {DC}.XY := {dense}
theorem {name}_eval (X Y k : F) :
    {C}.eval k ({DC}.interpret X Y {name}) = v{i:03d} X Y k := by
  {proof}
'''
    def all_rows(name,length,theorem):
        return f'''theorem {theorem} (n : ℕ) (hn : n < {name}.length) :
    {IR}.zeroII ({name}.getD n []) = true := by
  rw [{name}_length] at hn
  have hc : '''+' ∨ '.join(f'n = {j}' for j in range(length))+''' := by omega
  rcases hc with '''+' | '.join('hn' for _ in range(length))+'\n'+''.join(f'  · subst n\n    exact {name}_coefficient_{j:02d}\n' for j in range(length))
    def checks(name,residual,length,dependency):
        modules = []
        for start in range(0,length,4):
            check = name+f'Check{start//4:02d}'
            modules.append(BASE+check)
            source = header([BASE+dependency])
            for j in range(start,min(start+4,length)):
                endpoint = f'{residual}_coefficient_{j:02d}'
                source += f'''theorem {endpoint} :
    {IR}.zeroII ({residual}.getD {j} []) = true := by rfl
#print axioms {endpoint}
'''
                endpoints.append(NS+'.'+endpoint)
            save(check,source)
        return modules

    first = original_count
    previous = [BASE+'P2M4Staged','NoFourMUBs.Step2.CriticalZero.ClearedMoments.Data_p2_p2']
    for stage,last in enumerate(cuts):
        name = f'P2P2Stage{stage:02d}'
        source = header(previous)
        for i in range(first,last):
            source += definition(i)
        scale,rows = integer_coefficients(polys[last])
        assert scale == 1 and len(rows) <= nodes[last]['length']
        rows += [[] for _ in range(nodes[last]['length']-len(rows))]
        parts = []
        for offset in range(0,len(rows),8):
            part = f's{last:03d}_part{offset//8:02d}'
            source += f'def {part} : List {DC}.XY := '+json.dumps(rows[offset:offset+8],separators=(',',':'))+'\n'
            parts.append(part)
        source += f'def s{last:03d} : List {DC}.XY := '+' ++ '.join(parts)+'\n'
        source += definition(last,True)
        residual = f'residual{last:03d}'
        source += f'''def {residual} : List {DC}.XY := {DC}.add calculation{last:03d} ({DC}.neg s{last:03d})
theorem {residual}_length : {residual}.length = {len(rows)} := by rfl
'''
        save(name,source)
        check_modules = checks(name,residual,len(rows),name)
        source = header(check_modules+['Lean.Elab.Tactic.Omega'])
        source += all_rows(residual,len(rows),f's{last:03d}_all')
        source += f'''theorem s{last:03d}_eval (X Y k : F) :
    {C}.eval k ({DC}.interpret X Y s{last:03d}) = v{last:03d} X Y k := by
  have hz := {C}.eval_allZero k _ ({DC}.allZero_of_certificates X Y {residual} s{last:03d}_all)
  simp only [{residual}, {DC}.interpret_add, {DC}.interpret_neg,
    {C}.eval_add, {C}.eval_neg, calculation{last:03d}_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm
#print axioms s{last:03d}_eval
'''
        endpoints.append(NS+f'.s{last:03d}_eval')
        save(name+'Exact',source)
        previous = [BASE+name+'Exact']
        first = last+1
    source = header(previous)
    for i in range(first,len(nodes)):
        source += definition(i)
    for component,r in roots.items():
        lhs,factor = r['lhs'],r['factor']
        source += f'''def staged_residual_{component} : List {DC}.XY :=
  {DC}.add {ref(lhs,'s')} ({DC}.neg ({DC}.mul {ref(factor,'s')} numerator_p2_p2_{component}_coefficients))
theorem staged_residual_{component}_length : staged_residual_{component}.length = {r['length']} := by rfl
theorem staged_residual_{component}_eval (X Y k : F) :
    {C}.eval k ({DC}.interpret X Y staged_residual_{component}) =
    {ref(lhs,'v')} X Y k - {ref(factor,'v')} X Y k *
      {C}.eval k ({DC}.interpret X Y numerator_p2_p2_{component}_coefficients) := by
  simp only [staged_residual_{component}, {DC}.interpret_add, {DC}.interpret_neg,
    {DC}.interpret_mul, {C}.eval_add, {C}.eval_neg, {CO}.eval_mul,
    {ref(lhs,'s')}_eval, {ref(factor,'s')}_eval, sub_eq_add_neg]
'''
        endpoints.append(NS+f'.staged_residual_{component}_eval')
    save('P2P2FinalData',source)
    check_modules = []
    for component,r in roots.items():
        check_modules += checks('P2P2Final'+component.upper(),f'staged_residual_{component}',r['length'],'P2P2FinalData')
    source = header(check_modules+['Lean.Elab.Tactic.Omega'])
    for component,r in roots.items():
        residual = f'staged_residual_{component}'
        source += all_rows(residual,r['length'],f'staged_{component}_all')
        source += f'''theorem polynomial_{component} (X Y k : F) :
    {ref(r['lhs'],'v')} X Y k = {ref(r['factor'],'v')} X Y k *
      {C}.eval k ({DC}.interpret X Y numerator_p2_p2_{component}_coefficients) := by
  have hz := {C}.eval_allZero k _ ({DC}.allZero_of_certificates X Y {residual} staged_{component}_all)
  rw [{residual}_eval] at hz
  exact sub_eq_zero.mp hz
'''
        rhs = re.sub(r'\bN\b',f'numerator_p2_p2_{component} X Y k',r['rhs_printed'])
        scalar_rhs = re.sub(r'\bN\b',f'(a/{r["integer_scale"]})',r['rhs_printed'])
        source += f'''theorem polynomial_{component}_scaled (X Y k : F) :
    {ref(r['lhs'],'v')} X Y k = {rhs} := by
  rw [polynomial_{component}]
  have scale (a : F) : ({factors[component]})*a = {scalar_rhs} := by ring
  exact scale _
#print axioms polynomial_{component}_scaled
'''
        endpoints += [NS+'.polynomial_'+component,NS+'.polynomial_'+component+'_scaled']
    save('P2P2Final',source)
    manifest = {'scope':'critical_nonzero_raw_clearing','records':records,'status':'PREPARED_NOT_COMPILED','axiom_endpoints':endpoints,'new_nodes':len(nodes)-original_count,'reused_nodes':sorted(reused),'checkpoints':cuts,'coefficient_checks':sum(nodes[i]['length'] for i in cuts),'final_coefficient_checks':sum(r['length'] for r in roots.values()),'dependency_audits':[review['dependency_audit']],'numerator_data_unchanged':True,'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_P2P2_STAGED_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    pilot_modules = [BASE+'P2P2Stage00',BASE+'P2P2Stage00Check'+f'{nodes[cuts[0]]["length"]//8:02d}']
    pilot = dict(manifest,records=[r for r in records if r['module'] in pilot_modules])
    assert len(pilot['records']) == 2
    (AUDIT/'CRITICAL_NONZERO_P2P2_STAGED_PILOT_MANIFEST.json').write_text(json.dumps(pilot,indent=2)+'\n')
    (AUDIT/'CRITICAL_NONZERO_P2P2_EXPRESSION_DAG.json').write_text(json.dumps({'nodes':nodes,'original_count':original_count,'roots':roots},indent=2)+'\n')
    print(json.dumps({k:manifest[k] for k in ['new_nodes','reused_nodes','checkpoints','coefficient_checks','final_coefficient_checks']}))
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'pilot_modules':pilot_modules}))


if __name__ == '__main__':
    main()
