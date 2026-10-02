#!/usr/bin/env python3
"""Complete finite common-ray algebra of H8, all four mates, and their zero3.

Run with cwd = this folder:  python3 H8Mates.py     (about 25 s)
Exits nonzero on failure. Uses python-flint, numpy, sympy.

Pipeline (see H8Mates.md):
 1. h8_compile_input.py   - H8 mod p=193513, minor pattern (6 zero 2-minors,
                            400 nonzero 3-minors), the ten common-ray equations.
 2. h8_reduced_fibre.py   - builds the ten 240x240 multiplication matrices from
                            the stored normal-form templates (data/), checks
                            commutation, inverses, all six transform equations
                            and cyclicity (dimension sandwich with the length-240
                            theorem), then the Frobenius image (reduced, 216).
 3. h8_inspect_fibre.py   - all 216 points in F_(p^2), Jacobian ranks, removal of
                            the 72 simple fake sections, orthogonality graph on
                            the 144 retained points, six-cliques, cross pairs.
 4. this file             - independent bit-set clique replay in F_p[sqrt5],
                            exact characteristic-zero lifts of the four cliques
                            in Q(zeta24), two-frame refinement data, zero3 count.
"""
from collections import Counter
import itertools as it
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import sympy as sp
from exact_q import Q, physical, mul, star, det3, carrier

HERE = Path(__file__).resolve().parent


def run(script, *args):
    proc = subprocess.run([sys.executable, '-B', str(HERE/script), *map(str, args)],
                          capture_output=True, text=True, timeout=240, check=True, cwd=HERE)
    return proc.stdout


def finite_certificate():
    data = json.loads(run('h8_compile_input.py', '--prime', 193513))
    assert data['zero2_count'] == 6 and data['nonzero3_count'] == 400
    with tempfile.TemporaryDirectory(prefix='mub-h8-') as name:
        work = Path(name)
        inp, reduced, graph = work/'input.json', work/'reduced.json', work/'graph.json'
        inp.write_text(json.dumps(data))
        run('h8_reduced_fibre.py', HERE/'data'/'h8_p193513_normal_forms.out', inp, '--output', reduced)
        run('h8_inspect_fibre.py', reduced, '--output', graph)
        algebra = json.loads(reduced.read_text())
        G = json.loads(graph.read_text())
    assert algebra['full_length'] == 240 and algebra['reduced_length'] == 216
    assert algebra['cyclic_regular_representation_checked']
    assert Counter(G['full_jacobian_ranks']) == {5: 208, 3: 8}
    assert len(G['fake_indices']) == 72 and all(G['full_jacobian_ranks'][i] == 5 for i in G['fake_indices'])
    assert Counter(G['degrees']) == {6: 96, 8: 24, 5: 24}
    assert len(G['bases']) == 4 and G['quartets'] == []
    assert [v['witness'][2] for v in G['failed_pairs']] == [[4, 0], [12, 0], [4, 0], [12, 0], [4, 0], [12, 0]]
    # Independent bit-set clique enumeration with hand-written F_p[sqrt5] arithmetic.
    p = data['prime']
    points = G['roots']
    N = len(points)

    def add(a, b): return ((a[0]+b[0]) % p, (a[1]+b[1]) % p)

    def mulp(a, b): return ((a[0]*b[0]+5*a[1]*b[1]) % p, (a[0]*b[1]+a[1]*b[0]) % p)

    def inv(a):
        d = pow((a[0]*a[0]-5*a[1]*a[1]) % p, -1, p)
        return (a[0]*d % p, -a[1]*d % p)
    inverses = [[inv(x) for x in row] for row in points]
    overlaps = []
    for y in inverses:
        row = []
        for x in points:
            v = (0, 0)
            for a, b in zip(x, y):
                v = add(v, mulp(a, b))
            row.append(v)
        overlaps.append(row)
    adj = [sum(1 << j for j in range(N) if overlaps[i][j] == overlaps[j][i] == (0, 0)) for i in range(N)]
    assert [a.bit_count() for a in adj] == G['degrees']
    found = []

    def visit(prefix, mask):
        if len(prefix) == 6:
            found.append(prefix)
            return
        if mask.bit_count() < 6-len(prefix):
            return
        while mask:
            bit = mask & -mask
            v = bit.bit_length()-1
            mask ^= bit
            visit(prefix+[v], mask & adj[v])
    visit([], 2**N-1)
    assert found == G['bases']
    for item in G['failed_pairs']:
        a, b = item['bases']
        i, j, value = item['witness']
        assert i in found[a] and j in found[b]
        assert mulp(overlaps[i][j], overlaps[j][i]) == tuple(value) != (6, 0)
    assert [tuple(item['bases']) for item in G['failed_pairs']] == list(it.combinations(range(4), 2))
    return data, algebra, G


