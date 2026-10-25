"""Emit one exact edge-to-seed T1 benchmark from the existing sphere fixtures.

The target's radius, orientation and frame are read unchanged from the fixture. This is a real
transfer test, not an atlas or a proof that the fixture's target SeedBallCert exists.

Run with the repository virtualenv and PYTHONDONTWRITEBYTECODE=1. All output stays under Edge/.
"""
import argparse
import json
import math
import itertools
from pathlib import Path

import numpy as np

import edge_c1e as E
import seed_c1 as S
import seed_kball as K
import seed_transfer as T

ROOT = Path(__file__).resolve().parents[2]
EDGE_ROOT = ROOT / 'kernel_atlas/lean/KernelAtlas/Edge'


def generate(destination, half_width):
    destination = Path(destination).resolve()
    if not destination.is_relative_to(EDGE_ROOT):
        raise ValueError('output must be under kernel_atlas/lean/KernelAtlas/Edge')
    if not math.isfinite(half_width) or half_width <= 0:
        raise ValueError('half-width must be finite and positive')
    fixtures = ROOT / 'proof/seed_atlas/cert/tests/data'
    source = json.loads((fixtures / 'edgeballs.json').read_text())['0.1']
    target = json.loads((fixtures / 'edgeseeds.json').read_text())['sphere']
    xb = E.XBall(K.fh(source['r']))
    xb.Mz = [E.gz(K.fh(x)) for x in source['Mth']]
    xb.Mq = np.array(xb.Mz, float).reshape(4, 4) / E.SC
    B = xb.ball_dict()
    wc = [E.gz(x) for x in target['wstar']]
    hb = [math.ceil(half_width * E.SC)] * 4
    D = E.tune(B, E.box_data_at(xb, wc, hb))
    ok, qm, km, info = E.core(B, D)
    if not ok:
        raise RuntimeError(f'edge core failed: {info}')
    # Mirror the re-centring performed by transferOK, including its rounding remainders.
    qm = T.shiftL([0] * 4, hb, qm)
    km = T.shiftL([0] * 4, hb, km)
    Bl, _, _ = K.kseed(target)
    Q = np.array([q.cg(0)[0] / E.SC for q in qm]).reshape(6, 6)
    # The fixture's floating chart orders its bottom rows differently from the kernel's F6 chart.
    # Select the matching corner; all its consequences are checked by the exact T1 mirror below.
    th0 = np.array(Bl['th0'], float) / E.SC
    candidates = []
    for rr in itertools.permutations(range(1, 6), 2):
        for cc in itertools.permutations(range(1, 6), 2):
            rows, cols = T.full_perm((0,) + rr), T.full_perm((0,) + cc)
            delta = (T.corner_theta(Q, rows, cols) - th0 + math.pi) % (2 * math.pi) - math.pi
            candidates.append((float(np.linalg.norm(delta)), rows, cols))
    _, rows, cols = min(candidates)
    th = T.corner_theta(Q, rows, cols)
    G = [E.gz(x) for x in np.linalg.inv(np.array(Bl['Mth'], float).reshape(4, 4) / E.SC).flat]
    td = dict(g=0, rows=rows, cols=cols,
              N=[round((Bl['th0'][k] / E.SC - th[k]) / (2 * math.pi)) for k in range(4)],
              G=G, qg=T.qMin(G, Bl['Mth']), m=0)
    td['m'] = T.least_bound(hb, T.vT(hb, qm, td, Bl))
    ok, reason = T.t1OK(hb, qm, km, td, Bl, Bl['r'], why=True)
    if not ok:
        raise RuntimeError(f'T1 failed: {reason}; needed {td["m"] / E.SC}, radius {Bl["r"] / E.SC}')
    module = '.'.join(destination.relative_to(ROOT / 'kernel_atlas/lean').parts)
    ns = 'NoFourMUBs.' + module
    prefix = f'namespace {ns}\n\nopen NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.Edge\n\n'
    suffix = f'end {ns}\n'
    data = 'import KernelAtlas.Edge.Transfer\n\n' + prefix
    data += E.lean_eball('transferBall', B) + '\n' + E.lean_ebox('transferBox', D) + '\n'
    data += S.lean_ball('targetBall', Bl) + '\n' + T.lean_t1('targetT1', td) + '\n'
    data += ('noncomputable def transfer : TransferD where\n  c := [0, 0, 0, 0]\n'
             f'  h := {S.lean_nat_list(hb)}\n  target := targetT1\n  ball := targetBall\n'
             f'  radius := {Bl["r"]}\n\n') + suffix
    core_check = f'import {module}.TransferData\n\n' + prefix
    core_check += ('theorem transfer_core_ok : NoFourMUBs.KernelAtlas.Edge.coreOK transferBall transferBox = true := by\n'
                   '  decide +kernel\n\n') + suffix
    check = f'import {module}.TransferData\n\n' + prefix
    check += ('theorem transfer_ok : transferOK transferBall transferBox transfer = true := by\n'
              '  decide +kernel\n\n') + suffix
    destination.mkdir(parents=True, exist_ok=True)
    (destination / 'TransferData.lean').write_text(data)
    (destination / 'TransferCoreCheck.lean').write_text(core_check)
    (destination / 'TransferCheck.lean').write_text(check)
    print(f'T1 fixture sphere: half-width={half_width:g}; bound={td["m"] / E.SC:.8g}; '
          f'target radius={Bl["r"] / E.SC:.8g}; q={td["qg"] / E.SC:.3g}')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--emit', type=Path, default=EDGE_ROOT / 'Baseline')
    parser.add_argument('--half-width', type=float, default=0.0004)
    args = parser.parse_args()
    generate(args.emit, args.half_width)


if __name__ == '__main__':
    main()
