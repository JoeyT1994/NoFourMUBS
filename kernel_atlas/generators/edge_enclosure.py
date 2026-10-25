"""Generate the baseline edge chart's affine residual enclosure, reusing the exact seed bound."""
from pathlib import Path
import numpy as np
import edge_c1e as E
from seed_c1 import resQ, boundN, boundOK

OUT = Path(__file__).resolve().parents[1] / 'lean/KernelAtlas/Edge/Baseline'


def phases(xb, w):
    h, v = xb.solve_at(w)
    a = E.TH0[:3] + xb.p_of(w)[:3]
    d, _ = E.Dfun(a, h[0], h, v)
    raw = np.angle(d).reshape(9)
    pa = np.array(E.PA, float) / E.SC
    arg = raw + 2 * np.pi * np.rint((pa - raw) / (2 * np.pi))
    q = np.zeros((6, 6))
    q[1:3, 1:3] = np.array([*a, h[0]]).reshape(2, 2)
    q[1:3, 3:] = h[1:].reshape(2, 3)
    q[3:, 1:3] = v[1:].reshape(2, 3).T
    q[3:, 3:] = arg.reshape(3, 3)
    return q.ravel()


def enclosure_frame(xb):
    _, g, _ = E.quad_coefs(lambda w: phases(xb, w), 1e-5)
    return dict(P=[E.f6k(e)*E.PI3Z for e in range(36)],
                U=[E.gz(x) for x in g.T.reshape(144)])


def enclosure_data(B, D, frame):
    ok, qm, _, _ = E.core(B, D)
    if not ok:
        raise RuntimeError('source core check failed')
    r = dict(**frame, wind=[0]*36)
    models = resQ(D['hb'], r, dict(D, wind=r['wind']), qm)
    r['n'] = boundN(D['hb'], models)[0]
    if not boundOK(D['hb'], r['n'], models):
        raise RuntimeError('residual exact mirror failed')
    return r


def main():
    xb = E.XBall()
    B = xb.ball_dict()
    D = E.tune(B, E.box_data(xb, xb.boxes()[0]))
    r = enclosure_data(B, D, enclosure_frame(xb))
    OUT.mkdir(exist_ok=True)
    (OUT/'EnclosureData.lean').write_text('''import KernelAtlas.Edge.Enclosure

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

def enclosure0 : EnclosureD where
  P := %s
  U := %s
  wind := %s
  n := %d

end NoFourMUBs.KernelAtlas.Edge.Baseline
''' % (E.lean_int_list(r['P']), E.lean_int_list(r['U']), E.lean_int_list(r['wind']), r['n']))
    (OUT/'EnclosureCheck.lean').write_text('''import KernelAtlas.Edge.Baseline.ChartCheck
import KernelAtlas.Edge.Baseline.EnclosureData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

theorem box0_enclosure : enclosureOK ball box0 enclosure0 = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
''')
    print('baseline affine residual bound:', r['n']/E.SC)


if __name__ == '__main__':
    main()
