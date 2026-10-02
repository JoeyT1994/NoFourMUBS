#!/usr/bin/env python3
"""Exact replay of the analytical reduction package.

Requires Python 3.10+ and SymPy. No numerical optimizer or sampling is used.
Run: python verify.py --output verification.json
The universal Taylor/perturbation implications are proved in PROOF.md;
this script independently checks every finite algebraic certificate and
all rational numerical constants used there.
"""
import argparse
from collections import Counter
from fractions import Fraction as Q
from itertools import combinations, permutations, product
import json
from pathlib import Path
import time
import sympy as sp

from exact_algebra import (determinant_terms, corner_polynomials, family_entry,
                          family_seed, evaluate_family, minus_square_eisenstein,
                          terms, add, mul, conj, scale)
from prune import maximal_corner_prune, quartet_exclusion_prune, TURN_RADIUS

HERE = Path(__file__).resolve().parent
COORDS = tuple(product(range(1,6), repeat=2))
LOOKUP = {pair: k for k, pair in enumerate(COORDS)}
COS = tuple(map(sp.Rational, ('1','1/2','-1/2','-1','-1/2','1/2')))
SIN_DIV_SQRT3 = tuple(map(sp.Rational, ('0','1/2','1/2','0','-1/2','-1/2')))
REPS = ((4,5,0,3), (0,2,3,0), (0,2,3,2), (1,2,2,4), (2,4,4,2), (0,0,2,4))


def unit(i,j):
    v = [0]*25
    if i and j:
        v[LOOKUP[i,j]] = 1
    return v


def l1(v):
    return sum(abs(x) for x in v)


def rebuild_jacobian():
    D = determinant_terms()
    A, bounds, labels = [], [], []
    for r,s in combinations(range(6),2):
        ls = [[x-y for x,y in zip(unit(r,j),unit(s,j))] for j in range(6)]
        assert sum(COS[((r-s)*j)%6] for j in range(6)) == 0
        assert sum(SIN_DIV_SQRT3[((r-s)*j)%6] for j in range(6)) == 0
        A.append([sum(-SIN_DIV_SQRT3[((r-s)*j)%6]*ls[j][k] for j in range(6)) for k in range(25)])
        bounds.append(sp.Rational(3,10)*sum(l1(v)**2 for v in ls))
        labels.append(['re',r,s])
        A.append([sum(COS[((r-s)*j)%6]*ls[j][k] for j in range(6)) for k in range(25)])
        bounds.append(sp.Rational(1,2)*sum(l1(v)**2 for v in ls))
        labels.append(['im',r,s])
    for rr in combinations(range(6),3):
        for cc in combinations(range(6),3):
            r0,c0 = rr[0],cc[0]
            ell = [[a+b-c-d for a,b,c,d in zip(unit(r,c),unit(r0,c0),unit(r,c0),unit(r0,c))]
                   for r in rr[1:] for c in cc[1:]]
            phase0 = [((r-r0)*(c-c0))%6 for r in rr[1:] for c in cc[1:]]
            row, imag = [sp.Rational(0)]*25, [sp.Rational(0)]*25
            constant_re = constant_im = bound = sp.Rational(0)
            for e, coefficient in D.items():
                v = [sum(e[k]*ell[k][j] for k in range(4)) for j in range(25)]
                phase = sum(e[k]*phase0[k] for k in range(4))%6
                constant_re += coefficient*COS[phase]
                constant_im += coefficient*SIN_DIV_SQRT3[phase]
                for j in range(25):
                    row[j] += coefficient*COS[phase]*v[j]
                    imag[j] += coefficient*SIN_DIV_SQRT3[phase]*v[j]
                bound += abs(coefficient)*sp.Rational(1,2)*l1(v)**2
            assert constant_re == constant_im == 0
            assert all(x == 0 for x in imag)
            A.append(row); bounds.append(bound); labels.append(['D',list(rr),list(cc)])
    return sp.Matrix(A), bounds, labels


