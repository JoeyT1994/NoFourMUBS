#!/usr/bin/env python3
"""Emit the kernel-check modules for the strip identities (moment checks)."""
import sys
from pathlib import Path
ROOT = Path(__file__).resolve().parents[2]
USED = [(-4, 2), (-3, 0), (-3, 1), (-3, 2), (-3, 3), (-2, -2), (-2, -1), (-2, 0), (-2, 1), (-2, 2), (-2, 3),
        (-2, 4), (-1, -2), (-1, -1), (-1, 2), (-1, 3), (0, -3), (0, -2), (0, 2), (0, 3), (1, -3), (1, -2),
        (1, 1), (1, 2), (2, -4), (2, -3), (2, -2), (2, -1), (2, 0), (2, 1), (2, 2), (3, -3), (3, -2), (3, -1),
        (3, 0), (4, -2)]


def lp(p):
    return '(' + ', '.join(f'({v})' if v < 0 else str(v) for v in p) + ')'


def moments(case, ns, mod, data_mod):
    ns_ = 'Zero' if case == 'zero' else 'Nonzero'
    L = [f'import NoFourMUBs.PRM.{data_mod}', '',
         f'/-! The combined moments from the formulas agree with the reduced data (kernel checks). -/', '',
         'set_option maxRecDepth 1000000', 'set_option maxHeartbeats 0', '',
         'noncomputable section', '', f'namespace NoFourMUBs.PRM.Coverage.StripId.{ns_}', '',
         'open NoFourMUBs.Kronecker StripMoments', '']
    for i, p in enumerate(USED):
        L.append(f'theorem mom_valid_{i} : qvalidR (mSum {lp(p)} - mD {lp(p)}) {ns} = true := by decide +kernel')
        L.append('')
    L.append(f'theorem mom_valid {{p : ℤ × ℤ}} (hp : p ∈ usedMoments) : qvalidR (mSum p - mD p) {ns} = true := by')
    L.append('  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp')
    L.append('  rcases hp with ' + ' | '.join(['rfl'] * len(USED)))
    L.append('  exacts [' + ', '.join(f'mom_valid_{i}' for i in range(len(USED))) + ']')
    L.append('')
    L.append(f'end NoFourMUBs.PRM.Coverage.StripId.{ns_}')
    (ROOT / f'NoFourMUBs/PRM/{mod}.lean').write_text('\n'.join(L) + '\n')




def nonzero_stage():
    """Kernel checks of the staged half data (λ's, products, half moments, combination)."""
    hdr = lambda imp: ['import NoFourMUBs.PRM.' + imp, '', '/-! Kernel checks of the staged nonzero-`J` half data. -/', '',
                       'set_option maxRecDepth 1000000', 'set_option maxHeartbeats 0', '', 'noncomputable section', '',
                       'namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero', '',
                       'open NoFourMUBs.Kronecker StripMoments', '']
    ins = {'A': '1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6)', 'B': '(-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9)'}
    zs = {'A': 'qzA', 'B': 'qzB'}
    L = hdr('CoverageStripIdNonzeroStage')
    for H in 'AB':
        for i in range(6):
            L.append(f'theorem lam{H}_valid_{i} : qvalidD (lamS {ins[H]} {i} - lam{H} {i}) = true := by decide +kernel')
        L.append(f'theorem lam{H}_valid (i : ℕ) (hi : i < 6) : qvalidD (lamS {ins[H]} i - lam{H} i) = true := by')
        L.append('  interval_cases i')
        L.append('  exacts [' + ', '.join(f'lam{H}_valid_{i}' for i in range(6)) + ']')
        L.append('')
        for i in range(12):
            L.append(f'theorem fld{H}_valid_{i} : qvalidD (fldS lam{H} {zs[H]} {i} - fld{H} {i}) = true := by decide +kernel')
        L.append(f'theorem fld{H}_valid (i : ℕ) (hi : i < 12) : qvalidD (fldS lam{H} {zs[H]} i - fld{H} i) = true := by')
        L.append('  interval_cases i')
        L.append('  exacts [' + ', '.join(f'fld{H}_valid_{i}' for i in range(12)) + ']')
        L.append('')
    L.append('end NoFourMUBs.PRM.Coverage.StripId.Nonzero')
    (ROOT / 'NoFourMUBs/PRM/CoverageStripIdNonzeroCheckH.lean').write_text('\n'.join(L) + '\n')
    halves = {'A': 'halfOf 1 qX 1 qY QF.z qR fldA', 'B': 'halfOf (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) fldB'}
    for H in 'AB':
        L = hdr('CoverageStripIdNonzeroStage')
        for i, p in enumerate(USED):
            L.append(f'theorem mom{H}_valid_{i} : qvalidD (({halves[H]}).mom {lp(p)} - mom{H} {lp(p)}) = true := by')
            L.append('  decide +kernel')
            L.append('')
        L.append(f'theorem mom{H}_valid {{p : ℤ × ℤ}} (hp : p ∈ usedMoments) :')
        L.append(f'    qvalidD (({halves[H]}).mom p - mom{H} p) = true := by')
        L.append('  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp')
        L.append('  rcases hp with ' + ' | '.join(['rfl'] * len(USED)))
        L.append('  exacts [' + ', '.join(f'mom{H}_valid_{i}' for i in range(len(USED))) + ']')
        L.append('')
        L.append('end NoFourMUBs.PRM.Coverage.StripId.Nonzero')
        (ROOT / f'NoFourMUBs/PRM/CoverageStripIdNonzeroCheckM{H}.lean').write_text('\n'.join(L) + '\n')
    L = hdr('CoverageStripIdNonzeroStage')
    for i, p in enumerate(USED):
        L.append(f'theorem comb_valid_{i} : qvalidD (momA {lp(p)} + momB {lp(p)} - mD {lp(p)}) = true := by decide +kernel')
    L.append('theorem comb_valid {p : ℤ × ℤ} (hp : p ∈ usedMoments) : qvalidD (momA p + momB p - mD p) = true := by')
    L.append('  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp')
    L.append('  rcases hp with ' + ' | '.join(['rfl'] * len(USED)))
    L.append('  exacts [' + ', '.join(f'comb_valid_{i}' for i in range(len(USED))) + ']')
    L.append('')
    L.append('end NoFourMUBs.PRM.Coverage.StripId.Nonzero')
    (ROOT / 'NoFourMUBs/PRM/CoverageStripIdNonzeroCheckC.lean').write_text('\n'.join(L) + '\n')


if __name__ == '__main__':
    if sys.argv[1] == 'zero':
        moments('zero', 1, 'CoverageStripIdZeroCheckM', 'CoverageStripIdZeroData')
    elif sys.argv[1] == 'nonzero_stage':
        nonzero_stage()
