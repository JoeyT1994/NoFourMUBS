"""Translate the existing Bernstein factors; prove five missing signs by algebra.

No quartic, Bernstein, moment, or atlas data is rediscovered.  The auxiliary
positive expansions are checked by Lean's existing ring and positivity tactics.
"""
from pathlib import Path
from fractions import Fraction
import hashlib
import json
import re
import sympy as sp

from diagnose_quartic_coefficient_signs import SOURCE, transformed
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
OUT = ROOT / 'lean/NoFourMUBs/Step2/CriticalZero/ScalarSigns'
BASE = 'NoFourMUBs.Step2.CriticalZero.ScalarSigns.'
NS = 'NoFourMUBs.Step2.Critical.NonzeroScalar'
k = sp.Symbol('c')


def lean(e, aliases=None):
    if aliases and e in aliases:
        return '(' + aliases[e] + ' k)'
    if e == k:
        return 'k'
    if e.is_Integer:
        return str(e) if e >= 0 else '(' + str(e) + ')'
    if e.is_Rational:
        return '(' + str(e.p) + ' / ' + str(e.q) + ')'
    if e.is_Add:
        return '(' + ' + '.join(lean(a, aliases) for a in e.args) + ')'
    if e.is_Mul:
        return '(' + ' * '.join(lean(a, aliases) for a in e.args) + ')'
    if e.is_Pow:
        b, n = e.args
        assert n.is_Integer
        if n < 0:
            return '(1 / (' + lean(b, aliases) + ')^' + str(-n) + ')'
        return '(' + lean(b, aliases) + ')^' + str(n)
    raise ValueError(e)


def main():
    require_reuse_review('critical_nonzero_scalar_signs')
    review = json.loads((AUDIT/'CRITICAL_NONZERO_SCALAR_SIGN_REUSE_REVIEW.json').read_text())
    for path, digest in review['source_pins'].items():
        p = Path(path)
        if not p.is_absolute():
            p = ROOT / p
        assert hashlib.sha256(p.read_bytes()).hexdigest() == digest
    raw = json.loads(SOURCE.read_text())
    data = {}
    for region, entries in raw.items():
        data[region] = []
        for s in entries:
            assert re.fullmatch(r'[0-9c\s+\-*/().]+', s)
            data[region].append(sp.sympify(s, locals={'c': k}))
    assert data['high131'] == list(reversed(data['high013']))
    diagnostic = json.loads((AUDIT/'CRITICAL_NONZERO_QUARTIC_SIGN_DIAGNOSTIC.json').read_text())
    assert diagnostic['sha256'] == hashlib.sha256(SOURCE.read_bytes()).hexdigest()
    selected = [('pLow', 5), ('pLower1', 17), ('pLower2', 18),
                ('pUpper1', 48), ('pUpper2', 49)]
    polys = {name: sp.sympify(diagnostic['records'][i]['polynomial'], locals={'c': k})
             for name, i in selected}
    common = {'quadMinus': 3*k**2-2*k+3,
              'other': 3*k**3-k**2+k+1,
              'kappa': 3*k**3+k**2+k-1}
    aliases = {expr: name for name, expr in {**polys, **common}.items()}
    OUT.mkdir(exist_ok=True)
    records, endpoints = [], []

    def save(name, text, proofs=()):
        p = OUT/(name+'.lean')
        assert not p.exists(), p
        for proof in proofs:
            text += '\n#print axioms ' + proof + '\n'
            endpoints.append(NS+'.'+proof)
        p.write_text(text+'\nend\nend '+NS+'\n')
        records.append({'module': BASE+name,
                        'active_path': str(p.relative_to(ROOT/'lean')),
                        'active_sha256': hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter': True,
                        'review': 'CRITICAL_NONZERO_SCALAR_SIGN_REUSE_REVIEW.json'})

    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace {NS}
