"""Exact mirrors and a generated adjacent-box benchmark for the chart overlap check."""
from pathlib import Path
import edge_c1e as E
import seed_transfer as T


def predNear(h, ph, ph2, c, ec, rho):
    return all(E.bnd(h, E.sub(E.re(ph[j]), T.shiftT(c, h, E.re(ph2[j])))) + ec[j] <= rho
               for j in range(7))


def boxShift(d, d2):
    return [d['wc'][j] - d2['wc'][j] for j in range(4)]


def overlapOK(d, d2):
    c = boxShift(d, d2)
    return all(predNear(d['hb'], d['ph'+s], d2['ph'+s], c, d['e'+s], d2['rho'+s]) for s in ('H', 'V'))


def main():
    out = Path(__file__).resolve().parents[1] / 'lean/KernelAtlas/Edge/Baseline'
    xb = E.XBall()
    b = xb.ball_dict()
    indices = xb.boxes()
    d = [E.tune(b, E.box_data(xb, i)) for i in indices[:2]]
    if not E.chartOK(b, d[1])[0]:
        raise RuntimeError('adjacent chart check failed')
    if not overlapOK(*d):
        raise RuntimeError('adjacent overlap check failed')
    out.mkdir(exist_ok=True)
    (out/'OverlapData.lean').write_text('''import KernelAtlas.Edge.Baseline.C1eData
import KernelAtlas.Edge.Overlap

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.Edge

'''+E.lean_ebox('box1', d[1])+'''
end NoFourMUBs.KernelAtlas.Edge.Baseline
''')
    (out/'OverlapCheck.lean').write_text('''import KernelAtlas.Edge.Baseline.OverlapData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

theorem boxes01_overlap : overlapOK box0 box1 = true := by decide +kernel

theorem box1_ok : chartOK ball box1 = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
''')
    print('adjacent overlap passed:', indices[:2])


if __name__ == '__main__':
    main()
