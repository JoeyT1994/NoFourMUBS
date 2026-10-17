#!/usr/bin/env python3
"""Emit the kernel-check module of the zero-`J` strip identity (moment checks)."""
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
    ns_ = 'Zero'
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



if __name__ == '__main__':
    if sys.argv[1] == 'zero':
        moments('zero', 1, 'CoverageStripIdZeroCheckM', 'CoverageStripIdZeroData')
