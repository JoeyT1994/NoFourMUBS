#!/usr/bin/env python3
"""Adapt arbitrary cap proposals, then certify a whole-cell pattern exclusion.

Example:
  python adaptive_capture.py snapshot.json.gz --proposals candidates.json \
      --out-dir adaptive_run --seconds 180 --max-nodes 10000 \
      --max-additions 50 --caps .07,.06,.05,.04,.03

Numerical proposal centers need not be roots. Acceptance requires both complete
Arb column covers and an exhaustive forbidden-prefix graph. Original parameter
and source-column radii are never reduced. The wall-clock budget is enforced by
a supervising process; checkpoints remain usable after an interrupted attempt.
Use a different output directory for each concurrent run.
"""
import os
for _key in ('OPENBLAS_NUM_THREADS', 'OMP_NUM_THREADS', 'MKL_NUM_THREADS'):
    os.environ[_key] = '1'

import argparse
import hashlib
import json
import math
import multiprocessing
import time
from pathlib import Path

import numpy as np
from flint import ctx

import fiber_cover
from certify_graph import graph
from correlated_cover_svd import A, load_snapshot
from numerical_scout import analyse, num

HERE = Path(__file__).resolve().parent
DEPENDENCIES = (
    'adaptive_capture.py', 'certify_graph.py', 'certify_snapshot.py',
    'correlated_cover_svd.py', 'fiber_cover.py', 'strong_contraction.py',
    'scalar_second_order.py', 'pair_tube_certificate.py', 'numerical_scout.py',
)


def write_json(path, value):
    """Atomic replacement makes interrupted checkpoints parseable."""
    path = Path(path)
    temporary = path.with_name(path.name + '.tmp')
    temporary.write_text(json.dumps(value, indent=2, allow_nan=False) + '\n')
    temporary.replace(path)


