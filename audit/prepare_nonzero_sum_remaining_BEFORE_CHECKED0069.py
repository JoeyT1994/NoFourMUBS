"""Stage the remaining original sum DAG using the existing checked evaluator.

No atlas, supplied numerator, or already checked intermediate is generated.
Polynomial arithmetic here is untrusted: every new table is accompanied by
kernel checks, and every exact old-value match gets an equality adapter.
The whole DAG has one plan; --through bounds how much of it is emitted.
"""
import argparse
import datetime
import hashlib
import json
from functools import lru_cache

from diagnose_nonzero_sum_dag import values
from prepare_nonzero_moment_clearing import integer_coefficients
from prepare_nonzero_polynomial_checks import DC, C, IR, CO
from prepare_nonzero_sum_stage_pilot import ROOT, AUDIT, OUT, BASE, NS, EX, CA
from reuse_preflight import require_reuse_review

CR = 'CriticalZeroSumAssembly20261003.CoefficientRow'
REVIEW = 'CRITICAL_NONZERO_SUM_REMAINING_REUSE_REVIEW.json'
PLAN = 'CRITICAL_NONZERO_SUM_REMAINING_PLAN.json'
MANIFEST = 'CRITICAL_NONZERO_SUM_REMAINING_MANIFEST.json'
PREFIX = 'NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.'
CHECKED = {17: 'Stage0000Factors', 19: 'Stage0000Factors', 20: 'Stage0000',
           23: 'Product0023', 29: 'Product0029', 41: 'Product0043Inputs',
           43: 'Product0043'}
