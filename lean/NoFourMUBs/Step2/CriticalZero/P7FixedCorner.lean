import NoFourMUBs.Step2.CriticalZero.EquicorrelationNormalized

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.P7
open Matrix CriticalStripMoments20261003

/-- Columns 0,3,5 of the original normalized p=7 strip are independent of
its free unit parameter. Their signed invariant is already nonzero. -/
theorem fixed_corner_value :
    signedExpression 1 (-1) Complex.I 1 Complex.I (-Complex.I) =
      -16 * Complex.I := by
  apply Complex.ext <;>
    norm_num [signedExpression, phaseExpression, FourierPhysicalSide.permanent,
      Complex.star_def, pow_succ, Complex.mul_re, Complex.mul_im,
      Complex.div_re, Complex.div_im, Complex.normSq_apply]

def cols : Fin 3 → Fin 6 := ![0, 3, 5]

theorem cols_injective : Function.Injective cols := by decide

/-- Only four fixed entries of the written p=7 normal form are needed.
The twenty-corner Laurent square sum is unnecessary for its exclusion.
Obtaining this normal form from scalar p=7 data remains an upstream step. -/
theorem normalized_strip_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H)
    (h13 : H 1 3 = -1) (h15 : H 1 5 = Complex.I)
    (h23 : H 2 3 = Complex.I) (h25 : H 2 5 = -Complex.I) : False := by
  have hs := Equicorrelation.selected_signed_zero hH front cols
    front_injective cols_injective
  rw [normalized_invariant _ (fun l => hH.1.2.1 (cols l))] at hs
  change signedExpression (H 1 0) (H 1 3) (H 1 5)
    (H 2 0) (H 2 3) (H 2 5) = 0 at hs
  rw [hH.1.2.2 1, h13, h15, hH.1.2.2 2, h23, h25, fixed_corner_value] at hs
  have hi := congrArg Complex.im hs
  norm_num at hi

end NoFourMUBs.Step2.Critical.P7