def sha256(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def worker(options):
    started = time.monotonic()
    out = Path(options['out_dir'])
    history, cache, props = [], {}, None
    total_nodes = additions = 0
    cap_index = 0
    final = {'status': 'NOT_ESTABLISHED', 'reason': 'No completed attempt'}
    metadata = {
        'schema': 'tc-hardballs-adaptive-certificate-v1',
        'snapshot': Path(options['snapshot']).name,
        'snapshot_sha256': sha256(options['snapshot']),
        'precision_bits': options['precision'],
        'campaign_closure_claim': False,
        'model_scope': 'Entire supplied H cell and original closed source column balls; original r and tau unchanged.',
        'upstream_premises': [
            'Supplied H model encloses the claimed cell.',
            'Supplied source column balls cover the claimed pattern.',
        ],
        'dependencies_sha256': {name: sha256(HERE / name) for name in DEPENDENCIES},
        'options': options,
    }

    def checkpoint():
        if props is not None:
            write_json(out / 'current_proposals.json', props)
        write_json(out / 'history.json', {
            'history': history, 'additions': additions, 'total_cover_nodes': total_nodes,
            'wall_seconds': time.monotonic() - started,
        })
        write_json(out / 'checkpoint.json', dict(
            metadata, status='NOT_ESTABLISHED', additions=additions,
            total_cover_nodes=total_nodes, completed_columns=list(cache),
            capture_radius=options['caps'][cap_index] if cap_index < len(options['caps']) else None,
            wall_seconds=time.monotonic() - started,
        ))

    try:
        ctx.prec = options['precision']
        if options.get('engine', 'fiber') == 'bootstrap':
            import fiber_bootstrap as cover_engine
            metadata['dependencies_sha256']['fiber_bootstrap.py'] = sha256(HERE / 'fiber_bootstrap.py')
        elif options.get('engine') == 'secant':
            import fiber_secant as cover_engine
            metadata['dependencies_sha256']['fiber_secant.py'] = sha256(HERE / 'fiber_secant.py')
        else:
            cover_engine = fiber_cover
        snapshot, _ = load_snapshot(options['snapshot'])
        metadata.update(record_sha256=snapshot['record_sha256'],
                        parameter_radius=snapshot['model']['r'],
                        normal_remainder_radius=snapshot['model']['tau'])
        if options['proposals']:
            props = json.loads(Path(options['proposals']).read_text())
            metadata['initial_proposal_sha256'] = sha256(options['proposals'])
        else:
            props = analyse(options['snapshot'], starts=options['starts'], samples=0,
                            proposal_factor=1.3, proposal_pad=.1)
        if len(props.get('columns', [])) != 6:
            raise ValueError('Expected six candidate columns')
        props['snapshot'] = Path(options['snapshot']).name
        props['status'] = 'Arbitrary cap proposals; root existence and completeness are not assumed.'
        for column in props['columns']:
            for root in column['roots']:
                if len(root['x']) != 5 or any(not A(x).is_finite() for x in root['x']):
                    raise ValueError('Every candidate needs five finite coordinates')
        if sum(len(c['roots']) for c in props['columns']) > options['max_proposals']:
            raise ValueError('Initial candidate count exceeds --max-proposals')
        # Fix each proposed rotation once. Subsequent changes only append caps.
        for ci in range(6):
            fiber_cover.build_rotation(snapshot, props, ci)
        checkpoint()

        while True:
            if time.monotonic() - started >= options['seconds']:
                final = dict(status='NOT_ESTABLISHED', reason='Wall-clock budget reached')
                break
            g = None
            while cap_index < len(options['caps']):
                cap = options['caps'][cap_index]
                g = graph(snapshot, props, cap=cap, columns=options['columns'])
                if g is not None:
                    break
                history.append(dict(event='graph_not_established', capture_radius=cap,
                                    proposal_counts=[len(c['roots']) for c in props['columns']]))
                cap_index += 1
                # Every change of radius invalidates cached capture receipts.
                cache.clear()
                checkpoint()
            if g is None:
                final = dict(status='NOT_ESTABLISHED', reason='No forbidden-edge graph at the remaining cap radii')
                break
            step = dict(iteration=additions, capture_radius=cap,
                        graph_columns=g['columns'], proposal_counts=g['root_counts'],
                        graph_margin=g['minimum_witness_overlap_lower'], column_results=[])
            history.append(step)
            write_json(out / 'current_graph.json', g)
            print(json.dumps(dict(event='attempt', iteration=additions, cap=cap,
                                  columns=g['columns'], counts=g['root_counts'])), flush=True)
            pending = None
            for ci in sorted(g['columns'], key=lambda c: float(num(snapshot['columns'][c]['phase_radius']))):
                if ci in cache:
                    step['column_results'].append(dict(column=ci, cached=True, receipt=cache[ci]))
                    continue
                remaining = options['max_total_nodes'] - total_nodes
                if remaining <= 0:
                    final = dict(status='NOT_ESTABLISHED', reason='Total cover-node budget reached')
                    pending = ('budget', None, None)
                    break
                problem = fiber_cover.build(snapshot, props, ci, options['precision'])
                result = cover_engine.cover(problem, cap,
                    max_nodes=min(options['max_nodes'], remaining), min_width=options['min_width'])
                result['method'] = {
                    'fiber': 'two_dimensional_fiber',
                    'bootstrap': 'two_dimensional_fiber_with_bootstrap',
                    'secant': 'two_dimensional_fiber_with_averaged_derivative',
                }[options.get('engine', 'fiber')]
                total_nodes += result['stats']['nodes']
                step['column_results'].append(dict(column=ci, cached=False, receipt=result))
                print(json.dumps(dict(event='column', column=ci,
                    complete=result['complete_coverage'], nodes=result['stats']['nodes'],
                    seconds=result['wall_seconds'])), flush=True)
                if result['complete_coverage']:
                    cache[ci] = result
                else:
                    pending = (ci, problem, result)
                checkpoint()
                if pending is not None:
                    break
            if pending is None:
                final = dict(status='PROVED_PATTERN_EXCLUSION', graph=g,
                    column_results=[cache[c] for c in g['columns']],
                    minimum_normalized_overlap_lower=g['minimum_witness_overlap_lower'],
                    conclusion='No third basis occurs in this supplied pattern for any H in the entire supplied cell model.',
                    cache_rule='Complete covers are reused only at the identical cap radius and under append-only candidate supersets; any radius change clears the cache.')
                break
            if pending[0] == 'budget':
                break
            if additions >= options['max_additions']:
                final = dict(status='NOT_ESTABLISHED', reason='Proposal-addition budget reached')
                break
            if sum(len(c['roots']) for c in props['columns']) >= options['max_proposals']:
                final = dict(status='NOT_ESTABLISHED', reason='Total proposal budget reached')
                break
            ci, problem, result = pending
            diagnostic = result.get('last_pending_debug')
            if diagnostic is None:
                final = dict(status='NOT_ESTABLISHED', reason='Incomplete cover has no unresolved-slab diagnostic within the node budget')
                break
            x = problem['On'] @ np.r_[diagnostic['t'], diagnostic['y']]
            if not np.isfinite(x).all():
                raise ValueError('Nonfinite proposed cap center')
            nearest = min((np.linalg.norm(x - np.asarray(root['x'], dtype=float))
                           for root in props['columns'][ci]['roots']), default=math.inf)
            if nearest < options['min_separation']:
                final = dict(status='NOT_ESTABLISHED', reason='Unresolved envelope is already centered at an existing proposal')
                break
            props['columns'][ci]['roots'].append(dict(x=x.tolist(),
                proposal_origin='Arbitrary unresolved necessary-fiber center; no zero or branch assertion.',
                adaptive_iteration=additions,
                distance_to_nearest_prior_proposal=None if not math.isfinite(nearest) else float(nearest)))
            additions += 1
            step['appended_proposal'] = dict(column=ci, x=x.tolist(),
                distance_to_nearest_prior_proposal=None if not math.isfinite(nearest) else float(nearest))
            checkpoint()
    except Exception as error:
        final = dict(status='NOT_ESTABLISHED', reason=f'{type(error).__name__}: {error}')
    finally:
        if props is not None:
            write_json(out / 'final_proposals.json', props)
            metadata['proposal_sha256'] = sha256(out / 'final_proposals.json')
        final.update(metadata, additions=additions, total_cover_nodes=total_nodes,
                     iterations=sum('iteration' in row for row in history),
                     wall_seconds=time.monotonic() - started, history_file='history.json')
        write_json(out / 'history.json', dict(history=history, additions=additions,
                   total_cover_nodes=total_nodes, wall_seconds=time.monotonic() - started))
        write_json(out / 'final_receipt.json', final)


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('snapshot')
    parser.add_argument('--proposals', help='Optional initial proposals; otherwise discover broadly at the center')
    parser.add_argument('--out-dir', required=True)
    parser.add_argument('--engine', choices=('fiber', 'bootstrap', 'secant'), default='fiber',
                        help='Basic fiber cover, proved-envelope bootstrap, or averaged derivative with bootstrap')
    parser.add_argument('--caps', default='.07,.06,.05,.04,.03', help='Comma-separated positive cap schedule')
    parser.add_argument('--columns', help='Optional comma-separated fixed graph subset; default chooses automatically')
    parser.add_argument('--seconds', type=float, default=180)
    parser.add_argument('--max-nodes', type=int, default=10000, help='Maximum nodes per column attempt')
    parser.add_argument('--max-total-nodes', type=int, default=500000)
    parser.add_argument('--max-additions', type=int, default=50)
    parser.add_argument('--max-proposals', type=int, default=200)
    parser.add_argument('--precision', type=int, default=160)
    parser.add_argument('--starts', type=int, default=1024)
    parser.add_argument('--min-width', type=float, default=1e-7)
    parser.add_argument('--min-separation', type=float, default=1e-8)
    args = parser.parse_args()
    options = vars(args)
    options['caps'] = [x.strip() for x in args.caps.split(',') if x.strip()]
    options['columns'] = None if args.columns is None else [int(x) for x in args.columns.split(',')]
    if (not options['caps'] or any(not A(x).is_finite() or not A(x) > 0 for x in options['caps'])
            or not math.isfinite(args.seconds) or args.seconds <= 0 or args.precision < 64
            or min(args.max_nodes, args.max_total_nodes, args.max_proposals, args.starts) < 1
            or args.max_additions < 0 or not 0 < args.min_width < 1
            or not 0 < args.min_separation < 1):
        parser.error('Invalid radius or execution budget')
    for key in ('snapshot', 'proposals', 'out_dir'):
        if options[key] is not None:
            options[key] = str(Path(options[key]).resolve())
    out = Path(options['out_dir'])
    out.mkdir(parents=True, exist_ok=True)
    # An explicit fresh output directory prevents stale success receipts after a timeout.
    if (out / 'final_receipt.json').exists() or (out / 'checkpoint.json').exists():
        parser.error('Output directory already contains a run; choose a new directory and resume via --proposals')
    process = multiprocessing.get_context('spawn').Process(target=worker, args=(options,))
    started = time.monotonic()
    process.start()
    process.join(args.seconds)
    timed_out = process.is_alive()
    if timed_out:
        process.terminate()
        process.join(5)
        if process.is_alive():
            process.kill()
            process.join()
    receipt_path = out / 'final_receipt.json'
    if not receipt_path.exists():
        checkpoint = out / 'checkpoint.json'
        receipt = json.loads(checkpoint.read_text()) if checkpoint.exists() else {
            'schema': 'tc-hardballs-adaptive-certificate-v1',
            'snapshot': Path(options['snapshot']).name,
            'snapshot_sha256': sha256(options['snapshot']), 'options': options,
            'campaign_closure_claim': False,
        }
        receipt.update(status='NOT_ESTABLISHED',
            reason='Wall-clock budget reached' if timed_out else f'Worker exited without a receipt (exit code {process.exitcode})',
            wall_seconds=time.monotonic() - started)
        current = out / 'current_proposals.json'
        if current.exists():
            final_proposals = out / 'final_proposals.json'
            final_proposals.write_bytes(current.read_bytes())
            receipt['proposal_sha256'] = sha256(final_proposals)
        write_json(receipt_path, receipt)
    receipt = json.loads(receipt_path.read_text())
    print(json.dumps({key: receipt.get(key) for key in (
        'snapshot', 'status', 'minimum_normalized_overlap_lower',
        'additions', 'total_cover_nodes', 'wall_seconds', 'reason')}), flush=True)
    return 0 if receipt['status'] == 'PROVED_PATTERN_EXCLUSION' else 1


if __name__ == '__main__':
    raise SystemExit(main())
