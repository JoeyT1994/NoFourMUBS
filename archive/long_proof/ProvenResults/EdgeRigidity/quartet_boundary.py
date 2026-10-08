"""Formal boundary reduction checks, not a replay of external nonextension."""
from itertools import product
import sympy as sp


def verify():
    a, b, c = sp.symbols('a b c', nonzero=True)
    sharp = lambda t: t.xreplace({a: 1/a, b: 1/b, c: 1/c})
    n = a+b*c-b-c
    factor = (a-b)*(a-c)*(b-1)*(c-1)/(a*b*c)
    assert sp.cancel(n*sharp(n)-(a-1)*sharp(a-1)-factor) == 0
    allocations = []
    balanced = 0
    for labels in product(tuple(product(range(2), repeat=2)), repeat=4):
        if sum(x for x, _ in labels) != 2 or sum(y for _, y in labels) != 2:
            continue
        balanced += 1
        if any((s == u) != (t == v) for s, t in labels for u, v in labels):
            continue
        assert sorted(labels) in [[(0, 0), (0, 0), (1, 1), (1, 1)],
                                  [(0, 1), (0, 1), (1, 0), (1, 0)]]
        allocations.append(labels)
    assert balanced == 36 and len(allocations) == 12
    omega, z, w = sp.symbols('omega z w', nonzero=True)
    reduce = lambda x: sp.rem(sp.cancel(x), omega**2+omega+1, omega)
    f = sp.Matrix([[1, 1, 1], [1, omega, omega**2], [1, omega**2, omega]])
    d = sp.diag(1, z, w)
    normal = f.row_join(f).col_join((f*d).row_join(-f*d))
    star = normal.xreplace({omega: omega**2, z: 1/z, w: 1/w}).T
    assert all(reduce(x) == 0 for x in normal*star-6*sp.eye(6))
    assert normal.extract([0, 1, 2], [0, 3, 1]).det() == 0
    assert normal.extract([0, 1, 2], [0, 3]) == sp.ones(3, 2)
    # Changing one entry breaks the universal Gram identity.
    wrong = normal.copy()
    wrong[0, 0] = -1
    wrong_star = wrong.xreplace({omega: omega**2, z: 1/z, w: 1/w}).T
    assert any(reduce(x) != 0 for x in wrong*wrong_star-6*sp.eye(6))
    return {'unit_modulus_singular_corner_factor_verified': True,
            'all_sign_allocations': 256, 'balanced_allocations': balanced,
            'compatible_allocations': len(allocations),
            'normal_form_parameters': ['z', 'w'],
            'normal_form_Gram_and_singular_minor_verified': True,
            'altered_entry_rejected': True,
            'external_quartet_exclusion_replayed': False}


if __name__ == '__main__':
    import json
    print(json.dumps(verify(), indent=2))
    print('PASS exact spectral-boundary normal form; forcing OPEN')
