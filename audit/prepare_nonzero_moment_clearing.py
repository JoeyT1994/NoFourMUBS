"""Export missing intermediate clearing checks in the existing numerator chain.

Reads the cached original-evaluator candidates. Never computes the 66-term sum,
changes the supplied raw numerator, or generates an atlas certificate.
"""
from pathlib import Path
import argparse
import hashlib
import json
import re
import sys
import math
from fractions import Fraction

from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
ORIGINAL = Path('/Users/mateo2/Desktop/NoFourMUBs/full_repair_2026_10_09/MinimalConstruction/Proofs')
sys.path.insert(0, str(ORIGINAL))
from exact_rational import CTX
from flint import fmpq_mpoly

X, Y, k, _ = CTX.gens()
h = 1 + k*k
FACTORS = {
    'X': X, 'Y': Y, 'h k': h,
    'plusFactor X k': (X-9)*(k+1)*h+6*h+4*k,
    'minusFactor X k': (X-9)*(k-1)*h-6*h+4*k,
    'plusFactor Y k': (Y-9)*(k+1)*h+6*h+4*k,
    'minusFactor Y k': (Y-9)*(k-1)*h-6*h+4*k,
    'thirdPlusFactor X Y k': (X+Y)*(k+1)*h-6*h+4,
    'thirdMinusFactor X Y k': (X+Y)*(k-1)*h+6*h-4,
}


def horner(dic, n=0, typed=False):
    if n == 0:
        assert all(ex[3] == 0 for ex in dic)
    if n == 3:
        q = next(iter(dic.values()), 0)
        if int(q) == q:
            return f'({int(q)} : F)' if int(q) < 0 else str(int(q))
        numerator, denominator = str(q).split('/')
        return f'(({numerator} : F)/{denominator})'
    groups = {}
    for ex, co in dic.items():
        groups.setdefault(ex[n], {})[ex] = co
    if not groups:
        return '0'
    var = ['X', 'Y', 'k'][n]
    degs = sorted(groups, reverse=True)
    s = horner(groups[degs[0]], n+1, typed)
    old = degs[0]
    for d in degs[1:]:
        gap = old-d
        s = f'({s}*{var}' + (f'^{gap}' if gap != 1 else '') + '+' + horner(groups[d], n+1, typed) + ')'
        old = d
    if old:
        s = f'({s}*{var}' + (f'^{old}' if old != 1 else '') + ')'
    # Explicit row types keep Lean's overloaded-operator elaborator from
    # building one enormous expression tree. They change no polynomial term.
    return f'({s} : F)' if typed and n > 0 else s


def denominator(poly):
    unit, fs = poly.factor()
    assert int(unit) == unit
    out = [] if unit == 1 else [f'({int(unit)} : F)']
    check = CTX.constant(unit)
    for f, e in fs:
        names = [name for name, p in FACTORS.items() if f == p]
        assert len(names) == 1, (f, names)
        out.append('('+names[0]+')' + (f'^{e}' if e != 1 else ''))
        check *= f**e
    assert check == poly
    return '*'.join(out) or '1'


def integer_coefficients(poly):
    """Use the already checked k/X/Y dense evaluator, without a new normalizer."""
    terms = dict(poly.terms())
    scale = math.lcm(*(Fraction(str(c)).denominator for c in terms.values()))
    assert all(ex[3] == 0 for ex in terms)
    rows = []
    for dk in range(int(poly.degrees()[2])+1):
        xs = {ex[0] for ex in terms if ex[2] == dk}
        row = []
        for dx in range(max(xs, default=-1)+1):
            ys = {ex[1] for ex in terms if ex[0] == dx and ex[2] == dk}
            line = []
            for dy in range(max(ys, default=-1)+1):
                c = terms.get((dx, dy, dk, 0), 0)*scale
                assert c == int(c)
                line.append(int(c))
            row.append(line)
        rows.append(row)
    return scale, rows


