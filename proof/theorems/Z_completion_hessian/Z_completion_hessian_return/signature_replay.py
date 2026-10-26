"""Exact finite verification of the Im(Psi) orientation derivative bounds.

No third-party dependencies. Run: python signature_replay.py
The proof turning the final second moment into derivative bounds is in
analytic_notes.md, Section 4.
"""

from collections import Counter
from itertools import permutations, product


def signature_terms():
    perms = list(permutations(range(3)))
    sgn = [(-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))
           for p in perms]
    coefficients = Counter()
    for a, b, d in product(range(6), repeat=3):
        nu = [-1] * 9
        for p in (perms[a], perms[b], perms[d]):
            for i, j in enumerate(p):
                nu[3 * i + j] += 1
        coefficients[tuple(nu)] += sgn[b] * sgn[d]
    coefficients = {nu: z for nu, z in coefficients.items() if z}
    assert len(coefficients) == 55
    seen, terms = set(), []
    frequency_set = set(coefficients) | {tuple(-x for x in v) for v in coefficients}
    for nu in sorted(frequency_set):
        if nu in seen:
            continue
        neg = tuple(-x for x in nu)
        seen.update((nu, neg))
        z = coefficients.get(nu, 0) - coefficients.get(neg, 0)
        if z:
            assert abs(z) == 1
            terms.append((z, nu))
    return coefficients, terms


def verify():
    coefficients, terms = signature_terms()
    assert len(terms) == 24
    assert Counter(sum(x * x for x in nu) for _, nu in terms) == {10: 18, 18: 6}
    for _, nu in terms:
        assert all(sum(nu[3 * i + j] for j in range(3)) == 0 for i in range(3))
        assert all(sum(nu[3 * i + j] for i in range(3)) == 0 for j in range(3))
    for a in range(9):
        for b in range(9):
            actual = sum(nu[a] * nu[b] for _, nu in terms)
            # 72 times the (a,b) entry of P3 tensor P3; all arithmetic is integer.
            expected = 8 * (3 * (a // 3 == b // 3) - 1) * (3 * (a % 3 == b % 3) - 1)
            assert actual == expected
    print('CERTIFIED: 55-term Laurent polynomial; 24 sine terms; exact second moment 72(P3 tensor P3)')
    print('PROVED consequence: ||gradient ImPsi|| <= 24 sqrt(3), ||Hessian ImPsi|| <= 72')


if __name__ == '__main__':
    verify()
