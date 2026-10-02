"""Exact replay: exhaustive Fourier corner coverage, boundary identities, distances.

No floating-point samples or assertions about H+ completion selection are used.
"""
from collections import Counter, defaultdict
from fractions import Fraction as F
from itertools import product, permutations, combinations
import json
import time
import sympy as sp
import atlas


def physical_family():
    # ξ^2=ξ-1; roots are represented in Z[ξ].
    roots = ((1,0),(0,1),(-1,1),(-1,0),(0,-1),(1,-1))
    for r, s in product(range(6), repeat=2):
        acc = defaultdict(lambda: [0,0])
        for j in range(6):
            a,b = atlas.family_entry(r,j),atlas.family_entry(s,j)
            h,x,y = (a[k]-b[k] for k in range(3))
            u,v = roots[h % 6]
            acc[x,y][0] += u
            acc[x,y][1] += v
        acc = {k:tuple(v) for k,v in acc.items() if v != [0,0]}
        assert acc == ({(0,0):(6,0)} if r == s else {})
    # The two atlas prototypes are literal corners, before any equivalence.
    for which, cols in ((1,(0,1,3)), (2,(0,1,2))):
        actual = atlas.dephase(atlas.family_entry,(0,1,3),cols)
        wanted = atlas.dephase(lambda r,c:atlas.prototype_entry(which,r,c),range(3),range(3))
        assert actual == wanted
    print('PASS: exact Laurent-polynomial Hadamard identities and both prototype witnesses')


def coverage():
    data = atlas.load_atlas()
    assert data == json.loads(json.dumps(atlas.build_atlas()))
    assert Counter(4-len(c['L']) for c in data) == {1:36,2:12}
    assert all(sum(map(abs,row)) <= 2 for c in data for row in c['L'])
    raw = atlas.all_corner_maps()
    assert len(raw) == 3038
    for seed_map in raw:
        assert any(atlas.contains_map(c,seed_map) for c in data)
    images = {atlas.image_key(m) for m in raw}
    assert Counter(4-len(L) for L,b in images) == {0:14,1:36,2:12}
    # None of the 48 retained images is redundant by containment in another.
    for i, a in enumerate(data):
        m = tuple((a['h'][k],*a['A'][k]) for k in range(4))
        for j, b in enumerate(data):
            if i != j:
                assert not atlas.contains_map(b,m)
    # All surface relation rows are mutually orthogonal and primitive.
    for c in data:
        if len(c['L']) == 2:
            u,v = c['L']
            assert sum(a*b for a,b in zip(u,v)) == 0
            assert sum(map(abs,u)) <= 2 and sum(map(abs,v)) <= 2
    print('PASS: all 28,800 ordered corners, 3,038 maps, 62 images; irredundant atlas = 12 surfaces + 36 curves')


def invariant(E, variables):
    def star(v):
        return sp.expand(sp.conjugate(v).subs({sp.conjugate(x):1/x for x in variables}))
    G = 6*sp.eye(3)-E*E.applyfunc(star).T
    s,t,r = [sp.simplify(v) for v in (G[1,0],G[2,0],G[2,1])]
    X,Y,Z = [sp.expand(v*star(v)) for v in (s,t,r)]
    p = sp.simplify(X+Y+Z)
    J = sp.simplify(s*r*star(t)+star(s)*star(r)*t)
    W = sp.simplify(X*Y+X*Z+Y*Z-X*Y*Z)
    g = 27-3*p+J
    eta = 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    return sp.factor(sp.expand(4*g*g*eta-chi*chi))


