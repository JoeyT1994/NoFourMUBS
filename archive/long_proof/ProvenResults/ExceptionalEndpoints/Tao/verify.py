#!/usr/bin/env python3
"""Replay the Tao exclusion checks (run as `python3 verify.py` in this folder).

Sub-checks, each printing a PASS line:
  1. automorphism: the archive A6 row-action certificate, plus the coordinate
     (column) action computed directly, with cubic-root phases;
  2. system: regenerate the exact torus system and check its digest against the
     input recorded for the frozen elimination (same generator, same order);
  3. elimination_output: the frozen polynomial p(z1) in tao_elimination_z1.out
     factors as (z^3-1)(z^6+52z^3+1)(8z^6+11z^3+8), and p(z^3) filtering on the
     unit circle leaves exactly the nine-letter alphabet;
  4. enumeration: exact enumeration of all 9^5 candidates (90 vectors, no
     orthogonal pair).
The elimination itself (p(z1) lies in the elimination ideal) is NOT replayed
here: it is a frozen external computation.  See TaoExclusion.md, Section 1.
Exits nonzero on failure.
"""
from pathlib import Path
import hashlib
import itertools
import subprocess
import sys
import tempfile
import time

import sympy as sp

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
# sha256 of `tao_full_torus_system.py --order q,z2,z3,z4,z5,t,z1` output
SYSTEM_SHA256 = 'c881bec65b24a6e5cc72417d3ba9a029fb8f0603369cfdf1e5f2e6d647d155cb'


def run_script(name, *args):
    proc = subprocess.run([sys.executable, '-B', str(HERE/name), *args], cwd=HERE,
                          capture_output=True, text=True, timeout=280)
    if proc.returncode:
        raise AssertionError(f'{name} failed:\n{proc.stdout}\n{proc.stderr}')
    return proc.stdout


def automorphism():
    out = run_script('tao_automorphism_certificate.py')
    assert 'TAO AUTOMORPHISM CERTIFICATE PASSED' in out
    import tao_automorphism_certificate as cert
    E = cert.E
    assert all(E[i][j] == E[j][i] for i in range(6) for j in range(6))
    perms = list(itertools.permutations(range(6)))
    # Coordinate action: column permutations c for which some row permutation r
    # makes E[r(i)][c(j)] - E[i][j] additively rank one mod 3 (cubic-root phases).
    column_actions = {c for c in perms if any(cert.additive_rank_one(r, c) for r in perms)}
    alternating = {p for p in perms if cert.even(p)}
    assert column_actions == alternating
    stabilizer = {p for p in column_actions if p[0] == 0}
    assert len(stabilizer) == 60 and {p[1] for p in stabilizer} == set(range(1, 6))
    return 'row and column actions are A6; coordinate-0 stabilizer A5 is transitive on 1..5'


def system():
    with tempfile.TemporaryDirectory() as tmp:
        path = Path(tmp)/'tao_z1.ms'
        run_script('tao_full_torus_system.py', '--order', 'q,z2,z3,z4,z5,t,z1', '--output', str(path))
        digest = hashlib.sha256(path.read_bytes()).hexdigest()
    assert digest == SYSTEM_SHA256, digest
    return 'regenerated msolve input matches the recorded system digest'


def elimination_output():
    z = sp.symbols('z1')
    text = (HERE/'tao_elimination_z1.out').read_text()
    line = next(l for l in text.splitlines() if l.startswith('['))
    p = sp.sympify(line.strip('[]').replace('^', '**'), locals={'z1': z})
    target = 8*z**15+419*z**12+161*z**9-161*z**6-419*z**3-8
    assert sp.expand(p-target) == 0
    assert sp.expand(p-(z**3-1)*(z**6+52*z**3+1)*(8*z**6+11*z**3+8)) == 0
    # Unit-circle filtering, exactly: u=z^3.
    u = sp.symbols('u')
    # Middle factor: roots u=-26 +- 15 sqrt(3) are real with |u| != 1
    # (|u|=1 would give u+1/u=-52, impossible since |u+1/u|<=2).
    roots = sp.solve(u**2+52*u+1, u)
    assert sorted(roots, key=lambda r: sp.N(r)) == [-26-15*sp.sqrt(3), -26+15*sp.sqrt(3)]
    assert all(sp.simplify(r**2-1) != 0 for r in roots)
    eta = (1+sp.I*sp.sqrt(15))/4
    assert sp.expand(2*eta**2-eta+2) == 0 and sp.simplify(eta*sp.conjugate(eta)-1) == 0
    last = sp.Poly(8*u**2+11*u+8, u)
    for r in sp.solve(last.as_expr(), u):
        assert sp.simplify(r*sp.conjugate(r)-1) == 0
        assert sp.simplify(r-eta**3) == 0 or sp.simplify(r-sp.conjugate(eta)**3) == 0
    return 'frozen p(z1) factors as stated; unit-circle roots are the nine-letter alphabet'


def enumeration():
    out = run_script('tao_exact_enumerator.py')
    assert 'common_unbiased_vectors 90' in out and 'orthogonal_pairs 0' in out
    assert 'TAO EXACT ENUMERATION PASSED' in out
    return '90 common-unbiased vectors, 0 orthogonal pairs (exact, all 59049 candidates)'


def main():
    failures = 0
    start = time.monotonic()
    for name, check in [('automorphism', automorphism), ('system', system),
                        ('elimination_output', elimination_output), ('enumeration', enumeration)]:
        t = time.monotonic()
        try:
            message = check()
            print(f'PASS {name}: {message} ({time.monotonic()-t:.1f}s)', flush=True)
        except Exception as error:
            failures += 1
            print(f'FAIL {name}: {type(error).__name__}: {error}', flush=True)
    print(f"{'FAIL' if failures else 'PASS'}: Tao exclusion checks ({time.monotonic()-start:.1f}s). "
          'The elimination step is a frozen external computation and is not replayed here.')
    return 1 if failures else 0


if __name__ == '__main__':
    raise SystemExit(main())
