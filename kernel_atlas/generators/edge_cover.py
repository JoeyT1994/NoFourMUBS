"""Exact closed-ball and sphere cover utilities for the edge kernel emitter.

Closed-ball coverage retains tangent cells as well as cells meeting the open
ball. The source predictor boxes may then be enlarged by a positive grid margin.
"""
from pathlib import Path
import itertools
import edge_c1e as E
import seed_exact as X

OUT = Path(__file__).resolve().parents[1] / 'lean/KernelAtlas/Edge/Baseline'


def grid_cover(level, sphere=False):
    miss = X.sphMiss if sphere else X.ballMiss
    boxes = sorted([(level, *i) for i in itertools.product(range(1 << level), repeat=4)
                    if not miss((level, *i))], key=X.preorder_key)
    if not X.walk(miss, level, boxes)[0]:
        raise RuntimeError('exact dyadic cover check failed')
    return boxes


def coverMatch(r, b, D, interior=False):
    m, *i = b
    if r % (1 << m):
        return False
    h = r >> m
    return all(D['wc'][a] == (2*i[a]+1-(1 << m))*h and
               (h < D['hb'][a] if interior else h <= D['hb'][a]) for a in range(4))


def disjointBoxes(D, F):
    return any(D['hb'][k]+F['hb'][k] < abs(D['wc'][k]-F['wc'][k]) for k in range(4))


def main():
    xb = E.XBall()
    level = 4
    boxes = grid_cover(level)
    OUT.mkdir(exist_ok=True)
    (OUT/'CoverData.lean').write_text('''import KernelAtlas.Edge.CoverChecks

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Seed

''' + f'def coverRadius : ℕ := {xb.rz}\n\ndef coverLevel : ℕ := {level}\n\n' +
        'set_option maxRecDepth 100000 in\nset_option maxHeartbeats 0 in\ndef coverBoxes : List Bx := [\n' + ',\n'.join('  ⟨'+', '.join(map(str, b))+'⟩' for b in boxes) +
        '\n]\n\nend NoFourMUBs.KernelAtlas.Edge.Baseline\n')
    (OUT/'CoverCheck.lean').write_text('''import KernelAtlas.Edge.Baseline.CoverData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Seed

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem closed_ball_covered : ballOK coverRadius coverLevel coverBoxes = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
''')
    print('closed cells:', len(boxes), 'open cells:', len(xb.boxes()), 'radius:', xb.rz/E.SC)


if __name__ == '__main__':
    main()
