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
