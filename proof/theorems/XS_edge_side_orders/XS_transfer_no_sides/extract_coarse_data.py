#!/usr/bin/env python3
"""Recreate coarse_data.json from the supplied XS context directory.

Only allowed T3 fields and existing source C1 enclosure data are selected.
This extraction does not certify the source C1 inputs.
"""
from pathlib import Path
import argparse
import gzip
import hashlib
import json


def main():
    p = argparse.ArgumentParser()
    p.add_argument('context', type=Path,
                   help='Extracted XS_edge_side_orders/context directory')
    p.add_argument('--output', type=Path,
                   default=Path(__file__).with_name('coarse_data.json'))
    args = p.parse_args()
    sample = args.context/'sample_certificate.json.gz'
    header = args.context/'edge_ball_header.json'
    with gzip.open(sample, 'rt') as source:
        data = json.load(source)
    fields = ['P', 'U', 'r', 'n', 'gauge']
    group_fields = ['kind', 'target', 'g', 'rows', 'cols', 'wind', 'boxes']
    out = {
        'format': 'XS-coarse-distance-v1',
        'conditional_on': 'Existing C1 enclosure for each source on its closed ball; this file does not certify C1.',
        'input_sha256': {
            sample.name: hashlib.sha256(sample.read_bytes()).hexdigest(),
            header.name: hashlib.sha256(header.read_bytes()).hexdigest(),
        },
        'sources': [],
    }
    for j, seed in enumerate(data['seeds']):
        groups = [{k: group[k] for k in group_fields}
                  for group in seed['transfers'] if group['kind'] == 'T3']
        if not groups:
            continue
        row = {'seed': j, **{k: seed[k] for k in fields}, 'groups': groups}
        row['selected_data_sha256'] = hashlib.sha256(
            json.dumps(row, sort_keys=True, separators=(',', ':')).encode()
        ).hexdigest()
        out['sources'].append(row)
    edge = data['edge'][0]
    out['edge'] = {k: edge[k] for k in ['chart', 'q0', 'Mth', 'r', 'x_radius']}
    # The separate header must give the same geometry as the actual sample.
    h = json.loads(header.read_text())
    assert all(h[k] == edge[k] for k in out['edge'])
    encoded = json.dumps(out, separators=(',', ':'))+'\n'
    args.output.write_text(encoded)
    print('Selected data:', args.output)
    print('SHA256:', hashlib.sha256(encoded.encode()).hexdigest())


if __name__ == '__main__':
    main()
