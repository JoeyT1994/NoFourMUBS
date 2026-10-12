"""Bind original cached coefficients to the already checked invariant formulas.

No norm calculation is rerun. All source polynomial coefficients come from
the pinned cache; three cleared equalities must be proved by Lean itself.
"""
from fractions import Fraction
from pathlib import Path
import hashlib
import json

from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
OUT = ROOT / 'lean/NoFourMUBs/Step2/Reconstruction/BaseCoefficients'
BASE = 'NoFourMUBs.Step2.Reconstruction.BaseCoefficients.'
NS = 'NoFourMUBs.Step2.Reconstruction.BaseCoefficients'


def balanced(parts):
    if not parts:
        return '0'
    if len(parts) == 1:
        return parts[0]
    k = len(parts)//2
    return '('+balanced(parts[:k])+' + '+balanced(parts[k:])+')'


def polynomial(terms):
    parts = []
    for exponents, value in terms:
        coefficient = Fraction(value)
        factors = [v if e == 1 else f'{v}^{e}'
                   for v, e in zip('abcd', exponents) if e]
        c = (str(coefficient.numerator) if coefficient.denominator == 1 else
             f'({coefficient.numerator} / {coefficient.denominator} : ℂ)')
        if coefficient != 1 or not factors:
            factors.insert(0, '('+c+')')
        parts.append('*'.join(factors))
    return balanced(parts)


def main():
    require_reuse_review('matched_base_coefficients')
    review = json.loads((AUDIT/'MATCHED_BASE_COEFFICIENT_REUSE_REVIEW.json').read_text())
    for path, digest in review['source_pins'].items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest() == digest
    data = json.loads((AUDIT/'MATCHED_SYMBOLIC_BASE_CACHE.json').read_text())['data']
    assert data['U'][1] == data['V'][1]
    assert {tuple(e):Fraction(c) for e,c in data['c6'][0]} == {
        tuple(e):4*Fraction(c) for e,c in data['U'][1]}
    assert data['c6'][1] == [[[4,4,3,3], '1']]
    OUT.mkdir(exist_ok=True)
    records = []

    def save(name, text):
        path = OUT/(name+'.lean')
        if path.exists():
            assert path.read_text() == text, 'Preserve existing source: '+str(path)
        else:
            path.write_text(text)
        records.append({'module':BASE+name,'active_path':str(path.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
                        'local_model_adapter':True,
                        'review':'MATCHED_BASE_COEFFICIENT_REUSE_REVIEW.json'})

    settings = '''set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
noncomputable section
namespace '''+NS+'\nopen StrictReconstruction20261007\n'
    source = 'import NoFourMUBs.Reuse.Archive.PreRhoNormDefs\nimport Mathlib.Data.Complex.Basic\n'
    source += settings
    for name, terms in [('inputDen',data['U'][1]),('uNum',data['U'][0]),('vNum',data['V'][0])]:
        source += f'def {name} (a b c d : ℂ) : ℂ := '+polynomial(terms)+'\n'
    source += '''def phaseMonomial (a b c d : ℂ) : ℂ := a^4*b^4*c^3*d^3
def normData (a b c d : ℂ) : PreRhoNorm.Data ℂ :=
  PreRhoNorm.gramData (-(1+a+b)) (-(1+a⁻¹+b⁻¹))
    (-(1+c+d)) (-(1+c⁻¹+d⁻¹)) (-(1+c/a+d/b)) (-(1+a/c+b/d))
def cachedC6 (a b c d : ℂ) : ℂ := 4*inputDen a b c d / phaseMonomial a b c d
def cachedU (a b c d : ℂ) : ℂ := uNum a b c d / inputDen a b c d
def cachedV (a b c d : ℂ) : ℂ := vNum a b c d / inputDen a b c d
'''
    save('Data', source+'\nend '+NS+'\n')
    targets = [
        ('C6', 'inputDen', 'q.a.p0bar*q.a.p1'),
        ('U', 'uNum', '(q.p0*q.a.p0bar+q.a.p1*q.p1bar-q.a.eta*(q.a.c0-q.a.c1)^2)'),
        ('V', 'vNum', 'q.p0*q.p1bar')]
    for name, numerator, rhs in targets:
        source = 'import '+BASE+'Data\nimport Mathlib.Tactic.FieldSimp\n'+settings
        source += f'''theorem cleared{name} (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0) :
    let q := normData a b c d
    4*{numerator} a b c d = phaseMonomial a b c d * {rhs} := by
  dsimp only [normData,PreRhoNorm.gramData,PreRhoAlignment.gramData,
    {numerator},phaseMonomial]
  field_simp [ha,hb,hc,hd]
  <;> ring
'''
        save(name, source+'\nend '+NS+'\n')
    save('Checked', ''.join('import '+BASE+name+'\n' for name,_,_ in targets))
    manifest = {'scope':'matched_base_coefficients','records':records,
                'axiom_endpoints':[NS+'.cleared'+name for name,_,_ in targets],
                'dependency_pins':[{'active_path':p.removeprefix('lean/'),'active_sha256':h}
                    for p,h in review['source_pins'].items() if p.startswith('lean/')],
                'dependency_audits':[], 'atlas_certification':False,
                'scope_note':'Exact cached base U,V,c6 coefficients only; universal norm still open.'}
    (AUDIT/'MATCHED_BASE_COEFFICIENT_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':3,'source_bytes':sum(
        (ROOT/'lean'/r['active_path']).stat().st_size for r in records),
        'cached_coefficients_reused':True,'lean_checked':False,'atlas_certification':False}))


if __name__ == '__main__':
    main()
