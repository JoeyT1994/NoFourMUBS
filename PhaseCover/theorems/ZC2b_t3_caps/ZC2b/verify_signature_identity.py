"""Exact standard-library replay of the Psi sine-frequency identities.

No transcendental evaluations or floating-point arithmetic are used.
"""
from collections import Counter
from itertools import permutations, product
import json


def verify():
    perms = list(permutations(range(3)))
    signs = [(-1) ** sum(p[i] > p[j] for i in range(3)
                        for j in range(i + 1, 3)) for p in perms]
    coefficients = Counter()
    for a, b, c in product(range(6), repeat=3):
        frequency = [-1] * 9
        for permutation in (perms[a], perms[b], perms[c]):
            for i, j in enumerate(permutation):
                frequency[3 * i + j] += 1
        coefficients[tuple(frequency)] += signs[b] * signs[c]
    coefficients = {n: c for n, c in coefficients.items() if c}
    assert len(coefficients) == 55

    seen, terms = set(), []
    frequencies = set(coefficients) | {
        tuple(-x for x in n) for n in coefficients}
    for n in sorted(frequencies):
        if n in seen:
            continue
        negative = tuple(-x for x in n)
        seen.update((n, negative))
        coefficient = coefficients.get(n, 0) - coefficients.get(negative, 0)
        if coefficient:
            assert abs(coefficient) == 1
            terms.append((coefficient, n))
    assert len(terms) == 24
    for _, n in terms:
        assert all(sum(n[3*i+j] for j in range(3)) == 0 for i in range(3))
        assert all(sum(n[3*i+j] for i in range(3)) == 0 for j in range(3))
    for i, j in product(range(9), repeat=2):
        actual = sum(n[i] * n[j] for _, n in terms)
        expected = (8 * (3 * (i//3 == j//3) - 1)
                    * (3 * (i % 3 == j % 3) - 1))
        assert actual == expected
    lengths = Counter(sum(x*x for x in n) for _, n in terms)
    assert lengths == {18: 6, 10: 18}
    return dict(status="CERTIFIED", arithmetic="exact integers",
                nonzero_laurent_terms=len(coefficients), sine_terms=len(terms),
                gram_identity="sum nu nu^T = 72 (P3 tensor P3)",
                squared_frequency_counts=dict(lengths))


if __name__ == "__main__":
    print(json.dumps(verify(), indent=2, sort_keys=True))
