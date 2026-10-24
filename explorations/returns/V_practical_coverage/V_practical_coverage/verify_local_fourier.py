#!/usr/bin/env python3
"""Exact certificates for quantitative corner coverage near Fourier F_6.

Only the Python standard library is used. All verification arithmetic is integer
or Fraction arithmetic; floating point is not used. See LOCAL_FOURIER.md.
"""
from collections import Counter
from fractions import Fraction as Q
from itertools import combinations, permutations
import json


def mm(a, b):
    bt = list(zip(*b))
    return [[sum(x*y for x,y in zip(row,col)) for col in bt] for row in a]


def transpose(a):
    return list(map(list, zip(*a)))


def identity(n):
    return [[int(i == j) for j in range(n)] for i in range(n)]


def positive_definite(a):
    """Exact unpivoted LDL^T criterion for a real symmetric matrix."""
    n = len(a)
    assert all(a[i][j] == a[j][i] for i in range(n) for j in range(n))
    l = [[Q(0) for _ in range(n)] for _ in range(n)]
    d = [Q(0) for _ in range(n)]
    for i in range(n):
        l[i][i] = Q(1)
        d[i] = Q(a[i][i]) - sum(l[i][k]**2*d[k] for k in range(i))
        assert d[i] > 0, (i, d[i])
        for j in range(i+1,n):
            l[j][i] = (Q(a[j][i]) - sum(l[j][k]*l[i][k]*d[k] for k in range(i)))/d[i]
    return min(d)


def sign(p):
    return (-1)**sum(p[i] > p[j] for i in range(3) for j in range(i+1,3))


def generate_terms():
    """Psi=perm*det^2/(product entries), as a Laurent polynomial."""
    pp = list(permutations(range(3)))
    terms = Counter()
    for p in pp:
        for q in pp:
            for r in pp:
                e = [-1]*9
                for s in (p,q,r):
                    for i,j in enumerate(s):
                        e[3*i+j] += 1
                terms[tuple(e)] += sign(q)*sign(r)
    return {e:c for e,c in terms.items() if c}


def main():
    terms = generate_terms()
    assert len(terms) == 55
    assert sum(abs(c) for c in terms.values()) == 108
    assert max(sum(v*v for v in e) for e in terms) == 18
    assert all(sum(e[3*i+j] for j in range(3)) == 0 for e in terms for i in range(3))
    assert all(sum(e[3*i+j] for i in range(3)) == 0 for e in terms for j in range(3))

    # Universal absolute second-moment matrix is 162*(P_3 tensor P_3).
    qabs = [[sum(abs(c)*e[i]*e[j] for e,c in terms.items()) for j in range(9)] for i in range(9)]
    assert qabs == [[18*(3*int(i//3 == j//3)-1)*(3*int(i%3 == j%3)-1) for j in range(9)] for i in range(9)]

    # F=F_2 tensor F_3, represented by exponents of exp(pi*i/3).
    f = [[(3*(i//3)*(j//3)+2*(i%3)*(j%3)) % 6 for j in range(6)] for i in range(6)]
    re2 = [2,1,-1,-2,-1,1]  # twice the real part of sixth roots
    im2_over_sqrt3 = [0,1,1,0,-1,-1]
    a = []
    hessians = set()
    row_norms = Counter()
    for ii in combinations(range(6),3):
        for jj in combinations(range(6),3):
            ex = [f[i][j] for i in ii for j in jj]
            phases = {e:sum(x*y for x,y in zip(e,ex)) % 6 for e in terms}
            assert sum(c*im2_over_sqrt3[phases[e]] for e,c in terms.items()) == 0
            row = [0]*36
            for e,c in terms.items():
                v = c*re2[phases[e]]
                for k,ek in enumerate(e):
                    row[6*ii[k//3]+jj[k%3]] += v*ek
            a.append(row)
            row_norms[sum(v*v for v in row)] += 1
            b = tuple(tuple(sum(c*im2_over_sqrt3[phases[e]]*e[i]*e[j] for e,c in terms.items()) for j in range(9)) for i in range(9))
            hessians.add(b)

    assert len(a) == 400
    assert row_norms == {0:76,576:144,1296:36,1728:144}
    # A=2 DG(0). Q36=36 times the horizontal orthogonal projector.
    q36 = [[(6*int(i//6 == j//6)-1)*(6*int(i%6 == j%6)-1) for j in range(36)] for i in range(36)]
    assert mm(q36,q36) == [[36*v for v in row] for row in q36]
    assert mm(a,q36) == [[36*v for v in row] for row in a]
    m = mm(transpose(a),a)
    roots = [2916,10692,11556,15552,29376,55296]
    # q(M)=q(0)*(I-P), checked without any floating eigenvalue calculation.
    pol = identity(36)
    qzero = 1
    for lam in roots:
        pol = mm(pol, [[m[i][j] - lam*int(i == j) for j in range(36)] for i in range(36)])
        qzero *= -lam
    assert [[36*v for v in row] for row in pol] == [[qzero*(36*int(i == j)-q36[i][j]) for j in range(36)] for i in range(36)]
    # All horizontal eigenvalues belong to roots; min singular(DG)>=27.
    assert min(roots) == 4*27**2

    # Actual signature Hessian is -sqrt(3)/2 times B.
    # 38I +/- B positive definite => ||B||<38 => ||Hess||<33.
    smallest_pivot = None
    for b in hessians:
        for sg in (-1,1):
            piv = positive_definite([[38*int(i==j) + sg*b[i][j] for j in range(9)] for i in range(9)])
            smallest_pivot = piv if smallest_pivot is None else min(smallest_pivot,piv)
    assert 19**2*3 < 33**2

    # Sum over all restrictions P_3 equals 8P_6.
    row_frame = [[Q(0) for _ in range(6)] for _ in range(6)]
    for ii in combinations(range(6),3):
        for i in ii:
            for j in ii:
                row_frame[i][j] += int(i==j)-Q(1,3)
    assert row_frame == [[8*(int(i==j)-Q(1,6)) for j in range(6)] for i in range(6)]

    # Rational numerical constants in the final radius-1/10 theorem.
    assert Q(399,400) >= Q(500,501)**2
    assert Q(17,12)**2 > 2
    assert 648*Q(17,12) == 918
    radius = Q(501,5000)
    slope = 27 - 132*radius - 918*radius**2
    assert slope == Q(56960541,12500000)
    assert slope > Q(9,2)
    assert Q(81,400) > Q(1,5)
    profile = [(Q(1,100), Q(6)), (Q(1,20), Q(3)), (Q(2,25), Q(1))]
    for radius_r, constant_c in profile:
        bound_t = Q(501,500)*radius_r
        bound_slope = 27-132*bound_t-918*bound_t**2
        assert bound_slope > 0 and bound_slope**2 >= 100*constant_c
    print(json.dumps({
        'status':'PASS',
        'arithmetic':'integers and exact rational fractions only',
        'signature_laurent_terms':len(terms),
        'corners':len(a),
        'distinct_hessian_matrices':len(hessians),
        'horizontal_squared_singular_values_of_2DG_allowed':roots,
        'min_singular_DG_lower_bound':27,
        'per_corner_hessian_operator_upper_bound':33,
        'horizontal_restriction_frame_constant':64,
        'quotient_radius':'1/10',
        'max_R_quadratic_constant':'81/400',
        'sum_R_quadratic_constant':81,
        'rational_slope_lower_bound':str(slope),
        'additional_radius_constant_pairs': [[str(r),str(c)] for r,c in profile],
        'minimum_LDL_pivot':str(smallest_pivot)
    }, indent=2))

if __name__ == '__main__':
    main()