def check_local_inverse(A,bounds,labels):
    frozen = json.loads((HERE/'certificates/local_inverse.json').read_text())
    assert frozen['coordinates'] == [list(x) for x in COORDS]
    assert frozen['labels'] == labels
    assert frozen['A'] == [[str(x) for x in row] for row in A.tolist()]
    assert frozen['bounds'] == list(map(str,bounds))
    assert {tuple(e):c for c,e in frozen['D_terms']} == determinant_terms()
    Bs, Cs = [], []
    for k, inverse in enumerate(frozen['inverses']):
        assert inverse['coord'] == list(COORDS[k])
        total = sp.zeros(1,25)
        B = C = sp.Rational(0)
        for index, coefficient in inverse['terms']:
            value = sp.Rational(coefficient)
            total += value*A[index,:]
            B += abs(value)*bounds[index]
            if index >= 30:
                C += abs(value)
        assert total == sp.eye(25)[k,:]
        assert str(B) == inverse['B'] and str(C) == inverse['C']
        assert B <= sp.Rational(389,9) and C <= sp.Rational(1,18)
        Bs.append(B); Cs.append(C)
    assert len(Bs) == 25
    assert max(Bs) == sp.Rational(389,9) and max(Cs) == sp.Rational(1,18)
    return {'coordinates':25, 'functions':430, 'jacobian_rank':25,
            'remainder_coefficient':'389/9','sqrt_M_coefficient':'1/18'}


def orbit(seed):
    E = ((0,0,0),(0,seed[0],seed[1]),(0,seed[2],seed[3]))
    result = set()
    for transpose in (False,True):
        matrix = list(zip(*E)) if transpose else E
        for r in permutations(range(3)):
            for c in permutations(range(3)):
                result.add(tuple((matrix[i][j]+matrix[r[0]][c[0]]-matrix[i][c[0]]-matrix[r[0]][j])%6
                                 for i in r[1:] for j in c[1:]))
    return result


def check_inactive_corners(A,bounds,labels):
    data = json.loads((HERE/'certificates/degenerate_corners.json').read_text())
    T = A[:30,:]
    kernel = sp.Matrix([[sp.Rational(v) for v in row] for row in data['kernel']])
    assert T.rank() == 21 and kernel.rank() == 4 and T*kernel == sp.zeros(30,4)
    four = A[[91,31,53,50],:]*kernel
    assert four == sp.Matrix([[12,12,0,0],[-24,12,0,0],[0,-12,12,12],[0,-12,-24,12]])
    assert four.det() == 186624
    inactive = {i for i in range(30,430) if A[i,:]*kernel == sp.zeros(1,4)}
    active = set(range(30,430))-inactive
    assert len(inactive) == 220 and len(active) == 180
    assert active == set(data['nondegenerate'])
    assert inactive == {item['idx'] for item in data['degenerate']}
    maximum = 0
    for item in data['degenerate']:
        i = item['idx']
        assert item['label'] == labels[i]
        value = sp.zeros(1,25)
        bound = bounds[i]
        for k, coefficient in item['terms']:
            assert 0 <= k < 30
            coefficient = sp.Rational(coefficient)
            value += coefficient*T[k,:]
            bound += abs(coefficient)*bounds[k]
        assert value == A[i,:] and str(bound) == item['bound']
        assert bound <= 2224
        maximum = max(maximum,bound)
    assert maximum == 2224
    orbits = [orbit(rep) for rep in REPS]
    counts = Counter()
    for i in range(30,430):
        _, rows, dcols = labels[i]
        # ESSENTIAL: D is attached to the complementary block; these are R owners.
        cols = tuple(j for j in range(6) if j not in dcols)
        seed = tuple((r-rows[0])*(c-cols[0])%6 for r in rows[1:] for c in cols[1:])
        owners = [k for k,o in enumerate(orbits) if seed in o]
        assert len(owners) == 1
        counts[owners[0],i in inactive] += 1
    expected = {(0,False):144,(3,False):36,(1,True):72,(2,True):72,(4,True):28,(5,True):48}
    assert dict(counts) == expected
    return {'tangent_rank':21, 'tangent_dimension':4, 'inactive_corners':220, 'active_corners':180,
            'inactive_quadratic_coefficient':2224,
            'R_owner_classes':[{'representative_pi_over_3':list(REPS[k]),'inactive':flag,'count':n}
                               for (k,flag),n in sorted(counts.items())]}


