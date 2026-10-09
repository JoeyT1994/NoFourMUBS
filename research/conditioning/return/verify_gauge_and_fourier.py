#!/usr/bin/env python3
"""Exact algebra supporting LOWER_BOUND_AND_SMOOTHNESS.md.

Checks gauge maps, Fourier kernel dimension, and the CRT equivalence.
No floating-point acceptance decisions. Does not certify MC1--MC4.
"""
from itertools import combinations
from fractions import Fraction
import json


def zeros(m, n):
    return [[Fraction(0) for _ in range(n)] for _ in range(m)]


def transpose(A):
    return [list(row) for row in zip(*A)]


def multiply(A, B):
    columns = transpose(B)
    return [[sum((x * y for x, y in zip(row, col)), Fraction(0))
             for col in columns] for row in A]


def rref(A):
    A = [[Fraction(x) for x in row] for row in A]
    m, n = len(A), len(A[0])
    pivot_columns = []
    rank = 0
    for col in range(n):
        pivot = next((i for i in range(rank, m) if A[i][col]), None)
        if pivot is None:
            continue
        A[rank], A[pivot] = A[pivot], A[rank]
        scale = A[rank][col]
        A[rank] = [x / scale for x in A[rank]]
        for i in range(m):
            if i != rank and A[i][col]:
                scale = A[i][col]
                A[i] = [x - scale * y for x, y in zip(A[i], A[rank])]
        pivot_columns.append(col)
        rank += 1
        if rank == m:
            break
    return A, pivot_columns


def rank(A):
    return len(rref(A)[1])


def nullspace(A):
    reduced, pivots = rref(A)
    free = [j for j in range(len(A[0])) if j not in pivots]
    basis = []
    for col in free:
        v = [Fraction(0)] * len(A[0])
        v[col] = Fraction(1)
        for i, pivot in enumerate(pivots):
            v[pivot] = -reduced[i][col]
        basis.append(v)
    return basis


def check(condition, message):
    if not condition:
        raise AssertionError(message)


def main():
    n = 6
    size = n * n
    P = zeros(size, size)
    D = zeros(size, size)
    for i in range(n):
        for j in range(n):
            row = n * i + j
            for k in range(n):
                for l in range(n):
                    col = n * k + l
                    P[row][col] = (
                        int(i == k and j == l)
                        - Fraction(int(i == k), n)
                        - Fraction(int(j == l), n)
                        + Fraction(1, size)
                    )
            D[row][row] += 1
            D[row][n * i] -= 1
            D[row][j] -= 1
            D[row][0] += 1
    check(P == transpose(P), "horizontal projection is not symmetric")
    check(multiply(P, P) == P, "horizontal projection is not idempotent")
    check(multiply(D, D) == D, "dephasing projection is not idempotent")
    check(multiply(D, P) == D, "D P != D")
    check(multiply(P, D) == P, "P D != P")
    check(rank(P) == 25, "horizontal dimension is not 25")
    check(rank(D) == 25, "dephased dimension is not 25")

    # zeta = exp(i*pi/3), with zeta^2 = zeta - 1.
    # Each listed pair (a,b) represents a+b*zeta exactly.
    sixth_roots = [(1, 0), (0, 1), (-1, 1), (-1, 0), (0, -1), (1, -1)]
    free = [(i, j) for i in range(1, n) for j in range(1, n)]
    free_index = {ij: k for k, ij in enumerate(free)}
    rows = []
    for a, b in combinations(range(n), 2):
        eq = [[0] * len(free), [0] * len(free)]
        for c in range(n):
            coeff = sixth_roots[((a - b) * c) % n]
            for matrix_row, sign in [(a, 1), (b, -1)]:
                k = free_index.get((matrix_row, c))
                if k is not None:
                    for part in range(2):
                        eq[part][k] += sign * coeff[part]
        rows.extend(eq)
    L = rows
    fourier_rank = rank(L)
    check(fourier_rank == 21, "Fourier phase Jacobian rank is not 21")
    kernel = nullspace(L)
    check(len(kernel) == 4, "Fourier phase kernel does not have dimension four")
    N = transpose(kernel)
    check(multiply(L, N) == zeros(30, 4), "Fourier nullspace verification failed")

    row_permutation = [(3 * r + 4 * j) % 6 for r in range(2) for j in range(3)]
    col_permutation = [(3 * s + 2 * k) % 6 for s in range(2) for k in range(3)]
    check(sorted(row_permutation) == list(range(6)), "CRT row map is not a permutation")
    check(sorted(col_permutation) == list(range(6)), "CRT column map is not a permutation")
    for r in range(2):
        for j in range(3):
            for s in range(2):
                for k in range(3):
                    exponent = row_permutation[3 * r + j] * col_permutation[3 * s + k]
                    check(exponent % 6 == (3 * r * s + 2 * j * k) % 6,
                          "CRT tensor Fourier identity failed")

    print(json.dumps({
        "status": "PASS",
        "arithmetic": "exact Python integers/fractions; standard library only",
        "horizontal_dimension": 25,
        "dephased_dimension": 25,
        "gauge_dimension": 11,
        "fourier_jacobian_rank": fourier_rank,
        "fourier_defect": len(kernel),
        "F2_tensor_F3_row_permutation": row_permutation,
        "F2_tensor_F3_column_permutation": col_permutation,
        "scope": "supporting identities only; MC1--MC4 are imported hypotheses"
    }, indent=2))


if __name__ == "__main__":
    main()
