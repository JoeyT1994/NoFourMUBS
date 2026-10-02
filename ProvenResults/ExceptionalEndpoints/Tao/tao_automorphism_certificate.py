#!/usr/bin/env python3
"""Exact certificate for the A6 coordinate action of Tao's exponent matrix."""

import itertools


E = (
    (0, 0, 0, 0, 0, 0),
    (0, 0, 1, 1, 2, 2),
    (0, 1, 0, 2, 2, 1),
    (0, 1, 2, 0, 1, 2),
    (0, 2, 2, 1, 0, 1),
    (0, 2, 1, 2, 1, 0),
)


def even(permutation):
    inversions = sum(permutation[i] > permutation[j]
                     for i in range(6) for j in range(i + 1, 6))
    return inversions % 2 == 0


def additive_rank_one(rows, columns):
    difference = [[(E[i][j] - E[rows[i]][columns[j]]) % 3
                   for j in range(6)] for i in range(6)]
    return all((difference[i][j] - difference[i][0]
                - difference[0][j] + difference[0][0]) % 3 == 0
               for i in range(6) for j in range(6))


def main():
    permutations = list(itertools.permutations(range(6)))
    row_actions = set()
    for rows in permutations:
        if any(additive_rank_one(rows, columns) for columns in permutations):
            row_actions.add(rows)

    alternating = {p for p in permutations if even(p)}
    stabilizer = {p for p in row_actions if p[0] == 0}
    orbit = {p[1] for p in stabilizer}
    print("row_actions", len(row_actions))
    print("equals_A6", row_actions == alternating)
    print("stabilizer_of_0", len(stabilizer))
    print("orbit_of_1", sorted(orbit))
    if row_actions != alternating or orbit != set(range(1, 6)):
        raise AssertionError("expected A6 action or point-stabilizer transitivity failed")
    print("TAO AUTOMORPHISM CERTIFICATE PASSED")


if __name__ == "__main__":
    main()
