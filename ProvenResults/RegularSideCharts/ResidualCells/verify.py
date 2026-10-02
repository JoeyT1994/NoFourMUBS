"""Replay four rigorous local R gaps and the complete positive-cell atlas."""
from fractions import Fraction
import json
import math
import os
from pathlib import Path
import shutil
import subprocess
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
from gap import arb, certify_local_gap
from prune import R_jet


def gaps(cells):
    for i in (1, 2, 4, 5):
        result = certify_local_gap([arb(v) for v in cells[i-1]],
                                   [arb(math.pi/512)]*4, 1)
        assert result['ok'], (i, result)
        print(f'PASS: cell {i}, every physical completion with maximal leading corner has R>1; {result}', flush=True)
        c = [arb(v) for v in cells[i-1]]
        h = arb(math.pi/512)
        point, box = R_jet(c, [arb(0)]*4), R_jet(c, [h]*4)
        lipschitz = (sum(abs(v.real) for v in point.d)
                     +sum(abs(box.h[j][k].real)*h for j in range(4) for k in range(4)))
        assert lipschitz < 10000
        print(f'PASS: cell {i}, infinity-distance Lipschitz constant <10000; within-cell R=0 clearance >1/10000')
    assert not certify_local_gap(cells[0], [math.pi/512]*4, 1, budget=0)['ok']
    print('PASS: exhausted local-gap budget is unresolved')


def audit_tree(nodes, center, radius):
    assert len(nodes) == len({n['path'] for n in nodes})
    table = {n['path']: n for n in nodes}
    assert table['r']['center'] == center and table['r']['radius'] == radius
    visited = set()
    def visit(path):
        n = table[path]; visited.add(path)
        assert n['kind'] in ('chart', 'split') and n['radius'] > 0
        if n['kind'] == 'chart':
            assert math.isfinite(n['error'])
            return
        half = Fraction(n['radius'])/2
        for label in range(16):
            childpath = path+'/'+str(label)
            child = table[childpath]
            # Intended dyadic half-box is contained in the stored child
            # cube. All arithmetic in this containment check is exact.
            for k in range(4):
                ideal = Fraction(n['center'][k])+(1 if label & (1 << k) else -1)*half
                assert abs(Fraction(child['center'][k])-ideal)+half <= Fraction(child['radius'])
            visit(childpath)
    visit('r')
    assert visited == set(table)


def atlas(cells):
    julia = os.environ.get('JULIA_BIN') or shutil.which('julia')
    assert julia, 'Julia is required; set JULIA_BIN. See README.md.'
    proc = subprocess.run([julia, '--startup-file=no', '--compiled-modules=existing',
                           '--project='+str(ROOT/'NumericalCampaign/Certification/jlenv'),
                           str(HERE/'verify_atlas.jl')], capture_output=True, text=True)
    print(proc.stdout, end='', flush=True)
    if proc.stderr:
        print(proc.stderr, file=sys.stderr)
    assert proc.returncode == 0
    nodes = []
    for line in proc.stdout.splitlines():
        fields = line.split()
        if fields and fields[0] == 'NODE':
            nodes.append(dict(path=fields[1], kind=fields[2], radius=float(fields[3]),
                              center=list(map(float, fields[4:8])), error=float(fields[8])))
    assert len(nodes) == 65 and sum(n['kind'] == 'chart' for n in nodes) == 61
    audit_tree(nodes, cells[4], math.pi/512)
    # A missing leaf or inward-rounded child must fail the coverage audit.
    leaf = next(n for n in nodes if n['kind'] == 'chart')
    for bad in ([n for n in nodes if n is not leaf],
                [dict(n, radius=0.0) if n is leaf else n for n in nodes]):
        try:
            audit_tree(bad, cells[4], math.pi/512)
        except (AssertionError, KeyError):
            pass
        else:
            raise AssertionError('Corrupt cover accepted')
    print('PASS: exact binary-rational coverage audit and missing/shrunken-leaf controls')


if __name__ == '__main__':
    cells = json.loads((HERE.parent/'data/cells.json').read_text())
    gaps(cells)
    atlas(cells)
    print('PASS: four local R gaps and a complete reconstruction atlas; no quartet exclusion')
