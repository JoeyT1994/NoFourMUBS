"""Write only the missing finite-coordinate endpoint adapter.

Reuse the existing cube-root enumeration and Fourier constant.  No atlas,
matrix witness, root isolation, or large polynomial array is generated.
"""
from pathlib import Path
import hashlib
import json
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
OUT = ROOT / 'lean/NoFourMUBs/Step2/CriticalZero'
BASE = 'NoFourMUBs.Step2.CriticalZero.'
NS = 'NoFourMUBs.Step2.Critical.Equicorrelation'


def main():
    require_reuse_review('critical_equicorrelation_endpoint')
    review = json.loads((AUDIT / 'CRITICAL_EQUICORRELATION_REUSE_REVIEW.json').read_text())
    for p, h in review['source_pins'].items():
        assert hashlib.sha256((ROOT / p).read_bytes()).hexdigest() == h
    text = '''import NoFourMUBs.Reuse.Archive.FourierSide
import NoFourMUBs.Reuse.Archive.SideFourierElementaryRoots

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace ''' + NS + '''
open Hadamard6Extensions.FourierSide
open StrictReconstruction20261007.ElementaryFourier

/-- Exact possible squared lengths of the sum of two equal-cube unit numbers. -/
theorem two_cube_norms (x y : ℂ) (hx : Complex.normSq x = 1)
    (hxy : x ^ 3 = y ^ 3) :
    Complex.normSq (x + y) = 1 ∨ Complex.normSq (x + y) = 4 := by
  have hw := reconstructionOmega_unit_quadratic.2
  have hs : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  rcases cube_roots_are_modes hw hxy.symm with hy | hy | hy
'''
    modes = ['1', 'reconstructionOmega', 'reconstructionOmega ^ 2']
    for j, mode in enumerate(modes):
        value = 4 if j == 0 else 1
        text += f'''  · {'right' if j == 0 else 'left'}
    rw [hy]
    calc
      _ = Complex.normSq (x * (1 + {mode})) := congrArg Complex.normSq (by ring)
      _ = {value} := by
        rw [Complex.normSq_mul, hx, one_mul]
        try simp only [omega_sq hw]
        norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
          Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
'''
    text += '''
/-- Three equal-cube unit numbers either coincide, have one repeated value,
or exhaust the three roots.  The existing mode theorem covers all cases. -/
theorem three_cube_norms (x y z : ℂ) (hx : Complex.normSq x = 1)
    (hxy : x ^ 3 = y ^ 3) (hxz : x ^ 3 = z ^ 3) :
    Complex.normSq (x + y + z) = 0 ∨
      Complex.normSq (x + y + z) = 3 ∨ Complex.normSq (x + y + z) = 9 := by
  have hw := reconstructionOmega_unit_quadratic.2
  have hs : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  rcases cube_roots_are_modes hw hxy.symm with hy | hy | hy
'''
    for i, m in enumerate(modes):
        text += '  · rcases cube_roots_are_modes hw hxz.symm with hz | hz | hz\n'
        for j, n in enumerate(modes):
            value = 9 if i == j == 0 else (0 if {i, j} == {1, 2} else 3)
            choice = {0: 'left', 3: 'right; left', 9: 'right; right'}[value]
            text += f'''    · {choice}
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + {m} + {n})) :=
          congrArg Complex.normSq (by ring)
        _ = {value} := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
'''
    text += '\nend ' + NS + '\n'
    path = OUT / 'EquicorrelationCubeSums.lean'
    assert not path.exists(), path
    path.write_text(text)
    print(path.relative_to(ROOT))


if __name__ == '__main__':
    main()
