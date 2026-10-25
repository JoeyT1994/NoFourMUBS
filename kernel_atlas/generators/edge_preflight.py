"""Check FORMAT edge geometry and representative exact witnesses before a large run.

The entire input sphere traversal is checked. Analytic boxes and T1 witnesses are
sampled, with the same refinement code as the full emitter. Optional Lean output
contains numerical checks only; it never claims a full ball or boundary certificate.
"""
import argparse
import gzip
import hashlib
import json
from pathlib import Path

import edge_kball as B
import edge_ktransfers as T
import edge_c1e as E
import seed_exact as X
import seed_kball as K


def sample_indices(length, count):
    if length <= 0 or count <= 0:
        raise ValueError('sample count must be positive')
    if count == 1:
        return [0]
    return sorted({i*(length-1)//(count-1) for i in range(count)})


def preflight(certificate, source, samples=3, level=None, max_box_level=None,
              max_transfer_level=None, destination=None):
    prepared = B.prepare_ball(source, level)
    geometry = T.sphere_geometry(certificate, source, max_transfer_level)
    ball, xb = prepared['B'], prepared['xb']
    if geometry['max_level'] > (xb.rz & -xb.rz).bit_length()-5:
        raise ValueError('transfer depth must preserve a positive interior grid margin')
    if destination is not None:
        destination, module, ns, prefix, suffix = B.output_names(destination)
        B.emit_shared(destination, prefix, suffix, prepared)
    report = dict(radius_requested=B.fh(source['r']), radius_emitted=xb.r,
                  x_radius=str(prepared['rho']), k=source['k'], level=prepared['level'],
                  closed_ball_cells=len(prepared['boxes']), sphere=geometry,
                  analytic_samples=[], transfer_samples=[])
    selected = [prepared['boxes'][i] for i in sample_indices(len(prepared['boxes']), samples)]
    for b, checked in B.refined_boxes(prepared, selected, max_box_level):
        index = len(report['analytic_samples'])
        row = dict(cell=b, slope=checked[3]['q']/E.SC)
        report['analytic_samples'].append(row)
        if destination is not None:
            B.emit_box(destination, module, ns, prefix, index, checked)
        print('analytic', row, flush=True)
    groups = [(i, g) for i, g in enumerate(T.transfer_groups(source, xb)) if g['boxes']]
    for sample in sample_indices(len(groups), samples):
        group_index, g = groups[sample]
        b = tuple(g['boxes'][0])
        level = min(prepared['level'], b[0])
        parent_cell = (level, *(i >> (b[0]-level) for i in b[1:]))
        parent = E.tune(ball, B.box_at(xb, parent_cell))
        seeds = certificate['seeds']
        raw = seeds[str(g['target'])] if isinstance(seeds, dict) else seeds[g['target']]
        target = K.kseed(raw)[0]
        todo = [b]
        while todo:
            cell = todo.pop()
            if X.sphMiss(cell):
                continue
            try:
                d, tr = T.prepare_source(ball, xb, parent, g, target, cell)
            except (RuntimeError, AssertionError) as exc:
                if cell[0] >= geometry['max_level']:
                    raise RuntimeError(f'sampled transfer failed at {cell}: {exc}') from exc
                todo.extend(reversed(K.children(cell)))
                continue
            index = len(report['transfer_samples'])
            row = dict(group=group_index, cell=cell, target=g['target'],
                       bound=tr['t1']['m']/E.SC, radius=target['r']/E.SC)
            report['transfer_samples'].append(row)
            if destination is not None:
                out = destination/f'Transfer{index}'
                out.mkdir(exist_ok=True)
                mod, name = module+f'.Transfer{index}', ns+f'.Transfer{index}'
                text = f'import {module}.Shared\n\nnamespace {name}\n\nopen NoFourMUBs.KernelAtlas.Edge\n\n'
                text += E.lean_ebox('parent', parent)
                text += f'\ndef Ds (_ : Fin 1) : EBoxD := parent\n\nend {name}\n'
                (out/'Inputs.lean').write_text(text)
                T.emit_source(out, mod, name, 0, (0, 1), d, tr, cell, g['target'], inputs='Inputs')
            print('transfer', row, flush=True)
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('certificate', type=Path)
    parser.add_argument('index', nargs='?', type=int, default=0)
    parser.add_argument('--samples', type=int, default=3)
    parser.add_argument('--level', type=int)
    parser.add_argument('--max-box-level', type=int)
    parser.add_argument('--max-transfer-level', type=int)
    parser.add_argument('--emit', type=Path)
    args = parser.parse_args()
    opener = gzip.open if args.certificate.suffix == '.gz' else open
    with opener(args.certificate, 'rt') as f:
        certificate = json.load(f)
    report = preflight(certificate, certificate['edge'][args.index], args.samples, args.level,
                       args.max_box_level, args.max_transfer_level, args.emit)
    report['certificate_sha256'] = hashlib.sha256(args.certificate.read_bytes()).hexdigest()
    report['certificate_name'] = args.certificate.name
    if args.emit is not None:
        (args.emit/'Report.json').write_text(json.dumps(report, indent=2)+'\n')
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