AUDITS = ['KERNEL_AUDIT_CRITICAL_NONZERO_SUM_DAG_STATUS.json',
          'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_STAGE0_STATUS.json',
          'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_ROW_CHECKER_STATUS.json',
          'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_PRODUCT0023_STATUS.json',
          'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_PRODUCT0029_STATUS.json',
          'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_PRODUCT0043_STATUS.json',
          'KERNEL_AUDIT_CRITICAL_NONZERO_STAGED_STATUS.json',
          'KERNEL_AUDIT_CRITICAL_NONZERO_P2P2_FINAL_STATUS.json']


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--through', type=int, required=True)
    args = parser.parse_args()
    require_reuse_review('critical_nonzero_raw_clearing')
    review = json.loads((AUDIT / REVIEW).read_text())
    assert review['status'] == 'REVIEWED_EXISTING_STAGER_AND_CHECKER'
    for path, h in review['source_pins'].items():
        assert digest(ROOT / path) == h, path
    pins = {}
    for name in AUDITS:
        d = json.loads((AUDIT / name).read_text())
        assert d['status'] == 'PASS', name
        for path, h in (d['source_hashes'] | d.get('dependency_source_hashes', {})).items():
            assert digest(ROOT / 'lean' / path) == h, path
            pins[path] = h
    dag, polys, original_lengths, old = values(include_old=True)
    nodes = dag['nodes']
    old_dag = json.loads((AUDIT / 'CRITICAL_NONZERO_P2P2_EXPRESSION_DAG.json').read_text())
    original_count = old_dag['original_count']
    old_cut = set(json.loads((AUDIT / 'CRITICAL_NONZERO_STAGED_MANIFEST.json').read_text())['checkpoints'])
    old_cut.update(json.loads((AUDIT / 'CRITICAL_NONZERO_P2P2_STAGED_MANIFEST.json').read_text())['checkpoints'])
    old_widths = []
    for i, node in enumerate(old_dag['nodes']):
        kind = node['kind']
        if kind == 'leaf':
            w = max(map(len, node['rows']), default=0)
        elif kind == 'neg':
            w = old_widths[node['a']]
        elif kind == 'pow':
            w = node['exponent'] * max(0, old_widths[node['a']] - 1) + 1
        elif kind == 'mul':
            w = max(0, old_widths[node['a']] + old_widths[node['b']] - 1)
        else:
            w = max(old_widths[node['a']], old_widths[node['b']])
        if i in old_cut:
            w = int(old[i].degrees()[0]) + 1
        old_widths.append(w)

    # Equality tests select reuse candidates only; generated adapters must prove them.
    old_by_value = {}
    for j, p in enumerate(old):
        old_by_value.setdefault(str(p), j)
    seen, matches = {}, {}
    for i, p in enumerate(polys):
        key = str(p)
        if nodes[i]['kind'] not in ('reuse', 'leaf', 'int') and i not in CHECKED:
            if key in old_by_value:
                matches[i] = ('old', old_by_value[key])
            elif key in seen:
                matches[i] = ('sum', seen[key])
        seen.setdefault(key, i)

    reachable = set()
    def visit(i):
        if i in reachable:
            return
        reachable.add(i)
        if i in CHECKED:
            return
        n = nodes[i]
        for key in ('a', 'b'):
            if key in n:
                visit(n[key])
        if i in matches and matches[i][0] == 'sum':
            visit(matches[i][1])
    for i in dag['roots'] + [dag['multiplier']]:
        visit(i)

    # Costs are reset at checked tables. Do not repeatedly normalize a large
    # table just because its unchanged number of terms exceeds a threshold.
    costs, widths, lengths, cuts, decisions = {}, {}, {}, [], {}
    for i in sorted(reachable):
        n = nodes[i]
        kind = n['kind']
        if i in CHECKED or kind in ('reuse', 'leaf', 'int'):
            cost = 0
            w = old_widths[n['old_index']] if kind == 'reuse' else int(polys[i].degrees()[0]) + 1
            length = original_lengths[i]
        elif kind == 'neg':
            cost, w, length = costs[n['a']], widths[n['a']], lengths[n['a']]
        elif kind == 'pow':
            a, exponent = n['a'], n['exponent']
            cost = costs[a] * exponent + len(polys[a]) ** exponent
            w, length = exponent * max(0, widths[a] - 1) + 1, exponent * (lengths[a] - 1) + 1
        else:
            a, b = n['a'], n['b']
            work = len(polys[a]) * len(polys[b]) if kind == 'mul' else len(polys[i])
            # A scalar/monomial contributes little nesting, unlike a large product.
            if kind == 'mul' and min(len(polys[a]), len(polys[b])) <= 1:
                work //= 20
            cost = costs[a] + costs[b] + work
            w = widths[a] + widths[b] - 1 if kind == 'mul' else max(widths[a], widths[b])
            length = lengths[a] + lengths[b] - 1 if kind == 'mul' else max(lengths[a], lengths[b])
        if i not in CHECKED and (i in matches or cost > 100000):
            cuts.append(i)
            if i in matches:
                source, j = matches[i]
                length = old_dag['nodes'][j]['length'] if source == 'old' else lengths[j]
                w = old_widths[j] if source == 'old' else widths[j]
                decisions[i] = {'mode': 'reuse_equality_adapter', 'existing': [source, j]}
            else:
                w = int(polys[i].degrees()[0]) + 1
                decisions[i] = {'mode': 'row_product' if kind == 'mul' and len(polys[n['a']]) * len(polys[n['b']]) > 300000 else 'whole_coefficient'}
            cost = 0
        costs[i], widths[i], lengths[i] = cost, max(0, w), length
    plan = {'status': 'PLANNED_NOT_A_PROOF', 'scope': 'critical_nonzero_raw_clearing',
            'dag_sha256': digest(AUDIT / 'CRITICAL_NONZERO_SUM_DAG.json'),
            'checked_nodes_reused': sorted(CHECKED), 'reachable_nodes': sorted(reachable),
            'checkpoints': cuts, 'decisions': {str(i): d for i, d in decisions.items()}, 'roots': dag['roots'],
            'multiplier': dag['multiplier'], 'original_numerator_unchanged': True,
            'atlas_certification': False}
    plan_path = AUDIT / PLAN
    if plan_path.exists():
        assert json.loads(plan_path.read_text()) == plan, 'Do not silently change the active stage plan.'
    else:
        plan_path.write_text(json.dumps(plan, indent=2) + '\n')

    manifest_path = AUDIT / MANIFEST
    previous = json.loads(manifest_path.read_text()) if manifest_path.exists() else None
    records, endpoints = [], []
    emitted, module_for, module_endpoint = set(), {}, {}

    def header(imports):
        return '\n'.join('import ' + m for m in dict.fromkeys(imports)) + f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace {NS}
