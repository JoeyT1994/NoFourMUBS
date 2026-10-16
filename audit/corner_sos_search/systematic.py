"""Enumerate a finite pool of localizers using the saved corner SOS model.

This extends the existing discovery route. It does not enumerate all polynomial
degrees or all classification cases. A solver result is never an exact proof.
Only the existing equation adapters, witness supports and coefficient checker
are used. No atlas, new dephasing or complementary-equality hypothesis is used.
"""
from __future__ import annotations

import argparse
from collections import Counter, defaultdict, deque
from fractions import Fraction
import gzip
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time

import search as s


def equations_for(metadata):
    """Reuse the same registry that the exact checker reconstructs."""
    equations = dict(s.quartet_equations())
    lifted = metadata.get('rational_transition_lift', False)
    count = 6 if lifted else 3
    if lifted:
        equations.update(s.transition_relations()[0])
    if metadata.get('transport_closure'):
        if not lifted:
            raise ValueError('Transport requires the rational lift.')
        equations.update(s.transport_relations()[0])
    case = metadata.get('classification_case')
    if case is not None:
        equations.update(s.classification_relations(case)[0])
    auxiliary = metadata.get('auxiliary_classification_case')
    if auxiliary is not None:
        if auxiliary != '000' or case != '000' or not lifted:
            raise ValueError('Unreviewed auxiliary classification case.')
        equations.update(s.auxiliary_nontao_relations()[0])
    if metadata.get('uses_upstream_fourier_theorem_with_tao_case_retained'):
        equations.update(s.fourier_relations(count)[0])
    if metadata.get('uses_upstream_seven_cofactor_moment_norm_identity'):
        equations.update(s.moment_norm_relations(count)[0])
    return equations


def load_saved(path, expected_digest):
    raw = gzip.open(path, 'rb').read()
    if hashlib.sha256(raw).hexdigest() != expected_digest:
        raise ValueError('Saved model differs from the pinned GitHub artifact.')
    model = json.loads(raw)
    model['moments'] = [tuple(map(tuple, e)) for e in model['moments']]
    model['rows'] = [{int(i): c for i, c in row.items()} for row in model['rows']]
    model['blocks'] = [(name, [tuple(map(tuple, e)) for e in basis], indices)
                       for name, basis, indices in model['blocks']]
    model['target'] = {int(i): Fraction(c) for i, c in model['target'].items()}
    return model


def multiplier_pool(model):
    """Every core feature and target monomial, both orientations, plus one."""
    core = set(model['blocks'][0][1])
    core.update(model['moments'][i] for i in model['target'])
    return core | {s.neg(e) for e in core} | {s.ZERO}


def contained_row(poly, shift, index):
    """Form the COMPLETE real Laurent multiple, or reject missing moments.

    Early rejection is allowed only after checking the possible conjugate
    cancellation. There are at most two terms in any real-key fiber. Thus no
    outside term is silently discarded, including antisymmetric cancellations.
    """
    row = {}
    for e, c in poly.items():
        moved = s.plus(e, shift)
        key = s.real_key(moved)
        if key not in index:
            partner = s.plus(s.neg(moved), s.neg(shift))
            if partner == e or poly.get(partner, 0) + c != 0:
                return None
            continue
        i = index[key]
        row[i] = row.get(i, 0) + c
        if row[i] == 0:
            del row[i]
    return row


