"""Serialize one already-supplied coefficient slice for the existing Lean checker.

No symbolic discovery or polynomial normalization is performed here. Every
integer is read from the pinned upstream certificate and round-tripped through
the nested-list representation before a Lean source is emitted.
"""
from pathlib import Path
import argparse
import gzip
import hashlib
import json

from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
BASE = ROOT / 'lean/NoFourMUBs/Step2/Reconstruction/ThirdMoment/Certificates'
MODULE = 'NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates'
NAMESPACE = 'NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData'
SOURCE = AUDIT / 'updates/4a3728/files/proof/coverage/returns/E_matched_flatness/direct/third_moment_certificates.json.gz'


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def write_once(path, text):
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.exists():
        assert path.read_text() == text, f'Refusing to overwrite existing source: {path}'
    else:
        path.write_text(text)


def nested_slice(terms):
    sparse = {}
    for b, c, d, coefficient in terms:
        assert all(type(x) is int for x in [b, c, d, coefficient])
        assert min(b, c, d) >= 0 and coefficient != 0
        assert (b, c, d) not in sparse
        sparse[b, c, d] = coefficient
    data = []
    for b in range(1 + max((x[0] for x in sparse), default=-1)):
        rows = []
        for c in range(1 + max((x[1] for x in sparse if x[0] == b), default=-1)):
            rows.append([sparse.get((b, c, d), 0) for d in
                         range(1 + max((x[2] for x in sparse if x[:2] == (b, c)), default=-1))])
        data.append(rows)
    restored = {(b, c, d): z for b, rows in enumerate(data)
                for c, row in enumerate(rows) for d, z in enumerate(row) if z}
    assert restored == sparse
    return data


def literal(data):
    return '[\n  ' + ',\n  '.join('[' + ', '.join(
        '[' + ', '.join(str(x) if x >= 0 else f'({x})' for x in row) + ']'
        for row in rows) + ']' for rows in data) + '\n]'


def read_saved_document():
    require_reuse_review('matched_third_arithmetic')
    review = json.loads((AUDIT / 'MATCHED_THIRD_ARITHMETIC_REUSE_REVIEW.json').read_text())
    pin = next(x for x in review['source_pins'] if x['path'] == str(SOURCE.relative_to(ROOT)))
    assert sha(SOURCE) == pin['sha256']
    document = json.loads(gzip.decompress(SOURCE.read_bytes()))
    return document, pin


