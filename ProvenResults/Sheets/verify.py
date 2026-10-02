#!/usr/bin/env python3
"""Checks for the sheet-exchange conjugation symmetry (CONJUGATION.md).

1. Exact: with conj(z)=1/z on the seed torus, the invariants g, eta, chi, R
   are self-conjugate Laurent expressions and conjugating the seeds conjugates
   both Grams, so z_-(conj seeds) = conj(z_+(seeds)).
2. Regression (60 digits): for random strict seeds and both directions,
   H_-(conj a,..,conj d) = P conj(H_+(a,b,c,d)) P with P=diag(I3,J), where
   J swaps Fourier indices 1 and 2, using the canonical implementation
   ../../MinimalConstruction/Implementation/model.py unchanged. All cube-root
   branches are also compared up to permutations of the last three rows and
   columns.
The universal statement is the analytic proof; the samples test the code.
"""
from pathlib import Path
import itertools as it
import random
import sys
import mpmath as mp
import sympy as sp

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parents[1]/'MinimalConstruction'/'Implementation'))
from model import Model


def exact_invariants():
    a, b, c, d = seeds = sp.symbols('a b c d', nonzero=True)
    bar = {s: 1/s for s in seeds}

    def star(M):
        return M.applyfunc(lambda z: sp.sympify(z).xreplace({**bar, sp.I: -sp.I})).T
    E = sp.Matrix([[1, 1, 1], [1, a, b], [1, c, d]])
    Ebar = E.xreplace(bar)
    Gh = 6*sp.eye(3)-E*star(E)
    Ghbar = 6*sp.eye(3)-Ebar*star(Ebar)
    # conjugating the seeds conjugates the Gram entrywise
    assert (Ghbar-Gh.xreplace(bar)).applyfunc(sp.expand) == sp.zeros(3)
    s, t, r = Gh[1, 0], Gh[2, 0], Gh[2, 1]
    cj = lambda z: sp.sympify(z).xreplace(bar)
    X, Y, Z = s*cj(s), t*cj(t), r*cj(r)
    p = X+Y+Z; J = s*r*cj(t)+cj(s*r*cj(t)); W = X*Y+X*Z+Y*Z-X*Y*Z
    g = 27-3*p+J; eta = 9-p+J; chi = W-(p-9)*(p-18)+(p-15)*J; R = 4*g*g*eta-chi*chi
    for f in (g, eta, chi, R):
        assert sp.expand(f-cj(f)) == 0      # real, hence unchanged by seed conjugation
    return ['conj(seeds) conjugates Gh entrywise', 'g, eta, chi, R self-conjugate']


def mat_err(A, B):
    return max(abs(A[i, j]-B[i, j]) for i in range(6) for j in range(6))


def regression(cases=12):
    mp.mp.dps = 60
    rng = random.Random(20260926)
    P = mp.matrix(6, 6)
    for i, j in enumerate([0, 1, 2, 3, 5, 4]):
        P[i, j] = 1
    worst_fixed = mp.mpf(0); worst_branch = mp.mpf(0); done = 0
    while done < cases:
        seeds = [mp.exp(2j*mp.pi*mp.mpf(rng.random())) for _ in range(4)]
        conj = [mp.conj(z) for z in seeds]
        try:
            models = {(e, 0): Model(seeds, e) for e in (1, -1)}
            models.update({(e, 1): Model(conj, e) for e in (1, -1)})
        except ValueError:
            continue
        for e in (1, -1):
            H = models[(e, 0)].hadamard(); Hc = models[(-e, 1)].hadamard()
            target = P*H.apply(mp.conj)*P
            err = mat_err(Hc, target)
            worst_fixed = max(worst_fixed, err)
            # every cube-root branch of the conjugate side, up to tail permutations
            for bh, bv in it.product(range(3), repeat=2):
                Hb = models[(-e, 1)].hadamard(bh, bv)
                best = min(mat_err(mp.matrix([[Hb[i, j] for j in [0, 1, 2]+list(pc)]
                                               for i in [0, 1, 2]+list(pr)]), target)
                           for pr in it.permutations(range(3, 6)) for pc in it.permutations(range(3, 6)))
                worst_branch = max(worst_branch, best)
        done += 1
    assert worst_fixed < mp.mpf(10)**-45, mp.nstr(worst_fixed, 5)
    assert worst_branch < mp.mpf(10)**-45, mp.nstr(worst_branch, 5)
    return done, worst_fixed, worst_branch


if __name__ == '__main__':
    try:
        exact = exact_invariants()
        n, wf, wb = regression()
    except AssertionError as error:
        print('FAIL:', error); sys.exit(1)
    print('exact:', '; '.join(exact))
    print(f'{n} strict seed tuples, both directions: max |H_-(conj) - P conj(H_+) P| = {mp.nstr(wf, 3)};'
          f' all 9 root branches match up to tail permutations (max {mp.nstr(wb, 3)})')
    print('PASS sheet-exchange conjugation symmetry')
