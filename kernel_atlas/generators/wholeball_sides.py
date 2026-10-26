"""Exact centre signature, orientation, and recorded-data preparation for Z."""
from fractions import Fraction as Q

import seed_c1 as S
from wholeball_centre import prepare
from wholeball_fourier import frobenius_bound, prepare_fourier, prepare_bounds
from wholeball_jets import frequencies
from wholeball_matrix import MatrixBox, frozen_normal_basis
from wholeball_scalar import rational
from wholeball_signature import signature_data


def phase_box(b, d):
    h = d['hb']
    th = [S.thetaT(b, d, k) for k in range(4)]
    e = [S.expI(h, t) for t in th]
    kh = S.sideK(h, S.gramH(h, e), d['phH'], d['YH'], d['tubeH'])
    kv = S.sideK(h, S.gramV(h, e), d['phV'], d['YV'], d['tubeV'])
    hb = S.BT(S.tubeRows(h, d['phH'], kh[1]))
    vb = S.CT3(S.tubeRows(h, d['phV'], kv[1]))
    ok, db = S.forcedT(h, d['Xp'], d['A0'], S.ET(e), hb, vb)
    if not kh[0] or not kv[0] or not ok:
        raise ArithmeticError('phase-centre arithmetic failed')
    args = [S.argT(h, a, z) for a, z in zip(d['argA'], db)]
    models = S.QT(h, th, S.tubeT(d['phH'], kh[1]), S.tubeT(d['phV'], kv[1]), args)
    iv = [S.ivc(h, t) for t in models]
    return MatrixBox([[Q(z[0], S.SC)] for z, r in iv], [[Q(r, S.SC)] for z, r in iv])