def universal_polynomials():
    R, reverse = corner_polynomials()
    D = determinant_terms()
    assert {(e[0],e[2],e[1],e[3]):c for e,c in R.items()} == R
    total = 0
    for (a,b,c,d), coefficient in D.items():
        actual = (a+b+c+d,-a-c,-b-d,-a-b,a,b,-c-d,c,d)
        total += abs(coefficient)*l1(actual)
    assert total == 432
    # The six independent phase variables in the side eta identity.
    xs = sp.symbols('x0:3', nonzero=True)
    ys = sp.symbols('y0:3', nonzero=True)
    conjugate = lambda f: f.xreplace({z:1/z for z in xs+ys})
    s,t,r = sum(xs),sum(ys),sum(y/x for x,y in zip(xs,ys))
    Pi = s*t-sum(x*y for x,y in zip(xs,ys))
    eta = 9-s*conjugate(s)-t*conjugate(t)-r*conjugate(r)+s*r*conjugate(t)+conjugate(s*r*conjugate(t))
    assert sp.expand(eta-Pi*conjugate(Pi)) == 0
    return {'determinant_terms':len(D), 'R_terms':len(R),
            'complementary_square_identity':True,'side_eta_identity':True,
            'entry_phase_Lipschitz_constant':432}


def fourier_census():
    R,_ = corner_polynomials();D = determinant_terms()
    z,w = sp.symbols('z w',nonzero=True)
    X = (w*w/z-z/(w*w))/(2*sp.I)
    Y = (z*w-1/(z*w))/(2*sp.I)
    T = (w/(z*z)-z*z/w)/(2*sp.I)
    expected = Counter({():256})
    for s,t in product((-1,1),repeat=2):
        poly = terms(36*(X+s*Y+t*T)**2,(z,w))
        key = tuple(sorted((e,(c,0)) for e,c in poly.items()))
        expected[key] += 36
    observed = Counter()
    for rows in combinations(range(6),3):
        for cols in combinations(range(6),3):
            direct = evaluate_family(R,family_seed(rows,cols))
            complement = tuple(j for j in range(6) if j not in cols)
            squared = minus_square_eisenstein(evaluate_family(D,family_seed(rows,complement)))
            assert direct == squared
            observed[direct] += 1
    assert observed == expected
    witnesses = []
    for a,b in product(range(6),repeat=2):
        if (a+b)%3:
            continue
        phases = [[(family_entry(i,j)[0]+a*family_entry(i,j)[1]+b*family_entry(i,j)[2])%6
                   for j in range(6)] for i in range(6)]
        for tail in permutations(range(1,6)):
            cols = (0,)+tail
            rows = []
            for row in phases:
                options = [i for i in range(6) if all(i*j%6 == value for j,value in zip(cols,row))]
                if len(options) != 1:
                    break
                rows.append(options[0])
            if sorted(rows) == list(range(6)):
                assert all(phases[i][j] == rows[i]*cols[j]%6 for i,j in product(range(6),repeat=2))
                witnesses.append({'a':a,'b':b,'rows':rows,'columns':list(cols)})
                break
        else:
            raise AssertionError('Missing F6 grid witness')
    assert len(witnesses) == 12
    return {'exact_corner_multiplicities':[256,36,36,36,36],'F6_grid_witnesses':witnesses}


