import CanonicalCorners

set_option autoImplicit false
set_option maxRecDepth 1000
set_option maxHeartbeats 1000000
namespace Mub6.Classification.GlobalCornerDomain
open Mub6 Mub6.Numerical Matrix
open Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
noncomputable section

/-- Normalization only. No determinant threshold or reconstruction premise. -/
def NormalizedCarrier (H : CompactCover.Mat6) : Prop :=
  PhaseHadamard H ∧ (∀ j, H 0 j = 1) ∧ (∀ i, H i 0 = 1)

/-- The leading corner maximizes R over every ordered positional corner.
This predicate deliberately does not require good-side eligibility. -/
def GlobalMax (H : CompactCover.Mat6) : Prop :=
  NormalizedCarrier H ∧ ∀ p q : Perm, score (candidate H p q) ≤ score H

theorem candidate_normalized {H : CompactCover.Mat6} (hH : PhaseHadamard H)
    (p q : Perm) : NormalizedCarrier (candidate H p q) :=
  ⟨normalizeCarrier_PhaseHadamard (submatrix_hadamard hH p q),
    normalizeCarrier_first_row (submatrix_hadamard hH p q),
    normalizeCarrier_first_column (submatrix_hadamard hH p q)⟩

end
end Mub6.Classification.GlobalCornerDomain
#print axioms Mub6.Classification.GlobalCornerDomain.candidate_normalized
