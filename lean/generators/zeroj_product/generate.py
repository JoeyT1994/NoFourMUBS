#!/usr/bin/env python3
"""Generate NoFourMUBs/PRM/CoverageMixedData.lean (return O, the zero-J product K = (1 - z)(z + 3)^3).

Untrusted: Lean re-checks everything (the regroupings by `ring` in `CoverageMixedSums`, the two mixed
identities by the Kronecker identity checker in `CoverageMixedCheck{G,R}`).

* `txTerms`, `tpTerms`: the two weighted sums over the nine mixed corners (two columns j, k of the half A,
  one column c of the complementary half B) of the signed corner value D = conj T - T (`dTerms`, the 48-term
  Laurent expansion of `CoverageSignedData`), regrouped into products M_A(p) M_A(q) M_B(r) of half moments:
      sum_{j,k in A, c in B} x_c D(j,k,c)      = 2 T_x              (REPORT.md (8), 24 terms)
      sum_{j,k in A, c in B} x_j y_c D(j,k,c)  = 2 T_{x|y}          (REPORT.md (9), 44 terms)
  The ordered sum counts every unordered pair {j, k} twice, so both lists have the ordered-sum coefficients.
* `cofG`, `cofR`: the ideal cofactors of the return's two source-bound integer-DAG certificates
  (`MinimalReconstruction/returns/O_zeroj_unsquared/certificates/mixed_certificates.json`), translated node by node
  into `let` chains:
    - `generic` (identity (12)): the right source is z^2 target + G_W (q0 + h q1); `cofG` is q0 + h q1, over the
      quadratic element h (h^2 = -XYZ) of the context `CG`;
    - `repeated_Tpair` (identity (27a) on X = Y = v): the right source is
      [C2 q + 3 z^4 e_Z^3 e_v^4 (C + 2vD)] / [16 z^4 e_Z^3 e_v^4 (z + 3)^5]; `cofR` is the polynomial q.
  The rest of each certificate (the left source, the rational binding) is not needed: Lean computes the left
  side itself from the moment formulas (`halfQ`, `HalfQ.mom`) and checks
      z^2 mult (2 T_x) - 2 (z^2 target + G_W cofG) = 0          (`CoverageMixedCheckG.valid`)
      Re(2 T_{x|y}) - 3 (C + 2vD) / (8 tau^5) - C2 cofR / (8 z^4 e_Z^3 e_v^4 tau^5) = 0
                                                                (`CoverageMixedCheckR.valid`).

  python3 lean/generators/zeroj_product/generate.py

Needs sympy (as `generators/strip/signed.py`, whose 48-term expansion it reuses).
"""
import collections
import json
import sys
from pathlib import Path

import sympy as sp

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / 'NoFourMUBs/PRM/CoverageMixedData.lean'
CERT = ROOT.parent / 'MinimalReconstruction/returns/O_zeroj_unsquared/certificates/mixed_certificates.json'
sys.path.insert(0, str(ROOT / 'generators/strip'))
from signed import expansion  # noqa: E402

# Shifts (column a, column b, column c) of the exponent pairs: the weights x_c and x_a y_c.
SHIFTS = {'tx': ((0, 0), (0, 0), (1, 0)), 'tp': ((1, 0), (0, 0), (0, 1))}


def regroup(terms, shift):
    acc = collections.defaultdict(int)
    for c, i0, j0, i1, j1, i2, j2 in terms:
        p = (i0 + shift[0][0], j0 + shift[0][1])
        q = (i1 + shift[1][0], j1 + shift[1][1])
        r = (i2 + shift[2][0], j2 + shift[2][1])
        p, q = sorted((p, q))
        acc[(p, q, r)] += c
    return sorted((k, v) for k, v in acc.items() if v)


def lean_int(z):
    return f'({z})' if z < 0 else str(z)


def lean_pair(p):
    return f'({lean_int(p[0])}, {lean_int(p[1])})'


def subdag(nodes, root):
    seen = set()
    stack = [root]
    while stack:
        i = stack.pop()
        if i in seen:
            continue
        seen.add(i)
        n = nodes[i]
        if n[0] in ('add', 'mul'):
            stack += [n[1], n[2]]
        elif n[0] == 'pow':
            stack.append(n[1])
    return sorted(seen)


def to_sympy(nodes, names, upto):
    syms = [sp.Symbol(v) for v in names]
    vals = []
    for n in nodes[:upto + 1]:
        op = n[0]
        if op == 'const':
            v = sp.Integer(n[1])
        elif op == 'var':
            v = syms[n[1]]
        elif op == 'add':
            v = vals[n[1]] + vals[n[2]]
        elif op == 'mul':
            v = vals[n[1]] * vals[n[2]]
        else:
            v = vals[n[1]] ** n[2]
        vals.append(v)
    return vals


def add_leaves(nodes, i):
    n = nodes[i]
    if n[0] == 'add':
        return add_leaves(nodes, n[1]) + add_leaves(nodes, n[2])
    return [i]


