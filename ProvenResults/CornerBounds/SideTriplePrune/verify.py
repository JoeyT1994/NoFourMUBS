"""Exact identities, graph completeness, and eleven full-box certificates."""
from itertools import combinations_with_replacement
from pathlib import Path
import json
import math
import time

import sympy as sp
from triple_prune import (arb, acb, grid_box, prune_box, compatible_triples,
                         exclude_triples, cover_side_triples)
from prune import prune_box as old_prune_box

HERE = Path(__file__).resolve().parent


def identities():
    x = sp.symbols('x0:3', nonzero=True)
    y = sp.symbols('y0:3', nonzero=True)
    B = sp.Matrix([[1,1,1], x, y])
    BH = sp.Matrix([[1,1/x[i],1/y[i]] for i in range(3)])
    G = B*BH
    adj = G.adjugate()
    gram_product = BH*adj*B
    determinant = sp.expand(G.det())
    for i in range(3):
        for j in range(3):
            assert sp.expand(gram_product[i,j]-(determinant if i == j else 0)) == 0
    print('PASS: B† adj(BB†) B = det(BB†) I, exact Laurent identity')

    s, t, r = sum(x), sum(y), sum(y[i]/x[i] for i in range(3))
    for i, j in ((0,1), (0,2), (1,2)):
        k = 3-i-j
        u, v = s-x[i]-x[j], t-y[i]-y[j]
        assert sp.expand(u-x[k]) == 0 and sp.expand(v-y[k]) == 0
        assert sp.expand(r-y[i]/x[i]-y[j]/x[j]-v/x[k]) == 0
    print('PASS: remaining-column phase and mixed-moment identities')

    # Independently expand the six formal Gram entries and their cofactors.
    s,t,r,bs,bt,br = sp.symbols('s t r bs bt br')
    matrix = sp.Matrix([[3,bs,bt],[s,3,br],[t,r,3]])
    formula = sp.Matrix([[9-r*br,bt*r-3*bs,bs*br-3*bt],
                         [t*br-3*s,9-t*bt,s*bt-3*br],
                         [s*r-3*t,bs*t-3*r,9-s*bs]])
    assert sp.simplify(matrix.adjugate()-formula) == sp.zeros(3)
    print('PASS: explicit Gram adjugate formula')


def graph_checks():
    pairs = list(combinations_with_replacement(range(3), 2))
    for mask in range(1 << len(pairs)):
        edges = [set() for _ in range(3)]
        for bit, (i,j) in enumerate(pairs):
            if mask & (1 << bit):
                edges[i].add(j)
                edges[j].add(i)
        expected = {triple for triple in combinations_with_replacement(range(3),3)
                    if all(triple[q] in edges[triple[p]]
                           for p,q in ((0,1),(0,2),(1,2)))}
        assert set(compatible_triples(edges)) == expected
    print('PASS: all 64 three-vertex looped graphs, including repeated labels')

    labels = [(acb(1),acb(1),acb(1))]
    gram = (acb(3),acb(3),acb(3))
    ok, stats = exclude_triples(labels, gram)
    assert not ok and stats['loops'] == 1 and stats['triples'] == 1
    assert stats['reason'] == 'compatible_triple'
    for option in ({'pair_budget':0}, {'triple_budget':0}):
        ok, _ = exclude_triples(labels, gram, **option)
        assert not ok
    print('PASS: singular repeated-column side survives; graph budgets fail closed')


def certificates():
    cases = json.loads((HERE/'data/cells.json').read_text())
    assert len(cases) == 11
    grid_rows = [line.split() for line in (HERE/'data/grid.txt').read_text().splitlines()]
    assert grid_rows == [[case['name'],*map(str,case['grid_numerators'])] for case in cases]
    old_count = 0
    for case in cases:
        centers, radii = grid_box(case)
        for k, center, radius in zip(case['grid_numerators'], centers, radii):
            assert abs(arb(k*(math.pi/512))-center)+arb(math.pi/512) < radius
        old = old_prune_box(centers,radii)
        assert old['ok'] == case['old_prune_excludes'], (case,old)
        old_count += int(old['ok'])
        start = time.monotonic()
        new = prune_box(centers,radii)
        assert new['ok'] and new['reason'] == 'no_side_triple', (case,new)
        assert new['triples'] == 0
        print('PASS:',case['name'],'old='+str(old['ok']),new,
              'seconds='+str(round(time.monotonic()-start,4)),flush=True)
    assert old_count == 4
    print('PASS: old prune excludes 4/11; new prune excludes 11/11 in this selected sample')

    delta = 2*(arb(1)/32).atan()
    centers = [4*arb.pi()/3,-arb.pi()/3+delta,arb(0),arb.pi()+delta]
    radii = [arb.pi()/512]*4
    assert not prune_box(centers,radii)['ok']
    assert not cover_side_triples(centers,radii,4,budget=1)['ok']
    assert not cover_side_triples(centers,radii,4,maxlabels=0)['ok']
    print('PASS: known Fourier D0 box stays unresolved; cover/label limits fail closed')


if __name__ == '__main__':
    identities()
    graph_checks()
    certificates()
    print('PASS: three-column compatibility theorem and seven additional branch-cell exclusions')