def make_source(tag, data, pair_module):
    factored = tag in ['p2_m4', 'p2_p2', 'p4_m2']
    s = f'''import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.{pair_module}
import NoFourMUBs.Reuse.Archive.CriticalNonzeroSumDenominator
''' + ('import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients\nimport NoFourMUBs.Step2.CriticalZero.NonzeroCompactSide\n' if factored else '') + f'''

/-! Exact coefficient clearing of the original paired moment.
Untrusted intermediate coefficients are checked against the unchanged Lean formula. -/
set_option autoImplicit false
set_option maxHeartbeats 3000000
set_option maxRecDepth 16000
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {{F : Type*}} [Field F] [CharZero F]

'''
    for component in ['a', 'b']:
        d = data[component]
        num = fmpq_mpoly(d['numerator'], CTX)
        den = fmpq_mpoly(d['denominator'], CTX)
        assert len(num) == d['numerator_terms'] and len(den) == d['denominator_terms']
        if factored:
            scale, rows = integer_coefficients(num)
            name = f'numerator_{tag}_{component}_coefficients'
            chunks = []
            # The original raw-numerator import already uses eight k rows per
            # declaration. Reuse that layout to bound elaboration work.
            for start in range(0, len(rows), 8):
                chunk = f'{name}_{start//8:02d}'
                chunks.append(chunk)
                s += f'def {chunk} : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := {json.dumps(rows[start:start+8], separators=(",", ":"))}\n\n'
            s += f'def {name} : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := ' + ' ++ '.join(chunks) + '\n\n'
            s += f'''def numerator_{tag}_{component} (X Y k : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval k
    (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y {name}) / {scale}

'''
        else:
            s += f'def numerator_{tag}_{component} (X Y k : F) : F := {horner(dict(num.terms()))}\n\n'
        s += f'def denominator_{tag}_{component} (X Y k : F) : F := {denominator(den)}\n\n'
    s += f'''theorem cleared_{tag} (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    (pairedQuad_{tag} X Y k).a * denominator_{tag}_a X Y k = numerator_{tag}_a X Y k ∧
    (pairedQuad_{tag} X Y k).b * denominator_{tag}_b X Y k = numerator_{tag}_b X Y k := by
  have htwo : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  have hthree : toQuadratic (3 : Quad (R2 X Y k) (R1 Y k)) =
      (3 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
'''
    if factored:
        s += '''  have hs : (h k)^2/(2 : F) ≠ 0 :=
    div_ne_zero (pow_ne_zero 2 hh) (by norm_num)
'''
        for label, factor, args, guard, sign in [
                ('Xp', 'plusFactor', 'X k', 'hXp', 1),
                ('Xm', 'minusFactor', 'X k', 'hXm', -1),
                ('Yp', 'plusFactor', 'Y k', 'hYp', 1),
                ('Ym', 'minusFactor', 'Y k', 'hYm', -1),
                ('Zp', 'thirdPlusFactor', 'X Y k', 'hZp', -1),
                ('Zm', 'thirdMinusFactor', 'X Y k', 'hZm', 1)]:
            M = '(p k-X-Y)' if label[0] == 'Z' else label[0]
            side = '1' if label[1] == 'p' else '(-1)'
            hs = 'hs' if sign == 1 else '(neg_ne_zero.mpr hs)'
            scalar = '2' if sign == 1 else '(-2)'
            s += f'''  have hF{label} : {factor} {args} ≠ 0 := by
    rw [{factor}_pole {args} hh]
    exact mul_ne_zero {hs} {guard}
  have pole{label} : pole k {side} {M} = {scalar}*{factor} {args}/(h k)^2 := by
    rw [{factor}_pole {args} hh]
    field_simp [hh]
    <;> ring
'''
    s += '  constructor\n'
    for component, projection in [('a', 're'), ('b', 'im')]:
        s += f'''  · change (toQuadratic (pairedQuad_{tag} X Y k)).{projection} * _ = _
'''
        if factored:
            s += f'    generalize hnum : numerator_{tag}_{component} X Y k = N\n'
            s += f'''    rw [pairedQuad_{tag}, quadSide_eq_compactSide X Y k 1 hX hY,
      quadSide_eq_compactSide X Y k (-1) hX hY]
'''
        side = 'compactSide' if factored else 'quadSide'
        s += f'''    simp only [pairedQuad_{tag}, quadNewton_{tag}, {side}, quadReconstructionData,
      toQuadratic_add, toQuadratic_sub, toQuadratic_mul, toQuadratic_pow,
      toQuadratic_scalar, toQuadratic_root, toQuadratic_divScalar, htwo, hthree,
      pow_succ, pow_zero, QuadraticAlgebra.re_one, QuadraticAlgebra.im_one,
      QuadraticAlgebra.re_ofNat, QuadraticAlgebra.im_ofNat,
      QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
      QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
      QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
      QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
      mul_zero, zero_mul, add_zero, zero_add, sub_zero, one_mul, mul_one,
      denominator_{tag}_{component}'''
        if factored:
            _, rows = integer_coefficients(fmpq_mpoly(data[component]['numerator'], CTX))
            chunk_names = ', '.join(f'numerator_{tag}_{component}_coefficients_{i//8:02d}' for i in range(0, len(rows), 8))
            s += f''']
    try dsimp only [toQuadratic]
    try dsimp only [R2, R1]
    simp only [poleXp, poleXm, poleYp, poleYm, poleZp, poleZm]
    dsimp only [gram, sheet, q, J, p]
    field_simp [hX, hY, hh, hFXp, hFXm, hFYp, hFYm, hFZp, hFZm]
    rw [← hnum]
    dsimp only [plusFactor, minusFactor, thirdPlusFactor, thirdMinusFactor,
      numerator_{tag}_{component}, numerator_{tag}_{component}_coefficients,
      {chunk_names}, List.append, h,
      CriticalZeroSplitReduction20261003.Coefficients.eval,
      CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII,
      CriticalZeroSplitReduction20261003.IntegerReflector.evalI]
    ring
'''
        else:
            s += f''', numerator_{tag}_{component},
      plusFactor_pole X k hh, minusFactor_pole X k hh,
      plusFactor_pole Y k hh, minusFactor_pole Y k hh,
      thirdPlusFactor_pole X Y k hh, thirdMinusFactor_pole X Y k hh]
    try dsimp only [R2, R1]
    field_simp [hX, hY, hh, hXp, hXm, hYp, hYm, hZp, hZm]
    dsimp only [pole, gram, sheet, q, J, p]
    field_simp [hh]
    dsimp only [h]
    ring
'''
    return s + f'\n#print axioms cleared_{tag}\nend NoFourMUBs.Step2.Critical.NonzeroClearing\n'


