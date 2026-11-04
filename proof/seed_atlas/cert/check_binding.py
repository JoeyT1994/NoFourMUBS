"""Check that an Arb receipt was produced by this checkout's code on a given certificate.

Usage: python check_binding.py [RECEIPT] [CERT]
  RECEIPT  default ../results/arb_receipt.json;  CERT  default ../results/seed_atlas_certificate.json.gz

Compares the receipt's binding (certify_seed_atlas.py) with the SHA-256 of the certificate and of every bound source
in this checkout: the same files, none missing or extra, every hash equal.  Prints the receipt's verdict.  Exits
nonzero on any difference or if the verdict is not PASS.
"""
import json, os, sys
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
from certify_seed_atlas import bound_sources, sha256_file


def main(argv):
    receipt = argv[0] if len(argv) > 0 else os.path.join(HERE, '../results/arb_receipt.json')
    cert = argv[1] if len(argv) > 1 else os.path.join(HERE, '../results/seed_atlas_certificate.json.gz')
    with open(receipt) as f: r = json.load(f)
    b = r.get('binding')
    if not b or b.get('format') != 'nofour-arb-seed-binding-v1':
        print('no code binding in this receipt'); return 1
    problems = []
    if sha256_file(cert) != b['certificate_sha256']: problems.append('certificate: SHA-256 differs')
    now = bound_sources()
    for path in sorted(set(now) | set(b['sources'])):
        if path not in now: problems.append('%s: in the receipt, missing here' % path)
        elif path not in b['sources']: problems.append('%s: here, not in the receipt' % path)
        elif now[path] != b['sources'][path]: problems.append('%s: SHA-256 differs' % path)
    verdict = r['summary'].get('verdict')
    print('certificate %s' % b['certificate_sha256'])
    print('%d sources; python %s; %s' % (len(b['sources']), b['python'], ', '.join('%s %s' % kv for kv in b['packages'].items() if kv[1])))
    for p in problems: print('MISMATCH', p)
    print('verdict: %s; binding: %s' % (verdict, 'OK' if not problems else 'MISMATCH'))
    return 0 if (not problems and verdict == 'PASS') else 1


if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
