#!/usr/bin/env python3
"""Check a topological integer Laurent circuit by exact separating evaluation.

No CAS, modular arithmetic, random evaluation, or external package is used.
The arithmetic circuit is bound to the stated targets by verify_target_binding.py.
This checker independently computes the support/norm bounds and integer values.
"""
import argparse
import json
from pathlib import Path
import resource
import sys
import time


def require(condition, message):
    if not condition:
        raise ValueError(message)


def load(path):
    payload = json.loads(path.read_text())
    require(payload['format'] == 'integer-laurent-circuit-v1', 'Unknown format')
    require(payload['variables'] == ['a', 'b', 'c', 'd'], 'Unexpected variables')
    nodes = []
    for i, row in enumerate(payload['nodes']):
        require(isinstance(row, list) and row, 'Malformed node')
        op, *args = row
        require(all(type(x) is int for x in args), 'Node arguments must be integers')
        if op == 'mono':
            require(len(args) == 5, 'A monomial needs coefficient and four exponents')
            c, *ex = args
            lower = upper = tuple(ex)
            norm = abs(c)
        else:
            require(op in ('add', 'mul') and len(args) == 2, 'Unknown binary operation')
            require(all(0 <= k < i for k in args), 'Non-topological circuit')
            a, b = [nodes[k] for k in args]
            if op == 'add':
                lower = tuple(min(x, y) for x, y in zip(a['lower'], b['lower']))
                upper = tuple(max(x, y) for x, y in zip(a['upper'], b['upper']))
                norm = a['norm'] + b['norm']
            else:
                lower = tuple(x+y for x, y in zip(a['lower'], b['lower']))
                upper = tuple(x+y for x, y in zip(a['upper'], b['upper']))
                norm = a['norm'] * b['norm']
        nodes.append(dict(op=op, args=args, lower=lower, upper=upper, norm=norm))
    require(isinstance(payload['roots'], dict) and payload['roots'], 'Missing targets')
    for name, i in payload['roots'].items():
        require(isinstance(name, str) and type(i) is int and 0 <= i < len(nodes), 'Bad target')
    return nodes, payload['roots']


def check(nodes, root):
    active, pending = set(), [root]
    while pending:
        i = pending.pop()
        if i in active:
            continue
        active.add(i)
        if nodes[i]['op'] != 'mono':
            pending.extend(nodes[i]['args'])
    order = sorted(active)
    n = nodes[root]
    radices = [hi-lo+1 for lo, hi in zip(n['lower'], n['upper'])]
    require(all(x > 0 for x in radices), 'Empty support box')
    weights = [1]
    for r in radices[:-1]:
        weights.append(weights[-1]*r)
    bits = max(1, n['norm'].bit_length())
    require((1 << bits) > n['norm'], 'Base does not dominate coefficient bound')
    shifts = {i: sum(e*w for e, w in zip(nodes[i]['lower'], weights)) for i in order}
    references = {i: 0 for i in order}
    for i in order:
        if nodes[i]['op'] != 'mono':
            for j in nodes[i]['args']:
                references[j] += 1
    values = {}
    max_bits = 0
    started = time.perf_counter()
    for i in order:
        node = nodes[i]
        if node['op'] == 'mono':
            value = node['args'][0]
        else:
            a, b = node['args']
            if node['op'] == 'mul':
                require(shifts[i] == shifts[a]+shifts[b], 'Multiplication shift failed')
                value = values[a]*values[b]
            else:
                da, db = shifts[a]-shifts[i], shifts[b]-shifts[i]
                require(da >= 0 and db >= 0, 'Addition shift failed')
                value = (values[a] << (bits*da)) + (values[b] << (bits*db))
            for j in (a, b):
                references[j] -= 1
                if references[j] == 0:
                    del values[j]
        values[i] = value
        max_bits = max(max_bits, value.bit_length())
    require(values[root] == 0, 'The exact separating integer evaluation is NONZERO')
    return dict(status='PASS', nodes=len(order), exponent_min=n['lower'],
                exponent_max=n['upper'], radices=radices, weights=weights,
                base_bits=bits, coefficient_l1_bound=str(n['norm']),
                max_actual_bits=max_bits, elapsed_seconds=round(time.perf_counter()-started, 6),
                peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('certificate', nargs='?', type=Path,
                        default=Path(__file__).resolve().parents[1]/'certificate/packed_circuit.json')
    args = parser.parse_args()
    nodes, roots = load(args.certificate)
    for name, root in roots.items():
        print(json.dumps(dict(identity=name, **check(nodes, root)), sort_keys=True), flush=True)


if __name__ == '__main__':
    try:
        main()
    except (ValueError, KeyError, TypeError, IndexError) as error:
        print('FAIL: ' + str(error), file=sys.stderr)
        raise SystemExit(1)
