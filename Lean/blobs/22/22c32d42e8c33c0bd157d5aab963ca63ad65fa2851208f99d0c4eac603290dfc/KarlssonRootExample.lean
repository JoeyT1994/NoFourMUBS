import KarlssonLocalRoots

namespace Mub6.Classification.KarlssonCover
open Complex Mub6.Numerical Mub6.Numerical.IntervalKernel
noncomputable section

/-- Squared phases straddle the principal-root cut at -1. A single local root
box around i covers a gauge representative on both sides of the cut. -/
def cutCrossing : RationalRectangle := ⟨-1,-9999/10000,-1/1000,1/1000⟩

theorem cut_crossing_root_enclosure {z : ℂ} (hz : normSq z=1)
    (hbox : MemRectangle cutCrossing (z^2)) :
    ∃ w : ℂ, w^2=z^2 ∧ normSq w=1 ∧ MemRectangle (rootBox 0 1 (1/1000)) w := by
  apply root_from_squared_box hz hbox
  · norm_num
  · norm_num
  · norm_num [rootResidual,cutCrossing,boxNormSq,boxSub,boxAdd,boxNeg,boxMul,boxPoint,
      rectangle,reInterval,imInterval,point,add,neg,sub,mul,square]

#print axioms cut_crossing_root_enclosure

/-- The exact same input rejects an insufficient claimed radius. -/
theorem too_small_radius_rejected :
    ¬ ((rootResidual cutCrossing 0 1).hi ≤ 2*(1/10000 : ℚ)^2) := by
  norm_num [rootResidual,cutCrossing,boxNormSq,boxSub,boxAdd,boxNeg,boxMul,boxPoint,
    rectangle,reInterval,imInterval,point,add,neg,sub,mul,square]

#print axioms too_small_radius_rejected
end
end Mub6.Classification.KarlssonCover
