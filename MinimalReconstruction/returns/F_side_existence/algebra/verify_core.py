#!/usr/bin/env python3
"""Validate fixed mathematical statements and their integer polynomial cofactors.

The replay uses dictionary convolution, not simplification, ideal membership,
sampling, irreducibility, or a phase-side existence hypothesis. Nonzero exit on
any malformed polynomial, mismatch, invalid cancellation, or identity failure.
"""
import json, time
from pathlib import Path
import core_model as model
START = time.perf_counter()
ROOT = Path(__file__).resolve().parent
P = json.loads((ROOT / 'core_certificates.json').read_text())
if not P['format'] == 'integer_polynomial_cofactors_v1':
    raise AssertionError('required exact identity or schema condition failed')
if not P['variables'] == model.NAMES:
    raise AssertionError('required exact identity or schema condition failed')
SIZE = len(model.NAMES)
ZERO = (0,) * SIZE

def read(raw):
    ans = {}
    for coeff, mono in raw:
        if not (type(coeff) is int and coeff != 0):
            raise AssertionError('required exact identity or schema condition failed')
        if not (len(mono) == SIZE and all((type(e) is int and e >= 0 for e in mono))):
            raise AssertionError('required exact identity or schema condition failed')
        mono = tuple(mono)
        if not mono not in ans:
            raise AssertionError('required exact identity or schema condition failed')
        ans[mono] = coeff
    return ans

def add(a, b, scale=1):
    z = dict(a)
    for m, c in b.items():
        z[m] = z.get(m, 0) + scale * c
        if not z[m]:
            del z[m]
    return z

def mul(a, b):
    z = {}
    for ma, ca in a.items():
        for mb, cb in b.items():
            m = tuple((x + y for x, y in zip(ma, mb)))
            z[m] = z.get(m, 0) + ca * cb
    return {m: c for m, c in z.items() if c}

def expected(expr):
    return {m: int(c) for m, c in model.s.Poly(model.s.expand(expr), *model.V, domain=model.s.ZZ).terms() if c}
if not set(P['inputs']) == set(model.inputs):
    raise AssertionError('required exact identity or schema condition failed')
proved = {}
for name, expr in model.inputs.items():
    got = read(P['inputs'][name])
    if not got == expected(expr):
        raise AssertionError((name, 'input mismatch'))
    proved[name] = got
if not len(P['steps']) == len(model.steps):
    raise AssertionError('required exact identity or schema condition failed')
for got, want in zip(P['steps'], model.steps):
    name = want['name']
    if not got['name'] == name:
        raise AssertionError('required exact identity or schema condition failed')
    target = read(got['target'])
    if not target == expected(model.s.sympify(want['target'], locals=model.env)):
        raise AssertionError((name, 'target mismatch'))
    if not set(got['cofactors']) == set(want['cofactors']):
        raise AssertionError('required exact identity or schema condition failed')
    total = {}
    for ref, raw in got['cofactors'].items():
        if not ref in proved:
            raise AssertionError((name, 'unproved reference', ref))
        coeff = read(raw)
        total = add(total, mul(coeff, proved[ref]))
    if not total == target:
        raise AssertionError((name, 'cofactor identity failure', add(target, total, -1)))
    if 'cancel' in want:
        cancel = read(got['cancel'])
        consequence = read(got['consequence'])
        if not cancel == expected(model.s.sympify(want['cancel'], locals=model.env)):
            raise AssertionError((name, 'cancellation factor mismatch'))
        if not consequence == expected(model.s.sympify(want['consequence'], locals=model.env)):
            raise AssertionError((name, 'consequence mismatch'))
        if not (cancel and mul(cancel, consequence) == target):
            raise AssertionError((name, 'cancellation failure'))
        proved[name] = consequence
    else:
        if not ('cancel' not in got and 'consequence' not in got):
            raise AssertionError('required exact identity or schema condition failed')
        proved[name] = target
print(json.dumps({'status': 'PASS_EXACT', 'certificates': len(P['steps']), 'max_target_terms': max((len(x['target']) for x in P['steps'])), 'max_cofactor_terms': max((len(f) for x in P['steps'] for f in x['cofactors'].values())), 'seconds': round(time.perf_counter() - START, 4)}))
