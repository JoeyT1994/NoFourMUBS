#!/usr/bin/env python3
"""Independent exact comparison of the written feature table and JSON.

The definitions here are transcribed from S_D_PROOF.md, not derived from
the discovery basis.  Optional argument: path to S_D_certificate.json.
"""
import json
import sys
from pathlib import Path


def U(a):
    return {tuple(a): 1}


def lin(*args):
    out = {}
    for scale, p in args:
        for a, c in p.items():
            out[a] = out.get(a, 0) + scale * c
    return {a: c for a, c in out.items() if c}


T0 = lin((-1, U((0, 0, 0))), (1, U((-2, 0, 2))),
         (1, U((-2, 2, 0))), (1, U((0, -2, 2))))
T1 = lin((1, U((-1, 2, -1))), (1, U((0, -2, 2))),
         (-1, U((-3, 0, 3))), (-1, U((-3, 1, 2))))
A = lin((1, U((0, 2, -2))), (-1, U((0, -2, 2))))
B = lin((1, U((1, -2, 1))), (-1, U((-1, 2, -1))))
C = lin((1, U((2, -2, 0))), (-1, U((-2, 2, 0))))
D = lin((1, U((2, 0, -2))), (-1, U((-2, 0, 2))))
E = lin((-1, U((0, -2, 2))), (1, U((-3, 1, 2))),
        (1, U((-3, 2, 1))))
F = lin((1, U((-1, -1, 2))), (1, U((-3, 1, 2))),
        (-1, U((-3, 3, 0))), (1, U((1, -3, 2))))
G = lin((1, T1), (1, U((1, 2, -3))))
J = lin((-1, U((-2, 2, 0))), (-1, T1), (1, U((2, 1, -3))))
K = lin((1, U((3, -1, -2))), (-1, U((-3, 1, 2))))
P = lin((1, T0), (1, U((-4, 2, 2))))
Q = lin((-1, U((-2, 0, 2))), (-1, U((-1, -1, 2))),
        (-1, U((-3, 1, 2))), (1, U((-3, 3, 0))),
        (1, U((-4, 3, 1))))
R = lin((1, T0), (1, U((-2, -2, 4))))
T = lin((1, T0), (1, U((-2, 4, -2))))
V = lin((1, U((0, -4, 4))), (-1, U((0, -2, 2))))
W = lin((1, T1), (1, U((1, -4, 3))))
X = lin((1, T0), (1, U((2, -4, 2))))

features = [
    lin((2, A), (2, J)), lin((2, A), (2, V)),
    lin((2, B), (1, W)), lin((2, B), (2, W)),
    lin((2, C), (1, K)), lin((2, D), (-2, F)),
    lin((2, D), (1, G)), lin((2, D), (2, Q)),
    lin((2, E), (1, T)), lin((2, F), (2, J)),
    lin((2, J), (1, T)), lin((2, J), (2, T)),
    lin((2, J), (-2, X)), lin((2, P), (-2, R)),
    lin((2, R), (2, W)),
]
weights = [117833844166200, 66835245352500, 75828485046240,
           456540092483400, 50345656574400, 178266265801920,
           172200154348800, 235797446004840, 80870265051840,
           33438262877280, 19821048096960, 83661412125960,
           12586414143600, 883442449838520, 18957121261560]

path = (Path(sys.argv[1]) if len(sys.argv) > 1 else
        Path(__file__).resolve().with_name('S_D_certificate.json'))
data = json.loads(path.read_text())
assert len(data['features']) == len(features) == len(weights) == 15
for i, (feature, weight, actual) in enumerate(zip(features, weights, data['features']), 1):
    assert actual['index'] == i
    assert actual['weight'] == weight > 0
    assert {tuple(t['charge']): t['coefficient'] for t in actual['terms']} == feature
    assert all(sum(a) == 0 for a in feature)
assert data['B1'] - 600 * data['B0'] == data['extra_D_weight'] == 17307030277752
print('PASS: all 15 written feature definitions and positive integer weights match JSON exactly')
