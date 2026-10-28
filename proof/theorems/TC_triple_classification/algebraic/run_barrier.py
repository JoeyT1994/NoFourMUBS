#!/usr/bin/env python3
"""Source-bound 34-variable or validated four-variable regional barrier.

Input JSON: index, root (exact rational endpoint pairs), epsilon, optional
height, periodic_axes, partition, turns, and optional graph_k_box (30
endpoint pairs). A graph input uses a four-dimensional root. A result is
only about that explicit domain; it is never an all-K atlas certificate.
"""
import argparse
import hashlib
import importlib.metadata
import json
from pathlib import Path
import platform
from numpy.linalg import LinAlgError
from flint import ctx
from bootstrap import HERE, ROOT, native_run as R
from intrinsic import NativeChart
from implicit import ImplicitGraph
import barrier as B
import known_boxes


def source_binding():
    paths = set(R.source_paths()) | set(HERE.glob('*.py'))
    paths |= set(HERE.glob('*.txt'))
    return {str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(paths)}


def oracle_for(config, atlas):
    chart = NativeChart.from_atlas(atlas, config['index'], turns=config.get('turns', False))
    root = B.parse_box(config['root'])
    if 'graph_k_box' in config:
        graph = ImplicitGraph(chart, B.interval_box(root), B.interval_box(B.parse_box(config['graph_k_box'])),
                              selected=config.get('graph_selected'), inverse_hex=config.get('graph_inverse_hex'))
        def known(box):
            return known_boxes.classify(chart, list(box)+graph.graph_enclosure(box))
        return graph, known, chart.input, graph.receipt
    return chart, lambda box: known_boxes.classify(chart, box), chart.input, None


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--atlas', type=Path, default=R.DEFAULT_ATLAS)
    parser.add_argument('--input', type=Path)
    parser.add_argument('--output', type=Path)
    parser.add_argument('--replay', type=Path)
    parser.add_argument('--max-nodes', type=int, default=127)
    args = parser.parse_args()
    if args.max_nodes < 1 or (args.replay is None and (args.input is None or args.output is None)):
        parser.error('supply --input/--output or --replay, and a positive node cap')
    ctx.prec = 160
    sources = source_binding()
    if args.replay:
        saved = json.loads(args.replay.read_text())
        if saved['sources'] != sources:
            raise ArithmeticError('barrier source binding mismatch')
        oracle, known, domain, graph = oracle_for(saved['input'], args.atlas)
        ok = B.replay(oracle, saved['proof'], known)
        if source_binding() != sources:
            raise ArithmeticError('source changed during replay')
        print(json.dumps(dict(replayed=ok, scope='explicit regional domain only')))
        return 0 if ok else 2
    if args.output.exists():
        parser.error('output exists')
    config = json.loads(args.input.read_text())
    try:
        oracle, known, domain, graph = oracle_for(config, args.atlas)
        proof = B.certify(oracle, config['root'], config['epsilon'],
                          partition=config.get('partition', 'active'), known_checker=known,
                          height=config.get('height', [1,0,0,0]), periodic=config.get('periodic_axes', []),
                          max_nodes=args.max_nodes)
        ok = proof['status'] == 'CERTIFIED DOMAIN ONLY'
        if ok and not B.replay(oracle, proof, known):
            raise ArithmeticError('new certificate failed immediate independent coverage replay')
    except (ArithmeticError, ValueError, ZeroDivisionError, LinAlgError) as exc:
        proof = dict(status='NOT ESTABLISHED', reason=str(exc))
        domain, graph, ok = None, None, False
    if source_binding() != sources:
        raise ArithmeticError('source changed during regional run')
    result = dict(sources=sources, input=config, native_domain=domain, graph=graph, proof=proof,
                  precision=160, runtime=dict(python=platform.python_version(),
                  packages={p:importlib.metadata.version(p) for p in ('numpy','scipy','python-flint','sympy')}))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2)+'\n')
    print(json.dumps(dict(status=proof['status'], reason=proof.get('reason'),
                         all_k_atlas_classification=False)))
    return 0 if ok else 2


if __name__ == '__main__':
    raise SystemExit(main())
