"""Exact checks for the partial averaging-lemma result; no global c0=5 claim.

Run with python3 -B simplerproof/averaging_lemma/verify.py.
The trigonometric and metric arguments are in LEMMA.tex, not certified by
this script. Imported verifiers are invoked without their file-writing mains.
"""
from collections import Counter, defaultdict
from fractions import Fraction as Q
from itertools import combinations, product
from pathlib import Path
import hashlib
import importlib.util
import json
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]


def load(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def main():
    start = time.monotonic()
    lifting = ROOT / 'ProvenResults/FourierNeighbourhood/SeedLifting'
    sys.path.insert(0, str(lifting))
    census = load('family_census', lifting / 'verify_fourier_max_R.py')
    family = census.exact_census()
    witnesses = census.F6_grid()

    exact = load('tangent_exact', ROOT / 'RouteC/averaging/task2_hessian_exact.py')
    L, N, Md, Mp, eigenvalues = exact.run()
    hexagon = {(1, 1), (2, -1), (1, -2), (-1, -1), (-2, 1), (-1, 2)}
    expected = Counter({(0, 0, 0, 0): 220})
    for p in hexagon:
        expected[tuple(12*x for x in p)+(0, 0)] = 12
        expected[(0, 0)+tuple(12*x for x in p)] = 12
        for q in hexagon:
            expected[tuple(12*x for x in p+q)] = 1
    assert Counter(tuple(row) for row in L) == expected
    assert N == 31104 * Mp

    # Rational identities behind the enclosing rectangle of tangent columns.
    import sympy as sp
    a, b, c, d = sp.symbols('a b c d', real=True)
    tangents = [sp.Matrix(t) for t in exact.tangent_basis()]
    V = a*tangents[0]+b*tangents[1]+c*tangents[2]+d*tangents[3]
    P = sp.eye(6)-sp.ones(6)/6
    h = sp.Matrix([-sp.Rational(1, 2), sp.Rational(1, 2)]*3)
    u = P*sp.Matrix([0, a, b, 0, a, b])
    w = P*sp.Matrix([0, c, d, 0, c, d])
    assert P*V*P == h*u.T+w*h.T
    assert sp.expand((h.T*w)[0]) == 0
    assert (h.T*h)[0] == sp.Rational(3, 2)
    assert sp.expand((w.T*w)[0]-sp.Rational(4, 3)*(c*c-c*d+d*d)) == 0

    # Recompute the extremal curve census using the universal Laurent R.
    old = load('corner_algebra', ROOT / 'ProvenResults/CornerBounds/verify.py')
    variables, determinant, R = old.generic_polynomials()
    terms = old.laurent_terms(R, variables)
    roots = ((1, 0), (0, 1), (-1, 1), (-1, 0), (0, -1), (1, -1))
    T = exact.tangent_basis()
    def entry(i, j):
        return (i*j % 6, T[0][i][j]-T[1][i][j])
    observed = Counter()
    for rows in combinations(range(6), 3):
        for cols in combinations(range(6), 3):
            coords = []
            for i, j in ((1, 1), (1, 2), (2, 1), (2, 2)):
                coords.append(tuple(entry(rows[i], cols[j])[k]
                    -entry(rows[i], cols[0])[k]-entry(rows[0], cols[j])[k]
                    +entry(rows[0], cols[0])[k] for k in (0, 1)))
            poly = defaultdict(lambda: [0, 0])
            for coefficient, exponent in terms:
                e0, e1 = (sum(v*x[k] for v, x in zip(exponent, coords)) for k in (0, 1))
                A, B = roots[e0 % 6]
                poly[e1][0] += coefficient*A
                poly[e1][1] += coefficient*B
            observed[tuple(sorted((e, tuple(v)) for e, v in poly.items() if v != [0, 0]))] += 1
    curve = ((-6, (-36, 0)), (0, (72, 0)), (6, (-36, 0)))
    assert observed == Counter({(): 328, curve: 72})

    x = Q(1, 30)
    sharp = 576*x*x*(1-x*x)*(3-16*x*x+16*x**4)**2
    assert sharp == Q(81966334263296, 14416259765625)
    assert sharp > 5
    # sin(1/24) >= 1/24-(1/24)^3/6 > 1/30, hence a*=2 asin(1/30)<1/12.
    assert Q(1, 24)-Q(1, 24)**3/6 > x
    # 1+2*pi*sqrt(3)<12, using pi<22/7 and sqrt(3)<7/4.
    assert 1+2*Q(22, 7)*Q(7, 4) == 12

    # Rational replacement for MC1's final irrationality contradiction.
    f = lambda k: 3*k**3+k*k+k-1
    pstar = lambda k: 9-4/(1+k*k)
    kl, ku = Q(469, 1000), Q(47, 100)
    assert f(kl) < 0 < f(ku)
    assert pstar(kl) > Q(143, 25)
    assert pstar(ku) < Q(573, 100)
    assert 54-9*Q(573, 100) > Q(5, 16)
    assert 54-(50+5*(Q(573, 100)-5)) > Q(5, 16)
    assert 50+6*(Q(143, 25)-5)-54 > Q(5, 16)
    # Independent exhaustive rational check of the 66 paired count options.
    count_gaps = []
    for n in range(11):
        for j in range(11-n):
            lo, hi = 5*j+Q(143, 25)*n, 5*j+Q(573, 100)*n
            gap = lo-54 if lo > 54 else 54-hi
            assert gap > Q(5, 16)
            count_gaps.append(gap)
    assert len(count_gaps) == 66 and min(count_gaps) == Q(8, 25)

    source_paths = [Path(__file__), HERE/'LEMMA.tex',
        lifting/'verify_fourier_max_R.py',
        ROOT/'RouteC/averaging/task2_hessian_exact.py',
        ROOT/'ProvenResults/CornerBounds/verify.py']
    report = dict(status='PASS_EXACT_ALGEBRA_FOR_PARTIAL_RESULT',
        global_constant_5_proved=False,
        family_census=family, zero_grid_witnesses=len(witnesses),
        sharp_family_constant=str(sharp), sharp_family_constant_decimal=float(sharp),
        tangent_maximum_formula='144*(A(a,b)+A(c,d))^2',
        tangent_projector_distance_squared='span(0,a,b)^2/16+(c*c-c*d+d*d)/18',
        extremal_curve_multiplicities=[328,72],
        robust_MC1_scalar_tolerance='1/32',
        paired_count_options=66, paired_count_minimum_gap='8/25',
        written_proofs_not_formalized=['trigonometric bound', 'orbit separation',
            'projector distance', 'tangent minimax inequalities'],
        source_hashes={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
                       for p in source_paths}, seconds=time.monotonic()-start)
    (HERE/'receipt.json').write_text(json.dumps(report, indent=2)+'\n')
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