'''

    def save(name, source):
        path = OUT / (name + '.lean')
        data = source + '\nend ' + NS + '\n'
        if path.exists():
            assert path.read_text() == data, f'Preserve existing source: {path}'
        else:
            path.write_text(data)
        records.append({'module': BASE + name, 'active_path': str(path.relative_to(ROOT / 'lean')),
                        'active_sha256': digest(path), 'local_model_adapter': True, 'review': REVIEW})
        return BASE + name

    def name(i):
        return f'n{i:04d}' if i in CHECKED else f'r{i:04d}'

    def endpoint(e):
        endpoints.append(NS + '.' + e)

    def calc(i):
        n, kind = nodes[i], nodes[i]['kind']
        if i in CHECKED:
            return name(i), [f'n{i:04d}_eval']
        if kind in ('leaf', 'reuse', 'int'):
            return f'{EX}.e{i:04d}', [f'{EX}.e{i:04d}_eval']
        a = n['a']
        if kind == 'neg':
            return f'{DC}.neg {name(a)}', [f'{DC}.interpret_neg', f'{C}.eval_neg', name(a) + '_eval']
        if kind == 'pow':
            return f'{DC}.pow {name(a)} {n["exponent"]}', [f'{DC}.interpret_pow', f'{CO}.eval_pow', name(a) + '_eval']
        b = n['b']
        eval_ns = C if kind == 'add' else CO
        return f'{DC}.{kind} {name(a)} {name(b)}', [f'{DC}.interpret_{kind}', f'{eval_ns}.eval_{kind}', name(a) + '_eval', name(b) + '_eval']

    def definition(i, calculation=False):
        dense, lemmas = calc(i)
        ident = f'calculationRemaining{i:04d}' if calculation else name(i)
        unfolds = [ident] + ([] if nodes[i]['kind'] in ('leaf', 'reuse', 'int') else [f'{EX}.v{i:04d}']) + lemmas
        endpoint(ident + '_eval')
        return f'''def {ident} : List {DC}.XY := {dense}
theorem {ident}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y {ident}) = {EX}.v{i:04d} X Y k := by
  simp only [{','.join(dict.fromkeys(unfolds))}]
'''

    def cases(var, hypothesis, count, proof):
        text = f'  have hc : ' + ' ∨ '.join(f'{var} = {j}' for j in range(count)) + ' := by omega\n'
        text += '  rcases hc with ' + ' | '.join(hypothesis for _ in range(count)) + '\n'
        return text + ''.join(f'  · subst {var}\n    {proof(j)}\n' for j in range(count))

    previous_module = None
    prepared = []
    for last in cuts:
        if last > args.through:
            break
        require_reuse_review('critical_nonzero_raw_clearing')
        stem = f'Remaining{last:04d}'
        target = name(last)
        group = [i for i in sorted(reachable) if i <= last and i not in emitted]
        imports = [BASE + f'Expressions{last//48:02d}', BASE + 'RowProduct']
        if previous_module:
            imports.append(previous_module)
        imports += [BASE + CHECKED[i] for i in group if i in CHECKED]
        source = header(imports)
        for i in group:
            if i != last and i not in CHECKED:
                source += definition(i)
        source += definition(last, True)
        node, decision = nodes[last], decisions[last]
        if last in matches:
            where, j = matches[last]
            ref = (PREFIX + ('P2M4.' if j < original_count else 'P2P2.') + f's{j:03d}') if where == 'old' else name(j)
            source += f'def {target} : List {DC}.XY := {ref}\n'
        else:
            scale, rows = integer_coefficients(polys[last])
            assert scale == 1
            assert len(rows) <= lengths[last]
            rows += [[] for _ in range(lengths[last] - len(rows))]
            parts = []
            split_data = last > 66 and len(polys[last]) > 20000
            data_parts = []
            for start in range(0, len(rows), 8):
                part = target + f'_part{start//8:02d}'
                parts.append(part)
                definition_text = f'def {part} : List {DC}.XY := ' + json.dumps(rows[start:start+8], separators=(',', ':')) + '\n'
                if split_data:
                    part_source = header(['NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients'])
                    data_parts.append(save(stem + f'DataPart{start//8:02d}', part_source + definition_text))
                else:
                    source += definition_text
            if data_parts:
                source = ''.join('import ' + module + '\n' for module in data_parts) + source
            source += f'def {target} : List {DC}.XY := ' + ' ++ '.join(parts) + '\n'
        source += f'theorem {target}_length : {target}.length = {lengths[last]} := by rfl\n'
        endpoint(target + '_length')
        calculation = f'calculationRemaining{last:04d}'
        residual = f'residualRemaining{last:04d}'
        ncoeff = lengths[last]
        row_mode = decision['mode'] == 'row_product'
        binary_mode = node['kind'] == 'mul' and last not in matches
        swapped = (binary_mode and last > 63
                   and lengths[node['a']] > lengths[node['b']])
        commutation = ',mul_comm' if swapped else ''
        if row_mode:
            a, b = node['a'], node['b']
            if swapped:
                a, b = b, a
            left, right = name(a), name(b)
            width = widths[a] + widths[b]
            source += f'''theorem {target}_product_length : ({DC}.mul {left} {right}).length = {target}.length := by
  rw [{DC}.length_mul _ _ (by decide) (by decide)]
  rfl
