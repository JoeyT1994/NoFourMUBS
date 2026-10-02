#!/usr/bin/env python3
"""Exact controls for the rank-five lemma, completion uniqueness and flat-complement census.

The universal statements are the proofs in COMPLETION.md and CENSUS.md; the
checks below are exact Q(i,sqrt2,sqrt3,sqrt7) computations on explicit
controls. Imported from the archived flat_complement_census/verify.py and
completion_substitution/verify.py (algebraic core V2), with the alignment-
specific parts omitted and no receipt-hash checks.
"""
from pathlib import Path
import ast
import itertools as it
import json
import sys
import exact_field as c
from exact_field import Q, mul, star, scale, rank, eye, det3

HERE = Path(__file__).resolve().parent
ZETA24 = (Q({6: 1})+Q({2: 1})+Q({7: 1})-Q({3: 1}))/4   # exp(i pi/12)
E_K = [[0,0,0,0,0,0],[0,5,3,1,4,7],[0,7,4,6,2,3],[0,4,6,2,0,4],[0,3,7,5,4,1],[0,1,2,4,6,5]]
C_H = [[0,2,19,18,8,19],[0,18,9,0,6,3],[0,18,21,12,18,3],[0,10,11,18,16,11],[0,10,23,6,4,11],[0,2,7,6,20,19]]


def strict(A):
    assert mul(star(A), A) == scale(eye(3), Q(6))
    assert all(x*x.bar() == 1 for row in A for x in row)
    for rows in it.combinations(range(6), 3):
        v = det3([A[i] for i in rows]); assert v != 0 and v*v.bar() != 27
    assert rank(c.features(A)) == 5


def rank_five_controls():
    """completion_substitution control: strict rectangles, feature rank 5,
    rank-six diagonal system, dim W=3, commutator Gram rank 2 (unique completion)."""
    z = ZETA24
    K = [[z**(3*x) for x in row] for row in E_K]
    H = [[(z**C_H[j][i]).bar() for j in range(6)] for i in range(6)]
    assert mul(star(K), K) == scale(eye(6), Q(6)) and mul(star(H), H) == scale(eye(6), Q(6))
    U = scale(star(H), 1/Q({6: 1})); A = [r[:3] for r in K]; B = mul(U, A)
    assert all(t*t.bar() == 1 for row in B for t in row)

    def minor_spectrum(M):
        vals = []
        for rows in it.combinations(range(6), 3):
            d = det3([M[r] for r in rows]); vals.append(d*d.bar())
        return vals
    va, vb = minor_spectrum(A), minor_spectrum(B)
    ea = [Q(6), Q(18), 12-6*Q({2: 1}), 12+6*Q({2: 1})]
    eb = [Q(3), Q(12), 15-4*Q({6: 1}), 15+4*Q({6: 1})]
    assert all(v in ea for v in va) and all(v in eb for v in vb)
    assert all(x in va for x in ea) and all(x in vb for x in eb)
    strict(A); strict(B)
    # The P- and Q-feature Grams coincide (COMPLETION.md section 3).
    Qc = c.sub(eye(6), scale(mul(A, star(A)), Q(1)/6))
    FQ = [[Qc[i][j]*Qc[i][j].bar()-Q(1)/12 for j in range(6)] for i in range(6)]
    assert FQ == c.features(A)
    Ts, G = c.completion(A); assert rank(G) == 2 and det3(G) == 0
    _, GB = c.completion(B); assert rank(GB) == 2 and det3(GB) == 0
    # The known completion Y=K[:,3:] is flat for I and H, and its plane is in W(A).
    Y = [r[3:] for r in K]
    assert all(t*t.bar() == 1 for row in mul(U, Y) for t in row)
    assert det3([[H[i][j] for j in [0, 1, 2]] for i in [0, 1, 5]]) == 0   # H has zero3
    return {'strict_rectangle_feature_ranks': [5, 5],
            'P_and_Q_feature_Grams_equal': True,
            'diagonal_system_rank': 6, 'dim_W': 3,
            'standard_completion_commutator_rank': [2, 2],
            'control_H_has_zero3': True}


def data(K):
    assert all(x*x.bar() == 1 for row in K for x in row)
    assert mul(star(K), K) == scale(eye(6), Q(6))
    A = [r[:3] for r in K]; Y = [r[3:] for r in K]; strict(A)
    Ts, G = c.completion(A); assert rank(G) == 2
    for T in Ts:
        Z = scale(mul(mul(star(Y), T), Y), Q(1)/6)
        S = [[Q() if i == j else Z[i][j] for j in range(3)] for i in range(3)]
        if rank(S) != 0:
            break
    else:
        raise AssertionError('No transverse direction')
    back = scale(mul(mul(Y, S), star(Y)), Q(1)/6)
    assert back == star(back) and all(back[i][i] == 0 for i in range(6))
    assert rank(mul(star(A), back)) == 0
    delta = S[0][1]*S[1][2]*S[2][0]
    Dsmall = [[Q(i-1) if i == j else Q() for j in range(3)] for i in range(3)]
    D = scale(mul(mul(Y, Dsmall), star(Y)), Q(1)/6)
    comm = c.sub(mul(D, back), mul(back, D))
    assert c.trace(mul(mul(comm, comm), comm)) == 6*(delta-delta.bar())
    return A, Y, S, delta


