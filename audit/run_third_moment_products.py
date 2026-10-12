"""Check a bounded group of saved W11 products, reusing every current receipt."""
from pathlib import Path
import argparse
import datetime
import fcntl
import hashlib
import json
import os
import subprocess
import sys

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def product_evidence(index):
    name = f'MATCHED_THIRD_PRODUCT_{index:03d}'
    result = dict(manifest=name + '_MANIFEST.json', audit='KERNEL_AUDIT_' + name + '_STATUS.json',
                  endpoint=f'NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData.Product{index:03d}_value')
    registry = AUDIT / 'MATCHED_THIRD_PRODUCT_TRANSPORTS.json'
    if registry.exists():
        result = json.loads(registry.read_text())['products'].get(str(index), result)
    return result


def passed(index):
    evidence = product_evidence(index)
    path = AUDIT / evidence['audit']
    if not path.exists():
        return False
    audit = json.loads(path.read_text())
    manifest = AUDIT / evidence['manifest']
    if audit.get('status') != 'PASS' or sha(manifest) != audit.get('manifest_sha256'):
        return False
    if evidence['endpoint'] not in audit['axiom_endpoints']:
        return False
    for rel, digest in (audit['source_hashes'] | audit.get('dependency_source_hashes', {})).items():
        if sha(ROOT / 'lean' / rel) != digest:
            return False
    return all(sha(AUDIT / rel) == digest for rel, digest in audit['dependency_audits'].items())


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--start', type=int, required=True)
    parser.add_argument('--through', type=int, required=True)
    parser.add_argument('--lane', choices=['semantic', 'critical'], default='semantic',
                        help='Use either existing compiler lane without adding a compiler.')
    args = parser.parse_args()
    assert 0 <= args.start <= args.through < 34
    requested = list(range(args.start, args.through + 1))
    # These candidates may follow from earlier products by simple monomial
    # transport. Review/verify that reuse before checking them independently.
    pending_transport = {6, 9, 17, 18, 21, 23, 25, 27, 32}
    assert not {i for i in set(requested) & pending_transport if not passed(i)}, \
        'Review the saved monomial reuse candidates first.'
    with (AUDIT / 'MATCHED_THIRD_PRODUCT_QUEUE.lock').open('a') as lock:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        path = AUDIT / 'MATCHED_THIRD_PRODUCTS_QUEUE_STATUS.json'
        state = dict(status='RUNNING', pid=os.getpid(), lane=args.lane, requested_products=requested,
            completed_products=[], started_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
            atlas_certification=False)
        try:
            for index in requested:
                state['current_product'] = index
                path.write_text(json.dumps(state, indent=2) + '\n')
                name = f'MATCHED_THIRD_PRODUCT_{index:03d}'
                if not passed(index):
                    if not (AUDIT / (name + '_MANIFEST.json')).exists():
                        with (AUDIT / (name + '_ADOPTION.log')).open('w') as log:
                            subprocess.run([sys.executable, str(AUDIT / 'adopt_third_moment_product.py'),
                                '--product', str(index)], check=True, cwd=ROOT,
                                stdout=log, stderr=subprocess.STDOUT)
                    subprocess.run([sys.executable, str(AUDIT / 'run_third_moment_adapter.py'),
                                    name, '--lane', args.lane],
                                   check=True, cwd=ROOT)
                    if (AUDIT / 'SOS_CANONICAL_BUILD_STOP').exists() and not passed(index):
                        state.update(status='YIELDED_BETWEEN_MODULES',
                            updated_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
                        path.write_text(json.dumps(state, indent=2) + '\n')
                        return
                    assert passed(index)
                state['completed_products'].append(index)
                path.write_text(json.dumps(state, indent=2) + '\n')
                selection_path = AUDIT / 'MATCHED_THIRD_W11_SELECTION.json'
                selection = json.loads(selection_path.read_text())
                verified = [i for i in range(34) if passed(i)]
                selection.update(whole_cofactor_products_complete=len(verified),
                    verified_product_indices=verified,
                    whole_cofactor_product_audits=list(dict.fromkeys(product_evidence(i)['audit']
                                                                    for i in verified)),
                    last_updated_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
                selection_path.write_text(json.dumps(selection, indent=2) + '\n')
                print(f'Full saved W11 products verified: {len(verified)}/34', flush=True)
            state['status'] = 'REQUESTED_BATCH_PASS'
        except BaseException as error:
            state.update(status='STOPPED', error=str(error))
            raise
        finally:
            state['updated_utc'] = datetime.datetime.now(datetime.timezone.utc).isoformat()
            path.write_text(json.dumps(state, indent=2) + '\n')


if __name__ == '__main__':
    main()