theorem {target}_input_width : {CR}.maxWidth {left} + {CR}.maxWidth {right} ≤ {width} := by decide
theorem {target}_target_width : {CR}.maxWidth {target} ≤ {width} := by decide
theorem {target}_from_rows (X Y : ℂ) (n : ℕ)
    (hc : ∀ i : ℕ, i < {width} → {IR}.zeroI ({C}.add
      ({CR}.mulAtRow {left} {right} n i) ({C}.neg (({target}.getD n []).getD i []))) = true) :
    {IR}.evalII X Y ({CA}.mulAt {left} {right} n) = {IR}.evalII X Y ({target}.getD n []) :=
  {CR}.coefficient_eq_of_rows X Y {left} {right} n ({target}.getD n []) {width}
    {target}_input_width (le_trans ({CR}.length_getD_le_maxWidth {target} n) {target}_target_width) hc
theorem {target}_from_whole (X Y : ℂ) (n : ℕ)
    (hc : {IR}.zeroII ({C}.add2 ({CA}.mulAt {left} {right} n)
      ({C}.neg2 ({target}.getD n []))) = true) :
    {IR}.evalII X Y ({CA}.mulAt {left} {right} n) = {IR}.evalII X Y ({target}.getD n []) := by
  have hz := {IR}.evalII_zero X Y _ hc
  rw [{IR}.evalII_add,{IR}.evalII_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)
'''
            for suffix in ['product_length', 'input_width', 'target_width', 'from_rows', 'from_whole']:
                endpoint(target + '_' + suffix)
        elif binary_mode:
            a, b = node['a'], node['b']
            if swapped:
                a, b = b, a
            left, right = name(a), name(b)
            source += f'''theorem {target}_product_length : ({DC}.mul {left} {right}).length = {target}.length := by
  rw [{DC}.length_mul _ _ (by decide) (by decide)]
  rfl
'''
            endpoint(target + '_product_length')
        else:
            if node['kind'] in ('add', 'mul'):
                a, b = node['a'], node['b']
                calculation_length = lengths[a] + lengths[b] - 1 if node['kind'] == 'mul' else max(lengths[a], lengths[b])
            elif node['kind'] == 'pow':
                calculation_length = node['exponent'] * (lengths[node['a']] - 1) + 1
            else:
                calculation_length = lengths[node['a']]
            ncoeff = max(calculation_length, ncoeff)
            source += f'''def {residual} : List {DC}.XY := {DC}.add {calculation} ({DC}.neg {target})
theorem {residual}_length : {residual}.length = {ncoeff} := by rfl
'''
            endpoint(residual + '_length')
        data_module = save(stem + 'Data', source)
        check_modules = []
        if row_mode:
            nonzero = {j for j, row in enumerate(rows) if row}
            whole = []
            row_batch = 7 if last <= 58 else 14
            # Check largest central coefficients early; retain every successful file.
            for j in sorted(range(ncoeff), key=lambda j: abs(j - ncoeff//2)):
                if j not in nonzero:
                    whole.append(j)
                    continue
                row_modules = []
                for start in range(0, width, row_batch):
                    source = header([data_module])
                    for x in range(start, min(width, start+row_batch)):
                        ep = f'{target}_row_{j:03d}_{x:03d}'
                        source += f'''theorem {ep} :
    {IR}.zeroI ({C}.add ({CR}.mulAtRow {left} {right} {j} {x})
      ({C}.neg (({target}.getD {j} []).getD {x} []))) = true := by rfl
