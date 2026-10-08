import CriticalBlockInvariant

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace CriticalStripMoments20261003
open Mub6 Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase GlobalCornerDomain
open CriticalPhysical20261003 CriticalRowSum20261003
open scoped BigOperators
noncomputable section

/-- The literal sum over all twenty distinct, unordered column triples. -/
def squareSum (H : CompactCover.Mat6) : ℝ :=
  ∑ c : Fin 20, (-(signedInvariant (stripCorner H c))^2).re

def complexSquareSum (H : CompactCover.Mat6) : ℂ :=
  ∑ c : Fin 20, -(signedInvariant (stripCorner H c))^2

theorem squareSum_nonnegative (H : CompactCover.Mat6) : 0 ≤ squareSum H :=
  Finset.sum_nonneg (fun _ _ => negative_square_nonnegative _)

theorem complexSquareSum_real (H : CompactCover.Mat6) :
    complexSquareSum H = (squareSum H : ℂ) := by
  apply Complex.ext
  · simp [complexSquareSum,squareSum]
  · simp [complexSquareSum,pow_two,Complex.mul_im,signedInvariant_re]

/-- Each literal phase-block invariant vanishes on the actual all-critical
strip. Singular blocks, zero correlations and every closed boundary remain. -/
theorem allCritical_invariant_zero {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) : signedInvariant (stripCorner H c)=0 := by
  have hr := allCritical_selected_R_zero hH (triples c) (strip_triples_injective c)
  change CriticalScalarReduction20261003.R (sideP (stripCorner H c))
    (sideJ (stripCorner H c)) (sideW (stripCorner H c))=0 at hr
  have hb := invariant_square_scalar (stripCorner H c)
    (fun i j => hH.1.1.1 (front i) (triples c j))
    (fun j => hH.1.2.1 (triples c j))
  rw [hr,negative_square_re] at hb
  have hi : (signedInvariant (stripCorner H c)).im=0 := by nlinarith [sq_nonneg (signedInvariant (stripCorner H c)).im]
  apply Complex.ext
  · exact signedInvariant_re _
  · exact hi

theorem allCritical_squareSum_zero {H : CompactCover.Mat6} (hH : AllCritical H) :
    squareSum H=0 := by
  simp [squareSum,allCritical_invariant_zero hH]

theorem allCritical_complexSquareSum_zero {H : CompactCover.Mat6} (hH : AllCritical H) :
    complexSquareSum H=0 := by
  rw [complexSquareSum_real,allCritical_squareSum_zero hH]
  norm_num

end
#print axioms squareSum_nonnegative
#print axioms complexSquareSum_real
#print axioms allCritical_invariant_zero
#print axioms allCritical_squareSum_zero
#print axioms allCritical_complexSquareSum_zero
end CriticalStripMoments20261003
