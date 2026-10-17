"""Build the Lean project and check that every audited theorem uses only propext, Classical.choice and Quot.sound.

Usage: python3 check_axioms.py          (run from lean/; needs elan; exits nonzero on any failure)
       python3 check_axioms.py --full   also build NoFourMUBs.Complete (L1's kernel checks, about 20 min) and
                                        NoFourMUBs.Final (strict-corner coverage; its data modules take
                                        hours on first build), and audit NoFourMUBs/AxiomsComplete.lean
"""
import os, re, subprocess, sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
OK = {'propext', 'Classical.choice', 'Quot.sound'}
env = dict(os.environ, PATH=str(Path.home() / '.elan/bin') + os.pathsep + os.environ.get('PATH', ''))


def build(*targets):
    b = subprocess.run(['lake', 'build', *targets], cwd=HERE, env=env, text=True, stdout=subprocess.PIPE,
                       stderr=subprocess.STDOUT)
    if b.returncode != 0 or re.search(r'(^|\s)error(\(|:)', b.stdout, re.M):
        print(b.stdout[-3000:]); print('LEAN BUILD FAIL'); sys.exit(1)


def audit(path):
    a = subprocess.run(['lake', 'env', 'lean', path], cwd=HERE, env=env, text=True,
                       stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    # Lean wraps long axiom lists over several lines; rejoin them so every axiom is checked.
    out = re.sub(r',\s*\n\s*', ', ', a.stdout)
    lines = [l for l in out.splitlines() if 'depends on axioms' in l or 'does not depend on any axioms' in l]
    bad = []
    for l in lines:
        m = re.search(r"'(.+?)' depends on axioms: \[(.*)\]", l)
        if m and not set(x.strip() for x in m.group(2).split(',')) <= OK:
            bad.append(l)
    expected = sum(1 for l in (HERE / path).read_text().splitlines() if l.startswith('#print axioms'))
    print('%s: %d theorems audited (expected %d)' % (path, len(lines), expected))
    for l in bad: print('NONSTANDARD:', l)
    if a.returncode != 0 or bad or len(lines) != expected:
        print(a.stdout[-2000:]); print('AXIOM CHECK FAIL'); sys.exit(1)


build()
audit('NoFourMUBs/Axioms.lean')
audit('Step1Gen/lean/Step1/Audit.lean')   # the 216 Step 1 certificate theorems
if '--full' in sys.argv[1:]:
    build('NoFourMUBs.Complete')
    build('NoFourMUBs.Final')
    audit('NoFourMUBs/AxiomsComplete.lean')
print('LEAN PASS: build succeeded; every audited theorem uses only propext, Classical.choice, Quot.sound')