'''
                        endpoint(ep)
                    row_modules.append(save(stem + f'Row{j:03d}Batch{start//row_batch:02d}', source))
                source = header(row_modules + ['Lean.Elab.Tactic.Omega'])
                ep = f'{target}_rows_{j:03d}'
                source += f'''theorem {ep} (i : ℕ) (hi : i < {width}) :
    {IR}.zeroI ({C}.add ({CR}.mulAtRow {left} {right} {j} i)
      ({C}.neg (({target}.getD {j} []).getD i []))) = true := by
'''
                source += cases('i', 'hi', width, lambda x: f'exact {target}_row_{j:03d}_{x:03d}')
                source += f'''theorem {target}_coefficient_{j:03d}_eval (X Y : ℂ) :
    {IR}.evalII X Y ({CA}.mulAt {left} {right} {j}) = {IR}.evalII X Y ({target}.getD {j} []) :=
  {target}_from_rows X Y {j} {ep}
'''
                endpoint(ep)
                endpoint(f'{target}_coefficient_{j:03d}_eval')
                check_modules.append(save(stem + f'Coefficient{j:03d}', source))
            for start in range(0, len(whole), 12):
                source = header([data_module])
                for j in whole[start:start+12]:
                    ep = f'{target}_whole_{j:03d}'
                    source += f'''theorem {ep} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt {left} {right} {j})
      ({C}.neg2 ({target}.getD {j} []))) = true := by rfl
'''
                    endpoint(ep)
                check_modules.append(save(stem + f'Whole{start//12:02d}', source))
            source = header(check_modules + ['Lean.Elab.Tactic.Omega'])
            source += f'''theorem {target}_coefficients_eval (X Y : ℂ) (n : ℕ) (hn : n < {target}.length) :
    {IR}.evalII X Y ({CA}.mulAt {left} {right} n) = {IR}.evalII X Y ({target}.getD n []) := by
  rw [{target}_length] at hn
'''
            source += cases('n', 'hn', ncoeff, lambda j: f'exact {target}_coefficient_{j:03d}_eval X Y' if j in nonzero else f'exact {target}_from_whole X Y {j} {target}_whole_{j:03d}')
            source += f'''theorem {target}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y {target}) = {EX}.v{last:04d} X Y k := by
  have checked := product_eval_eq_of_coefficients X Y k {left} {right} {target}
    {target}_product_length ({target}_coefficients_eval X Y)
  simpa only [{EX}.v{last:04d},{left}_eval,{right}_eval{commutation}] using checked
'''
            endpoint(target + '_coefficients_eval')
        elif binary_mode:
            order = sorted(range(ncoeff), key=lambda j: abs(j - ncoeff//2))
            for start in range(0, ncoeff, 4):
                source = header([data_module])
                for j in order[start:start+4]:
                    ep = f'{target}_whole_{j:03d}'
                    source += f'''theorem {ep} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt {left} {right} {j})
      ({C}.neg2 ({target}.getD {j} []))) = true := by rfl
'''
                    endpoint(ep)
                check_modules.append(save(stem + f'Check{start//4:02d}', source))
            source = header(check_modules + ['Lean.Elab.Tactic.Omega'])
            source += f'''theorem {target}_all (n : ℕ) (hn : n < {target}.length) :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt {left} {right} n)
      ({C}.neg2 ({target}.getD n []))) = true := by
  rw [{target}_length] at hn
'''
            source += cases('n', 'hn', ncoeff, lambda j: f'exact {target}_whole_{j:03d}')
            source += f'''theorem {target}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y {target}) = {EX}.v{last:04d} X Y k := by
  have checked := {CA}.binary_eval_eq X Y k {left} {right} {target}
    {target}_product_length {target}_all
  simpa only [{EX}.v{last:04d},{left}_eval,{right}_eval{commutation}] using checked
'''
            endpoint(target + '_all')
        else:
            order = sorted(range(ncoeff), key=lambda j: abs(j - ncoeff//2))
            for start in range(0, ncoeff, 4):
                source = header([data_module])
                for j in order[start:start+4]:
                    ep = f'{target}_whole_{j:03d}'
                    source += f'theorem {ep} : {IR}.zeroII ({residual}.getD {j} []) = true := by rfl\n'
                    endpoint(ep)
                check_modules.append(save(stem + f'Check{start//4:02d}', source))
            source = header(check_modules + ['Lean.Elab.Tactic.Omega'])
            source += f'''theorem {target}_all (n : ℕ) (hn : n < {residual}.length) :
    {IR}.zeroII ({residual}.getD n []) = true := by
  rw [{residual}_length] at hn
