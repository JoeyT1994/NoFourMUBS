"""Negative tests for the exact Step 1 checker lean/Step1Gen/verify_certificates.py: it must accept a copy of
lean/Step1Gen/certificates and reject each targeted corruption of it.  Each corruption except the first also updates
the file's sha256 in manifest.json, so that the rejection comes from the mathematics, not from the digest.

  step1_digest_mismatch     an identity coefficient changed, manifest left alone: 'certificate digest mismatch'
  step1_identity_altered    the coefficient 4 of cartesian_phase_stationarity (Hx y - Hy x = 4 C v y) made 5: the
                            polynomial identity is false
  step1_isolation_altered   the isolating interval of sqrt(5) shrunk to [143/64, 2235/1000], which no longer contains
                            sqrt(5) = 2.2360...
  step1_inequality_altered  transverse_curvature_sign_by_squaring 2601 < 2645 changed to 2646 < 2645
  step1_claim_dropped       one identity deleted: the claim count no longer matches the manifest
Exits nonzero on any unexpected verdict.  Usage: python3 tests/negative_exact.py
"""
import hashlib, json, shutil, subprocess, sys, tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
STEP1 = ROOT / 'lean/Step1Gen'


def _edit(fname, f, update_digest=True):
    def g(d):
        p = d / fname; data = json.loads(p.read_text()); f(data); p.write_text(json.dumps(data, indent=2) + '\n')
        if update_digest:
            m = json.loads((d / 'manifest.json').read_text())
            for x in m['files']:
                if x['file'] == fname: x['sha256'] = hashlib.sha256(p.read_bytes()).hexdigest()
            (d / 'manifest.json').write_text(json.dumps(m, indent=2) + '\n')
    return g


def _item(lst, name):
    return next(x for x in lst if x['name'] == name)


def _coef(data):
    rhs = _item(data['identities'], 'cartesian_phase_stationarity')['rhs']
    assert rhs[1] == '4'; rhs[1] = '5'


def _isolation(data):
    it = _item(data['isolations'], 'sqrt_five'); assert it['upper'] == '9/4'; it['upper'] = '2235/1000'


def _inequality(data):
    it = _item(data['rational_inequalities'], 'transverse_curvature_sign_by_squaring')
    assert it['lhs'] == '2601'; it['lhs'] = '2646'


def _drop(data):
    data['identities'].pop()


CASES = [
    ('step1_base',               None,                                                   'PASS'),
    ('step1_digest_mismatch',    _edit('interior_core.json', _coef, update_digest=False), 'certificate digest mismatch'),
    ('step1_identity_altered',   _edit('interior_core.json', _coef),                     'polynomial identity failed'),
    ('step1_isolation_altered',  _edit('algebraic_numbers.json', _isolation),            'increasing isolation failed'),
    ('step1_inequality_altered', _edit('algebraic_numbers.json', _inequality),           'rational inequality failed'),
    ('step1_claim_dropped',      _edit('interior_core.json', _drop),                     'claim count or kind differs'),
]


def main():
    bad = 0
    for name, corrupt, expect in CASES:
        with tempfile.TemporaryDirectory() as tmp:
            d = Path(tmp) / 'certificates'; shutil.copytree(STEP1 / 'certificates', d)
            if corrupt: corrupt(d)
            p = subprocess.run([sys.executable, '-B', str(STEP1 / 'verify_certificates.py'), '--certificate-dir', str(d)],
                               text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        last = p.stdout.strip().splitlines()[-1]
        good = (p.returncode == 0) == (corrupt is None) and expect in last
        bad += not good
        print('%s  %-26s %s' % ('ok  ' if good else 'BAD ', name, ('accepted: ' if p.returncode == 0 else 'rejected: ') + last[:110]))
    print('negative exact tests: %d / %d as expected' % (len(CASES) - bad, len(CASES)))
    sys.exit(1 if bad else 0)


if __name__ == '__main__':
    main()
