"""Exact controls for the written balanced rank-two boundary theorem."""
import itertools as it
import json

import sympy as s
from sympy.polys.matrices import DomainMatrix

from compatibility import Exact
from cubic_pair import calculate as cubic_pair
from partial_three_corner import calculate as partial_corner

BASE = ((0, 1, 2), (0, 3, 4), (1, 3, 5), (2, 4, 5))


def patterns():
    return sorted({tuple(sorted(tuple(sorted(p[i] for i in T)) for T in BASE))
                   for p in it.permutations(range(6))})


def structural_checks():
    pats = patterns()
    assert len(pats) == 30
    for P in pats:
        assert all(sum(i in T for T in P) == 2 for i in range(6))
        for A, B in it.combinations(P, 2):
            ex = [int(i in A) + int(i in B) - 1 for i in range(6)]
            assert sorted(ex) == [-1, 0, 0, 0, 0, 1]
    pairs = list(it.combinations(range(4), 2))
    quotients = []
    for a, b in pairs:
        e = [int(i in BASE[a]) + int(i in BASE[b]) - 1 for i in range(6)]
        quotients.append([e.index(1), e.index(-1)])
    assert quotients == [[0, 5], [1, 4], [2, 3], [3, 2], [4, 1], [5, 0]]
    # The three first quotients use three DISJOINT original row pairs.
    assert sorted(sum(quotients[:3], [])) == list(range(6))
    for singleton in range(4):
        ex = [-3 if i == singleton else 1 for i in range(4)]
        assert all(ex[0] + ex[i] in (-2, 2) for i in (1, 2, 3))
    for size in (2, 4):
        allocations = [v for v in it.product((-1, 1), repeat=size) if sum(v) == 0]
        assert len(allocations) == (2 if size == 2 else 6)
        assert all(v.count(1) == size//2 == v.count(-1) for v in allocations)
    partitions = {tuple(sorted(p, reverse=True)) for n in range(1, 4)
                  for p in it.combinations_with_replacement(range(1, 4), n) if sum(p) == 3}
    assert partitions == {(3,), (2, 1), (1, 1, 1)}
    assert all(len(p) == 1 or 1 in p for p in partitions)
    z, lam = s.symbols('z lam', nonzero=True)
    Q = s.Matrix([[0, z], [1/z, 0]])
    D = s.diag(lam, -lam)
    assert Q*Q == s.eye(2) and Q*D + D*Q == s.zeros(2)
    # A +1 eigenvector of Q has the prescribed coordinate ratio.
    assert Q*s.Matrix([z, 1]) == s.Matrix([z, 1])
    return {'row_labelled_patterns': 30, 'ordinary_quotient_identities': quotients,
            'singleton_locations_checked': 4, 'even_group_allocations': [2, 6],
            'opposite_spectrum_partitions': [list(p) for p in sorted(partitions)]}


def control(E, H, name):
    E.validate_hadamard(H)
    K = E.F
    histograms = []
    for T in (H, H.transpose()):
        h = T.to_list()
        ss = [s.prod(h[i][j] for i in range(6)) for j in range(6)]
        counts = {}
        for pat in patterns():
            vv = [[s.prod(h[i][j] for i in rows) for j in range(6)] for rows in pat]
            for a in range(4):
                for b in range(a, 4):
                    assert sum((vv[a][j]*vv[b][j]/ss[j] for j in range(6)), K.zero) == K.zero
            rr = DomainMatrix(vv, (4, 6), K).rank()
            assert rr in (1, 2, 3)
            counts[str(rr)] = counts.get(str(rr), 0) + 1
        histograms.append(counts)
    antipodal_counts = []
    for T in (H, H.transpose()):
        h = T.to_list()
        count = 0
        for a, b in it.combinations(range(6), 2):
            ratios = [h[a][j]/h[b][j] for j in range(6)]
            if all(x*x == ratios[0]*ratios[0] for x in ratios):
                assert sum(ratios, K.zero) == K.zero
                count += 1
        antipodal_counts.append(count)
    return {'name': name, 'rank_histograms_H_and_transpose': histograms,
            'antipodal_row_and_column_pairs': antipodal_counts}


def calculate():
    result = structural_checks()
    E = Exact(s.QQ.algebraic_field(s.I, s.sqrt(3)))
    root = (1+s.I*s.sqrt(3))/2
    f6 = control(E, E.matrix([[root**(j*k) for k in range(6)] for j in range(6)]), 'F6')
    # Independent physical controls for ALL opposite-spectrum multiplicities
    # in the shared-quotient lemma. No numerical eigenvalue classification.
    omega = root**2
    shared = []
    diagonal = lambda vals: DomainMatrix([[vals[i] if i == j else E.F.zero
                                          for j in range(6)] for i in range(6)],
                                         (6, 6), E.F).to_sparse()
    for phases in ((1, 1, 1), (1, 1, s.I), (1, omega, omega**2)):
        F = E.matrix([[omega**(j*k) for k in range(3)]*2 for j in range(3)])
        x = E.matrix([list(phases)+[-p for p in phases]]).to_list()[0]
        Hq = F.vstack(F*diagonal(x))
        E.validate_hadamard(Hq)
        Uproj = E.scale(E.star(F)*F, s.Rational(1, 6))
        Q = E.scale(Uproj, 2)-E.eye(6)
        D = diagonal([E.bar(v) for v in x])
        assert E.is_zero(Q*Q-E.eye(6)) and E.is_zero(Q*D+D*Q)
        hq = Hq.to_list()
        for k in range(3):
            ratios = [hq[j][k]/hq[j][k+3] for j in range(6)]
            assert ratios == [E.F.one]*3+[-E.F.one]*3
        multiplicities = sorted({v: x.count(v) for v in x}.values())
        shared.append(multiplicities)
    assert shared == [[3, 3], [1, 1, 2, 2], [1, 1, 1, 1, 1, 1]]
    E = Exact(s.QQ.algebraic_field(s.I, s.sqrt(33)))
    a, b, c = s.I, (3-4*s.I)/5, (-57-176*s.I)/185
    d = (2-12*s.I+(6+s.I)*s.sqrt(33))/37
    H = E.matrix([
        [1]*6, [1,a,b,a/c,a/d,a*d/(b*c)], [1,c,d,a,b*c/d,a/b],
        [1,a/b,-1,a/d,-a/d,-a/b], [1,d,-d,a*d/(b*c),-1,-a*d/(b*c)],
        [1,b*c/d,-b,b,-b*c/d,-1]])
    h33 = control(E, H, 'accepted Q(i,sqrt(33)) carrier')
    assert h33['rank_histograms_H_and_transpose'] == [{'3': 30}, {'3': 30}]
    assert h33['antipodal_row_and_column_pairs'] == [0, 0]
    assert all(sum(int(k) < 3 and v or 0 for k, v in hist.items()) > 0
               for hist in f6['rank_histograms_H_and_transpose'])
    # A physical no-zero3 rank-three matrix can have a sparse row relation.
    # Evaluate the entire lower-row fibre modulo its exact cubic, not at
    # floating-point roots or a single selected root.
    certificate, model = partial_corner(return_model=True)
    K = model['field']
    R = K.poly_ring('p')
    p = R.gens[0]
    modulus = model['vertical_polynomial']
    pat = patterns()[1]
    assert pat == ((0, 1, 2), (0, 3, 4), (1, 4, 5), (2, 3, 5))
    A, B = pat[2], pat[3]
    for row in model['top']:
        assert s.prod(row[j] for j in A) == s.prod(row[j] for j in B)
    ff = [sum((R.convert(model['bottom_coefficients'][r][j], K)*p**r
               for r in range(3)), R.zero) for j in range(6)]
    assert (s.prod(ff[j] for j in A)-s.prod(ff[j] for j in B)).rem(modulus) == R.zero
    vtop = [[s.prod(row[j] for j in pp) for row in model['top']] for pp in pat]
    assert DomainMatrix(vtop, (4, 3), K).rank() == 3
    assert certificate['reconstruction_guards'] == 13
    assert sum(certificate['nonzero_three_minors_by_bottom_row_count']) == 400
    result.update({'evidence_label': 'Certified computation',
                   'controls': [f6, h33], 'cubic_pair_endpoint_replay': cubic_pair(),
                   'shared_quotient_physical_spectra': shared,
                   'sparse_kernel_control': {'seeds': certificate['seeds'],
                       'u': certificate['u'], 'reference_guards': 13, 'nonzero_three_minors': 400,
                       'transpose_pattern_zero_based': [list(x) for x in pat],
                       'kernel_vector': [0, 0, 1, -1], 'first_three_columns_rank': 3,
                       'all_vertical_roots_checked': True, 'full_mate_asserted': False},
                   'scope': 'Controls for a global conditional rank-boundary proof; no triangle forcing.'})
    return result


if __name__ == '__main__':
    if not __debug__:
        raise SystemExit('Assertions must remain enabled')
    print(json.dumps(calculate(), sort_keys=True, indent=2))
