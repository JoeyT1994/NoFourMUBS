"""Emit the complete local-check and ball-certificate modules for one FORMAT edge ball.

All numerical witnesses pass the exact mirrors before emission. The generated
certificate takes only the independent X exclusion theorem after its finite
geometry, analytic checks, frame bounds, and compatibility table are proved.
Sphere transfer groups are emitted by edge_ktransfers, including source-to-parent
links, an exact sphere traversal, and the boundary theorem for the seed atlas.
"""
import argparse
from fractions import Fraction as Fr
import gzip
import json
import math
from pathlib import Path
import numpy as np

import edge_c1e as E
import edge_cover as C
import edge_derivative as Df
import edge_enclosure as En
import edge_normal as N
import edge_overlap as O
import edge_slope as Sl
import knormal as K
import seed_c1 as S
import seed_exact as X

ROOT = Path(__file__).resolve().parents[2]
EDGE_ROOT = ROOT/'kernel_atlas/lean/KernelAtlas/Edge'


def fh(x):
    return float.fromhex(x) if isinstance(x, str) else float(x)


def frame_bounds(U):
    a = np.array(U, float).reshape(36, 4)/E.SC
    lam = math.ceil(np.linalg.norm(a, 2)*1.01*E.SC)
    t = math.ceil(max(np.linalg.norm(a.reshape(6, 6, 4)[:, j, :], 2) for j in range(6))*1.01*E.SC)
    if not all(X.psdOK(X.shiftA(t, lambda k, l: X.gramC(U, i, k, l))) for i in range(6)):
        raise RuntimeError('exact column frame bound failed')
    if not X.psdOK(X.shiftA(lam, lambda k, l: X.gramF(U, k, l))):
        raise RuntimeError('exact Frobenius frame bound failed')
    return t, lam


def lean_enclosure(name, R):
    return (f'def {name} : EnclosureD where\n  P := {E.lean_int_list(R["P"])}\n'
            f'  U := {E.lean_int_list(R["U"])}\n  wind := {E.lean_int_list(R["wind"])}\n  n := {R["n"]}\n')


def prepare_ball(source, level=None):
    """Quantize the certificate fields once; no radius or exclusion value is implicit."""
    if source.get('chart') != 'F6-012' or source.get('exclusion') != 'X':
        raise ValueError('expected an X-excluded F6-012 edge ball')
    q0 = [fh(x) for x in source.get('q0', [0]*4)]
    if len(q0) != 4 or any(x != 0 for x in q0):
        raise ValueError('this kernel route requires the edge ball centred at F6 (q0 = 0)')
    rho_float = fh(source['x_radius'])
    rho = min(Fr(str(rho_float)), Fr(9, 20))
    if not 0 < rho_float <= 0.45:
        raise ValueError('X radius must be positive and at most 9/20')
    grid = source['k']
    if len(grid) != 4 or any(type(k) is not int or k <= 0 for k in grid):
        raise ValueError('k must contain four positive integers')
    if level is None:
        level = (max(grid)-1).bit_length()
    if type(level) is not int or not 0 <= level <= 12:
        raise ValueError('level must be an integer from 0 through 12')
    xb = E.XBall(fh(source['r']), k=1 << level, rho=rho)
    xb.Mz = [E.gz(fh(x)) for x in source['Mth']]
    if len(xb.Mz) != 16:
        raise ValueError('Mth must have sixteen entries')
    xb.Mq = np.array(xb.Mz, float).reshape(4, 4)/E.SC
    B = xb.ball_dict()
    if xb.rz <= 0 or not B['nX']*20 < 9*36*E.SC:
        raise ValueError('radius and strict graph image checks must pass')
    # Reorder the supplied enclosure into the kernel chart's fixed F6 gauge.
    # This only predicts witnesses: the residual checker validates the result.
    R = dict(P=[E.gz(fh(x)) for x in source['P']], U=[E.gz(fh(x)) for x in source['U']],
             wind=[0]*36, n=math.ceil(fh(source['n'])*E.SC))
    if len(R['P']) != 36 or len(R['U']) != 144 or R['n'] < 0:
        raise ValueError('invalid affine enclosure dimensions or radius')
    from edge_ktransfers import gauge_maps
    rr, cc = gauge_maps(source, xb)
    ir, ic = np.argsort(rr), np.argsort(cc)
    R['P'] = np.array(R['P'], dtype=object).reshape(6, 6)[np.ix_(ir, ic)].ravel().tolist()
    R['U'] = np.array(R['U'], dtype=object).reshape(6, 6, 4)[ir][:, ic].ravel().tolist()
    q0 = En.phases(xb, np.zeros(4))
    R['wind'] = [round((q0[i]-R['P'][i]/E.SC)/(2*math.pi)) for i in range(36)]
    t, lam = frame_bounds(R['U'])
    ints, den = N.predict_frame()
    fc = K.frame_consts(ints, den)
    boxes = C.grid_cover(level)
    return dict(B=B, xb=xb, R=R, t=t, lam=lam, fc=fc, boxes=boxes, rho=rho, level=level)