def mates(data, G):
    p = data['prime']
    z8 = data['zeta8_image']
    ii = pow(z8, 2, p)
    s2 = (z8+pow(z8, -1, p)) % p
    s3 = min(map(int, sp.sqrt_mod(3, p, all_roots=True)))
    z24 = ((s2*s3+s2)+ii*(s2*s3-s2))*pow(4, -1, p) % p
    assert pow(z24, 3, p) == z8 and len({pow(z24, k, p) for k in range(24)}) == 24
    root = (Q({6: 1})+Q({2: 1})+Q({7: 1})-Q({3: 1}))/4          # zeta24 in Q(i,sqrt2,sqrt3)
    assert root**3 == (Q(1)+Q({1: 1}))/Q({2: 1})
    assert root*root.bar() == 1 and root**24 == 1
    alphabet = {pow(z24, k, p): k for k in range(24)}
    H = [[value/row[0] for value in row] for row in carrier()]

    def residue(value):
        assert set(value.c) <= set(range(8))
        return sum(v.numerator*pow(v.denominator, -1, p)*pow(ii, k & 1, p)
                   * pow(s2, (k >> 1) & 1, p)*pow(s3, (k >> 2) & 1, p)
                   for k, v in value.c.items()) % p
    assert [[residue(v) for v in row] for row in H] == data['H']
    out = []
    matrices = []
    for basis in G['bases']:
        exponents = []
        columns = []
        for j in basis:
            assert all(b == 0 and a in alphabet for a, b in G['roots'][j])
            ee = [alphabet[a] for a, b in G['roots'][j]]
            column = [root**k for k in ee]
            assert [residue(v) for v in column] == [a for a, b in G['roots'][j]]
            exponents.append(ee)
            columns.append(column)
        K = list(map(list, zip(*columns)))
        physical(K)
        Wm = mul(star(H), K)
        assert all(v*v.bar() == 6 for row in Wm for v in row)
        ranks = [G['full_jacobian_ranks'][G['source_primitive_root_indices'][j]] for j in basis]
        nonsimple = [k for k in range(6) if ranks[k] != 5]
        simple = [k for k in range(6) if ranks[k] == 5]
        assert len(nonsimple) == 2 and len(simple) == 4 and all(ranks[k] == 3 for k in nonsimple)
        a, b = nonsimple
        ratios = [K[j][a].bar()*K[j][b] for j in range(6)]
        transformed = [Wm[j][a].bar()*Wm[j][b]/6 for j in range(6)]
        assert all(v == 1 or v == -1 for v in ratios)
        assert sum(v == 1 for v in ratios) == 3
        assert transformed[0] == Q({1: 1}) or transformed[0] == Q({1: -1})
        triples = list(it.combinations(range(6), 3))
        zero3 = [(R, C) for R, C in it.product(triples, repeat=2)
                 if det3([[K[r][c] for c in C] for r in R]) == 0]
        assert len(zero3) == 24
        out.append({'column_exponents_mod24': exponents, 'simple_columns': simple,
                    'nonsimple_columns': nonsimple,
                    'binary_quotient': [int(v.rational()) for v in ratios],
                    'transformed_quotient_row0': str(transformed[0]), 'zero3_count': len(zero3)})
        matrices.append(K)
    assert len(matrices) == 4
    failures = []
    for a, b in it.combinations(range(4), 2):
        T = mul(star(matrices[a]), matrices[b])
        row, col = next((r, c) for r, c in it.product(range(6), repeat=2) if T[r][c]*T[r][c].bar() != 6)
        failures.append({'bases': [a, b], 'entry': [row, col],
                         'squared_overlap': str((T[row][col]*T[row][col].bar()).rational())})
    return out, failures


def main():
    if not __debug__:
        raise SystemExit('Assertions must remain enabled')
    data, algebra, G = finite_certificate()
    lifted, failures = mates(data, G)
    print(json.dumps({'status': 'PASS', 'prime': data['prime'],
                      'full_length': algebra['full_length'], 'reduced_length': algebra['reduced_length'],
                      'jacobian_rank_histogram': dict(Counter(G['full_jacobian_ranks'])),
                      'retained_points': len(G['roots']), 'degree_histogram': dict(Counter(G['degrees'])),
                      'six_cliques': len(G['bases']), 'mates': lifted, 'exact_failed_pairs': failures},
                     indent=1, sort_keys=True))
    print('PASS H8: complete finite algebra (240/216), four six-cliques, exact lifts, '
          'two-frame refinement data, 24 zero3 on every mate, no mutually unbiased pair of mates')


if __name__ == '__main__':
    main()
