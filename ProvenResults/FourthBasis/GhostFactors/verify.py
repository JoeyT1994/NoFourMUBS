"""Reproducible exact checks for PROOF.md (archived LowDegreeElimination.md, Sections 1-3).

The degree-lower-bound calculation (archived Section 4) and the fixed-corner
antiunitary regression (omitted partner subsection) are not imported.

The no-elimination proof is the generic calculation, not the numerical test.
The latter checks that the same ghosts survive the CURRENT 21-equation system.
No seed-only obstruction is claimed by this script.
"""
from pathlib import Path
import sys, json, random, time
import sympy as sp
import mpmath as mp

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parent / 'FourPlusOne'))
sys.path.insert(0, str(HERE.parents[2] / 'MinimalConstruction' / 'Implementation'))
from strict_a1_system import build_system, SEEDS
from model import Model
from pair_system import build_pair_search


def exact_ghost_checks():
    r, u = sp.symbols('r u', nonzero=True)
    relation = r*r + 4*r + 1

    def reduce(f):
        num, den = sp.cancel(f).as_numer_denom()
        return sp.rem(num * sp.invert(den, relation, r), relation, r)

    identities = {
        'selected reference column': (5+r)*(5+1/r)-6,
        'other reference columns': (r-1)*(1/r-1)-6,
        'all off-diagonal ghost overlaps': 4+r+1/r,
        'quadratic deflator at the modified entry': 18+(5+r)/r+r*(5+1/r),
        'positive SOS decomposition':
            18+sp.sqrt(6)*(u+1/u)
            -(18-2*sp.sqrt(6)+sp.sqrt(6)*(1+u)*(1+1/u)),
    }
    for f in identities.values():
        assert sp.simplify(reduce(f)) == 0
    # No physical solution has this ghost ratio: |r+1|^2 would be -2.
    assert reduce((1+r)*(1+1/r)+2) == 0
    return list(identities) + ['ghost ratio violates an elementary squared-modulus inequality']


def exact_pair_reduction():
    s1, s2, s3 = sp.symbols('s1 s2 s3', nonzero=True)
    phases = (s1, s2, s3)
    lhs = sum((phases[i]+phases[j])*(1/phases[i]+1/phases[j])
              for i in range(3) for j in range(i+1, 3))
    rhs = 3+(s1+s2+s3)*(1/s1+1/s2+1/s3)
    assert sp.cancel(lhs-rhs) == 0
    # The three candidate localizers have no common zero on the phase torus.
    assert sp.expand((s1+s2)+(s1+s3)-(s2+s3)-2*s1) == 0
    system = build_pair_search()
    assert len(system['ray_symbols']) == 10
    assert len(system['equations']) == 12
    assert sum(e['label'].startswith('orthogonality') for e in system['equations']) == 2
    assert sp.Poly(system['nonpartner_linear_factor'], *system['ray_symbols']).total_degree() == 1
    return dict(real_ray_equations=12, ray_phases=10,
                localizer=str(system['localizer_equation']),
                exact_identities=['sum of three squared pair sums = 3 + squared triple sum',
                                  'the three linear pair sums cannot all vanish'],
                converse=False)


def current_equation_check():
    system = build_system(3)
    expressions = sp.Matrix([e['A'] + system['tau']*e['B'] for e in system['equations']])
    evaluate = sp.lambdify((*SEEDS, *system['ray_symbols'], system['tau']),
                          expressions, modules='mpmath', cse=True)
    mp.mp.dps = 80
    rng = random.Random(921721)
    maxima = dict(hadamard=mp.mpf(0), formal_unbiasedness=mp.mpf(0),
                  formal_orthogonality=mp.mpf(0), current_21_equations=mp.mpf(0),
                  quadratic_deflator=mp.mpf(0))

    def check(label, value):
        err = max(abs(v) for v in value) if isinstance(value, mp.matrix) else abs(value)
        maxima[label] = max(maxima[label], err)
        assert err < mp.mpf('1e-48'), (label, mp.nstr(err, 10))

    cases = 0
    for sheet in (1, -1):
        accepted = 0
        while accepted < 2:
            seeds = [mp.exp(2*mp.pi*mp.j*mp.mpf(str(rng.random()))) for _ in range(3)]
            try:
                model = Model([-1, *seeds], sheet)
            except ValueError:
                continue
            H = model.hadamard()
            check('hadamard', H.H*H-6*mp.eye(6))
            for ell in range(6):
                for sign in (1, -1):
                    rho = -2 + sign*mp.sqrt(3)
                    rays, outputs = [], []
                    for i in range(6):
                        v = H[:, ell].copy()
                        v[i] *= rho
                        v /= v[0]
                        w = H.H*v/mp.sqrt(6)
                        reciprocal_v = mp.matrix([1/v[r] for r in range(6)])
                        dual_w = H.T*reciprocal_v/mp.sqrt(6)
                        check('formal_unbiasedness', mp.matrix([w[j]*dual_w[j]-1 for j in range(6)]))
                        D = 18*v[i]*w[ell] + mp.sqrt(6)*(H[i,ell]*w[ell]**2+v[i]**2/H[i,ell])
                        check('quadratic_deflator', D)
                        rays.append(v)
                        outputs.append(w)
                    for i in range(6):
                        for j in range(6):
                            check('formal_orthogonality', sum(rays[j][r]/rays[i][r] for r in range(6))-(6 if i==j else 0))
                    for triple in ((0, 1, 2), (3, 4, 5)):
                        coordinates = [q for i in triple for q in
                                       (rays[i][1], rays[i][2], outputs[i][0], outputs[i][1], outputs[i][2])]
                        check('current_21_equations', evaluate(*seeds, *coordinates, sheet*mp.sqrt(model.R)))
                        cases += 1
            accepted += 1
    return dict(precision_digits=80, seed_cases=4, both_sheets=True,
                ghost_triples_checked_against_current_equations=cases,
                maximum_absolute_residuals={k:mp.nstr(v, 10) for k,v in maxima.items()},
                scope='Regression against the current reconstruction. The general proof is symbolic and independent of these samples.')


if __name__ == '__main__':
    start = time.time()
    result = dict(status='PASS', exact_pair_reduction=exact_pair_reduction(),
                  exact_ghost_checks=exact_ghost_checks(),
                  numerical_regression=current_equation_check())
    result['elapsed_seconds'] = round(time.time()-start, 3)
    print(json.dumps(result, indent=2))
    print('PASS ghost barrier, quadratic ghost factors and pair reduction')