def boundary_identities():
    z,w = sp.symbols('z w',nonzero=True)
    om = (-1+sp.sqrt(3)*sp.I)/2
    E1 = sp.Matrix([[1,1,1],[1,om,1],[1,z,-1]])
    E2 = sp.Matrix([[1,1,1],[1,om,om**2],[1,z,w]])
    assert invariant(E1,(z,)) == 0
    R = invariant(E2,(z,w))
    expected = -9*(z*z-w)**2*(w*w-z)**2*(z*w-1)**2/(z**4*w**4)
    assert sp.expand(R-expected) == 0
    assert sp.simplify(R.subs({z:om,w:om})) == 243
    # Exact shared corner of Tao and the Fourier family; no inverse-lifting claim.
    T = ((0,0,0,0,0,0),(0,0,1,1,2,2),(0,1,0,2,2,1),
         (0,1,2,0,1,2),(0,2,2,1,0,1),(0,2,1,2,1,0))
    e = atlas.dephase(lambda r,c:(2*T[r][c],0,0),(0,1,2),(1,3,4))
    assert tuple(v[0] for v in e) == (2,4,2,2)
    print('PASS: R(curve)=0; exact factored R(surface); Tao/Fourier shared strict corner R=243')


def distance_checks():
    data = atlas.load_atlas()
    seeds = [(F(0),)*4, (F(1,3),0,F(1,7),F(1,2)),
             (F(1,3),F(2,3),F(1,7),F(2,7)),
             (F(17,1024),F(-29,1024),F(155,1024),F(-381,1024))]
    assert atlas.distance_squared_turns(seeds[0])[0] == F(1,9)
    assert atlas.distance_squared_turns(seeds[1])[0] == 0
    assert atlas.distance_squared_turns(seeds[1],strict_closure=True)[0] == F(1,3528)
    assert atlas.distance_squared_turns(seeds[2],strict_closure=True)[0] == 0
    for seed,c in product(seeds,data):
        q,y = atlas.component_distance_squared_turns(seed,c)
        assert q >= 0
        assert q == sum((a-b)**2 for a,b in zip(seed,y))
        assert all(abs(a-b) <= F(1,2) for a,b in zip(seed,y))
        assert all((sum(row[i]*y[i] for i in range(4))-F(b,6)).denominator == 1
                   for row,b in zip(c['L'],c['b']))
        if len(c['L']) == 2:
            # Independent closed distance formula for the 12 surfaces.
            exact = 0
            for row,b in zip(c['L'],c['b']):
                t = sum(row[i]*seed[i] for i in range(4))-F(b,6)
                t -= (t+F(1,2)) // 1
                exact += t*t/sum(v*v for v in row)
            assert q == exact
    for seed in seeds:
        q,_,_ = atlas.distance_squared_turns(seed)
        translated = tuple(x+n for x,n in zip(seed,(2,-3,1,4)))
        assert atlas.distance_squared_turns(translated)[0] == q
    assert atlas.classify_box(seeds[2],[F(1,1000)]*4,F(1,100)) == 'inside'
    assert atlas.classify_box(seeds[0],[F(1,1000)]*4,F(1,100)) == 'outside'
    assert atlas.classify_box(seeds[0],[0]*4,F(1,3)) == 'undecided'
    print('PASS: exact distance witnesses, independent surface formula, torus seams and box bounds')


def carrier_transfer():
    z,w = sp.symbols('z w',nonzero=True)
    single = 1-(1+z)*(1+1/z)/4
    assert sp.expand(single-(2-z-1/z)/4) == 0
    transposed = 1-(1+z+w)*(1+1/z+1/w)/9
    expected = ((2-z-1/z)+(2-w-1/w)+(2-z/w-w/z))/9
    assert sp.expand(transposed-expected) == 0
    t = sp.symbols('t',real=True)
    upper = (sp.sqrt(1-t*t)/sp.sqrt(6)+sp.sqrt(sp.Rational(5,6))*t)**2
    beta = sp.Rational(2,3)*t*t+sp.sqrt(5)*t*sp.sqrt(1-t*t)/3
    assert sp.simplify(upper-sp.Rational(1,6)-beta) == 0
    lower = (sp.sqrt(1-t*t)/sp.sqrt(6)-sp.sqrt(sp.Rational(5,6))*t)**2
    assert sp.simplify(beta-(sp.Rational(1,6)-lower)-sp.Rational(4,3)*t*t) == 0
    print('PASS: exact column-distance and probability-transfer identities')


if __name__ == '__main__':
    started = time.monotonic()
    physical_family()
    coverage()
    boundary_identities()
    distance_checks()
    carrier_transfer()
    print(f'PASS: Fourier seed atlas ({time.monotonic()-started:.3f}s); no quantitative exclusion radius asserted')