'''
            source += cases('n', 'hn', ncoeff, lambda j: f'exact {target}_whole_{j:03d}')
            source += f'''theorem {target}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y {target}) = {EX}.v{last:04d} X Y k := by
  have hz := {C}.eval_allZero k _ ({DC}.allZero_of_certificates X Y {residual} {target}_all)
  simp only [{residual},{DC}.interpret_add,{DC}.interpret_neg,
    {C}.eval_add,{C}.eval_neg,{calculation}_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm
'''
            endpoint(target + '_all')
        endpoint(target + '_eval')
        previous_module = save(stem, source)
        emitted.update(group)
        prepared.append(last)

    assert prepared, 'No checkpoint selected.'
    last_endpoint = NS + '.' + name(prepared[-1]) + '_eval'
    if args.through >= len(nodes) - 1:
        assert prepared == cuts
        source = header([previous_module, BASE + 'Expressions'])
        for i in sorted(reachable - emitted):
            assert i not in CHECKED and i not in cuts
            source += definition(i)
        roots = dag['roots']
        summed = name(roots[0])
        for i in roots[1:]:
            summed = f'({DC}.add {summed} {name(i)})'
        proof_rules = ['remainingSumExpression', EX + '.sumExpression',
                       DC + '.interpret_add', C + '.eval_add']
        for i in roots:
            proof_rules += [name(i) + '_eval', EX + f'.e{i:04d}_eval']
        multiplier = name(dag['multiplier'])
        raw = 'NoFourMUBs.Step2.Critical.NonzeroRawNumerator'
        source += f'''def remainingSumExpression : List {DC}.XY := {summed}
theorem remainingSumExpression_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y remainingSumExpression) = computedNumerator X Y k := by
  calc
    _ = {C}.eval k ({DC}.interpret X Y {EX}.sumExpression) := by
      simp only [{','.join(proof_rules)}]
    _ = computedNumerator X Y k := {EX}.sumExpression_eval X Y k
def remainingTargetExpression : List {DC}.XY := {DC}.mul {multiplier} {raw}.coefficients
theorem remainingTargetExpression_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y remainingTargetExpression) =
      integerMultiplier X Y k * {raw}.rawIntegerNumerator X Y k := by
  have hm : {EX}.v{dag['multiplier']:04d} X Y k = integerMultiplier X Y k :=
    ({EX}.e{dag['multiplier']:04d}_eval X Y k).symm.trans ({EX}.multiplierExpression_eval X Y k)
  simp only [remainingTargetExpression,{DC}.interpret_mul,{CO}.eval_mul,
    {multiplier}_eval,hm,{raw}.rawIntegerNumerator]
'''
        for ep in ['remainingSumExpression_eval', 'remainingTargetExpression_eval']:
            endpoint(ep)
        previous_module = save('RemainingExpressions', source)
        last_endpoint = NS + '.remainingTargetExpression_eval'
    manifest = {'scope': 'critical_nonzero_raw_clearing', 'status': 'PREPARED_NOT_COMPILED',
                'records': records, 'axiom_endpoints': endpoints, 'dependency_audits': AUDITS,
                'dependency_pins': [{'active_path': p, 'active_sha256': h} for p, h in sorted(pins.items())],
                'prepared_checkpoints': prepared, 'total_planned_checkpoints': len(cuts),
                'last_entry_module': previous_module, 'last_endpoint': last_endpoint,
                'original_numerator_unchanged': True, 'raw_numerator_identity_claimed': False,
                'atlas_certification': False}
    if previous:
        previous_records = {r['module']: r for r in previous['records']}
        current_records = {r['module']: r for r in records}
        assert all(current_records[m] == r for m, r in previous_records.items())
        assert endpoints[:len(previous['axiom_endpoints'])] == previous['axiom_endpoints']
    manifest_path.write_text(json.dumps(manifest, indent=2) + '\n')
    print(json.dumps({'planned_checkpoints': len(cuts), 'prepared': prepared,
                      'modules': len(records), 'endpoints': len(endpoints),
                      'reused_checked_nodes': sorted(CHECKED), 'prior_value_adapters': matches,
                      'entry_module': previous_module}), flush=True)


if __name__ == '__main__':
    main()
