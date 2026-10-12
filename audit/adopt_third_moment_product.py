"""Assemble one supplied four-variable cofactor product from its saved slices.

All arithmetic is checked by the existing Lean evaluators. This script only
selects supplied arrays and writes the outer Horner assembly, without computing
new coefficients or regenerating the upstream certificate.
"""
import argparse
import json
import math
import subprocess
import sys

from adopt_third_moment_slice import AUDIT, BASE, MODULE, NAMESPACE, ROOT, read_saved_document, sha, write_once
from adopt_third_moment_product_slice import products


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--product', type=int, required=True)
    args = parser.parse_args()
    selection = json.loads((AUDIT / 'MATCHED_THIRD_W11_SELECTION.json').read_text())
    assert args.product in selection['selected_cofactor_product_indices']
    document, pin = read_saved_document()
    product = products(document)[args.product]
    left, right, target = [document['polynomials'][product[k]] for k in ['left', 'right', 'target']]
    lp = {s['a_power'] for s in left['a_slices']}
    rp = {s['a_power'] for s in right['a_slices']}
    tp = {s['a_power'] for s in target['a_slices']}
    powers = sorted({i + j for i in lp for j in rp} | tp)
    assert all(any(i in lp and n - i in rp for i in range(n + 1)) for n in powers)
    records, endpoints, receipt_names = {}, [], []
    for power in powers:
        name = f'MATCHED_THIRD_PRODUCT_{args.product:03d}_{power:02d}'
        path = AUDIT / (name + '_MANIFEST.json')
        if not path.exists():
            subprocess.run([sys.executable, str(AUDIT / 'adopt_third_moment_product_slice.py'),
                '--product', str(args.product), '--a-power', str(power)], check=True, cwd=ROOT)
        m = json.loads(path.read_text())
        assert m['source_certificate_sha256'] == pin['sha256']
        assert m['source_product'] == product
        for row in m['records']:
            assert sha(ROOT / 'lean' / row['active_path']) == row['active_sha256']
            records[row['module']] = row
        endpoints.extend(m['axiom_endpoints'])
        receipt_names.append(name + '_BUILD_STATUS.json')

    # Use the same outer padding as the existing saved-sum polynomial references.
    width = 16
    for polynomial in [left, right, target]:
        pid = polynomial['id']
        ps = {s['a_power'] for s in polynomial['a_slices']}
        assert max(ps, default=0) < width
        digits = [f'P{pid:03d}A{k:02d}' if k in ps else '[]' for k in range(width)]
        imports = [MODULE + '.Data.' + x for x in digits if x != '[]']
        body = '  [' + ', '.join(digits) + ']\n'
        path = BASE / 'Polynomials' / f'P{pid:03d}.lean'
        if path.exists():
            assert body in path.read_text()
        else:
            source = 'import ' + MODULE + '.Model\n'
            source += ''.join('import ' + x + '\n' for x in imports)
            source += '\nset_option autoImplicit false\n'
            source += f'namespace {NAMESPACE}\n'
            source += f'-- Saved integer array for polynomial {pid}; original scale {polynomial["scale"]}.\n'
            source += f'def P{pid:03d} : List (List CriticalZeroSumAssembly20261003.DenseCoefficients.XY) :=\n'
            source += body + f'end {NAMESPACE}\n'
            write_once(path, source)
        records[MODULE + f'.Polynomials.P{pid:03d}'] = dict(
            module=MODULE + f'.Polynomials.P{pid:03d}',
            active_path=str(path.relative_to(ROOT / 'lean')), active_sha256=sha(path),
            saved_data_reference_assembly=True)

    ls = product['scale'] * target['scale']
    rs = left['scale'] * right['scale']
    common = math.gcd(ls, rs)
    ls //= common
    rs //= common
    refs = [f'P{x["id"]:03d}' for x in [left, right, target]]
    raw_product = 'CriticalZeroSumAssembly20261003.Coefficients.mul ' \
        f'({refs[0]}.map (sliceValue b c d)) ({refs[1]}.map (sliceValue b c d))'
    raw_target = f'{refs[2]}.map (sliceValue b c d)'
    if ls != 1:
        raw_product = f'Coefficients.scale ({ls} : R) ({raw_product})'
    if rs != 1:
        raw_target = f'Coefficients.scale ({rs} : R) ({raw_target})'
    residual = f'Coefficients.add ({raw_product}) (Coefficients.neg ({raw_target}))'
    lhs = f'polynomialValue a b c d {refs[0]} * polynomialValue a b c d {refs[1]}'
    rhs = f'polynomialValue a b c d {refs[2]}'
    if ls != 1:
        lhs = f'({ls} : R) * ({lhs})'
    if rs != 1:
        rhs = f'({rs} : R) * ({rhs})'
    tag = f'Product{args.product:03d}'
    source = ''.join('import ' + MODULE + '.Polynomials.' + x + '\n' for x in dict.fromkeys(refs))
    source += ''.join(f'import {MODULE}.Products.{tag}A{k:02d}\n' for k in powers)
    source += '\nset_option autoImplicit false\nset_option maxRecDepth 10000\n'
    source += 'set_option maxHeartbeats 4000000\n'
    source += f'namespace {NAMESPACE}\nopen CriticalZeroSplitReduction20261003\n'
    source += f'\n/-- The complete supplied cofactor product, with primitive integer scales. -/\n'
    source += f'theorem {tag}_value {{R : Type*}} [CommRing R] (a b c d : R) :\n    {lhs} = {rhs} := by\n'
    source += '  have hz0 : sliceValue b c d [] = (0 : R) := rfl\n'
    source += f'  have hz : Coefficients.allZero ({residual}) := by\n'
    source += '    refine ⟨' + ', '.join('?_ ' for _ in range(2 * width - 1)) + ', True.intro⟩\n'
    simplifiers = 'hz0,zero_mul,mul_zero,zero_add,add_zero,neg_zero'
    for k in range(2 * width - 1):
        if k in powers:
            source += f'    · simpa only [{simplifiers},sub_eq_add_neg] using\n'
            source += f'        (sub_eq_zero.mpr ({tag}A{k:02d}_value b c d))\n'
        else:
            source += f'    · simp only [{simplifiers}]\n'
    source += '  have he := Coefficients.eval_allZero a _ hz\n'
    source += '  simp only [Coefficients.eval_add,Coefficients.eval_neg,Coefficients.eval_scale,\n'
    source += '    CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he\n'
    source += '  apply sub_eq_zero.mp\n'
    source += '  simpa only [polynomialValue,sub_eq_add_neg] using he\n'
    source += f'end {NAMESPACE}\n'
    path = BASE / 'Products' / (tag + '.lean')
    write_once(path, source)
    module = MODULE + '.Products.' + tag
    records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                           active_sha256=sha(path), local_model_adapter=True)
    endpoints.append(NAMESPACE + '.' + tag + '_value')
    manifest = dict(scope='matched_third_arithmetic', records=list(records.values()),
        axiom_endpoints=endpoints,
        dependency_pins=[dict(active_path=str((BASE / 'Model.lean').relative_to(ROOT / 'lean')),
                              active_sha256=sha(BASE / 'Model.lean'))],
        dependency_audits=['KERNEL_AUDIT_MATCHED_THIRD_W11_SUMS_STATUS.json'],
        source_certificate_sha256=pin['sha256'], product_index=args.product,
        source_product=product, integer_scales=dict(left=ls, right=rs, cancelled_common=common),
        coefficient_powers=powers,
        scope_note=f'Complete supplied cofactor product {args.product}, with saved integer scaling. '
                   'Other products and rational-expression/matrix bindings remain open.',
        atlas_certification=False)
    name = f'MATCHED_THIRD_PRODUCT_{args.product:03d}'
    write_once(AUDIT / (name + '_MANIFEST.json'), json.dumps(manifest, indent=2) + '\n')
    hashes = {r['active_path']: r['active_sha256'] for r in records.values()}
    completed = set()
    receipt_names.append('MATCHED_THIRD_W11_SUMS_BUILD_STATUS.json')
    # Reuse overlapping factor arrays from every already audited product.
    product_audits = list(AUDIT.glob('KERNEL_AUDIT_MATCHED_THIRD_PRODUCT_*_STATUS.json'))
    product_audits += list(AUDIT.glob('KERNEL_AUDIT_MATCHED_THIRD_MONOMIAL_TRANSPORT_*_STATUS.json'))
    for audit_path in product_audits:
        old_audit = json.loads(audit_path.read_text())
        if old_audit.get('status') == 'PASS':
            receipt_names.append(audit_path.name.removeprefix('KERNEL_AUDIT_')
                                 .replace('_STATUS.json', '_BUILD_STATUS.json'))
    for receipt in dict.fromkeys(receipt_names):
        p = AUDIT / receipt
        if not p.exists():
            continue
        d = json.loads(p.read_text())
        for row in records.values():
            if row['module'] in d['completed_modules'] and \
                    d['source_hashes'].get(row['active_path']) == row['active_sha256']:
                completed.add(row['module'])
    status = dict(completed_modules=sorted(completed), completed_files=len(completed),
        total_files=len(records), complete=False, source_hashes=hashes, returncode=0,
        manifest=name + '_MANIFEST.json', atlas_certification=False)
    write_once(AUDIT / (name + '_BUILD_STATUS.json'), json.dumps(status, indent=2) + '\n')
    print(json.dumps(dict(manifest=name, modules=len(records), retained=len(completed),
                         coefficient_count=len(powers), certificate_generated=False,
                         atlas_certification=False)), flush=True)


if __name__ == '__main__':
    main()
