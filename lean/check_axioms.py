"""Build the Lean project and check that every audited theorem uses only propext, Classical.choice and Quot.sound.

Usage: python3 check_axioms.py      (run from lean/; needs elan; exits nonzero on any failure)
"""
import os, re, subprocess, sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
OK = {'propext', 'Classical.choice', 'Quot.sound'}
env = dict(os.environ, PATH=str(Path.home() / '.elan/bin') + os.pathsep + os.environ.get('PATH', ''))
b = subprocess.run(['lake', 'build'], cwd=HERE, env=env, text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
if b.returncode != 0 or re.search(r'(^|\s)error(\(|:)', b.stdout, re.M):
    print(b.stdout[-3000:]); print('LEAN BUILD FAIL'); sys.exit(1)
a = subprocess.run(['lake', 'env', 'lean', 'NoFourMUBs/Axioms.lean'], cwd=HERE, env=env, text=True,
                   stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
lines = [l for l in a.stdout.splitlines() if 'depends on axioms' in l or 'does not depend on any axioms' in l]
bad = []
for l in lines:
    m = re.search(r"'(.+?)' depends on axioms: \[(.*)\]", l)
    if m and not set(x.strip() for x in m.group(2).split(',')) <= OK:
        bad.append(l)
expected = sum(1 for l in (HERE / 'NoFourMUBs/Axioms.lean').read_text().splitlines() if l.startswith('#print axioms'))
print('%d theorems audited (expected %d)' % (len(lines), expected))
for l in bad: print('NONSTANDARD:', l)
if a.returncode != 0 or bad or len(lines) != expected:
    print(a.stdout[-2000:]); print('AXIOM CHECK FAIL'); sys.exit(1)
print('LEAN PASS: build succeeded; every audited theorem uses only propext, Classical.choice, Quot.sound')
