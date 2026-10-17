"""Negative tests for the atlas checkers: certify.py must accept the small sub-certificate (tests/atlas_fixture.py)
and nonempty.py the one-Record F6 certificate, and each must reject every targeted corruption of them
(tests/corruptions.py), apart from the documented 'accept' cases.  Exits nonzero on any unexpected verdict.

  python3 tests/negative_atlas.py                  run certify.py (Records [0, 1)) or nonempty.py on every case
  python3 tests/negative_atlas.py --write DIR      only write DIR/<case>.json.gz, DIR/<case>.txt (the plain-text form
                                                   read by the Julia checker) and DIR/cases.tsv (standard library only)
"""
import argparse, os, subprocess, sys, tempfile, time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sys.path.insert(0, str(HERE))
import atlas_fixture as FX
import corruptions as CR

ATLAS_DIR = ROOT / 'proof/atlas'
CONVERT = ROOT / 'proof/independent/convert.py'


def write_cases(outdir):
    outdir = Path(outdir); outdir.mkdir(parents=True, exist_ok=True)
    atlas = FX.load_atlas()
    base, f6 = FX.subcertificate(atlas=atlas), FX.f6_certificate(atlas)
    cases = [('base', 'accept', 'all', base)] + [(n, e, w, CR.corrupted(base, f)) for (n, e, w, f) in CR.CASES]
    cases += [('f6_base', 'accept', 'nonemptiness', f6)] + [(n, e, w, CR.corrupted(f6, f)) for (n, e, w, f) in CR.F6_CASES]
    with open(outdir / 'cases.tsv', 'w') as tsv:
        tsv.write('#case\texpect\twhat\n')
        for name, expect, what, cert in cases:
            FX.write(cert, outdir / (name + '.json.gz'))
            subprocess.run([sys.executable, str(CONVERT), str(outdir / (name + '.json.gz')), str(outdir / (name + '.txt'))],
                           check=True, stdout=subprocess.DEVNULL)
            tsv.write('%s\t%s\t%s\n' % (name, expect, what))
    return [(n, e, w) for (n, e, w, _) in cases]


def run(script, *args):
    env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', OMP_NUM_THREADS='1', OPENBLAS_NUM_THREADS='1')
    p = subprocess.run([sys.executable, '-B', '-W', 'ignore', script, *args], cwd=ATLAS_DIR, env=env, text=True,
                       stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    lines = [l for l in p.stdout.splitlines() if l.strip()]
    if p.returncode == 0:
        why = 'accepted'
    elif any(l.startswith('Traceback') for l in lines):
        why = 'rejected by exception: ' + lines[-1][:110]
    else:
        fails = [l for l in lines if l.startswith(('FAIL', 'NONEMPTY FAIL', 'NOTE'))]
        why = 'rejected: ' + (fails[0] if fails else lines[-1])[:110]
    return p.returncode == 0, why


def check_case(d, name, what):
    cert = str(d / (name + '.json.gz'))
    t = time.time()
    if what == 'nonemptiness':
        ok, why = run('nonempty.py', cert); return ok, 'nonempty.py: ' + why, time.time() - t
    ok, why = run('certify.py', cert, '0', '1')
    return ok, 'certify.py:  ' + why, time.time() - t


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--write', metavar='DIR', help='only write the corrupted certificates to DIR')
    ap.add_argument('-j', '--jobs', type=int, default=4)
    a = ap.parse_args()
    if a.write:
        cases = write_cases(a.write); print('wrote %d certificates to %s' % (len(cases), a.write)); return
    with tempfile.TemporaryDirectory() as tmp:
        d = Path(tmp); cases = write_cases(d)
        with ThreadPoolExecutor(a.jobs) as pool:
            res = list(pool.map(lambda c: check_case(d, c[0], c[2]), cases))
    bad = 0
    for (name, expect, what), (ok, why, dt) in zip(cases, res):
        good = ok == (expect == 'accept')
        bad += not good
        print('%s  %-25s expect %-6s (%s)  %.0fs' % ('ok  ' if good else 'BAD ', name, expect, what, dt))
        print('        ' + why)
    print('negative atlas tests: %d / %d as expected' % (len(cases) - bad, len(cases)))
    sys.exit(1 if bad else 0)


if __name__ == '__main__':
    main()
