#!/usr/bin/env python3
"""Replay integer_polynomial_dag_v1 using only the Python standard library."""
import json
from pathlib import Path


def add(a, b):
    out = dict(a)
    for k, v in b.items():
        out[k] = out.get(k, 0)+v
        if not out[k]:
            del out[k]
    return out


def multiply(a, b):
    out = {}
    for ka, va in a.items():
        for kb, vb in b.items():
            k = tuple(x+y for x, y in zip(ka, kb))
            out[k] = out.get(k, 0)+va*vb
    return {k: v for k, v in out.items() if v}


def check(path):
    data = json.loads(Path(path).read_text())
    assert data['format'] == 'integer_polynomial_dag_v1'
    ids = set()
    for cert in data['certificates']:
        assert cert['id'] not in ids
        ids.add(cert['id'])
        n = len(cert['variables'])
        assert len(set(cert['variables'])) == n
        zero = (0,)*n
        one = {zero: 1}
        values = []
        for node in cert['nodes']:
            if node[0] == 'const':
                assert len(node) == 2 and type(node[1]) is int
                value = {zero: node[1]} if node[1] else {}
            elif node[0] == 'var':
                assert len(node) == 2 and type(node[1]) is int
                assert 0 <= node[1] < n
                value = {tuple(int(i == node[1]) for i in range(n)): 1}
            elif node[0] in ('add', 'mul'):
                assert len(node) == 3
                assert all(type(i) is int and 0 <= i < len(values)
                           for i in node[1:])
                operation = add if node[0] == 'add' else multiply
                value = operation(values[node[1]], values[node[2]])
            elif node[0] == 'pow':
                assert len(node) == 3
                assert type(node[1]) is int and 0 <= node[1] < len(values)
                assert type(node[2]) is int and node[2] >= 0
                value = one
                base = values[node[1]]
                exponent = node[2]
                while exponent:
                    if exponent & 1:
                        value = multiply(value, base)
                    exponent >>= 1
                    if exponent:
                        base = multiply(base, base)
            else:
                raise AssertionError(('invalid operation', node))
            values.append(value)
        assert values[cert['lhs']] == values[cert['rhs']], cert['id']
    return len(ids)


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('certificate', nargs='?',
                        default=str(Path(__file__).with_name('scalar_certificates.json')))
    args = parser.parse_args()
    print('PASS:', check(args.certificate), 'integer polynomial DAG identities')
