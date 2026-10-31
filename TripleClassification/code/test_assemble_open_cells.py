#!/usr/bin/env python3
"""Unit test of assemble.open_cells: open verdicts give their exact cells; summary verdicts keep only the count."""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import assemble

tree = {282: dict(status='closed', route='selective chain', rule='anchored', depth=9),
        1217: dict(status='open below level 7', route='selective chain', open_level=6, open_cells=[[1, 2, 3, 4], [5, 6, 7, 8]],
                   layer_files=['l2', 'l3', 'l4', 'l5', 'l6']),
        666: dict(status='audit failed: KeyError: 73', route='selective chain')}
opened, slim = assemble.open_cells(tree)
assert set(opened) == {'1217'} and opened['1217']['level'] == 6 and opened['1217']['cells'] == [[1, 2, 3, 4], [5, 6, 7, 8]]
assert opened['1217']['layers'][-1] == 'l6'
assert slim['1217']['open_cells'] == 2 and 'layer_files' not in slim['1217'] and slim['282'] == tree[282]
assert 'open_cells' not in slim['666']
print('PASS assemble.open_cells')

# audit_chain: a bad mask or missing rows in the deepest layer falls back to the last complete layer; others do not
calls = []
def fake(i, route, layers, scripts):
    calls.append(len(layers))
    if len(layers) == 6: return dict(status='audit failed: ValueError: incorrect target mask at level 7')
    if len(layers) == 5: return dict(status='audit failed: ValueError: missing or unexpected rows at level 6')
    return dict(status='closed')
x = assemble.audit_chain(fake, 499, 'selective chain', list('abcdef'), list('ABCDEF'))
assert x['status'] == 'closed' and calls == [6, 5, 4], calls
calls.clear()
def other(i, route, layers, scripts):
    calls.append(len(layers)); return dict(status='audit failed: ValueError: source binding mismatch at level 6')
x = assemble.audit_chain(other, 918, 'selective chain', list('abcde'), list('ABCDE'))
assert calls == [5] and 'binding' in x['status']
calls.clear()
def shallow(i, route, layers, scripts):
    calls.append(len(layers)); return dict(status='audit failed: ValueError: incorrect target mask at level 3')
assemble.audit_chain(shallow, 1, 'selective chain', list('ab'), list('AB'))
assert calls == [2]
print('PASS assemble.audit_chain')

# resolve_transfers: a ball closed with transfer leaves closes only once its targets are closed; cycles stay open
final = {0: 'tree', 1: 'tree_plane', 2: 'tree_plane', 3: 'tree_plane', 4: 'tree_plane', 5: 'open', 6: 'tree_plane'}
tree = {1: dict(status='closed', transfer_targets=[0]), 2: dict(status='closed', transfer_targets=[1]),
        3: dict(status='closed', transfer_targets=[4]), 4: dict(status='closed', transfer_targets=[3]),
        6: dict(status='closed', transfer_targets=[5])}
f, t = assemble.resolve_transfers(dict(final), dict(tree), 7)
assert f[1] != 'open' and f[2] != 'open', f                  # a chain onto a ball closed without transfers
assert f[3] == 'open' and f[4] == 'open' and 'transfer targets not closed' in t[3]['status'], (f, t)   # a cycle
assert f[6] == 'open'                                         # a target that is open
print('PASS assemble.resolve_transfers')

# region transfers: an image box must miss the target's unresolved cells and its cells closed through transfers
import types
X = types.SimpleNamespace(cell_box=lambda r, lv, c: [[r * (-1 + 2 * x / 2 ** lv), r * (-1 + 2 * (x + 1) / 2 ** lv)] for x in c],
                          meets=lambda a, b, m=1e-12: all(a[k][0] - m <= b[k][1] + m and b[k][0] - m <= a[k][1] + m for k in range(4)))
inside = [[-0.9, -0.8]] * 4                                   # in cell (2; 0,0,0,0) of a radius-1 ball
far = [[0.6, 0.7]] * 4                                        # in cell (2; 3,3,3,3)
final = {0: 'tree_plane', 1: 'open', 2: 'tree_plane', 3: 'tree_plane', 4: 'tree_plane', 5: 'open'}
tree = {1: dict(status='open below level 3', open_level=2, open_cells=[[0, 0, 0, 0]]),
        0: dict(status='closed', indirect_cells=[[2, [3, 3, 3, 3]]]),
        2: dict(status='closed', region_transfers=[[1, far]]),        # misses 1's open cell: good
        3: dict(status='closed', region_transfers=[[1, inside]]),     # meets 1's open cell: stays open
        4: dict(status='closed', region_transfers=[[0, far]]),        # meets 0's transferred cell: stays open
        5: dict(status='audit failed: x')}
tree[0]['region_transfers'] = [[5, far]]                      # a target whose audit failed: stays open
f, t = assemble.resolve_transfers(dict(final), {k: dict(v) for k, v in tree.items()}, 6, lambda b: 1.0, X)
assert f[2] != 'open', t[2]
assert f[3] == 'open' and 'region transfer not good' in t[3]['status'], t[3]
assert f[4] == 'open' and f[0] == 'open', (t[4], t[0])
print('PASS assemble.resolve_transfers (regions)')
