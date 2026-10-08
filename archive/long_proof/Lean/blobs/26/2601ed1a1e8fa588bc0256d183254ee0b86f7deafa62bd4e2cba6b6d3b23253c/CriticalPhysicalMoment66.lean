import CriticalMomentReduction
import CriticalOrderedSquareSum

set_option autoImplicit false
namespace CriticalStripMoments20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain
open CriticalLaurent20261003
noncomputable section

theorem normalized_orthogonalMoments {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) : OrthogonalMoments (stripMoment H) :=
  ⟨stripMoment_zero_zero H,stripMoment_six_zeros hH⟩

/-- The explicit 66-term equation on the two actual complete phase rows.
Only the actual all-corner critical condition and normalized Hadamard carrier
are assumed; no rational parameter substitution has yet been performed. -/
theorem allCritical_momentPolynomial66_zero {H : CompactCover.Mat6}
    (hH : AllCritical H) : momentPolynomial66 (stripMoment H)=0 := by
  rw [← moment_quadratic_reduction (stripMoment H) (normalized_orthogonalMoments hH.1)]
  exact allCritical_moment_quadratic_zero hH

end
#print axioms normalized_orthogonalMoments
#print axioms allCritical_momentPolynomial66_zero
end CriticalStripMoments20261003
