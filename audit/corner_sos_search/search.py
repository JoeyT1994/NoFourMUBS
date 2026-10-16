"""Bounded Laurent-moment search for a real 3x3 corner in a MUB quartet.

This is discovery code, not a proof or an atlas checker.  The old SOS witness
is an immutable source of monomial supports, never an assumed identity here.
All equations used in the baseline are direct quartet equations.  Three
phase-entry matrices H_a represent I,H_0/sqrt(6),H_1/sqrt(6),H_2/sqrt(6).
No individual row dephasing of these three matrices is performed.

The moment functional is averaged with complex conjugation, so its values
are real and L(z^e)=L(z^-e).  This preserves all constraints and the objective.
The objective is |Psi-conj(Psi)|^2 / scale, hence zero forces Im(Psi)=0.
The selected Gram blocks and localizers form a NECESSARY, incomplete
relaxation; its feasibility says nothing about existence of four MUBs.
"""
from __future__ import annotations

import argparse
from collections import Counter
from fractions import Fraction
from functools import reduce
import gzip
import hashlib
from itertools import combinations, product
import json
from math import gcd
import math
from pathlib import Path
import sys
import time

HERE = Path(__file__).resolve().parent
ZERO = ()
# H1 and H2 may be interchanged without changing the H0 corner objective.
# 0 = non-Tao Fourier norm; 9 = Tao Fourier norm. These six representatives
# cover all eight triples. No exceptional case is discarded.
CLASSIFICATION_CASES = ('000', '009', '099', '900', '909', '999')


def upstream_path():
    canonical = HERE.parents[1]/'proof/coverage/returns/I_moment_reduction'
    if canonical.is_dir():
        return canonical
    return HERE/'upstream/I_moment_reduction'


def exponent(items):
    out = Counter()
    for k, v in items:
        out[k] += v
    return tuple(sorted((k, v) for k, v in out.items() if v))


def plus(a, b):
    return exponent((*a, *b))


def neg(a):
    return tuple((k, -v) for k, v in a)


def real_key(a):
    return min(a, neg(a))


def variable(b, i, j):
    return ((36 * b + 6 * i + j, 1),)


def monomial(b, rows, cols, seed):
    return exponent((36 * b + 6 * rows[i] + cols[j], seed[3*i+j])
                    for i in range(3) for j in range(3))


def add_to(out, p, c=1):
    for e, a in p.items():
        out[e] = out.get(e, 0) + c * a
        if out[e] == 0:
            del out[e]


def multiply(p, q):
    out = {}
    for a, c in p.items():
        for b, d in q.items():
            e = plus(a, b)
            out[e] = out.get(e, 0) + c*d
    return {e: c for e, c in out.items() if c}


def fold(p):
    """Coefficients of Re(p), with Re(z^e)=Re(z^-e)."""
    out = {}
    for e, c in p.items():
        k = real_key(e)
        out[k] = out.get(k, 0) + c
    return {e: c for e, c in out.items() if c}


