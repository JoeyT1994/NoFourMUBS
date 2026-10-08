"""Exact controls for the elementary zero3 -> antipodal -> Hadamard-block proof."""
import itertools
import json

import sympy as s
from sympy.polys.matrices import DomainMatrix



def calculate():
    a, b, c, d, x, y = s.symbols('a b c d x y')
    f = (a-1)*(d-1)-(b-1)*(c-1)
    E = s.Matrix([[1, 1, 1], [1, a, b], [1, c, d]])
    assert s.expand(E.det()-f) == 0
    sharp = f.xreplace({a: 1/a, b: 1/b, c: 1/c, d: 1/d})
    assert s.cancel(sharp-((a-1)*(d-1)/(a*d)-(b-1)*(c-1)/(b*c))) == 0
    assert s.expand(a*b*c*d*sharp-b*c*f+(b-1)*(c-1)*(a*d-b*c)) == 0
    assert s.expand(f-((a*d-b*c)-(a+d-b-c))) == 0
    for sub in ({a: 1, b: 1}, {a: 1, c: 1}, {b: 1, d: 1}, {c: 1, d: 1},
                {a: b, d: c}, {a: c, d: b}):
        M = E.subs(sub, simultaneous=True)
        assert any(M.row(i) == M.row(j) for i, j in itertools.combinations(range(3), 2)) or any(
            M.col(i) == M.col(j) for i, j in itertools.combinations(range(3), 2))
    triple = 1+x+y
    dual = x*y+x+y
    assert s.expand((x+1)*triple-dual-(x*x+x+1)) == 0
    assert s.expand(dual-triple-(x*y-1)) == 0

    omega = (-1+s.I*s.sqrt(3))/2
    K = s.QQ.algebraic_field(omega)
    w = K.from_sympy(omega)
    zero, one = K.zero, K.one

    def matrix(rows, domain=K):
        return DomainMatrix(rows, (len(rows), len(rows[0])), domain).to_sparse()

    def bar(z):
        return K.from_sympy(s.conjugate(K.to_sympy(z)))

    def star(M):
        return matrix([[bar(z) for z in row] for row in M.to_list()]).transpose()

    F = matrix([[w**(i*j) for j in range(3)] for i in range(3)])
    assert F*star(F) == matrix([[K(3) if i == j else zero for j in range(3)] for i in range(3)])
    for nplus in range(5):
        nminus = 4-nplus
        D = matrix([[K([2, nplus, nminus][i]) if i == j else zero for j in range(3)] for i in range(3)])
        gram = star(F)*D*F
        target = matrix([[K(6) if i == j else zero for j in range(3)] for i in range(3)])
        assert (gram == target) == (nplus == 2)

    triples = list(itertools.combinations(range(6), 3))

    def census(M):
        rows = M.to_list()
        identity = matrix([[K(6) if i == j else zero for j in range(6)] for i in range(6)])
        assert M*star(M) == identity
        assert all(z*bar(z) == one for row in rows for z in row)
        singular, blocks = [], []
        for rr, cc in itertools.product(triples, repeat=2):
            A = M.extract(rr, cc)
            if A.det() == zero:
                singular.append([list(rr), list(cc)])
            if A*star(A) == matrix([[K(3) if i == j else zero for j in range(3)] for i in range(3)]):
                blocks.append([list(rr), list(cc)])
        anti = []
        for transpose, T in [(False, rows), (True, M.transpose().to_list())]:
            for i, j in itertools.combinations(range(6), 2):
                q = [T[i][k]/T[j][k] for k in range(6)]
                q = [z/q[0] for z in q]
                if q.count(one) == 3 and q.count(-one) == 3:
                    anti.append({'transpose': transpose, 'rows': [i, j]})
        return {'three_minors_checked': 400, 'Hadamard_blocks_checked': 400,
                'singular_minor_count': len(singular), 'Hadamard_block_count': len(blocks),
                'antipodal_pair_count_in_both_orientations': len(anti),
                'first_singular_minor': singular[0] if singular else None,
                'first_Hadamard_block': blocks[0] if blocks else None}

    zeta6 = -w*w
    H = matrix([[zeta6**(i*j) for j in range(6)] for i in range(6)])
    fourier = census(H)
    assert fourier['singular_minor_count'] > 0 and fourier['Hadamard_block_count'] > 0
    tao_exponents = [[0,0,0,0,0,0], [0,0,1,1,2,2], [0,1,0,2,2,1],
                     [0,1,2,0,1,2], [0,2,2,1,0,1], [0,2,1,2,1,0]]
    tao = census(matrix([[w**k for k in row] for row in tao_exponents]))
    assert tao['singular_minor_count'] == 0 and tao['antipodal_pair_count_in_both_orientations'] == 0
    assert tao['Hadamard_block_count'] > 0

    R = K.frac_field('p', 'q')
    p, q = R.gens
    wr = R.convert(w, K)
    ff = [[wr**(i*j) for j in range(3)] for i in range(3)]
    dd = [R.one, p, q]
    hh = [ff[i]+[dd[i]*z for z in ff[i]] for i in range(3)]
    hh += [ff[i]+[-dd[i]*z for z in ff[i]] for i in range(3)]
    for i, j in itertools.product(range(6), repeat=2):
        assert sum((hh[i][k]/hh[j][k] for k in range(6)), R.zero) == (R(6) if i == j else R.zero)
    assert [hh[0][j]/hh[3][j] for j in range(6)] == [R.one]*3+[-R.one]*3
    assert all(sum((hh[i][k]/hh[j][k] for k in range(3)), R.zero) == (R(3) if i == j else R.zero)
               for i, j in itertools.product(range(3), repeat=2))

    return {'evidence_label': 'Certified computation',
            'scope': 'Elementary zero3/antipodal/block implication and exact controls; global triangle forcing remains Open.',
            'singular_corner_identities': 4, 'proportional_corner_branches': 6,
            'unit_triple_identities': 2, 'Fourier_type_multiplicity_cases': 5,
            'continuous_control_field': 'Q(omega)(p,q), omega^2+omega+1=0, sharp(p)=1/p, sharp(q)=1/q',
            'continuous_control_full_Gram_entries': 36,
            'F6_control': fourier, 'Tao_control': tao}


def main():
    assert __debug__, 'Assertions must remain enabled'
    print(json.dumps(calculate(), indent=2, sort_keys=True))


if __name__ == '__main__':
    main()
