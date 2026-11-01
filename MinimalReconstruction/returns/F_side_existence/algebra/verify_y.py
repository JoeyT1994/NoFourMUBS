#!/usr/bin/env python3
"""Verify the y-flatness reduction after verifying the small core chain.

The two y_gram inputs are independently certified in the root Gram package.
This file checks their exact expressions and every downstream cofactor without
assuming any existing side or making a generic-specialization argument.
"""
import json, time
from pathlib import Path
import verify_core as core
import y_model as model
START = time.perf_counter()
ROOT = Path(__file__).resolve().parent
P = json.loads((ROOT / 'y_certificates.json').read_text())
if not P['format'] == 'integer_polynomial_cofactors_v1':
    raise AssertionError('required exact identity or schema condition failed')
if not P['variables'] == model.NAMES:
    raise AssertionError('required exact identity or schema condition failed')
proved = dict(core.proved)
if not set(P['inputs']) == set(model.YINPUTS):
    raise AssertionError('required exact identity or schema condition failed')
for name, expr in model.YINPUTS.items():
    got = core.read(P['inputs'][name])
    if not got == core.expected(expr):
        raise AssertionError((name, 'input mismatch'))
    if not name not in proved:
        raise AssertionError('required exact identity or schema condition failed')
    proved[name] = got
if not len(P['steps']) == len(model.YSTEPS):
    raise AssertionError('required exact identity or schema condition failed')
for got, want in zip(P['steps'], model.YSTEPS):
    name = want['name']
    if not got['name'] == name:
        raise AssertionError('required exact identity or schema condition failed')
    target = core.read(got['target'])
    if not target == core.expected(model.s.sympify(want['target'], locals=model.env)):
        raise AssertionError((name, 'target mismatch'))
    if not set(got['cofactors']) == set(want['cofactors']):
        raise AssertionError('required exact identity or schema condition failed')
    total = {}
    for ref, raw in got['cofactors'].items():
        if not ref in proved:
            raise AssertionError((name, 'unproved reference', ref))
        total = core.add(total, core.mul(core.read(raw), proved[ref]))
    if not total == target:
        raise AssertionError((name, 'identity failure', core.add(target, total, -1)))
    if 'cancel' in want:
        cancel = core.read(got['cancel'])
        consequence = core.read(got['consequence'])
        if not cancel == core.expected(model.s.sympify(want['cancel'], locals=model.env)):
            raise AssertionError('required exact identity or schema condition failed')
        if not consequence == core.expected(model.s.sympify(want['consequence'], locals=model.env)):
            raise AssertionError('required exact identity or schema condition failed')
        if not (cancel and core.mul(cancel, consequence) == target):
            raise AssertionError('required exact identity or schema condition failed')
        proved[name] = consequence
    else:
        if not ('cancel' not in got and 'consequence' not in got):
            raise AssertionError('required exact identity or schema condition failed')
        proved[name] = target
C = json.loads((ROOT / 'y_gram_conditions.json').read_text())
if not C['variables'] == model.NAMES:
    raise AssertionError('required exact identity or schema condition failed')
for name, expr in [('y_gram_0', model.y0), ('y_gram_1', model.y1)]:
    if not core.read(C[name + '_terms']) == core.expected(expr):
        raise AssertionError('required exact identity or schema condition failed')
    if not core.expected(model.s.sympify(C[name], locals=model.env)) == core.expected(expr):
        raise AssertionError('required exact identity or schema condition failed')
print(json.dumps({'status': 'PASS_EXACT', 'certificates': len(P['steps']), 'Gram_condition_terms': [len(C['y_gram_0_terms']), len(C['y_gram_1_terms'])], 'max_cofactor_terms': max((len(f) for x in P['steps'] for f in x['cofactors'].values())), 'seconds': round(time.perf_counter() - START, 4)}))
