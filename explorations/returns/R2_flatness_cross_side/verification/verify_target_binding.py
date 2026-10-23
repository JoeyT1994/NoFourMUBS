#!/usr/bin/env python3
"""Rebuild the specified E/G/Q/K residual circuits and compare stored data.

The companion checker then evaluates the stored circuit independently.
This step prevents replacing the target data with an unrelated zero circuit.
"""
import importlib.util
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('build_circuit', root/'certificate/build_circuit.py')
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
roots = module.build()
active = set()
for i in roots.values():
    active.update(module.reachable(i))
order = sorted(active)
index = {old: new for new, old in enumerate(order)}
nodes = []
for old in order:
    node = module.NODES[old]
    args = node['args'] if node['op'] == 'mono' else [index[i] for i in node['args']]
    nodes.append([node['op'], *args])
expected = dict(format='integer-laurent-circuit-v1', variables=['a', 'b', 'c', 'd'],
                nodes=nodes, roots={name: index[i] for name, i in roots.items()})
stored = json.loads((root/'certificate/packed_circuit.json').read_text())
if expected != stored:
    raise SystemExit('FAIL: certificate does not match the stated target formulas')
print(json.dumps(dict(status='PASS', step='target_binding', nodes=len(nodes),
                      certificate_data_bytes=(root/'certificate/packed_circuit.json').stat().st_size),
                 sort_keys=True))
