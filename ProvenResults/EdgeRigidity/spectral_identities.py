"""Exact checks for the spectral-slack and Cauchy-Binet identities.

cauchy_binet() and the symbolic half of scalar_slack() are copied without
change from the archive verifier
90_replay_library/05_remaining_D2/spectral_forcing/verify_identities.py.
The archive's comparisons against its own product-reconstruction compiler and
its dimension-three quartet control depended on archive-only modules and are
not part of the imported statements; they are omitted.  averaging() is an
added exact control of the averaging identity on two exact Hadamards.
"""
from collections import defaultdict
from itertools import permutations, product, combinations
import json
import sympy as S
from sympy.polys.matrices import DomainMatrix

from compatibility import Exact


def sign(p):
    return (-1)**sum(p[i] > p[j] for i in range(len(p)) for j in range(i+1, len(p)))


def cauchy_binet():
    left = defaultdict(int); right = defaultdict(int)
    for p in permutations(range(3)):
        for middle in product(range(6), repeat=3):
            key = tuple(sorted([('A', i, middle[i]) for i in range(3)]+[('B', middle[i], p[i]) for i in range(3)]))
            left[key] += sign(p)
    for indices in combinations(range(6), 3):
        for p in permutations(range(3)):
            for q in permutations(range(3)):
                key = tuple(sorted([('A', i, indices[p[i]]) for i in range(3)]+[('B', indices[i], q[i]) for i in range(3)]))
                right[key] += sign(p)*sign(q)
    clean = lambda d: {k: v for k, v in d.items() if v}
    assert clean(left) == clean(right)
    assert 6**3 == 216 and 20*216 == 4320
    return {'mixed_minor_coefficient_identity': True, 'normalization': [216, 4320]}


def scalar_slack():
    a, b, c, d = S.symbols('a b c d', nonzero=True); variables = (a, b, c, d)
    sharp = lambda z: z.xreplace({x: 1/x for x in variables})
    E = S.Matrix([[1, 1, 1], [1, a, b], [1, c, d]]); G = 6*S.eye(3)-E*E.applyfunc(sharp).T
    s = -(1+a+b); t = -(1+c+d); r = -(1+c/a+d/b)
    expected = 27-3*(s*sharp(s)+t*sharp(t)+r*sharp(r))+s*r*sharp(t)+sharp(s*r)*t
    assert S.expand(G.det()-expected) == 0
    # G has the displayed entries s,t,r below the diagonal.
    assert S.simplify(G[1, 0]-s) == 0 and S.simplify(G[2, 0]-t) == 0 and S.simplify(G[2, 1]-r) == 0
    return {'four_seed_spectral_determinant': True}


def averaging():
    """For a phase Hadamard T and fixed |I|=3: sum_J |det T[I,J]|^2 = 216."""
    out = {}
    E = Exact(S.QQ.algebraic_field(S.I, S.sqrt(3)))
    root = (1+S.I*S.sqrt(3))/2
    tao_exponents = [[0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 2, 2], [0, 1, 0, 2, 2, 1],
                     [0, 1, 2, 0, 1, 2], [0, 2, 2, 1, 0, 1], [0, 2, 1, 2, 1, 0]]
    omega = root**2
    controls = [('F6', E, E.matrix([[root**(j*k) for k in range(6)] for j in range(6)])),
                ('Tao', E, E.matrix([[omega**k for k in row] for row in tao_exponents]))]
    E33 = Exact(S.QQ.algebraic_field(S.I, S.sqrt(33)))
    a, b, c = S.I, (3-4*S.I)/5, (-57-176*S.I)/185
    d = (2-12*S.I+(6+S.I)*S.sqrt(33))/37
    controls.append(('Qsqrt33', E33, E33.matrix([
        [1]*6, [1, a, b, a/c, a/d, a*d/(b*c)], [1, c, d, a, b*c/d, a/b],
        [1, a/b, -1, a/d, -a/d, -a/b], [1, d, -d, a*d/(b*c), -1, -a*d/(b*c)],
        [1, b*c/d, -b, b, -b*c/d, -1]])))
    triples = list(combinations(range(6), 3))
    for name, F, H in controls:
        F.validate_hadamard(H)
        K = F.F
        total = K.zero
        for I in triples:
            row = K.zero
            for J in triples:
                x = H.extract(list(I), list(J)).det()
                row += x*F.bar(x)
            assert row == K.convert(216), (name, I)
            total += row
        # Complementary three-column blocks: 6I-FF* = BB*, det = |det B|^2.
        for I, J in product(triples, repeat=2):
            Jc = [j for j in range(6) if j not in J]
            A = H.extract(list(I), list(J)); B = H.extract(list(I), Jc)
            G = F.scale(F.eye(3), 6)-A*F.star(A)
            assert G == B*F.star(B)
        assert total == K.convert(4320)
        out[name] = {'row_sums_216': 20, 'total_4320': True, 'gram_complement_identities': 400}
    return out


def calculate():
    return {'cauchy_binet': cauchy_binet(), 'scalar_slack': scalar_slack(),
            'averaging_controls': averaging()}


if __name__ == '__main__':
    print(json.dumps(calculate(), indent=2))