def box_at(xb, b):
    """Predict an enlarged cell at any refinement level on this ball's fixed grid."""
    level, *idx = b
    if xb.rz % (1 << level):
        raise ValueError('cell level exceeds the exact radius grid')
    h = xb.rz >> level
    wc = [(2*i+1-(1 << level))*h for i in idx]
    return E.box_data_at(xb, wc, [int(h*(1+xb.margin))]*4)


def check_box(prepared, b):
    B, xb, R, fc = (prepared[k] for k in ('B', 'xb', 'R', 'fc'))
    d = E.tune(B, box_at(xb, b))
    chart, details = E.chartOK(B, d)
    if not chart:
        raise RuntimeError(f'chart/image check failed: {details}')
    if not C.coverMatch(xb.rz, b, d, interior=True):
        raise RuntimeError('strict cover match failed')
    ok, qm, _, _ = E.core(B, d)
    if not ok or not S.boundOK(d['hb'], R['n'], S.resQ(d['hb'], R, dict(d, wind=R['wind']), qm)):
        raise RuntimeError('affine enclosure failed')
    h, v = Df.root_diff_data(B, d, False), Df.root_diff_data(B, d, True)
    return d, h, v, Sl.slope_data(B, d, h, v, fc)


def refined_boxes(prepared, boxes, max_level=None):
    """Refine failed analytic cells without changing the ball or its X radius."""
    level = prepared['level']
    if max_level is None:
        max_level = level+2
    if type(max_level) is not int or not level <= max_level <= level+16:
        raise ValueError('max box level must preserve a positive interior grid margin')
    todo = list(reversed(boxes))
    while todo:
        b = todo.pop()
        if X.ballMiss(b):
            continue
        try:
            checked = check_box(prepared, b)
        except (RuntimeError, AssertionError, np.linalg.LinAlgError) as exc:
            if b[0] >= max_level:
                raise RuntimeError(f'cannot certify edge cell {b}: {exc}') from exc
            todo.extend(reversed([X.child(b, i) for i in range(16)]))
            continue
        yield b, checked


def output_names(destination):
    destination = Path(destination).resolve()
    if not destination.is_relative_to(EDGE_ROOT):
        raise ValueError('output must stay under KernelAtlas/Edge')
    destination.mkdir(parents=True, exist_ok=True)
    module = '.'.join(destination.relative_to(ROOT/'kernel_atlas/lean').parts)
    ns = 'NoFourMUBs.'+module
    prefix = f'namespace {ns}\n\nopen NoFourMUBs.KernelAtlas NoFourMUBs.KernelAtlas.Edge NoFourMUBs.KernelAtlas.Seed\n\n'
    return destination, module, ns, prefix, f'\nend {ns}\n'


