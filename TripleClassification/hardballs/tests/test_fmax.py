"""Regression for the certified maximum (REVIEW §2): 1 versus 1 + 2^-80 at 160 bits."""
import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import run_cell  # noqa: F401  (puts the pinned native modules on sys.path)
import witness as W
from flint import arb, ctx


def test_fmax():
    ctx.prec = 160
    a, b = arb(1), arb(1) + arb(2) ** -80
    assert float(a.upper()) == float(b.upper())                 # the floating key cannot tell them apart
    for xs in ([a, b], [b, a], [b], [a, a, b]):
        m = W.fmax(xs)
        assert all(m >= x.upper() for x in xs) and m >= b      # dominates every candidate exactly
    assert W.fmax([arb(-3), arb(-2)]) >= -2
    for bad in ([], [arb('nan')], [arb('inf')]):
        try: W.fmax(bad)
        except ArithmeticError: continue
        raise AssertionError('accepted %r' % bad)


if __name__ == '__main__':
    test_fmax(); print('fmax regression: ok')