def horizontal(n):
    return [[Q(int(a == b)) - Q(int(a//n == b//n), n) -
             Q(int(a % n == b % n), n) + Q(1, n*n)
             for b in range(n*n)] for a in range(n*n)]


def side_extraction(vertical):
    indices = [6*(3+j//3)+j % 3 if vertical else 6*(j//3)+3+j % 3 for j in range(9)]
    return [[Q(int(k == i)) for k in range(36)] for i in indices]


def trig_boxes(angles, terms=128, precision=60):
    cosine, sine, radius = [], [], []
    for [mid], [rad] in zip(angles.mid, angles.rad):
        if abs(mid)/Q(terms+1) > Q(1, 2):
            raise ArithmeticError('signature cis range check failed')
        c, s = S.cisRound(mid, terms, precision)
        cosine.append([Q(c, 2**precision)])
        sine.append([Q(s, 2**precision)])
        radius.append([rad + S.cisRem(mid, terms) + Q(1, 2**precision)])
    return MatrixBox(cosine, radius).rounded(), MatrixBox(sine, radius).rounded()


def prepare_side(phase, jets, x, vertical, sign):
    _, _, terms = signature_data()
    e = MatrixBox.exact(side_extraction(vertical))
    projection = MatrixBox.exact(horizontal(3)).mul(e)
    p = e.mul(phase).rounded()
    angles = MatrixBox.exact([[Q(v) for v in nu] for c, nu in terms]).mul(p).rounded()
    cosine, sine = trig_boxes(angles)
    gradient = MatrixBox.exact([[Q(c*nu[j]) for c, nu in terms] for j in range(9)]).mul(cosine).transpose().rounded()
    signature = MatrixBox.exact([[Q(c) for c, nu in terms]]).mul(sine).rounded()
    arrays = dict(AU=projection.mul(jets['U']).rounded(),
                  AH2=projection.mul(jets['H']).rounded(), AX=projection.mul(x).rounded())
    arrays.update(gU=gradient.mul(arrays['AU']).rounded(),
                  gH2=gradient.mul(arrays['AH2']).rounded(), gX=gradient.mul(arrays['AX']).rounded())
    bounds = {k:frobenius_bound(v) for k,v in arrays.items()}
    bounds['signedCentre'] = Q(sign)*signature.mid[0][0] - signature.rad[0][0]
    return dict(phase=p, angles=angles, cosine=cosine, sine=sine, gradient=gradient, signature=signature), arrays, bounds


def prepare_all(seed, basis):
    b, d = prepare(seed)
    p = phase_box(b, d).rounded()
    boxes, jets = prepare_fourier(seed, basis)
    bounds, terms = prepare_bounds(seed, boxes, jets)
    x = MatrixBox.exact(frozen_normal_basis(basis))
    sides = [prepare_side(p, jets, x, vertical, -seed['o'] if vertical else seed['o']) for vertical in (False, True)]
    stored_p = MatrixBox.exact([[rational(v)] for v in seed['P']])
    stored_u = MatrixBox.exact([[rational(seed['U'][4*i+j]) for j in range(4)] for i in range(36)])
    ep = MatrixBox.exact(horizontal(6)).mul(p).sub(stored_p).rounded()
    eu = jets['U'].sub(stored_u).rounded()
    bounds['epsP'], bounds['epsU'] = frobenius_bound(ep), frobenius_bound(eu)
    r, tau = bounds['r'], bounds['tau']
    margins = []
    for _, _, side in sides:
        eps = side['AU']*r + side['AH2']*r*r/2 + side['AX']*tau
        variation = side['gU']*r + side['gH2']*r*r/2 + side['gX']*tau + 36*eps*eps
        margins.append(side['signedCentre'] - variation)
    nrecord = bounds['beta']*r*r/2 + bounds['x']*tau + bounds['epsP'] + r*bounds['epsU']
    return p, bounds, terms, sides, ep, eu, dict(
        margins=[float(v) for v in margins], nrecord=float(nrecord), n=float(bounds['n']),
        epsP=float(bounds['epsP']), epsU=float(bounds['epsU']),
        accepted=all(v > 0 for v in margins) and nrecord <= bounds['n'])


def main():
    import argparse, gzip, json
    from pathlib import Path
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('certificate', type=Path)
    parser.add_argument('index', type=int)
    parser.add_argument('--basis', type=Path, default=Path('proof/seed_atlas/cert/wholeball_basis.json'))
    args = parser.parse_args()
    opener = gzip.open if args.certificate.suffix == '.gz' else open
    with opener(args.certificate, 'rt') as stream:
        seeds = json.load(stream)['seeds']
    if not 0 <= args.index < len(seeds):
        parser.error('seed index out of range')
    data = prepare_all(seeds[args.index], args.basis)
    print(json.dumps(data[-1], sort_keys=True))


def emit(seed, index, basis, output):
    """Emit side/record leaves and the final wholeBallCheck/hC1 assembly.

    The caller also emits Centre/Gram/Jets/Fourier modules with the same index.
    Stored P, U, and M remain exact rationals, including bits below 2^-60.
    """
    from pathlib import Path
    from wholeball_scalar import (OUTPUT_ROOT, lean_data, write_module, scalar_check)
    from wholeball_matrix import matrix_expr
    from wholeball_gram import box_expr
    output = Path(output).resolve()
    rel = output.relative_to(OUTPUT_ROOT.resolve()).with_suffix('')
    if len(rel.parts) != 1 or not rel.name.isidentifier() or not rel.name.isascii():
        raise ValueError('ball module must be directly in the WholeBall folder')
    p, bounds, terms, sides, ep, eu, summary = prepare_all(seed, basis)
    scalar = dict(bounds=bounds, horizontal=sides[0][2], vertical=sides[1][2])
    if not scalar_check(scalar):
        raise ArithmeticError('complete exact scalar gate rejected this seed')
    b, d = prepare(seed)
    from wholeball_fourier import imaginary_box
    zi = imaginary_box(b, d).rounded()
    name = rel.name
    ns = 'NoFourMUBs.KernelAtlas.WholeBall.'+name
    prelude = 'set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n\nopen Matrix\n\n'
    imports = ('import KernelAtlas.WholeBall.CheckedBall\n'
               f'import KernelAtlas.WholeBall.Jets{index}Norms\n'
               f'import KernelAtlas.WholeBall.Fourier{index}Data\n\n')
    source = imports+prelude+f'namespace {ns}\n\n'
    def box_def(label, box):
        return (f'def {label} : MatrixBox {len(box.mid)} {len(box.mid[0])} := '+box_expr(box)+'\n\n')
    source += box_def('phase', p)+box_def('Zi', zi)+box_def('centreError', ep)+box_def('frameError', eu)
    for side, (centre, norms, _) in zip(('horizontal', 'vertical'), sides):
        for key, box in {**centre, **norms}.items():
            source += box_def(side+key[0].upper()+key[1:], box)
        source += f'def {side}Centre : SideCentreData := {{\n'+',\n'.join(
            f'  {key} := {side}{key[0].upper()+key[1:]}' for key in centre)+',\n  terms := 128, precision := 60 }\n\n'
        source += f'def {side}Norm : SideNormData := {{\n'+',\n'.join(
            f'  {key} := {side}{key[0].upper()+key[1:]}' for key in norms)+' }\n\n'
    source += 'def P : Matrix (Fin 36) (Fin 1) ℚ := '+matrix_expr([[rational(v)] for v in seed['P']])+'\n\n'
    source += 'def V : Matrix (Fin 36) (Fin 4) ℚ := '+matrix_expr(
        [[rational(seed['U'][4*i+j]) for j in range(4)] for i in range(36)])+'\n\n'
    source += 'def scalar : ScalarData := '+lean_data(scalar)+'\n\n'
    source += (f'def data : WholeBallData := {{\n  gram := Gram{index}.data, jets := Jets{index}.data,\n'
               f'  fourier := {{ Zi := Zi, fourier := Fourier{index}.data.fourier }},\n'
               f'  finite := Fourier{index}.data, phase := phase,\n'
               '  horizontal := horizontalCentre, vertical := verticalCentre,\n'
               '  horizontalNorm := horizontalNorm, verticalNorm := verticalNorm,\n'
               '  record := { centreError := centreError, frameError := frameError }, scalar := scalar,\n'
               f'  betaCertificate := Jets{index}.betaCertificate, uCertificate := Jets{index}.uCertificate }}\n\nend {ns}\n')
    write_module(output.parent/(name+'Data.lean'), source)
    stages = {
        'Centre': [('zi_checked', f'(imaginaryCoefficientBox Centre{index}.ball Centre{index}.centre).enclosesCheck data.fourier.Zi'),
                   ('k0_checked', '(data.jets.W.mul data.jets.Z).enclosesCheck data.fourier.fourier.K0'),
                   ('k1_checked', '(data.jets.W.mul data.fourier.Zi).enclosesCheck data.fourier.fourier.K1'),
                   ('s_checked', '((MatrixBox.exact phaseFrequencies).mul data.jets.U).enclosesCheck data.fourier.fourier.S'),
                   ('t_checked', '((MatrixBox.exact phaseFrequencies).mul data.jets.H).enclosesCheck data.fourier.fourier.T'),
                   ('d_checked', '((MatrixBox.exact phaseFrequencies).mul (MatrixBox.exact BasisNorm.matrix)).enclosesCheck data.fourier.fourier.D'),
                   ('phase_checked', f'(centrePhaseBox Centre{index}.ball Centre{index}.centre).enclosesCheck data.phase')],
        'Sides': [('horizontal_centre_checked', 'sideCentreCheck data.phase false data.horizontal'),
                  ('vertical_centre_checked', 'sideCentreCheck data.phase true data.vertical'),
                  ('horizontal_norm_checked', 'sideNormCheck false data.horizontal.gradient data.jets.U data.jets.H BasisNorm.matrix data.horizontalNorm data.scalar.horizontal'),
                  ('vertical_norm_checked', 'sideNormCheck true data.vertical.gradient data.jets.U data.jets.H BasisNorm.matrix data.verticalNorm data.scalar.vertical'),
                  ('horizontal_sign_checked', f'sideSignedCheck data.horizontal Centre{index}.ball.o data.scalar.horizontal.signedCentre'),
                  ('vertical_sign_checked', f'sideSignedCheck data.vertical (-Centre{index}.ball.o) data.scalar.vertical.signedCentre')],
        'Record': [('record_checked', 'recordErrorCheck data.phase data.jets.U P V data.record data.scalar.bounds.epsP data.scalar.bounds.epsU'),
                   ('scalar_checked', 'scalarCheck data.scalar')],
    }
    for suffix, checks in stages.items():
        leaf = f'import KernelAtlas.WholeBall.{name}Data\n\n'+prelude+f'namespace {ns}\n\n'
        leaf += ''.join(f'theorem {label} : {check} = true := by decide +kernel\n\n' for label, check in checks)
        if suffix == 'Centre':
            leaf += (f'theorem fourier_checked : centreFourierCheck Centre{index}.ball Centre{index}.centre BasisNorm.matrix data.jets data.fourier = true := by\n'
                     '  simp only [centreFourierCheck, Bool.and_eq_true]\n'
                     '  exact ⟨⟨⟨⟨⟨zi_checked, k0_checked⟩, k1_checked⟩, s_checked⟩, t_checked⟩, d_checked⟩\n\n')
        write_module(output.parent/(name+suffix+'.lean'), leaf+f'end {ns}\n')
    orientation = '(1 : ℤˣ)' if seed['o'] == 1 else '(-1 : ℤˣ)'
    final = ''.join(f'import KernelAtlas.WholeBall.{name}{suffix}\n' for suffix in stages)
    final += f'import KernelAtlas.WholeBall.Fourier{index}\n\n'+prelude+f'namespace {ns}\n\n'
    for key in ('K0','K1','S','T','D'):
        final += f'theorem link{key} : data.fourier.fourier.{key}.enclosesCheck data.finite.fourier.{key} = true := by decide +kernel\n\n'
    final += f'theorem seedLift_checked : seedLift = Jets{index}.V := by decide +kernel\n\n'
    final += (f'theorem checked : wholeBallCheck Centre{index}.ball Centre{index}.centre Jets{index}.M P V data = true := by\n'
              '  simp only [wholeBallCheck, Bool.and_eq_true]\n'
              f'  refine ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨Centre{index}.checked, Gram{index}.checked⟩, ?_⟩, fourier_checked⟩, linkK0⟩, linkK1⟩, linkS⟩, linkT⟩, linkD⟩,\n'
              f'    Fourier{index}.tensors_checked⟩, Fourier{index}.norms_checked⟩, Fourier{index}.sums_checked⟩, Jets{index}.beta_checked⟩, Jets{index}.u_checked⟩, by decide +kernel⟩,\n'
              '    phase_checked⟩, horizontal_centre_checked⟩, vertical_centre_checked⟩, horizontal_norm_checked⟩, vertical_norm_checked⟩,\n'
              '    horizontal_sign_checked⟩, vertical_sign_checked⟩, record_checked⟩, scalar_checked⟩\n'
            f'  change centreJetCheck Centre{index}.ball Centre{index}.centre BasisNorm.matrix seedLift Jets{index}.M Gram{index}.data Jets{index}.data = true\n'
            f'  simpa only [seedLift_checked] using Jets{index}.checked\n\n'
              'theorem radius_positive : 0 < (data.scalar.bounds.r : ℝ) :=\n'
              '  (scalarCheck_sound scalar_checked).2.2.2.1\n\n'
              '-- Exact stored-data conclusion, ready for SeedBallCert.hC1.\n'
              f'theorem hC1 : ∀ w : Fin 4 → ℝ, SeedAtlas.wnorm w ≤ (data.scalar.bounds.r : ℝ) →\n'
              f'    0 < Step2.seedR (SeedAtlas.seedOf (Seed.th0R Centre{index}.ball + realMatrix Jets{index}.M *ᵥ w)) ∧\n'
              '    ∃ Q : RMat6, ∃ N : Matrix Hadamard6.I6 Hadamard6.I6 ℤ,\n'
              f'      SeedAtlas.RepO {orientation} (SeedAtlas.seedOf (Seed.th0R Centre{index}.ball + realMatrix Jets{index}.M *ᵥ w)) (phaseMat Q) ∧\n'
              '      frob (Q - recordPhase P - SeedAtlas.tang (phaseFrame (realMatrix V)) w - SeedAtlas.wind N) ≤ (data.scalar.bounds.n : ℝ) :=\n'
              f'  wholeBallCheck_sound (o := {orientation})\n'
              '  (by decide +kernel) checked\n\n'
              f'end {ns}\n')
    write_module(output, final)
    write_module(output.parent/(name+'Axioms.lean'),
                 f'import KernelAtlas.WholeBall.{name}\n\n'
                 f'#print axioms {ns}.checked\n'
                 f'#print axioms {ns}.hC1\n')
    return summary


if __name__ == '__main__':
    main()
