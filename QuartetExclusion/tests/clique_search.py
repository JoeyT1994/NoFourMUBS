"""Stage C's pattern search (proof/atlas/stagec.py two_cliques: two disjoint O-6-cliques with all 36 cross pairs in U,
built alternately) against the plain enumeration it replaced (every O-6-clique A, then a 6-clique among the common
U-neighbours of A), on random graphs, half with a planted pattern.  Exits nonzero on any disagreement.

  python3 QuartetExclusion/tests/clique_search.py [trials]
"""
import sys
from pathlib import Path
import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'proof/atlas'))
import stagec as SC


def reference(O, Ub):
    """The enumeration used up to Oct 2026: True iff the pattern is impossible."""
    n = len(O)
    orth = [int(''.join('1' if O[i, j] else '0' for j in reversed(range(n))), 2) for i in range(n)]
    ub = [int(''.join('1' if Ub[i, j] else '0' for j in reversed(range(n))), 2) for i in range(n)]
    def cliques(pool, need):
        if need == 0:
            yield (); return
        while pool.bit_count() >= need:
            bit = pool & -pool; i = bit.bit_length() - 1; pool ^= bit
            for tail in cliques(pool & orth[i], need - 1):
                yield (i, *tail)
    for A in cliques((1 << n) - 1, 6):
        D = (1 << n) - 1
        for i in A: D &= ub[i]
        for B in cliques(D, 6):
            return False
    return True


def random_case(rng, planted):
    n = int(rng.integers(12, 60)); po = rng.uniform(0.2, 0.75); pu = rng.uniform(0.3, 0.95)
    O = np.triu(rng.random((n, n)) < po, 1); Ub = np.triu(rng.random((n, n)) < pu, 1)
    O = O | O.T; Ub = Ub | Ub.T
    if planted:                                                # plant a pattern, possibly with one pair removed
        v = rng.permutation(n)[:12]; A, B = v[:6], v[6:]
        for X in (A, B):
            O[np.ix_(X, X)] = True
        Ub[np.ix_(A, B)] = True; Ub[np.ix_(B, A)] = True
        np.fill_diagonal(O, False)
        if rng.random() < 0.5:                                 # break it: one O pair inside, or one cross U pair
            i, j = (A[0], A[1]) if rng.random() < 0.5 else (A[0], B[0])
            G = O if j in A else Ub
            G[i, j] = G[j, i] = False
    return O, Ub


def main():
    trials = int(sys.argv[1]) if len(sys.argv) > 1 else 2000
    rng = np.random.default_rng(20261017); bad = found = 0
    for t in range(trials):
        O, Ub = random_case(rng, planted=t % 2 == 0)
        new, _ = SC.two_cliques(O, Ub, cap=10 ** 9); old = reference(O, Ub)
        found += not old
        if new != old: bad += 1; print('DISAGREE on trial %d: new %s, reference %s' % (t, new, old))
    print('clique search: %d / %d agree with the reference (%d with a pattern)' % (trials - bad, trials, found))
    sys.exit(1 if bad else 0)


if __name__ == '__main__':
    main()