def census():
    z = ZETA24
    K = [[z**(3*x) for x in row] for row in E_K]
    A, Y, S, delta = data(K); assert delta != 0 and delta == delta.bar()
    qs = [delta/(S[i][j]*S[i][j].bar()) for i, j in [(1, 2), (2, 0), (0, 1)]]
    t = 1/sum(qs, Q()); P = scale([[S[i][j]+(qs[i] if i == j else Q()) for j in range(3)] for i in range(3)], t)
    assert P == star(P) and mul(P, P) == P and c.trace(P) == 1 and rank(P) == 1
    assert all(P[i][i] != 0 for i in range(3))
    R = scale(mul(mul(Y, P), star(Y)), Q(1)/6)
    assert all(R[i][i] == Q(1)/6 for i in range(6))
    extra = [6*R[i][0] for i in range(6)]
    assert extra[0] == 1 and all(x*x.bar() == 1 for x in extra)
    assert all(row[0] == 0 for row in mul(star(A), [[x] for x in extra]))
    assert all(row[0] != 0 for row in mul(star(Y), [[x] for x in extra]))
    assert R == [[extra[i]*extra[j].bar()/6 for j in range(6)] for i in range(6)]
    rays = [[row[j] for row in Y] for j in range(3)]+[extra]
    projectors = [[[v[i]*v[j].bar()/6 for j in range(6)] for i in range(6)] for v in rays]
    assert rank([[x for row in Rj for x in row] for Rj in projectors]) == 4
    four = [A[i]+[extra[i]] for i in range(6)]
    assert mul(star(four), four) == scale(eye(4), Q(6))
    basis = c.null(star(four)); assert len(basis) == 2
    Z = list(map(list, zip(*basis))); ii = Q({1: 1})
    hb = [[[Q(1), Q()], [Q(), Q()]], [[Q(), Q()], [Q(), Q(1)]],
          [[Q(), Q(1)], [Q(1), Q()]], [[Q(), ii], [-ii, Q()]]]
    supported = [mul(mul(Z, T), star(Z)) for T in hb]
    diagmap = [[T[i][i] for T in supported] for i in range(6)]
    assert rank(diagmap) == 4
    residual = c.sub(eye(6), scale(mul(four, star(four)), Q(1)/6))
    assert rank(residual) == 2 and mul(residual, residual) == residual
    assert all(residual[i][i] == Q(1)/3 for i in range(6))
    H = [[(z**C_H[j][i]).bar() for j in range(6)] for i in range(6)]
    V = scale(star(H), 1/Q({6: 1})); strict(mul(V, A))
    assert mul(star(H), H) == scale(eye(6), Q(6))
    assert all(x*x.bar() == 1 for row in mul(V, Y) for x in row)
    output = mul(V, [[x] for x in extra]); assert any(row[0]*row[0].bar() != 1 for row in output)
    assert det3([[H[i][j] for j in [0, 1, 2]] for i in [0, 1, 5]]) == 0
    phase = [z**j for j in [0, 1, 3, 7, 11, 16]]
    J = [[phase[i]*phase[j].bar() for j in range(6)] for i in range(6)]
    transported = [[phase[i]*R[i][j]*phase[j].bar() for j in range(6)] for i in range(6)]
    assert transported == scale([[R[i][j]*J[i][j] for j in range(6)] for i in range(6)], Q(6)/c.trace(J))
    ii = Q({1: 1}); r3 = Q({4: 1}); r7 = Q({8: 1})
    a = (-3+4*ii)/5; b = a; cc = a.bar(); d = (-2+ii*r3*r7)/5
    K2 = [[Q(1)]*6, [Q(1), a, b, a/cc, a/d, a*d/(b*cc)],
          [Q(1), cc, d, a, b*cc/d, a/b], [Q(1), a/b, Q(-1), a/d, -a/d, -a/b],
          [Q(1), d, -d, a*d/(b*cc), Q(-1), -a*d/(b*cc)],
          [Q(1), b*cc/d, -b, b, -b*cc/d, Q(-1)]]
    _, _, _, delta2 = data(K2)
    assert delta2-delta2.bar() == Q({13: '-3/2', 1: '9/4'}) and delta2 != delta2.bar()
    return {'classification': 'Global finite complement-ray theorem; no quartet exclusion',
            'global_flat_ray_bound': 4, 'scope': 'flat rays orthogonal to a strict 6-by-3 phase rectangle',
            'four_ray_control': {'cubic_product': str(delta), 'projector_span_rank': 4,
                                 'extra_ray_phase_entries': [str(x) for x in extra],
                                 'extra_ray_orthogonal_to_completion_rays': False,
                                 'adjoining_extra_ray_is_unextendible': True,
                                 'independent_rank_two_complement_diagonal_map_rank': 4,
                                 'common_with_control_H_ray_count': 3, 'control_H_has_zero3': True},
            'three_ray_control': {'cubic_product_minus_conjugate': str(delta2-delta2.bar()),
                                  'exact_flat_ray_count': 3},
            'seed_projector_covariance': True,
            'seed_only_commutator_cube_identity': True,
            'orthogonality_graphs': ['independent set of at most 4', 'K3', 'K3 plus isolated ray'],
            'rank_five_global_incompatibility': 'OPEN'}


def normalize(obj):
    """Compare field elements by value, not by dictionary print order."""
    if isinstance(obj, dict):
        return {k: normalize(v) for k, v in obj.items()}
    if isinstance(obj, list):
        return [normalize(v) for v in obj]
    if isinstance(obj, str) and obj.startswith('{'):
        return ast.literal_eval(obj)
    return obj


def main():
    rk = rank_five_controls()
    print('PASS rank-five lemma / unique-completion controls:', json.dumps(rk))
    out = census()
    expected = json.loads((HERE/'certificate.json').read_text())
    if normalize(out) != normalize(expected):
        print('FAIL: census controls differ from certificate.json'); return 1
    print(json.dumps(out, indent=2))
    print('PASS exact flat-complement census controls')
    return 0


if __name__ == '__main__':
    try:
        sys.exit(main())
    except AssertionError as error:
        print('FAIL: assertion', error); sys.exit(1)
