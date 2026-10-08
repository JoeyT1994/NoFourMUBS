import CriticalStripSquareSum

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace CriticalStripMoments20261003
open Mub6 Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase GlobalCornerDomain
open CriticalPhysical20261003 CriticalRowSum20261003
open scoped BigOperators
noncomputable section

/-- Only the twenty corners of the selected row strip are required here. -/
def StripAllCritical (H : CompactCover.Mat6) : Prop :=
  NormalizedCarrier H ∧ ∀ c : Fin 20,
    CriticalScalarReduction20261003.R (sideP (stripCorner H c))
      (sideJ (stripCorner H c)) (sideW (stripCorner H c))=0

theorem allCritical_stripAllCritical {H : CompactCover.Mat6} (hH : AllCritical H) :
    StripAllCritical H := by
  refine ⟨hH.1,fun c => ?_⟩
  exact allCritical_selected_R_zero hH (triples c) (strip_triples_injective c)

theorem stripAllCritical_squareSum_zero {H : CompactCover.Mat6}
    (hH : StripAllCritical H) : squareSum H=0 := by
  apply Finset.sum_eq_zero
  intro c _
  rw [invariant_square_scalar (stripCorner H c)
    (fun i j => hH.1.1.1 (front i) (triples c j))
    (fun j => hH.1.2.1 (triples c j)),hH.2 c]

theorem stripAllCritical_complexSquareSum_zero {H : CompactCover.Mat6}
    (hH : StripAllCritical H) : complexSquareSum H=0 := by
  rw [complexSquareSum_real,stripAllCritical_squareSum_zero hH]
  norm_num

end
#print axioms allCritical_stripAllCritical
#print axioms stripAllCritical_squareSum_zero
#print axioms stripAllCritical_complexSquareSum_zero
end CriticalStripMoments20261003
