"""Replay regular-chart constants, an outward local chart, and T6 diagnostics."""
import json
import math
from pathlib import Path
import sys

from flint import arb, ctx
import mpmath as mp
import numpy as np
import sympy as sp
from chart import certify, jacobian, seed_moments

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parent/'CornerBounds/SideColumnPrune'))
from prune import R_jet


def constants():
    a, b = sp.symbols('a b', real=True)
    assert sp.expand(5*(a*a+b*b)-(a*a+b*b+2*(b-a)**2)-2*(a+b)**2) == 0
    assert 64*sp.Rational(12, 5)**5 < 72**2
    C = sp.Matrix([[1, sp.I], [1, -sp.I]])
    assert C.det()**3 == 8*sp.I
    print('PASS: Jacobian coordinate factor and quantitative norm constants')


def diagnostic():
    cases = json.loads((HERE/'data/cells.json').read_text())
    rho = arb(math.pi/512)  # exact binary Float64 radius of the benchmark
    minus = [-1, 1, 1, -1]
    for i, row in enumerate(cases, 1):
        center = [arb(v) for v in row]
        low = R_jet([v+e*rho for v, e in zip(center, minus)], [arb(0)]*4).v.real
        high = R_jet([v-e*rho for v, e in zip(center, minus)], [arb(0)]*4).v.real
        assert high > 0
        if i != 5:
            assert low < 0
            print(f'PASS: cell {i} crosses R=0; endpoint R = {low}, {high}')
        else:
            # Mean-value Hessian bound certifies monotonicity throughout
            # the whole box, hence the asserted endpoint is its minimum.
            point = R_jet(center, [arb(0)]*4)
            box = R_jet(center, [rho]*4)
            for j in range(4):
                error = sum(abs(box.h[j][k].real)*rho for k in range(4))
                derivative = point.d[j].real+arb(0, error.upper())
                assert (-minus[j])*derivative > 0
            assert low > arb('0.3328')
            print(f'PASS: cell 5 strictly positive throughout; minimum R = {low}')


def local_chart():
    # Exact physical Fourier-family control from CornerBounds/PROOF.md §4.
    delta = 2*(arb(1)/32).atan()
    theta = [4*arb.pi()/3, -arb.pi()/3+delta, arb(0), arb.pi()+delta]
    mp.mp.dps = 60
    d = 2*mp.atan(mp.mpf(1)/32)
    q = [float(2*mp.pi/3+d), float(d), float(mp.pi), float(mp.pi),
         float(mp.pi/3), float(mp.pi)]
    A = np.linalg.inv(np.array([[float(v.mid()) for v in row]
                               for row in jacobian([arb(v) for v in q])])).tolist()
    target = seed_moments([v+arb(0, arb('1e-8')) for v in theta])
    assert certify(q, arb('1e-4'), target, A)
    assert not certify(q, arb('1e-4'), [arb(100)]*6, A)
    assert not certify(q, arb('1e-4'), target, [[0]*6 for _ in range(6)])
    print('PASS: outward chart on physical seed box; incompatible target and zero inverse rejected')


if __name__ == '__main__':
    ctx.prec = 96
    constants()
    diagnostic()
    local_chart()
    print('PASS: local side regularity support and seven-cell T6 diagnosis; no quartet exclusion')