def emit_shared(destination, prefix, suffix, prepared):
    B, xb, R, t, lam, rho = (prepared[k] for k in ('B', 'xb', 'R', 't', 'lam', 'rho'))
    shared = 'import KernelAtlas.Edge.Assembly\nimport KernelAtlas.Edge.CoverTable\n\n'+prefix
    shared += E.lean_eball('ball', B)+'\n'+lean_enclosure('enclosure', R)
    shared += f'\ndef radius : ℕ := {xb.rz}\ndef frameT : ℕ := {t}\ndef frameLam : ℕ := {lam}\n'
    shared += f'def xRadius : ℚ := {K.q_lit(rho)}\n'
    shared += '''
theorem frame_checked : enclosureFrameOK enclosure frameT frameLam = true := by decide +kernel
theorem graph_checked : graphImageOK ball = true := by decide +kernel
theorem x_radius_checked : rn ball.nX/36 ≤ (xRadius : ℝ) := by norm_num [rn, ball, xRadius, pp]
'''
    (destination/'Shared.lean').write_text(shared+suffix)


def emit_box(destination, module, ns, prefix, index, checked):
    d, h, v, slope = checked
    data = f'import {module}.Shared\n\n'+prefix
    data += E.lean_ebox('box', d)+'\n'+Df.lean_root_diff('diffH', h)+'\n'+Df.lean_root_diff('diffV', v)
    data += '\ndef derivativeP : List Seed.CT := '+E.lean_ct_list(slope['P'])+'\n'
    data += f"def full : FullBoxD := ⟨box, diffH, diffV, derivativeP, {E.lean_int_list(slope['Y'])}, {slope['q']}⟩\n"
    # Each box gets its own namespace, avoiding collisions in the aggregate import.
    data = data.replace(f'namespace {ns}\n', f'namespace {ns}.B{index}\n')
    data += f'\nend {ns}.B{index}\n'
    (destination/f'Data{index}.lean').write_text(data)
    check = f'import {module}.Data{index}\n\nnamespace {ns}.B{index}\n\n'
    check += 'open NoFourMUBs.KernelAtlas.Edge\n\nset_option maxRecDepth 100000 in\nset_option maxHeartbeats 0 in\n'
    check += 'theorem checked : fullBox ball enclosure Fourier.frame Fourier.fq full = true := by decide +kernel\n'
    check += f'\nend {ns}.B{index}\n'
    (destination/f'Check{index}.lean').write_text(check)


