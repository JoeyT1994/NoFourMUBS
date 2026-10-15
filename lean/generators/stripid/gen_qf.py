#!/usr/bin/env python3
"""Emit NoFourMUBs/PRM/CoverageStripIdQF.lean: the moment formulas over `QF` (copies of
`newtonHalf`, `HalfData.mom` and `momentPoly`, whose agreement with the originals is proved in Lean)."""
from pathlib import Path
ROOT = Path(__file__).resolve().parents[2]
src = (ROOT / 'NoFourMUBs/PRM/CoverageStripMomentData.lean').read_text()
body = src[src.index('def momentPoly (M : ℤ × ℤ → ℂ) : ℂ :=') + len('def momentPoly (M : ℤ × ℤ → ℂ) : ℂ :='):
           src.index('/-- The sum over ordered')].rstrip()
tmpl = (Path(__file__).parent / 'qf_template.lean').read_text()
out = tmpl.replace('@@MOMENTPOLY@@', body)
(ROOT / 'NoFourMUBs/PRM/CoverageStripIdQF.lean').write_text(out)
print('wrote', len(out))