def saturate(model, values=None, progress=False):
    """Add ALL distinct represented rows in the documented finite pool.

    For each existing generator f the shifts are P union -support(f). No
    ranking, residual threshold or arbitrary row cap discards an admissible
    row. Rejected products are counted explicitly; they need more moments.
    """
    started = time.monotonic()
    equations = equations_for(model['metadata'])
    pool = multiplier_pool(model)
    index = {e: i for i, e in enumerate(model['moments'])}
    seen = {s.normalized_row(row) for row in model['rows']}
    old_count = len(model['rows'])
    stats = defaultdict(Counter)
    top = []
    next_log = started + 30
    for name, poly in equations.items():
        family = name.split(':')[0]
        shifts = pool | {s.neg(e) for e in poly}
        stats[family]['generators'] += 1
        for shift in sorted(shifts):
            stats[family]['tested_pairs'] += 1
            row = contained_row(poly, shift, index)
            if row is None:
                stats[family]['requires_more_moments'] += 1
                continue
            if not row:
                stats[family]['zero_after_real_folding'] += 1
                continue
            key = s.normalized_row(row)
            if key in seen:
                stats[family]['duplicate_or_already_present'] += 1
                continue
            seen.add(key)
            i, c = key[0]
            normalized = dict(key)
            model['rows'].append(normalized)
            model['row_provenance'].append(dict(equation=name, multiplier=shift,
                normalization=str(Fraction(c, row[i])), selection='finite-pool-saturation'))
            stats[family]['added'] += 1
            if values is not None:
                residual = abs(sum(c * float(values[i]) for i, c in key))
                residual /= sum(abs(c) for _, c in key)
                for tolerance in (1e-6, 1e-4):
                    if residual > tolerance:
                        stats[family][f'old_candidate_violation_gt_{tolerance:g}'] += 1
                top.append(dict(equation=name, multiplier=shift,
                                normalized_residual=residual,
                                row_index=len(model['rows']) - 1))
        if progress and time.monotonic() >= next_log:
            print(json.dumps(dict(stage='finite_pool_enumeration', through=name,
                added=len(model['rows'])-old_count,
                elapsed_seconds=round(time.monotonic()-started, 1))), flush=True)
            next_log = time.monotonic()+30
    top.sort(key=lambda r: (-r['normalized_residual'], r['row_index']))
    report = dict(status='COMPLETE_ENUMERATION_OF_SPECIFIED_FINITE_POOL_ONLY',
        scope='For every reused generator f: shifts P union -support(f); P is the first Gram basis, target monomials, their negatives, and zero. Retain exactly those complete real multiples represented by the saved moments.',
        classification_case=model['metadata'].get('classification_case'),
        auxiliary_classification_case=model['metadata'].get('auxiliary_classification_case'),
        equations=len(equations), common_multipliers=len(pool),
        families={k: dict(v) for k, v in stats.items()},
        totals=dict(sum(stats.values(), Counter())),
        added_rows=len(model['rows'])-old_count, original_rows=old_count,
        original_moments_preserved=True, original_gram_blocks_preserved=True,
        new_moments=0, top_old_candidate_violations=top[:30],
        numerical_diagnostics_are_not_certificates=True,
        exact_certificate_found=False, no_atlas=True,
        wall_seconds=time.monotonic()-started)
    meta = model['metadata']
    meta.update(localizer_rows=len(model['rows']),
        localizer_families=dict(Counter(p['equation'].split(':')[0]
                                       for p in model['row_provenance'])),
        finite_pool_saturation=dict(equations=len(equations),
            common_multipliers=len(pool), added_rows=report['added_rows'],
            preserves_all_original_moments_and_gram_blocks=True),
        saturation_generator_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())
    return report


def peel_ideal_rows(rows, target):
    """Exact necessary elimination for pure ideal membership, NOT for SOS.

    An off-target column occurring in one remaining row forces that row's
    multiplier to zero. Repeat, then keep the component touching the target.
    """
    columns = defaultdict(set)
    for i, row in enumerate(rows):
        for j, c in row.items():
            if c:
                columns[j].add(i)
    active = set(range(len(rows)))
    queue = deque(j for j, ids in columns.items() if j not in target and len(ids)==1)
    while queue:
        j = queue.popleft()
        if j in target or len(columns[j]) != 1:
            continue
        i = next(iter(columns[j]))
        active.remove(i)
        for k in rows[i]:
            columns[k].discard(i)
            if k not in target and len(columns[k]) == 1:
                queue.append(k)
    orphan = sorted(j for j, c in target.items() if c and not columns[j])
    reached, visited = set(), set()
    queue = deque(target)
    while queue:
        j = queue.popleft()
        if j in visited:
            continue
        visited.add(j)
        for i in columns[j]-reached:
            reached.add(i)
            queue.extend(rows[i])
    return sorted(reached), dict(input_rows=len(rows), forced_zero_rows=len(rows)-len(active),
        target_component_rows=len(reached), target_orphan_columns=orphan,
        applicability='Pure linear combinations of these rows only; not an SOS obstruction.')


def span_worker(request, destination):
    # Reuse the exact rational elimination already supplied by this project.
    import resource
    resource.setrlimit(resource.RLIMIT_AS, (2*1024**3, 2*1024**3))
    sys.path.insert(0, str(s.HERE.parent))
    from sos_linear import combination
    document = json.loads(Path(request).read_text())
    rows = [{int(i): c for i, c in r.items()} for r in document['rows']]
    target = {int(i): Fraction(c) for i, c in document['target'].items()}
    try:
        weights = combination(rows, target)
        result = dict(status='EXACT_LINEAR_COMBINATION_FOUND',
                      weights={str(i): str(c) for i, c in weights.items()})
    except AssertionError as exc:
        if not exc.args or not isinstance(exc.args[0], tuple) or exc.args[0][0] != 'Target not in the span':
            raise
        result = dict(status='TARGET_NOT_IN_THIS_FINITE_ROW_SPAN', detail=str(exc))
    Path(destination).write_text(json.dumps(result, indent=2)+'\n')