def constants_and_prune_controls():
    h = Q(1,2**14); pi = Q(22,7)
    # Taylor real-part remainder coefficient 3/10 > 1/(2 sqrt(3)).
    assert Q(3,10)**2 > Q(1,12)
    # Three-phase lemma: sqrt(3)>17/10; first 12/5, then 6/5.
    assert Q(17,10)**2 < 3
    assert 2*(2+Q(1,100))/Q(17,10) < Q(12,5)
    assert (2+Q(1,100))/(Q(17,10)-Q(12,5)/100) < Q(6,5)
    assert Q(6,5)**2*6 < 9
    assert h < Q(1,1000) and Q(6,1000)**2 < Q(1,100)**2  # sqrt(6)h<1/100
    assert Q(13,1000) < Q(17,10) and Q(30,1000) < 3
    assert 6*Q(1,1000) < 1 and (6**2)*2*Q(1,1000)**2 < 1
    # Half-chord midpoint bound; 2+sqrt3 > 2+17/10 > 32/9.
    assert 2+Q(17,10) > Q(32,9)
    # 2 arcsin(4h) <= 8h/sqrt(1-16h^2) < (81/10)h for h<=1/1000.
    assert 64/(1-Q(16,10**6)) < Q(81,10)**2
    # |Pi| <= (3 sqrt6 + 6h)h <8h, using sqrt6 <49/20.
    assert Q(49,20)**2 > 6 and 3*Q(49,20)+Q(6,1000) < 8
    root_M_K = 288*h**3+432*Q(81,10)*h
    assert root_M_K < 6
    t_pre = 4*(1+3*pi)*Q(81,10)*h+8*pi*h**3
    assert t_pre < Q(1,48)
    assert 1-Q(389,9)/48 == Q(43,432)
    assert Q(1,18)/Q(43,432) == Q(24,43)
    quartet_h = Q(1,2560)
    assert quartet_h < Q(1,1000)
    assert 288*quartet_h**3+432*Q(81,10)*quartet_h < 6
    quartet_distance = (8+Q(243,10)*pi)*quartet_h+2*pi*quartet_h**3
    assert quartet_distance < Q(1,30)
    assert 2*pi*Q(1,2**14) < quartet_h
    t_post = Q(6912,43)*h**3
    assert h+4*t_post < 1  # < pi/3, since pi>3.
    assert Q(27648,43)*h**2 < 1
    assert Q(1,256) < Q(9,1501)
    assert Q(2224,1)/(18*256-778) == Q(1112,1915)
    assert Q(1112,1915)**2 < Q(17,50)
    assert 18-Q(778,100) > 10
    assert 2*4*TURN_RADIUS == h  # actual 2*pi <8, strictly.
    # Whole tubes: c,d are unrestricted, not only a neighbourhood of one centre.
    R = TURN_RADIUS
    boxes = [((-R,R),(-R,R),(-100,100),(-100,100)),
             ((-R,R),(-100,100),(-R,R),(-100,100)),
             ((1-R,1+R),(-1-R,-1+R),(-100,100),(-100,100))]
    for box in boxes:
        assert maximal_corner_prune(box) is not None
    qr = Q(1,2**14)
    big = ((-qr,qr),(-qr,qr),(-100,100),(-100,100))
    assert quartet_exclusion_prune(big) is not None
    assert maximal_corner_prune(big) is None
    # The known maximal Fourier curve near (4,5,0,3) must not be removed.
    for v in (Q(0), Q(1,2**20),Q(1,1000)):
        point = (Q(2,3),Q(5,6)+v,Q(0),Q(1,2)+v)
        assert maximal_corner_prune(tuple((x,x) for x in point)) is None
        assert quartet_exclusion_prune(tuple((x,x) for x in point)) is None
    # Noncontainment is not accepted by centre testing.
    assert maximal_corner_prune(tuple((-1,1) for _ in range(4))) is None
    try:
        maximal_corner_prune(((0.0,0.0),)*4)
    except TypeError:
        pass
    else:
        raise AssertionError('Float input accepted')
    try:
        maximal_corner_prune(((1,0),)*4)
    except ValueError:
        pass
    else:
        raise AssertionError('Reversed box accepted')
    return {'rank_one_radius_radians':str(h),'prune_radius_turns':str(R),
            'quartet_radius_radians':'1/2560', 'quartet_distance_upper':str(quartet_distance),
            'quartet_corollary_dependency':'Retained F6 radius 1/30; its cover is not replayed here.',
            'prebootstrap_t_upper':str(t_pre),'inactive_M_ratio_upper':'(1112/1915)^2',
            'controls':'whole tubes, transpose, phase wraps, Fourier positive control, input validation'}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,default=HERE/'verification.json')
    args = parser.parse_args()
    start = time.monotonic()
    result = {}
    result['polynomials'] = universal_polynomials()
    print('PASS: universal Laurent identities, side eta, and 432 phase constant',flush=True)
    A,bounds,labels = rebuild_jacobian()
    result['local_coercivity'] = check_local_inverse(A,bounds,labels)
    print('PASS: independently rebuilt 430x25 Jacobian and exact rational left inverse',flush=True)
    result['inactive_corners'] = check_inactive_corners(A,bounds,labels)
    print('PASS: 220 inactive corners, exact quadratic certificates, complementary R-owner class census',flush=True)
    result['fourier'] = fourier_census()
    print('PASS: Fourier formula from all 400 corners and all twelve exact F6 grid witnesses',flush=True)
    result['constants_and_prune'] = constants_and_prune_controls()
    print('PASS: rational constants and exact whole-box prune controls',flush=True)
    result.update(status='PASS',seconds=time.monotonic()-start,
                  scope='Finite algebra and constants. Universal analytic implications are proved in PROOF.md; no global no-four-MUB assertion.')
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print('Wrote',args.output,flush=True)

if __name__ == '__main__':
    main()
