"""Bind signs to the sixteen distinct supplied Bernstein expressions.

Repeated entries, including the reversed high interval, reuse the same lemma.
The original quartic-to-Bernstein identities remain separate obligations.
"""
import hashlib
import json
import sympy as sp

from prepare_nonzero_scalar_signs import ROOT, AUDIT, OUT, BASE, NS, SOURCE, k, lean
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_scalar_signs')
    raw = json.loads(SOURCE.read_text())
    data = {r: [sp.sympify(s, locals={'c': k}) for s in rows] for r, rows in raw.items()}
    diagnostic = json.loads((AUDIT/'CRITICAL_NONZERO_QUARTIC_SIGN_DIAGNOSTIC.json').read_text())
    assert diagnostic['sha256'] == hashlib.sha256(SOURCE.read_bytes()).hexdigest()
    selected = [('pLow', 5), ('pLower1', 17), ('pLower2', 18), ('pUpper1', 48), ('pUpper2', 49)]
    poly = {n: sp.sympify(diagnostic['records'][i]['polynomial'], locals={'c': k}) for n, i in selected}
    aliases = {p: n for n, p in poly.items()}
    qm, other, kap = 3*k*k-2*k+3, 3*k**3-k*k+k+1, 3*k**3+k*k+k-1
    aliases.update({qm: 'quadMinus', other: 'other', kap: 'kappa'})
    def factor_text(factor):
        if factor == k-1: return '(k-1)'
        if factor == 3*k-1: return '(3*k-1)'
        return lean(factor, aliases)
    # Each condition is needed for an actual factor sign.  The four repeated
    # endpoint values use their most general sign lemma across both intervals.
    specs = {
        'low01_0': ['kap'], 'low01_1': ['kap'],
        'low01_2': ['kap', 'upper', 'pLow'], 'low01_3': ['kap', 'upper'],
        'low01_4': ['kap', 'ne1'],
        'low1inf_1': ['lower', 'pLower1'],
        'low1inf_2': ['lower', 'pLower2'],
        'low1inf_3': ['lower', 'pLower1'],
        'low1inf_4': ['ne1', 'neThird'],
        'high013_0': ['neThird'], 'high013_1': ['neThird'],
        'high013_2': ['upper', 'neThird', 'pLow'],
        'high013_3': ['upper', 'neThird'],
        'high1inf_1': ['lower', 'pUpper1'],
        'high1inf_2': ['lower', 'pUpper2'],
        'high1inf_3': ['lower', 'pUpper1']}
    distinct = {}
    expression_names = {}
    for region in ['low01', 'low1inf', 'high013', 'high1inf']:
        for i, e in enumerate(data[region]):
            name = region+'_'+str(i)
            if e not in distinct:
                distinct[e] = name
            expression_names[name] = distinct[e]
    assert set(distinct.values()) == set(specs)
    expressions = {name: e for e, name in distinct.items()}
    text = f'''import {BASE}Common
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 5000000
namespace {NS}
noncomputable section
'''
    endpoints = []
    for name, conditions in specs.items():
        hs = ['(hk : 0<k)']
        if 'kap' in conditions: hs += ['(hkap : kappa k≠0)']
        if 'upper' in conditions: hs += ['(hu : k<1)']
        if 'lower' in conditions: hs += ['(hl : 1<k)']
        if 'ne1' in conditions: hs += ['(hne1 : k≠1)']
        if 'neThird' in conditions: hs += ['(hneThird : k≠1/3)']
        proof = name+'_neg'
        endpoints.append(NS+'.'+proof)
        text += f'\ntheorem {proof} {{k : ℝ}} '+ ' '.join(hs)+f' : {name} k<0 := by\n'
        text += '  have hqm := quadMinus_pos k\n  have ho := other_pos hk\n'
        if 'kap' in conditions:
            text += '  have hks : 0<(kappa k)^2 := sq_pos_of_ne_zero hkap\n'
        if 'upper' in conditions:
            text += '  have hu1 : 0<1-k := sub_pos.mpr hu\n'
        if 'lower' in conditions:
            text += '  have hl1 : 0<k-1 := sub_pos.mpr hl\n'
            text += '  have hkappa := kappa_pos hl\n'
            text += '  have ht : 0<3*k-1 := by linarith\n'
        if 'ne1' in conditions:
            text += '  have hn1 : k-1≠0 := sub_ne_zero.mpr hne1\n'
            text += '  have hs1 : 0<(k-1)^2 := sq_pos_of_ne_zero hn1\n'
        if 'neThird' in conditions:
            text += '  have hn3 : 3*k-1≠0 := by intro he; apply hneThird; linarith\n'
            text += '  have hs3 : 0<(3*k-1)^2 := sq_pos_of_ne_zero hn3\n'
        for p in ['pLow','pLower1','pLower2','pUpper1','pUpper2']:
            if p in conditions:
                if p=='pLow': text += '  have hpLow : 0< -(pLow k) := neg_pos.mpr (pLow_neg hk hu)\n'
                else: text += f'  have h{p} := {p}_pos hl\n'
        sign, terms = 1, []
        for factor, mult in expressions[name].as_powers_dict().items():
            assert mult.is_Integer
            n = int(mult)
            if factor.is_Number:
                if factor < 0:
                    sign *= -1 if n % 2 else 1
                    factor = -factor
                base = lean(factor)
            elif factor==poly['pLow']:
                sign *= -1 if n % 2 else 1
                base = '(-(pLow k))'
            elif factor==k-1 and 'upper' in conditions:
                sign *= -1 if n % 2 else 1
                base = '(1-k)'
            elif factor==1-k and 'lower' in conditions:
                sign *= -1 if n % 2 else 1
                base = '(k-1)'
            elif ((factor==kap and 'kap' in conditions) or
                  (factor==k-1 and 'ne1' in conditions) or
                  (factor==3*k-1 and 'neThird' in conditions)):
                assert n>0 and n%2==0
                base = '('+factor_text(factor)+')^2'
                n //= 2
            else:
                base = factor_text(factor)
            if base=='1': continue
            if n<0: terms.append(f'(1 / ({base})^{-n})')
            elif n==1: terms.append(f'({base})')
            else: terms.append(f'({base})^{n}')
        assert sign == -1, (name, sign)
        positive = ' * '.join(terms)
        text += f'''  have hp : 0< {positive} := by positivity
  have he : -({name} k) = {positive} := by
    unfold {name}
    ring
  apply neg_pos.mp
  rw [he]
  exact hp
'''
    text += ''.join('\n#print axioms '+p.split('.')[-1]+'\n' for p in endpoints)
    text += '\nend\nend '+NS+'\n'
    path = OUT/'Coefficients.lean'
    assert not path.exists()
    path.write_text(text)
    dependency = json.loads((AUDIT/'CRITICAL_NONZERO_SCALAR_SIGNS_MANIFEST.json').read_text())
    manifest = {'scope': 'critical_nonzero_scalar_signs', 'status': 'PREPARED_NOT_COMPILED',
                'records': [{'module': BASE+'Coefficients', 'active_path': str(path.relative_to(ROOT/'lean')),
                             'active_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
                             'local_model_adapter': True,
                             'review': 'CRITICAL_NONZERO_SCALAR_SIGN_REUSE_REVIEW.json'}],
                'dependency_pins': [{'active_path': r['active_path'], 'active_sha256': r['active_sha256']}
                                    for r in dependency['records']],
                'axiom_endpoints': endpoints, 'shared_expression_names': expression_names,
                'atlas_certification': False,
                'scope_note': 'Signs of the sixteen distinct stored Bernstein expressions; no quartic interpolation identity yet.'}
    (AUDIT/'CRITICAL_NONZERO_BERNSTEIN_SIGNS_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'distinct_sign_proofs': len(endpoints), 'atlas_certification': False}))


if __name__=='__main__':
    main()
