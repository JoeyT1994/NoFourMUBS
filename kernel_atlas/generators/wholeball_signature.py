"""Reproduce Z's exact finite signature coefficients (no numerical input)."""
from collections import Counter
from itertools import permutations, product


def signature_data():
    ps = list(permutations(range(3)))
    signs = [(-1)**sum(p[i] > p[j] for i in range(3) for j in range(i+1, 3)) for p in ps]
    freqs = [tuple(int(p[i] == j) for i in range(3) for j in range(3)) for p in ps]
    coeff = Counter()
    for a, b, c in product(range(6), repeat=3):
        nu = tuple(freqs[a][j] + freqs[b][j] + freqs[c][j] - 1 for j in range(9))
        coeff[nu] += signs[b] * signs[c]
    coeff = {nu: c for nu, c in coeff.items() if c}
    seen, terms = set(), []
    for nu in sorted(set(coeff) | {tuple(-x for x in nu) for nu in coeff}):
        if nu in seen:
            continue
        neg = tuple(-x for x in nu)
        seen.update((nu, neg))
        c = coeff.get(nu, 0) - coeff.get(neg, 0)
        if c:
            terms.append((c, nu))
    if len(coeff) != 55 or len(terms) != 24 or any(abs(c) != 1 for c, _ in terms):
        raise ArithmeticError("signature coefficient identity failed")
    gram = [[sum(nu[i] * nu[j] for _, nu in terms) for j in range(9)] for i in range(9)]
    expected = [[8 * (3 * (i//3 == j//3) - 1) * (3 * (i%3 == j%3) - 1)
                 for j in range(9)] for i in range(9)]
    if gram != expected:
        raise ArithmeticError("signature Gram identity failed")
    return freqs, signs, terms


def vector(xs):
    return "![" + ", ".join(map(str, xs)) + "]"


def declarations():
    freqs, signs, terms = signature_data()
    return (
        "def signaturePermFrequency : Fin 6 → SignatureFrequency :=\n  " + vector(map(vector, freqs)) + "\n\n"
        "def signatureSigns : Fin 6 → ℤ := " + vector(signs) + "\n\n"
        "def signatureFrequency : Fin 24 → SignatureFrequency :=\n  " + vector(vector(nu) for _, nu in terms) + "\n\n"
        "def signatureCoefficient : Fin 24 → ℤ := " + vector(c for c, _ in terms) + "\n")


if __name__ == "__main__":
    print(declarations())
