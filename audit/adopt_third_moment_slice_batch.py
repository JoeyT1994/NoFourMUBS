"""Adopt every saved cancellation slice, reusing the checked pilot unchanged.

This only transcribes the upstream integers. Arithmetic is checked subsequently
by Lean through the already adopted coefficient evaluator.
"""
from contextlib import redirect_stdout
from pathlib import Path
from types import SimpleNamespace
import io
import json
import fcntl

from adopt_third_moment_slice import (
    AUDIT, BASE, MODULE, ROOT, adopt, read_saved_document, sha, write_once,
)


def main():
    with (AUDIT / 'SEMANTIC_ALGEBRA_QUEUE.lock').open('a') as lock:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        document, pin = read_saved_document()
        records, endpoints, bindings, slices = {}, [], [], []
        pilot = json.loads((AUDIT / 'KERNEL_AUDIT_MATCHED_THIRD_SLICE_00_05_STATUS.json').read_text())
        assert pilot['status'] == 'PASS'
        for path, digest in pilot['source_hashes'].items():
            assert sha(ROOT / 'lean' / path) == digest
        for index, identity in enumerate(document['identities']):
            for power in identity['coefficient_identity_a_powers']:
                with redirect_stdout(io.StringIO()):
                    name, manifest = adopt(document, pin, SimpleNamespace(identity=index, a_power=power))
                for record in manifest['records']:
                    if record['module'] in records:
                        assert records[record['module']] == record
                    records[record['module']] = record
                endpoints.extend(manifest['axiom_endpoints'])
                bindings.extend(manifest['serialization_bindings'])
                slices.append(dict(identity=index, label=identity['label'], a_power=power,
                                   module=manifest['records'][-1]['module']))
        assert len(slices) == 110 and len(endpoints) == 330
        path = BASE / 'SliceChecks.lean'
        write_once(path, ''.join('import ' + x['module'] + '\n' for x in slices))
        records[MODULE + '.SliceChecks'] = dict(
            module=MODULE + '.SliceChecks', active_path=str(path.relative_to(ROOT / 'lean')),
            active_sha256=sha(path), import_assembly=True)
        combined = dict(scope='matched_third_arithmetic', records=list(records.values()),
            axiom_endpoints=endpoints, dependency_pins=manifest['dependency_pins'],
            source_certificate_sha256=pin['sha256'], serialization_bindings=bindings,
            slices=slices,
            scope_note='All 110 supplied coefficient cancellations for the eight third-moment '
                       'residuals. Cofactor products, rational formula bindings and actual strict '
                       'seed specialization remain open.', atlas_certification=False)
        name = 'MATCHED_THIRD_ALL_SLICES'
        write_once(AUDIT / (name + '_MANIFEST.json'), json.dumps(combined, indent=2) + '\n')
        status = AUDIT / (name + '_BUILD_STATUS.json')
        if not status.exists():
            previous = json.loads((AUDIT / 'MATCHED_THIRD_SLICE_00_05_BUILD_STATUS.json').read_text())
            assert previous['complete'] and previous['returncode'] == 0
            previous.update(complete=False, total_files=len(records),
                            manifest=name + '_MANIFEST.json',
                            retained_from='MATCHED_THIRD_SLICE_00_05_BUILD_STATUS.json')
            status.write_text(json.dumps(previous, indent=2) + '\n')
        print(json.dumps(dict(manifest=name + '_MANIFEST.json', modules=len(records),
            coefficient_slices=len(slices), original_pilot_retained=True,
            saved_terms=sum(x['source_terms'] for x in bindings),
            certificate_generated=False, atlas_certification=False)))


if __name__ == '__main__':
    main()