noncomputable section
'''

    text = header(['Mathlib.Data.Real.Basic', 'Mathlib.Tactic.Ring',
                   'Mathlib.Tactic.Positivity', 'Mathlib.Tactic.Linarith'])
    for name, expr in {**polys, **common}.items():
        text += f'\ndef {name} (k : ℝ) : ℝ := {lean(expr)}\n'
    names = {}
    for region in ['low01', 'low1inf', 'high013', 'high1inf']:
        for i, expr in enumerate(data[region]):
            name = region+'_'+str(i)
            if expr in names:
                text += f'\nabbrev {name} := {names[expr]}\n'
            else:
                text += f'\ndef {name} (k : ℝ) : ℝ := {lean(expr, aliases)}\n'
                names[expr] = name
    save('Data', text)

    for name, idx in selected:
        row = diagnostic['records'][idx]
        poly = sp.Poly(polys[name], k, domain=sp.QQ)
        lo = Fraction(row['lo'])
        hi = None if row['hi']=='None' else Fraction(row['hi'])
        co = [row['sign']*x for x in transformed(poly, lo, hi)]
        assert min(co) >= 0 and max(co) > 0 and row['elevation'] == 0
        d = poly.degree()
        terms = []
        for j, a in enumerate(co):
            if a == 0:
                continue
            aa = lean(sp.Rational(a.numerator, a.denominator))
            if hi is None:
                terms.append(f'{aa} * (k - 1)^{j}')
            else:
                assert lo == 0 and hi == 1
                terms.append(f'{aa} * k^{j} * (1-k)^{d-j}')
        expansion = ' +\n      '.join(terms)
        text = header([BASE+'Data'])
        if hi is not None:
            proof = name+'_neg'
            text += f'''
theorem {proof} {{k : ℝ}} (hk : 0<k) (hu : k<1) : {name} k<0 := by
  have h1 : 0<1-k := sub_pos.mpr hu
  have he : -({name} k) = {expansion} := by
    unfold {name}
    ring
  have hp : 0 < -({name} k) := by
    rw [he]
    positivity
  exact neg_pos.mp hp
'''
        else:
            proof = name+'_pos'
            text += f'''
theorem {proof} {{k : ℝ}} (hk : 1<k) : 0<{name} k := by
  have h1 : 0<k-1 := sub_pos.mpr hk
  have he : {name} k = {expansion} := by
    unfold {name}
    ring
  rw [he]
  positivity
'''
        save(name[0].upper()+name[1:], text, [proof])

    text = header([BASE+x for x in ['PLow','PLower1','PLower2','PUpper1','PUpper2']])+'''
theorem quadMinus_pos (k : ℝ) : 0<quadMinus k := by
  unfold quadMinus
  nlinarith [sq_nonneg (3*k-1)]

theorem other_pos {k : ℝ} (hk : 0<k) : 0<other k := by
  have hs := mul_nonneg hk.le (sq_nonneg (3*k-1))
  unfold other
  nlinarith [sq_nonneg k]

theorem kappa_pos {k : ℝ} (hk : 1<k) : 0<kappa k := by
  have h0 : 0<k := lt_trans (by norm_num) hk
  have h3 := pow_pos h0 3
  unfold kappa
  nlinarith [sq_nonneg k]
'''
    save('Common', text, ['quadMinus_pos', 'other_pos', 'kappa_pos'])
    manifest = {
        'scope': 'critical_nonzero_scalar_signs', 'records': records,
        'axiom_endpoints': endpoints, 'status': 'PREPARED_NOT_COMPILED',
        'dependency_pins': [], 'atlas_certification': False,
        'scope_note': 'Five factor inequalities and common factors only; no full scalar classification yet.'}
    (AUDIT/'CRITICAL_NONZERO_SCALAR_SIGNS_MANIFEST.json').write_text(json.dumps(manifest, indent=2)+'\n')
    print(json.dumps({'modules': len(records), 'endpoints': len(endpoints),
                      'distinct_stored_Bernstein_expressions': len(names),
                      'atlas_certification': False}))


if __name__ == '__main__':
    main()
