"""Exact checks for the cubic-zero pairing lemma, the opposite-pair
factorization and the fixed-anchor Karlsson detector A(M).

Assembled without mathematical change from the archive verifiers
90_replay_library/05_remaining_D2/karlsson_forcing/verify_exact.py
(column_pair_identity, physical_controls) and
90_replay_library/05_remaining_D2/balanced_triangle/verify_exact.py
(factorization, control).  The exact JMMSW control triple is imported from
the local jmmsw_triple.py.  Frozen-receipt comparisons are replaced by the
explicit assertions below; the owner-elimination identities of the archive
file are not part of the imported results and are omitted.
"""
from itertools import combinations
import json
import sympy as sp

import jmmsw_triple as ex

SUBSETS = [s for s in combinations(range(6), 3) if 0 in s]


def exact_control():
    h, k = ex.exact_mub_triple()
    r = ex.matrix_scale(ex.matrix_multiply(ex.matrix_adjoint(h), k), ex.RT6/6)
    return {'01': h, '02': k, '12': r}


def column_pair_identity():
    # If two zero-sum unit triples have products A and -A and sums s,-s,
    # their second elementary coefficients both equal A*conjugate(s).
    x, s, sb, a = sp.symbols('x s sb a')
    left = x**3-s*x**2+a*sb*x-a
    right = x**3+s*x**2+a*sb*x+a
    assert sp.expand(right+left.subs(x, -x)) == 0
    return {'cross_pair_binary_polynomial_identity': True}


def factorization():
    z = sp.symbols('z:6')
    e = {k: sum(sp.prod(z[i] for i in s) for s in combinations(range(6), k))
         for k in [1, 2, 3, 5]}
    for i in range(6):
        expression = sp.prod(z[i]+z[j] for j in range(6) if i != j)
        assert sp.expand(expression-e[1]*z[i]**4-e[3]*z[i]**2-e[5]) == 0
    assert sp.expand(sum(x**3 for x in z)-e[1]**3+3*e[1]*e[2]-3*e[3]) == 0
    assert sp.expand(sp.prod(z[0]+z[j] for j in range(1, 6))-e[3]*z[0]**2) != 0
    return {'universal_anchor_identities': 6, 'newton_identity': True,
            'unguarded_zero_sum_omission_rejected': True}


def detector_controls(edges):
    out = {}
    for key, m in edges.items():
        anchored = [[i, j] for i in range(1, 6) for j in range(1, 6)
                    if (m[i][j]*m[0][0]+m[i][0]*m[0][j]).is_zero()]
        assert anchored
        # Five-column completion and its normalization are exact.
        # R need not have first row one: dephase its columns only for this test.
        dephased = [[m[i][j]*m[0][j].conjugate() for j in range(6)] for i in range(6)]
        completed = [6*ex.ONE*(i == 0)-sum(dephased[i][:5], ex.ZERO) for i in range(6)]
        assert completed == [dephased[i][5] for i in range(6)]
        assert all(z*z.conjugate() == ex.ONE for z in completed)
        out[key] = {'anchor_zero_factors': anchored, 'sixth_column_recovered': True}
    return out


def opposite_pair_control(edges):
    out = {}
    for key, m in list(edges.items()) + [(k[::-1], ex.matrix_adjoint(m)) for k, m in edges.items()]:
        ex.verify_phase_hadamard(m, key)
        qs = ex.ZERO
        zero_sets = []
        for s in SUBSETS:
            zs = []
            for j in range(6):
                v = ex.ONE
                for i in range(6):
                    v *= m[i][j] if i in s else m[i][j].conjugate()
                zs.append(v)
            assert sum(zs, ex.ZERO).is_zero(), (key, s)
            p3 = sum((v**3 for v in zs), ex.ZERO)
            rhs = 3*zs[0].conjugate()**2
            for j in range(1, 6):
                rhs *= zs[0]+zs[j]
            assert p3 == rhs, (key, s)
            pairing = [j for j in range(1, 6) if (zs[0]+zs[j]).is_zero()]
            assert p3.is_zero() == bool(pairing)
            if pairing:
                zero_sets.append(list(s))
            qs += 2*p3*p3.conjugate()
        out[key] = {'balanced_equations_zero': 10, 'cubic_zero_subsets': zero_sets,
                    'Q_coefficients': [[c.numerator, c.denominator] for c in qs.coefficients],
                    'Q_zero': qs.is_zero()}
    for key in edges:
        assert out[key]['Q_zero'] or out[key[::-1]]['Q_zero']
    h, k, r = (edges[x] for x in ['01', '02', '12'])
    assert ex.matrix_multiply(h, r) == ex.matrix_scale(k, ex.RT6)
    # Repeating basis 2 as basis 3 is not a quartet, even though its three
    # already-present transitions satisfy the above balanced identities.
    kk = ex.matrix_multiply(ex.matrix_adjoint(k), k)
    assert kk[0][1].is_zero() and kk[0][0] == ex.MQ.rational(6)
    return {'directed_edges': out, 'shared_triangle_exact': True,
            'repeated_basis_is_not_quartet': True}


def calculate():
    edges = exact_control()
    return {'evidence_label': 'Certified computation',
            'scope': 'formal pairing/factorization identities and one exact JMMSW triple only',
            'pairing': column_pair_identity(), 'factorization': factorization(),
            'detector_controls': detector_controls(edges),
            'opposite_pair_control': opposite_pair_control(edges)}


if __name__ == '__main__':
    print(json.dumps(calculate(), indent=2))
