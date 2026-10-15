"""Addendum to CRITICAL_STRIP_CLASSIFICATION.md: the full rational form of the nonzero-J square sum S.

The dossier's verifier checks only the numerator of S, after reduction by the splitting-algebra relations. Here the
denominator is reduced in the same way and factored, so that S = N/D is explicit. Exact arithmetic (python-flint).
Run from this directory: python3 i4_denominator.py
"""
import sys, json
from pathlib import Path
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'MinimalConstruction/Proofs'))
from flint import fmpq_mpoly, fmpq_mpoly_ctx
import verify_critical_square_sums as V

S = V.square_sum('nonzero')
ctx = fmpq_mpoly_ctx.get(['b', 'a', 'c', 'd'])          # b = Y, a = X, c = k, d = K
num = V.split_reduce(S.n, 'nonzero')
den = V.split_reduce(S.d, 'nonzero')
print('reduced numerator: degrees', num.degrees(), 'terms', len(num))
print('reduced denominator: degrees', den.degrees(), 'terms', len(den))
fd = den.factor()
print('denominator factorisation: unit', fd[0])
for f, e in fd[1]:
    print('   factor^%d:' % e, str(f)[:200], '...' if len(str(f)) > 200 else '')
data = json.loads((ROOT / 'MinimalConstruction/Proofs/critical_quartic.json').read_text())
print('stored A polynomials:', [k for k in data if k.startswith('A')] or list(data)[:8])

# compare with the stored numerator factorisation and assemble S = N / D in lowest terms
nfac = [(fmpq_mpoly(f, ctx), e) for f, e in data['factors']]
print('numerator unit', data['unit'])
for f, e in nfac:
    s = str(f); print('   num factor^%d (%d terms): %s' % (e, len(f), s[:120] + ('...' if len(s) > 120 else '')))
dfac = fd[1]
for f, e in dfac:
    for g, eg in nfac:
        if f == g or f == -g:
            print('denominator factor appears in the numerator with exponent', eg, '(denominator exponent', e, ')')