def generate_ball(source, destination, level=None, max_box_level=None):
    prepared = prepare_ball(source, level)
    B, xb, boxes = (prepared[k] for k in ('B', 'xb', 'boxes'))
    destination, module, ns, prefix, suffix = output_names(destination)
    emit_shared(destination, prefix, suffix, prepared)
    ds, cells = [], []
    for index, (b, checked) in enumerate(refined_boxes(prepared, boxes, max_box_level)):
        emit_box(destination, module, ns, prefix, index, checked)
        ds.append(checked[0]); cells.append(b)
        print(f'box {index+1}: cell {b}, slope {checked[3]["q"]/E.SC:.6f}', flush=True)
    boxes = cells
    level = max(b[0] for b in cells)
    if not X.walk(X.ballMiss, level, cells)[0]:
        raise RuntimeError('refined cells do not cover the closed ball')
    # Python prunes disjoint pairs before the expensive predictor comparison.
    for i, d in enumerate(ds):
        for j, e in enumerate(ds):
            if not C.disjointBoxes(d, e) and not O.overlapOK(d, e):
                raise RuntimeError(f'overlap check failed for boxes {i}, {j}')
    count = len(ds)
    table = ''.join(f'import {module}.Check{i}\n' for i in range(count))+'\n'+prefix
    table += 'def checkedTable : List {X : FullBoxD // fullBox ball enclosure Fourier.frame Fourier.fq X = true} := [\n'
    table += ',\n'.join(f'  ⟨B{i}.full, B{i}.checked⟩' for i in range(count))+'\n]\n\n'
    table += f'theorem table_length : checkedTable.length = {count} := by decide +kernel\n\n'
    table += f'def checked (i : Fin {count}) := checkedTable.get ⟨i, by rw [table_length]; exact i.2⟩\n'
    table += f'def X (i : Fin {count}) : FullBoxD := (checked i).1\n'
    table += 'theorem all_checked (i) : fullBox ball enclosure Fourier.frame Fourier.fq (X i) = true := (checked i).2\n'
    table += f'def Ds (i : Fin {count}) : EBoxD := (X i).box\n'
    table += f'def ds : List EBoxD := (List.finRange {count}).map Ds\n'
    table += f'def entries : List (CoverEntry {count}) := [\n'
    table += ',\n'.join('  ⟨⟨'+', '.join(map(str, b))+'⟩, ⟨'+str(i)+', by decide⟩⟩' for i,b in enumerate(boxes))+'\n]\n\n'
    for name, claim in [('cover_checked', f'ballOK radius {level} (entries.map CoverEntry.cell)'),
                        ('matches_checked', 'coverTableOK radius Ds entries'),
                        ('overlaps_checked', 'overlapsOK ds')]:
        table += f'set_option maxRecDepth 100000 in\nset_option maxHeartbeats 0 in\ntheorem {name} : {claim} = true := by decide +kernel\n\n'
    table += '''theorem covered : ∀ w, NoFourMUBs.SeedAtlas.wnorm w ≤ rn radius → ∃ i, w ∈ boxRegion (Ds i) :=
  (coverTable_sound matches_checked cover_checked).1
open Filter Topology in
theorem interior_covered : ∀ w, NoFourMUBs.SeedAtlas.wnorm w < rn radius → ∃ i,
    {u | Seed.InBox (Ds i).hb u} ∈ 𝓝 (localOf (Ds i) w) :=
  (coverTable_sound matches_checked cover_checked).2

theorem compatible (i j) (w : Fin 4 → ℝ) (_hw : NoFourMUBs.SeedAtlas.wnorm w ≤ rn radius)
    (hi : w ∈ boxRegion (Ds i)) (hj : w ∈ boxRegion (Ds j)) : overlapOK (Ds i) (Ds j) = true := by
  apply overlapsOK_sound overlaps_checked ?_ ?_ hi hj <;> simp [ds]

noncomputable def cert (hX : NoFourMUBs.SeedAtlas.XExclusion (xRadius : ℝ)) : NoFourMUBs.SeedAtlas.EdgeX.EdgeBallCert :=
  assemble ball enclosure radius frameT frameLam X all_checked frame_checked graph_checked
    covered interior_covered compatible x_radius_checked hX
'''
    table += """
noncomputable def globalChart := assembledChart ball enclosure radius X all_checked covered compatible

theorem cert_Q (hX : NoFourMUBs.SeedAtlas.XExclusion (xRadius : ℝ)) :
    (cert hX).Q = globalChart.Q := rfl
"""
    (destination/'Cert.lean').write_text(table+suffix)
    return dict(module=module, boxes=count, radius=xb.rz/E.SC, x_radius=str(prepared['rho']),
                initial_grid=source['k'], cover_depth=level, transfers=len(source.get('transfers', [])),
                _context=(B, xb, ds, boxes, module, ns))


def demo():
    xb = E.XBall(0.001, k=1)
    frame = En.enclosure_frame(xb)
    return dict(chart='F6-012', exclusion='X', Mth=[x/E.SC for x in xb.Mz], r=0.001, k=[1]*4,
                P=[x/E.SC for x in frame['P']], U=[x/E.SC for x in frame['U']], n=0.001,
                x_radius=0.25, transfers=[])


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('certificate', nargs='?', type=Path)
    parser.add_argument('index', nargs='?', type=int, default=0)
    parser.add_argument('--demo', action='store_true')
    parser.add_argument('--level', type=int)
    parser.add_argument('--max-box-level', type=int)
    parser.add_argument('--max-transfer-level', type=int)
    parser.add_argument('--emit', type=Path, required=True)
    args = parser.parse_args()
    if args.demo:
        source = demo()
    else:
        if args.certificate is None:
            parser.error('provide a FORMAT certificate or --demo')
        opener = gzip.open if args.certificate.suffix == '.gz' else open
        with opener(args.certificate, 'rt') as f:
            certificate = json.load(f)
        source = certificate['edge'][args.index]
    result = generate_ball(source, args.emit, args.level, args.max_box_level)
    context = result.pop('_context')
    if source.get('transfers'):
        from edge_ktransfers import generate_transfers
        result.update(generate_transfers(certificate, source, args.emit, context, args.max_transfer_level))
    print(result)


if __name__ == '__main__':
    main()