def try_pure_ideal(model, directory, digest, seconds=45):
    target = {i: -c for i, c in model['target'].items()}
    selected, report = peel_ideal_rows(model['rows'], target)
    if report['target_orphan_columns']:
        report['status'] = 'TARGET_NOT_IN_THIS_FINITE_ROW_SPAN_BY_EXACT_PEELING'
    else:
        request = directory/'ideal_request.json'
        response = directory/'ideal_response.json'
        request.write_text(json.dumps(dict(rows=[model['rows'][i] for i in selected],
            target={i: str(c) for i, c in target.items()})))
        try:
            result = subprocess.run([sys.executable, str(Path(__file__).resolve()),
                '--span-worker', str(request), str(response)],
                timeout=seconds, capture_output=True, text=True)
            if result.returncode == 0:
                report.update(json.loads(response.read_text()))
            else:
                report.update(status='EXACT_SPAN_ATTEMPT_UNRESOLVED',
                    returncode=result.returncode, detail=result.stderr[-2000:])
        except subprocess.TimeoutExpired:
            report.update(status='EXACT_SPAN_ATTEMPT_TIME_LIMIT', time_limit_seconds=seconds)
        finally:
            request.unlink(missing_ok=True)
        if report['status'] == 'EXACT_LINEAR_COMBINATION_FOUND':
            certificate = dict(model_sha256=digest, bound='0',
                ideal=[[selected[int(i)], c] for i, c in report.pop('weights').items()])
            destination = directory/'certificate.json'
            destination.write_text(json.dumps(certificate, indent=2)+'\n')
            import verify_exact
            report['exact_replay'] = verify_exact.replay(directory/'model.json.gz', destination)
            report['exact_certificate_found'] = True
    report.setdefault('exact_certificate_found', False)
    (directory/'ideal_span.json').write_text(json.dumps(report, indent=2)+'\n')
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source-model', type=Path)
    parser.add_argument('--source-candidate', type=Path)
    parser.add_argument('--output', type=Path)
    parser.add_argument('--seconds', type=int, default=300)
    parser.add_argument('--span-worker', nargs=2)
    args = parser.parse_args()
    if args.span_worker:
        span_worker(*args.span_worker)
        return
    if not args.source_model or not args.source_candidate or not args.output:
        parser.error('Saved model, candidate and new output directory are required.')
    if not 1 <= args.seconds <= 300:
        parser.error('Solver limit must be between 1 and 300 seconds.')
    s.preflight()
    if args.output.exists():
        raise SystemExit('Refusing to overwrite an existing experiment.')
    receipt = json.loads((s.HERE/'SIX_NONTAO_RUN_RESULT.json').read_text())
    model = load_saved(args.source_model, receipt['model_sha256'])
    meta = model['metadata']
    if (meta.get('classification_case') != '000' or
        meta.get('auxiliary_classification_case') != '000' or
        meta.get('phase_variables') != 216 or not meta.get('transport_closure') or
        meta.get('reused_input_sha256') != hashlib.sha256((s.HERE/'inputs.json').read_bytes()).hexdigest()):
        raise ValueError('This bounded experiment requires the reviewed all-six-non-Tao model.')
    import numpy as np
    with np.load(args.source_candidate, allow_pickle=False) as candidate:
        values = candidate['moments'].copy()
    if values.shape != (len(model['moments']),) or not np.isfinite(values).all():
        raise ValueError('Candidate vector has invalid dimensions or nonfinite entries.')
    args.output.mkdir(parents=True)
    report = saturate(model, values, progress=True)
    report.update(source_run=receipt['run_id'], source_model_sha256=receipt['model_sha256'],
        source_candidate_sha256=hashlib.sha256(args.source_candidate.read_bytes()).hexdigest(),
        old_numerical_objective=receipt['numerical_objective'])
    (args.output/'enumeration.json').write_text(json.dumps(report, indent=2)+'\n')
    digest = s.export_model(model, args.output/'model.json.gz')
    meta['uncompressed_model_sha256'] = digest
    (args.output/'model_summary.json').write_text(json.dumps(meta, indent=2)+'\n')
    print(json.dumps(report), flush=True)
    exact = try_pure_ideal(model, args.output, digest)
    print(json.dumps(exact), flush=True)
    if exact['exact_certificate_found']:
        result = dict(status='EXACT_CASE_IDENTITY_CHECKED_NOT_LEAN',
                      exact_certificate_found=True, replay=exact['exact_replay'])
        (args.output/'result.json').write_text(json.dumps(result, indent=2)+'\n')
    elif report['added_rows']:
        s.preflight()
        print(json.dumps(s.solve(model, args.output, args.seconds)), flush=True)
    else:
        result = dict(status='NO_NEW_ROWS_NO_DUPLICATE_SOLVER_RUN', exact_certificate_found=False)
        (args.output/'result.json').write_text(json.dumps(result, indent=2)+'\n')


if __name__ == '__main__':
    main()