def split_data_source(tag, source):
    """Isolate literal data from the legacy quadratic numeral instances."""
    start = source.index(f'def numerator_{tag}_a_coefficients_00')
    end = source.index(f'theorem cleared_{tag}')
    header = '''import NoFourMUBs.Reuse.Archive.CriticalNonzeroSumDenominator
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients

/-! Exact same cached moment coefficients, using the existing dense evaluator. -/
set_option autoImplicit false
set_option maxRecDepth 16000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
variable {F : Type*} [Field F] [CharZero F]

'''
    data = header + source[start:end] + '\nend NoFourMUBs.Step2.Critical.NonzeroClearing\n'
    proof = f'import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Data_{tag}\n' + source[:start] + source[end:]
    return data, proof


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--tags', nargs='*')
    args = parser.parse_args()
    require_reuse_review('critical_nonzero_raw_clearing')
    candidates_path = AUDIT / 'CRITICAL_NONZERO_PAIRED_COEFFICIENT_CANDIDATES.json'
    records = json.loads(candidates_path.read_text())['records']
    pair_modules = {}
    for p in (ROOT/'lean/NoFourMUBs/Reuse/Archive').glob('CriticalNonzeroPair0?.lean'):
        for t in re.findall(r'^def pairedQuad_(\S+) ', p.read_text(), re.M):
            pair_modules[t] = p.stem
    tags = args.tags or [t for t in records if t not in ['p1_p1', 'p2_m1']]
    manifest_path = AUDIT/'CRITICAL_NONZERO_RAW_CLEARING_MANIFEST.json'
    manifest = json.loads(manifest_path.read_text())
    known = {r['active_path']: r for r in manifest['records']}
    out = ROOT/'lean/NoFourMUBs/Step2/CriticalZero/ClearedMoments'
    for tag in tags:
        p = out/f'Pair_{tag}.lean'
        rel = str(p.relative_to(ROOT/'lean'))
        if p.exists():
            if rel in known:
                assert hashlib.sha256(p.read_bytes()).hexdigest() == known[rel]['active_sha256']
                continue
            assert p.read_text() == make_source(tag, records[tag], pair_modules[tag])
        else:
            source = make_source(tag, records[tag], pair_modules[tag])
            if tag in ['p2_m4', 'p2_p2', 'p4_m2']:
                data, source = split_data_source(tag, source)
                dp = out/f'Data_{tag}.lean'
                dp.write_text(data)
                dr = str(dp.relative_to(ROOT/'lean'))
                manifest['records'].append({
                    'module': dr.removesuffix('.lean').replace('/', '.'),
                    'active_path': dr, 'active_sha256': hashlib.sha256(dp.read_bytes()).hexdigest(),
                    'data_only': True, 'review': 'CRITICAL_NONZERO_LARGE_CLEARING_DATA_REVIEW.json'})
            p.write_text(source)
        record = {'module': rel.removesuffix('.lean').replace('/', '.'),
                  'active_path': rel, 'active_sha256': hashlib.sha256(p.read_bytes()).hexdigest(),
                  'local_model_adapter': True, 'review': 'CRITICAL_NONZERO_RAW_CLEARING_REVIEW.json'}
        manifest['records'].append(record)
        print('Prepared', tag, flush=True)
    manifest['candidate_sha256'] = hashlib.sha256(candidates_path.read_bytes()).hexdigest()
    manifest_path.write_text(json.dumps(manifest, indent=2)+'\n')


if __name__ == '__main__':
    main()
