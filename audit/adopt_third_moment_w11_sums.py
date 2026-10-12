"""Select the existing W11 certificate closure after the symmetry audit passes.

No polynomial or coefficient is generated. Existing compiled source receipts
are retained only with matching hashes, and the final closure is audited again.
"""
import datetime
import json
import re

from adopt_third_moment_slice import AUDIT, BASE, MODULE, NAMESPACE, ROOT, sha, write_once
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('matched_third_arithmetic')
    symmetry_path = AUDIT / 'KERNEL_AUDIT_MATCHED_THIRD_SYMMETRY_STATUS.json'
    symmetry = json.loads(symmetry_path.read_text())
    assert symmetry['status'] == 'PASS'
    for rel, digest in symmetry['source_hashes'].items():
        assert sha(ROOT / 'lean' / rel) == digest

    names = ['MATCHED_THIRD_ALL_SLICES', 'MATCHED_THIRD_CLEARED_SUMS',
             'MATCHED_THIRD_SUM00']
    records, endpoints, pins, receipts = {}, set(), {}, []
    certificate_hashes = set()
    for name in names:
        path = AUDIT / (name + '_MANIFEST.json')
        manifest = json.loads(path.read_text())
        certificate_hashes.add(manifest['source_certificate_sha256'])
        for row in manifest['records']:
            old = records.get(row['module'])
            assert old is None or old['active_sha256'] == row['active_sha256']
            records[row['module']] = row
        endpoints.update(manifest['axiom_endpoints'])
        if name == 'MATCHED_THIRD_SUM00':
            pins.update({r['active_path']: r['active_sha256']
                         for r in manifest.get('dependency_pins', [])})
        status_path = AUDIT / (name + '_BUILD_STATUS.json')
        receipts.append((status_path, json.loads(status_path.read_text())))
    assert len(certificate_hashes) == 1
    certificate_hash = certificate_hashes.pop()
    source_certificate = AUDIT / 'updates/4a3728/files/proof/coverage/returns/' \
        'E_matched_flatness/direct/third_moment_certificates.json.gz'
    assert sha(source_certificate) == certificate_hash

    seen, selected = set(), []

    def visit(module):
        if module in seen or module not in records:
            return
        seen.add(module)
        row = records[module]
        source = ROOT / 'lean' / row['active_path']
        assert sha(source) == row['active_sha256']
        for imports in re.findall(r'^import\s+([^\n]+)', source.read_text(), re.M):
            for dependency in imports.split('--', 1)[0].split():
                visit(dependency)
        selected.append(row)

    roots = [MODULE + '.Sums.ClearedSum00', MODULE + '.Sums.ClearedSum01']
    for module in roots:
        visit(module)
    path = BASE / 'W11ClearedSums.lean'
    write_once(path, ''.join('import ' + m + '\n' for m in roots))
    selected.append(dict(module=MODULE + '.W11ClearedSums',
        active_path=str(path.relative_to(ROOT / 'lean')), active_sha256=sha(path),
        import_assembly=True))
    public = sorted(e for e in endpoints if e.rsplit('.', 1)[1].startswith(
        ('Slice00A', 'Slice01A', 'ClearedSum00_', 'ClearedSum01_')))
    # The final endpoint is accessible from the final import assembly.
    public.remove(NAMESPACE + '.ClearedSum01_value')
    public.append(NAMESPACE + '.ClearedSum01_value')
    assert len(public) == 83
    name = 'MATCHED_THIRD_W11_SUMS'
    manifest = dict(scope='matched_third_arithmetic', records=selected,
        axiom_endpoints=public,
        dependency_pins=[dict(active_path=p, active_sha256=h) for p, h in pins.items()],
        dependency_audits=['KERNEL_AUDIT_MATCHED_THIRD_SYMMETRY_STATUS.json'],
        source_certificate_sha256=certificate_hash,
        selected_identity_indices=[0, 1], selected_cofactor_product_indices=list(range(34)),
        selection_justification='The audited universal W11 transport theorem derives '
            'all four weighted identities by row/column relabelling.',
        scope_note='Only the two saved W11 cleared sums, over every commutative ring. '
            'Cofactor products and rational-expression/matrix bindings remain open.',
        atlas_certification=False)
    write_once(AUDIT / (name + '_MANIFEST.json'), json.dumps(manifest, indent=2) + '\n')
    hashes = {r['active_path']: r['active_sha256'] for r in selected}
    done, used_receipts = set(), []
    for receipt_path, receipt in receipts:
        old_done = set(receipt['completed_modules'])
        retained = [r['module'] for r in selected if r['module'] in old_done and
                    receipt['source_hashes'].get(r['active_path']) == r['active_sha256']]
        done.update(retained)
        used_receipts.append(dict(file=receipt_path.name, sha256=sha(receipt_path),
                                  retained_modules=retained))
    status = dict(completed_modules=sorted(done), completed_files=len(done),
        total_files=len(selected), complete=False, source_hashes=hashes,
        returncode=0, manifest=name + '_MANIFEST.json',
        provenance='Retained compiled modules with identical source hashes; '
            'new assembly and final axiom audit still required.',
        reused_receipts=used_receipts, atlas_certification=False)
    write_once(AUDIT / (name + '_BUILD_STATUS.json'), json.dumps(status, indent=2) + '\n')
    selection = dict(status='SELECTED_AFTER_SYMMETRY_PASS',
        selected_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
        symmetry_audit_sha256=sha(symmetry_path), selected_identity_indices=[0, 1],
        selected_cofactor_product_indices=list(range(34)),
        all_slices_queue='Do not resume: unneeded W12/W21/W22 checks are retained as evidence.',
        selected_closure_modules=len(selected), previously_compiled_modules=len(done),
        arithmetic_complete=False, rational_bindings_complete=False,
        certificate_generated=False, atlas_certification=False)
    write_once(AUDIT / 'MATCHED_THIRD_W11_SELECTION.json', json.dumps(selection, indent=2) + '\n')
    print(json.dumps(selection), flush=True)


if __name__ == '__main__':
    main()