def normalized_row(p):
    if not p:
        return ()
    g = reduce(gcd, (abs(c) for c in p.values()))
    if p[min(p)] < 0:
        g = -g
    return tuple(sorted((e, c//g) for e, c in p.items()))


def target_frontier(f, target, existing_moments, cap, order_limit=12):
    """Select exact localizers touching the target, including new moments.

    Support-contained localizers miss most high-order Hadamard reductions.
    Here a multiplier aligns one generator term with a target monomial. We
    retain complete shifted equations, never drop their outside terms, and
    cap their Laurent order. The cap limits a search basis, not the theorem.
    """
    target_support = set(target) | {neg(e) for e in target}
    shifts = {plus(t, neg(e)) for t in target_support for e in f}
    candidates = []
    for shift in shifts:
        row = fold({plus(e, shift): c for e, c in f.items()})
        if not row:
            continue
        order = max(sum(max(v,0) for _,v in e) for e in row)
        if order > order_limit:
            continue
        touched = len(set(row) & set(target))
        new = len(set(row)-existing_moments)
        candidates.append(((-touched, new, order, shift), shift, row))
    candidates.sort(key=lambda item: item[0])
    return [(shift,row) for _,shift,row in candidates[:cap]], len(candidates)


def load_inputs(path=HERE/'inputs.json'):
    data = json.loads(path.read_text())
    assert data['status'] == 'REUSED_SUPPORTS_ONLY_NO_COMPLEMENTARY_EQUALITY_ASSUMED'
    psi = {monomial(0, range(3), range(3), e): c for e, c in data['psi']}
    p = dict(psi)
    add_to(p, {neg(e): c for e, c in psi.items()}, -1)
    target = fold(multiply(p, {neg(e): c for e, c in p.items()}))
    scale = sum(abs(c) for c in p.values())**2
    seeds = []
    for record in data['witness_seeds']:
        def positions(bits):
            a, b = iter(range(3)), iter(range(3, 6))
            return tuple(next(a) if x else next(b) for x in bits)
        seeds.append(monomial(0, positions(record['row_membership']),
                              positions(record['column_membership']), record['seed']))
    return data, psi, p, target, scale, sorted(set(seeds))


def hadamard_equations(b):
    equations = []
    for transpose in (False, True):
        for i, k in combinations(range(6), 2):
            terms = [plus(variable(b, j, i), neg(variable(b, j, k)))
                     if transpose else plus(variable(b, i, j), neg(variable(b, k, j)))
                     for j in range(6)]
            for anchor in range(6):
                poly = dict(Counter(plus(t, neg(terms[anchor])) for t in terms))
                equations.append((f'orth:{b}:{int(transpose)}:{i}:{k}:{anchor}', poly))
    return equations


def quartet_equations():
    """Complex Laurent equations; every denominator is a unit entry.

    Orthogonality is multiplied by one conjugate summand to make its charge
    zero. Mixed equations are |sum_i conj(H_aij) H_bik|^2 - 6; diagonal
    summands cancel 6 exactly. No Fourier or non-Tao hypothesis is used.
    """
    equations = []
    for b in range(3):
        equations.extend(hadamard_equations(b))
    for a, b in combinations(range(3), 2):
        for j, k in product(range(6), repeat=2):
            terms = [plus(neg(variable(a, i, j)), variable(b, i, k)) for i in range(6)]
            poly = dict(Counter(plus(t, neg(u)) for i, t in enumerate(terms)
                                for l, u in enumerate(terms) if i != l))
            equations.append((f'mixed:{a}:{b}:{j}:{k}', poly))
    assert len(equations) == 648
    return equations


def fourier_relations(matrix_count=3):
    """Unconditional polynomial consequences of upstream FourierVanishing.

    For each Hadamard, F_I = |sum_j prod_i H_ij^(+/-1)|^2 is 0 off
    the Tao orbit and 9 on it. Thus all F_I agree and F_0(F_0-9)=0.
    Both row/column orientations are included. Complementary I give the
    same norm. The Tao evaluation is reused from upstream return I;
    phase/permutation transport and the upstream dependency are documented
    in FOURIER_REUSE.txt. This is not a new proof of FourierVanishing.
    """
    equations, blocks, anchors = [], [], []
    for b in range(matrix_count):
        norms = []
        for tr in (False, True):
            for I in combinations(range(6), 3):
                if 0 not in I:
                    continue
                terms = [exponent((36*b+(6*j+i if tr else 6*i+j), 1 if i in I else -1)
                                  for i in range(6)) for j in range(6)]
                F = dict(Counter(plus(t, neg(u)) for t in terms for u in terms))
                name = f'fourier:{b}:{int(tr)}:'+''.join(map(str,I))
                norms.append((name, F))
                blocks.append((name, sorted(F)))
        anchor = norms[0][1]
        anchors.append(anchor)
        for name, F in norms[1:]:
            diff = dict(F)
            add_to(diff, anchor, -1)
            equations.append((name, diff))
        binary = multiply(anchor, anchor)
        add_to(binary, anchor, -9)
        equations.append((f'fourier-binary:{b}', binary))
    assert len(equations) == 20*matrix_count
    return equations, blocks, anchors


def gram_norm(b, power):
    """T_power = ||H^[power] H^[power]*||_F^2, including coincidences."""
    poly, blocks = {ZERO: 216}, []
    for i, k in combinations(range(6), 2):
        terms = [exponent((36*b+6*r+j, power*sign) for r, sign in ((i,1),(k,-1)))
                 for j in range(6)]
        for t in terms:
            for u in terms:
                e = plus(t, neg(u))
                poly[e] = poly.get(e, 0)+2
        basis = sorted(plus(t, neg(terms[0])) for t in terms)
        blocks.append((f'power-gram:{b}:{power}:{i}:{k}', basis))
    assert poly[ZERO] == 396
    return poly, blocks


def moment_norm_relations(matrix_count=3):
    """Reuse return I's seven-cofactor universal identity (4.2).

    18 sum_{20 row/column partitions} F_I -2592 -2 T3 +9 T2 = 0.
    No Fourier-vanishing hypothesis is required by this identity.
    """
    _, fourier_blocks, _ = fourier_relations(matrix_count)
    equations, blocks = [], []
    for b in range(matrix_count):
        poly = {ZERO: -2592}
        for name, basis in fourier_blocks:
            if int(name.split(':')[1]) == b:
                # Every F_I has constant 6 and coefficient 1 on its 30
                # nonconstant monomials. The recorded basis is exactly support(F_I).
                add_to(poly, {e: 6 if e == ZERO else 1 for e in basis}, 18)
        for power, weight in ((2, 9), (3, -2)):
            T, gram_blocks = gram_norm(b, power)
            add_to(poly, T, weight)
            blocks.extend(gram_blocks)
        equations.append((f'moment-norm:{b}', poly))
    return equations, blocks


def transition_relations():
    """Expose the other three Hadamards with a rational, phase-only lift.

    Put S=H_a^* H_b. Since |S_jk|^2=6, the entries of
    K_jk=S_jk conjugate(S_00)/6 are unit phases. K differs from S/sqrt(6)
    by one global phase, hence is Hadamard. The defining equations have
    integer coefficients; no independent dephasing or square root is used.
    """
    equations, blocks = [], []
    for b, (a, c) in enumerate(combinations(range(3), 2), start=3):
        equations.extend(hadamard_equations(b))
        anchor = [plus(neg(variable(a, i, 0)), variable(c, i, 0)) for i in range(6)]
        for j, k in product(range(6), repeat=2):
            terms = [plus(neg(variable(a, i, j)), variable(c, i, k)) for i in range(6)]
            poly = dict(Counter(plus(t, neg(u)) for t in terms for u in anchor))
            add_to(poly, {variable(b, j, k): 1}, -6)
            name = f'transition:{b}:{a}:{c}:{j}:{k}'
            equations.append((name, poly))
            blocks.append((name, sorted(set(poly) | {ZERO})))
    return equations, blocks


def classification_relations(case):
    """Adapters for upstream theorems, never the atlas-dependent exclusion.

    Non-Tao: the Fourier sums themselves vanish, and complementary Psi
    values are CONJUGATE. Use only the old witness's corner frames and the
    target frame. Tao: dephased entries are cubic roots; their square is
    conjugation up to phases, so the entrywise square is also Hadamard.
    """
    if case not in CLASSIFICATION_CASES:
        raise ValueError('Unknown classification case.')
    data, _, _, _, _, _ = load_inputs()
    frames = {(tuple(range(3)), tuple(range(3)))}
    for record in data['witness_seeds']:
        def positions(bits):
            a, b = iter(range(3)), iter(range(3, 6))
            return tuple(next(a) if x else next(b) for x in bits)
        rows = tuple(sorted(positions(record['row_membership'])))
        cols = tuple(sorted(positions(record['column_membership'])))
        complement = (tuple(i for i in range(6) if i not in rows),
                      tuple(j for j in range(6) if j not in cols))
        frames.add(min((rows, cols), complement))
    equations, blocks = [], []
    anchors = fourier_relations()[2]
    for b, value in enumerate(map(int, case)):
        norm = dict(anchors[b]); add_to(norm, {ZERO: 1}, -value)
        equations.append((f'class-norm:{b}:{value}', norm))
        if value == 0:
            for tr in (False, True):
                for I in combinations(range(6), 3):
                    if 0 not in I:
                        continue
                    terms = [exponent((36*b+(6*j+i if tr else 6*i+j),
                                       1 if i in I else -1) for i in range(6))
                             for j in range(6)]
                    poly = dict(Counter(plus(t, neg(terms[0])) for t in terms))
                    name = f'class-fourier:{b}:{int(tr)}:'+''.join(map(str,I))
                    equations.append((name, poly))
                    blocks.append((name, sorted(poly)))
            for rows, cols in sorted(frames):
                comp_rows = tuple(i for i in range(6) if i not in rows)
                comp_cols = tuple(j for j in range(6) if j not in cols)
                poly = {monomial(b, rows, cols, e): c for e,c in data['psi']}
                add_to(poly, {neg(monomial(b, comp_rows, comp_cols, e)): c
                              for e,c in data['psi']}, -1)
                name = f'class-conjugacy:{b}:'+''.join(map(str,rows))+':'+''.join(map(str,cols))
                equations.append((name, poly))
                blocks.append((name, sorted(set(poly) | {ZERO})))
        else:
            for i,j in product(range(1,6),repeat=2):
                rectangle = exponent((36*b+6*r+c,3*sign)
                    for r,c,sign in ((i,j,1),(0,0,1),(i,0,-1),(0,j,-1)))
                poly = {rectangle:1, ZERO:-1}
                name = f'class-tao-cubic:{b}:{i}:{j}'
                equations.append((name, poly));blocks.append((name,sorted(poly)))
            for name, f in hadamard_equations(b):
                if not name.endswith(':0'):
                    continue
                poly = {tuple((i,2*v) for i,v in e):c for e,c in f.items()}
                name = name.replace('orth:', 'class-tao-square:')
                equations.append((name,poly));blocks.append((name,sorted(poly)))
    return equations, blocks


def make_model(width=1, localizer_limit=0, fourier=False, coupled=False,
               moment_reduction=False, frontier_cap=0, classification_case=None,
               transition_lift=False):
    started = time.monotonic()
    data, psi, p, target, scale, seeds = load_inputs()
    equations = quartet_equations()
    matrix_count = 6 if transition_lift else 3
    transition_blocks = []
    if transition_lift:
        extra, transition_blocks = transition_relations()
        equations.extend(extra)
    classification_blocks = []
    if classification_case is not None:
        extra, classification_blocks = classification_relations(classification_case)
        equations.extend(extra)
    core = set(p) | set(seeds) | {ZERO}
    for name, f in equations:
        if name == 'class-conjugacy:0:012:012':
            core.update(f)
    mixed_blocks = []
    for name, poly in equations:
        if name.startswith('mixed:'):
            _, a, b, j, k = map(lambda x: x, name.split(':'))
            if int(j) == int(k) == 0:
                core.update(poly)
            elif int(j) < width and int(k) < width:
                mixed_blocks.append((name, sorted(set(poly) | {ZERO})))
    fourier_blocks = []
    if fourier:
        extra_equations, extra_blocks, anchors = fourier_relations(matrix_count)
        if classification_case:
            extra_equations = [(n,f) for n,f in extra_equations
                if not (n.startswith('fourier-binary:') and int(n.split(':')[1]) < 3)]
        equations.extend(extra_equations)
        for anchor in anchors[:3]:
            core.update(anchor)
        # The three anchor blocks are principal submatrices of the core.
        fourier_blocks = [(name, basis) for name, basis in extra_blocks
                          if not (name.endswith(':0:012') and int(name.split(':')[1]) < 3)]
    coupled_added = 0
    if coupled:
        before = len(core)
        # Align all three matrices in the same physical coordinate basis.
        # These are support choices, not additional assumed equations.
        def edge(a, b, i):
            return plus(neg(variable(a, i, 0)), variable(b, i, 0))
        for a, b in combinations(range(3), 2):
            for i in range(1, 6):
                cycle = plus(edge(a, b, i), neg(edge(a, b, 0)))
                core.update(plus(seed, cycle) for seed in seeds)
        for i, j, k in product(range(6), repeat=3):
            core.add(plus(plus(edge(0, 1, i), edge(1, 2, j)), edge(2, 0, k)))
        coupled_added = len(core)-before
    norm_blocks = []
    if moment_reduction:
        extra_equations, norm_blocks = moment_norm_relations(matrix_count)
        equations.extend(extra_equations)
        if not fourier:
            fourier_blocks = fourier_relations(matrix_count)[1]
    blocks = [('corner_and_three_mixed_edges', sorted(core))]
    # Orthogonality squares fit in these six-monomial blocks. Repeated blocks
    # differing only by a unit monomial give identical Gram entries; retain one.
    seen = set()
    for name, poly in equations:
        if not name.startswith('orth:'):
            continue
        _, b, tr, i, k, anchor = name.split(':')
        if anchor != '0':
            continue
        basis = sorted(poly)
        key = tuple(basis)
        if key not in seen:
            seen.add(key)
            blocks.append((name, basis))
    blocks.extend(mixed_blocks)
    blocks.extend(fourier_blocks)
    blocks.extend(norm_blocks)
    blocks.extend(classification_blocks)
    blocks.extend(transition_blocks)
    moments = {ZERO}
    for _, basis in blocks:
        moments.update(real_key(plus(neg(a), b)) for a in basis for b in basis)
    for _, f in equations:
        moments.update(fold(f))
    assert set(target) <= moments
    # This finite pool is part of the ansatz, NOT a complete degree hierarchy.
    pool = {ZERO} | core | {neg(e) for e in core}
    pool.update(target)
    pool.update(neg(e) for e in target)
    pool = sorted(pool)
    if localizer_limit:
        pool = pool[:localizer_limit]
    rows, provenance, seen_rows = [], [], set()
    stats = Counter()
    for name, f in equations:
        restricted = (name.startswith(('class-', 'transition:')) or
                      (name.startswith('orth:') and int(name.split(':')[1]) >= 3) or
                      (name.startswith('fourier') and int(name.split(':')[1]) >= 3))
        candidates = ({ZERO} if name.startswith('moment-norm:') or
                      (name.startswith('fourier-binary:') and int(name.split(':')[1]) >= 3) else
                      {neg(e) for e in f} | {ZERO} if restricted else
                      set(pool) | {neg(e) for e in f} | {ZERO})
        for shift in sorted(candidates):
            shifted = {}
            for e, c in f.items():
                k = real_key(plus(e, shift))
                shifted[k] = shifted.get(k, 0) + c
            shifted = {k: c for k, c in shifted.items() if c}
            if not set(shifted) <= moments:
                continue
            key = normalized_row(shifted)
            if not key or key in seen_rows:
                continue
            seen_rows.add(key)
            rows.append(dict(key))
            provenance.append({'equation': name, 'multiplier': shift,
                               'normalization': str(Fraction(next(iter(dict(key).values())),
                                                           shifted[next(iter(dict(key)))]))})
            stats[name.split(':')[0]] += 1
    frontier_stats = {}
    if frontier_cap:
        original_moments = set(moments)
        for name, f in equations:
            labels = name.split(':')
            selected = ((labels[0]=='orth' and labels[1]=='0' and labels[-1]=='0') or
                        (labels[0]=='mixed' and labels[-2:]==['0','0']))
            if not selected:
                continue
            chosen, total = target_frontier(f, target, original_moments, frontier_cap)
            added = 0
            for shift, row in chosen:
                key = normalized_row(row)
                if not key or key in seen_rows:
                    continue
                seen_rows.add(key)
                rows.append(dict(key))
                moments.update(row)
                first = next(iter(dict(key)))
                provenance.append({'equation': name, 'multiplier': shift,
                    'normalization': str(Fraction(dict(key)[first],row[first])),
                    'selection': 'target-frontier'})
                stats[name.split(':')[0]] += 1
                added += 1
            frontier_stats[name] = dict(admissible=total, selected=len(chosen), added=added)
    keys = sorted(moments)
    index = {e: i for i, e in enumerate(keys)}
    indexed_rows = [{index[e]: c for e, c in r.items()} for r in rows]
    indexed_blocks = [(name, basis,
        [[index[real_key(plus(neg(a), b))] for b in basis] for a in basis])
        for name, basis in blocks]
    metadata = {
        'status': 'NECESSARY_FINITE_RELAXATION_NOT_A_PROOF',
        'generator_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        'reused_input_sha256': hashlib.sha256((HERE/'inputs.json').read_bytes()).hexdigest(),
        'main_commit': data['main_commit'], 'phase_variables': 36*matrix_count,
        'gauge': 'No separate row dephasing; all variables are unit complex phases.',
        'target': '|Psi(H0[0:3,0:3])-conj(Psi(H0[0:3,0:3]))|^2 / scale',
        'target_scale': scale, 'target_real_laurent_terms': len(target),
        'witness_seeds_reused': len(data['witness_seeds']),
        'base_equations': len(equations), 'moment_coordinates': len(keys),
        'gram_block_sizes': dict(Counter(len(b) for _, b in blocks)),
        'localizer_rows': len(rows), 'localizer_families': dict(stats),
        'selected_mixed_column_width': width,
        'witness_mixed_and_triangle_features_added': coupled_added,
        'target_frontier_cap_per_equation': frontier_cap,
        'target_frontier': frontier_stats,
        'maximum_laurent_order': max(sum(max(v, 0) for _, v in e) for e in keys),
        'no_atlas': True, 'fourier_assumption': False,
        'uses_upstream_fourier_theorem_with_tao_case_retained': fourier,
        'uses_upstream_seven_cofactor_moment_norm_identity': moment_reduction,
        'moment_reduction_source_commit': ('66b5c6535c01ca1589bca2ff8779c5000a4b22bd'
                                           if moment_reduction else None),
        'complementary_same_signature_assumption': False,
        'classification_case': classification_case,
        'classification_case_coverage': list(CLASSIFICATION_CASES) if classification_case else None,
        'uses_upstream_non_tao_complementary_conjugacy': classification_case is not None,
        'rational_transition_lift': transition_lift,
        'case_conclusion_only': classification_case is not None,
        'generation_seconds': time.monotonic()-started,
    }
    return {'metadata': metadata, 'moments': keys, 'rows': indexed_rows,
            'row_provenance': provenance, 'blocks': indexed_blocks,
            'target': {index[e]: Fraction(c, scale) for e, c in target.items()},
            'zero': index[ZERO]}


def export_model(model, destination):
    document = dict(model)
    document['target'] = {str(i): str(v) for i, v in model['target'].items()}
    raw = json.dumps(document, sort_keys=True, separators=(',', ':')).encode()
    with gzip.open(destination, 'wb', compresslevel=6) as f:
        f.write(raw)
    return hashlib.sha256(raw).hexdigest()


def solve(model, directory, seconds=60):
    import cvxpy as cp
    import numpy as np
    import scipy.sparse as sp
    n = len(model['moments'])
    rr, cc, vv = [], [], []
    for i, row in enumerate(model['rows']):
        norm = max(abs(v) for v in row.values())
        for j, v in row.items():
            rr.append(i); cc.append(j); vv.append(v/norm)
    A = sp.csr_matrix((vv, (rr, cc)), shape=(len(model['rows']), n))
    x = cp.Variable(n)
    target = np.zeros(n)
    for i, v in model['target'].items():
        target[i] = float(v)
    constraints = [x[model['zero']] == 1, A @ x == 0, x <= 1, x >= -1]
    for _, basis, indices in model['blocks']:
        constraints.append(x[np.asarray(indices)] >> 0)
    problem = cp.Problem(cp.Maximize(target @ x), constraints)
    started = time.monotonic()
    error = None
    try:
        problem.solve(solver='SCS', eps=1e-6, max_iters=10000,
                      time_limit_secs=seconds, verbose=False)
    except Exception as exc:
        error = repr(exc)
    record = {'status': 'NUMERICAL_DISCOVERY_ONLY', 'solver_status': problem.status,
              'solver': 'SCS', 'versions': {'cvxpy': cp.__version__},
              'wall_seconds': time.monotonic()-started,
              'requested_solver_time_limit_seconds': seconds,
              'exact_certificate_found': False, 'error': error}
    arrays = {}
    if x.value is not None:
        val = np.asarray(x.value)
        record.update(objective=float(target@val),
                      max_equation_residual=float(np.max(np.abs(A@val))),
                      normalization_residual=float(abs(val[model['zero']]-1)),
                      max_box_violation=float(max(0, np.max(np.abs(val))-1)))
        eigmins = [float(np.linalg.eigvalsh(val[np.asarray(ix)])[0])
                   for _, _, ix in model['blocks']]
        record['minimum_gram_eigenvalue'] = min(eigmins)
        positions = {e:i for i,e in enumerate(model['moments'])}
        def expectation(poly):
            folded = fold(poly)
            if not set(folded) <= set(positions):
                return None
            return float(sum(c*val[positions[e]] for e,c in folded.items()))
        count = model['metadata'].get('phase_variables',108)//36
        record['hadamard_diagnostics'] = [dict(matrix=b,
            fourier_squared_norm=expectation(F),
            T2=expectation(gram_norm(b,2)[0]), T3=expectation(gram_norm(b,3)[0]))
            for b,F in enumerate(fourier_relations(count)[2])]
        arrays['moments'] = val
    for i, con in enumerate(constraints):
        if con.dual_value is not None:
            arrays[f'dual_{i}'] = np.asarray(con.dual_value)
    info = getattr(problem.solver_stats, 'extra_stats', None)
    if isinstance(info, dict):
        record['scs_info'] = info.get('info', {})
    np.savez_compressed(directory/'candidate.npz', **arrays)
    def finite_json(v):
        if isinstance(v, dict):
            return {k: finite_json(a) for k, a in v.items()}
        if isinstance(v, list):
            return [finite_json(a) for a in v]
        if isinstance(v, float) and not math.isfinite(v):
            return None
        return v
    record = finite_json(record)
    (directory/'result.json').write_text(json.dumps(record, indent=2, allow_nan=False)+'\n')
    return record


def preflight():
    sys.path.insert(0, str(HERE.parent))
    from reuse_preflight import require_reuse_review
    require_reuse_review('quartet_corner_sos_search')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--width', type=int, choices=(1, 2, 3, 6), default=1)
    parser.add_argument('--seconds', type=int, default=60)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--model-only', action='store_true')
    parser.add_argument('--fourier', action='store_true',
                        help='Use upstream Fourier vanishing through the exact 0-or-9 Tao split.')
    parser.add_argument('--coupled', action='store_true',
                        help='Multiply reused witness seeds by mixed phases; add three-basis loops.')
    parser.add_argument('--moment-reduction', action='store_true',
                        help='Reuse the seven-cofactor norm identity in upstream return I.')
    parser.add_argument('--frontier-cap', type=int, default=0,
                        help='Add this many target-aligned full localizers per selected equation.')
    parser.add_argument('--classification-case', choices=CLASSIFICATION_CASES,
                        help='Separate exact Fourier-norm sectors (0 or 9); retain all six cases.')
    parser.add_argument('--transition-lift', action='store_true',
                        help='Expose all six transition Hadamards using rational unit-phase equations.')
    args = parser.parse_args()
    assert 1 <= args.seconds <= 300
    assert 0 <= args.frontier_cap <= 512
    preflight()
    if args.output.exists():
        raise SystemExit('Refusing to overwrite an existing run.')
    args.output.mkdir(parents=True)
    model = make_model(args.width, fourier=args.fourier, coupled=args.coupled,
                       moment_reduction=args.moment_reduction, frontier_cap=args.frontier_cap,
                       classification_case=args.classification_case,
                       transition_lift=args.transition_lift)
    digest = export_model(model, args.output/'model.json.gz')
    model['metadata']['uncompressed_model_sha256'] = digest
    (args.output/'model_summary.json').write_text(json.dumps(model['metadata'], indent=2)+'\n')
    print(json.dumps(model['metadata']), flush=True)
    if not args.model_only:
        preflight()
        print(json.dumps(solve(model, args.output, args.seconds)), flush=True)


if __name__ == '__main__':
    main()