def find_cofactor(cert, ideal):
    """The leaf `mul(cofactor, generator)` of the right numerator whose generator expands to `ideal`."""
    nodes, names = cert['nodes'], cert['variables']
    rn = cert['rational_sources'][2]
    vals = to_sympy(nodes, names, rn)
    found = []
    for leaf in add_leaves(nodes, rn):
        n = nodes[leaf]
        if n[0] != 'mul':
            continue
        for a, b in ((n[1], n[2]), (n[2], n[1])):
            if sp.expand(vals[b] - ideal(*[sp.Symbol(v) for v in names])) == 0:
                found.append(a)
    assert len(found) == 1, found
    return found[0]


def let_chain(nodes, names, root, var, const, indent='  ', width=100):
    idx = subdag(nodes, root)
    name = {i: f'n{k}' for k, i in enumerate(idx)}
    tokens = []
    for i in idx:
        n = nodes[i]
        if n[0] == 'const':
            rhs = const(n[1])
        elif n[0] == 'var':
            rhs = var[names[n[1]]]
        elif n[0] == 'add':
            rhs = f'{name[n[1]]} + {name[n[2]]}'
        elif n[0] == 'mul':
            rhs = f'{name[n[1]]} * {name[n[2]]}'
        else:
            rhs = f'{name[n[1]]} ^ {n[2]}'
        tokens.append(f'let {name[i]} := {rhs};')
    # several `let`s per line (term-mode `let x := v; body`)
    lines, cur = [], indent
    for tok in tokens:
        if len(cur) + len(tok) + 1 > width and cur.strip():
            lines.append(cur.rstrip())
            cur = indent
        cur += tok + ' '
    lines.append(cur.rstrip())
    lines.append(f'{indent}{name[root]}')
    return lines, len(idx)


def gw(X, Y, h, z):
    Z = 9 - z ** 2 - X - Y
    return X * Y + X * Z + Y * Z - X * Y * Z - z ** 2 * (z + 3) ** 2


def c2(X, z):
    return 2 * X ** 2 + (z ** 2 + 2 * z - 6) * X + z ** 2 * (z + 3)


def main():
    terms = expansion()
    assert len(terms) == 48
    tx, tp = regroup(terms, SHIFTS['tx']), regroup(terms, SHIFTS['tp'])
    assert len(tx) == 24 and all(abs(v) == 2 for _, v in tx)
    assert len(tp) == 44 and all(abs(v) == 1 for _, v in tp)
    data = json.loads(CERT.read_text())
    assert data['format'] == 'integer_polynomial_dag_v1'
    certs = {c['id']: c for c in data['certificates']}
    g, r = certs['generic'], certs['repeated_Tpair']
    assert g['variables'] == ['X', 'Y', 'h', 'z'] and r['variables'] == ['X', 'z']
    cg = find_cofactor(g, gw)
    cr = find_cofactor(r, c2)
    gl, gn = let_chain(g['nodes'], g['variables'], cg, {'X': 'qX', 'Y': 'qY', 'h': 'QF.z', 'z': 'qz'},
                       lambda c: f'qc {lean_int(c)}')
    rl, rn = let_chain(r['nodes'], r['variables'], cr, {'X': 'wv', 'z': 'wz'},
                       lambda c: f'Circ.const {lean_int(c)}')
    out = ['import NoFourMUBs.PRM.CoverageMixedDefs', '',
           '/-! # The two mixed-corner sums and the cofactors of return O\'s mixed certificates', '',
           'Generated by `lean/generators/zeroj_product/generate.py` from `CoverageSignedData` and',
           '`MinimalReconstruction/returns/O_zeroj_unsquared/certificates/mixed_certificates.json`; nothing here is',
           'trusted (see `CoverageMixedSums`, `CoverageMixedCheckG`, `CoverageMixedCheckR`). -/', '',
           'set_option maxRecDepth 100000', '',
           'noncomputable section', '',
           'namespace NoFourMUBs.PRM.Coverage.Mixed', '',
           'open NoFourMUBs.Kronecker', '']
    for nm, L, doc in (('txTerms', tx, '`Σ_{j,k ∈ A, c ∈ B} x_c D(j, k, c) = 2 T_x` (24 terms)'),
                       ('tpTerms', tp, '`Σ_{j,k ∈ A, c ∈ B} x_j y_c D(j, k, c) = 2 T_{x|y}` (44 terms)')):
        out.append(f'/-- {doc}. -/')
        out.append(f'def {nm} : List MT := [')
        out.append(',\n'.join(f'  ⟨{lean_int(v)}, {lean_pair(p)}, {lean_pair(q)}, {lean_pair(rr)}⟩'
                              for (p, q, rr), v in L) + ']')
        out.append('')
    out.append(f'/-- The cofactor `q₀ + h q₁` of `G_W` in identity (12) (certificate `generic`, {gn} nodes). -/')
    out.append('def cofG : QG :=')
    out += gl
    out.append('')
    out.append(f'/-- The cofactor of `C₂` in identity (27a) (certificate `repeated_Tpair`, {rn} nodes). -/')
    out.append('def cofR : W2 :=')
    out += rl
    out.append('')
    out.append('end NoFourMUBs.PRM.Coverage.Mixed')
    OUT.write_text('\n'.join(out) + '\n')
    print(f'txTerms {len(tx)}, tpTerms {len(tp)}, cofG {gn} nodes, cofR {rn} nodes; wrote {OUT}')


if __name__ == '__main__':
    main()
