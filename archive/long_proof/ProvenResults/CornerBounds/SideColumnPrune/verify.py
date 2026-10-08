"""Replay exact identities and four full seed-box exclusion certificates."""
import json
import math
from pathlib import Path
import runpy
import time

import sympy as sp
from flint import arb
from prune import TERMS, certify_case, grid_box, prune_box

HERE = Path(__file__).resolve().parent


def identities():
    q, t = sp.symbols('q t', nonzero=True)
    lhs = (1+q)*(1+t/q)*(1+1/t)
    rhs = (1+q)*(1+1/q)+(1+t)*(1+1/t)+(1+t/q)*(1+q/t)-4
    assert sp.expand(lhs-rhs) == 0
    print('PASS: necessary two-column moment identity, exactly')

    # Reuse the independent expansion of R and det(L) from the proved
    # complementary-square certificate; do not rely on the new evaluator.
    old = runpy.run_path(str(HERE.parent/'verify.py'))
    seeds, determinant, _ = old['generic_polynomials']()
    a, b, c, d = seeds
    x, y = [sp.Integer(1), a, b], [sp.Integer(1), c, d]
    z = [v/u for u, v in zip(x, y)]
    compact = sum(sign*(x[b]/x[a]-x[a]/x[b])
                  *(y[d]/y[c]-y[c]/y[d])*(z[i]/z[j]-z[j]/z[i])
                  for i, j, a, b, c, d, sign in TERMS)
    assert sp.expand(compact-determinant) == 0
    print('PASS: six sine products give det(L)/(-8i), exactly')


def certificates():
    cases = json.loads((HERE/'data/cells.json').read_text())
    assert len(cases) == 4
    for case in cases:
        centers, radii = grid_box(case)
        level = case['level']
        # Julia baseline uses Float64 k*(pi/512) and pi/512. Their exact
        # binary values are strictly inside the enlarged certificate boxes.
        for k, center, radius in zip(case['grid_numerators'], centers, radii):
            float_center = arb(k*(math.pi/2**level))
            float_radius = arb(math.pi/2**level)
            assert abs(float_center-center)+float_radius < radius
        started = time.monotonic()
        result = certify_case(case)
        assert result['ok'], (case, result)
        print('PASS:', case['name'], 'R_cap='+str(case['R_cap']), result,
              'seconds='+str(round(time.monotonic()-started, 4)), flush=True)

    # An intentionally inadequate budget must fail closed. A Fourier seed
    # at the centre is not used as an acceptance or rejection oracle.
    from prune import cover_side_columns
    centers, radii = grid_box(cases[0])
    ok, _ = cover_side_columns(centers, radii, cases[0]['R_cap'], budget=1)
    assert not ok
    print('PASS: exhausted cover budget returns unresolved')

    # Exercise the cap-selection API separately from the hand-selected caps.
    for case in cases:
        result = prune_box(*grid_box(case))
        assert result['ok'], (case['name'], result)
        print('PASS: automatic prune_box', case['name'], result, flush=True)

    # Genuine D0 control, proved by the exact Fourier census in ../PROOF.md.
    # A box containing this seed must not be excluded by any D0-only test.
    delta = 2*(arb(1)/32).atan()
    centers = [4*arb.pi()/3, -arb.pi()/3+delta, arb(0), arb.pi()+delta]
    result = prune_box(centers, [arb.pi()/512]*4)
    assert not result['ok'], result
    print('PASS: box containing the proved Fourier D0 seed stays unresolved')


if __name__ == '__main__':
    identities()
    certificates()
    print('PASS: four new D0 exclusions across reconstruction branch cells; no reconstruction inputs')