def adopt(document, pin, args):
    identity = document['identities'][args.identity]
    assert args.a_power in identity['coefficient_identity_a_powers']
    records = []
    data_names = []
    widths = []
    bindings = []
    for summand in identity['summands']:
        pid = summand['cleared_integer']
        polynomial = document['polynomials'][pid]
        assert polynomial['id'] == pid and polynomial['scale'] == 1
        slices = [s for s in polynomial['a_slices'] if s['a_power'] == args.a_power]
        assert len(slices) <= 1
        terms = slices[0]['terms'] if slices else []
        data = nested_slice(terms)
        name = f'P{pid:03d}A{args.a_power:02d}'
        path = BASE / 'Data' / (name + '.lean')
        text = 'import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients\n\n'
        text += 'set_option autoImplicit false\n'
        text += f'namespace {NAMESPACE}\n'
        text += f'-- Pinned upstream polynomial {pid}, coefficient of a^{args.a_power}; axes b,c,d.\n'
        text += f'def {name} : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=\n'
        text += literal(data) + '\n'
        text += f'end {NAMESPACE}\n'
        write_once(path, text)
        data_names.append(name)
        widths.append(len(data))
        bindings.append(dict(polynomial_id=pid, a_power=args.a_power,
                             source_terms=len(terms), round_trip_equal=True,
                             module=MODULE+'.Data.'+name))
        if not any(x['module'] == MODULE+'.Data.'+name for x in records):
            records.append(dict(module=MODULE+'.Data.'+name,
                                active_path=str(path.relative_to(ROOT/'lean')),
                                active_sha256=sha(path), saved_certificate_data=True))
    tail = data_names[-1]
    for name in reversed(data_names[:-1]):
        tail = f'DC.add {name} ({tail})'
    width = max(widths)
    tag = f'Slice{args.identity:02d}A{args.a_power:02d}'
    residual = tag + '_residual'
    path = BASE / 'Slices' / (tag + '.lean')
    text = ''.join('import '+r['module']+'\n' for r in records)
    text += 'import Mathlib.Data.Fintype.Fin\nimport Mathlib.Tactic.FinCases\n\n'
    text += 'set_option autoImplicit false\nset_option maxRecDepth 10000\nset_option maxHeartbeats 2000000\n'
    text += f'namespace {NAMESPACE}\n'
    text += 'open CriticalZeroSplitReduction20261003\n'
    text += 'open IntegerReflector\n'
    text += f'def {residual} : List DC.XY := {tail}\n\n'
    text += f'theorem {tag}_length : {residual}.length = {width} := by rfl\n\n'
    text += f'theorem {tag}_checked (i : Fin {width}) : zeroII ({residual}.getD i []) = true := by\n'
    text += '  fin_cases i <;> rfl\n\n'
    values = [f'Coefficients.eval b (DC.interpret c d {name})' for name in data_names]
    target = values[-1]
    for value in reversed(values[:-1]):
        target = value + ' + (' + target + ')'
    text += f'theorem {tag}_value {{R : Type*}} [CommRing R] (b c d : R) :\n    {target} = 0 := by\n'
    text += f'  have hz := DC.allZero_of_certificates c d {residual} (fun n hn =>\n'
    text += f'    {tag}_checked ⟨n, by simpa only [{tag}_length] using hn⟩)\n'
    text += '  have he := Coefficients.eval_allZero b _ hz\n'
    text += f'  simpa only [{residual}, DC.interpret_add, Coefficients.eval_add] using he\n'
    text += f'end {NAMESPACE}\n'
    text = text.replace('DC.', 'CriticalZeroSumAssembly20261003.DenseCoefficients.')
    write_once(path, text)
    records.append(dict(module=MODULE+'.Slices.'+tag,
                        active_path=str(path.relative_to(ROOT/'lean')),
                        active_sha256=sha(path), local_model_adapter=True))
    name = f'MATCHED_THIRD_SLICE_{args.identity:02d}_{args.a_power:02d}'
    dependencies = ['CriticalZeroSumDenseCoefficients', 'CriticalZeroIntegerReflector',
                    'CriticalZeroCoefficientCore', 'CriticalZeroSumCoefficientOps']
    manifest = dict(scope='matched_third_arithmetic', records=records,
        axiom_endpoints=[NAMESPACE+'.'+tag+x for x in ['_length','_checked','_value']],
        dependency_pins=[dict(active_path='NoFourMUBs/Reuse/Archive/'+x+'.lean',
                             active_sha256=sha(ROOT/'lean/NoFourMUBs/Reuse/Archive'/(x+'.lean')))
                         for x in dependencies],
        source_certificate_sha256=pin['sha256'], source_identity=identity['label'],
        a_power=args.a_power, serialization_bindings=bindings,
        scope_note=f'One supplied coefficient slice: {identity["label"]}, a^{args.a_power}. '
                   'Only the cleared-summand cancellation; cofactor products and semantic bindings remain open.',
        atlas_certification=False)
    write_once(AUDIT/(name+'_MANIFEST.json'), json.dumps(manifest, indent=2)+'\n')
    print(json.dumps(dict(manifest=name+'_MANIFEST.json', modules=len(records),
                         scalar_slices=1, width=width, source_terms=sum(x['source_terms'] for x in bindings),
                         certificate_generated=False, atlas_certification=False)))
    return name, manifest


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--identity', type=int, required=True)
    parser.add_argument('--a-power', type=int, required=True)
    args = parser.parse_args()
    document, pin = read_saved_document()
    adopt(document, pin, args)


if __name__ == '__main__':
    main()
