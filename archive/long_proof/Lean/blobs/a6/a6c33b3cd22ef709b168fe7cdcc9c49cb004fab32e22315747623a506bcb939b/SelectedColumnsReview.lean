import GlobalCornerSelectedColumns

set_option autoImplicit false
namespace SelectedColumnsIndependentReview20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker
open CanonicalCorners GlobalCornerDomain

/-- Literal raw columns, with every orientation and each back-column choice
retained. The only combinatorial premise is distinct seed columns. -/
theorem actual_selected_columns {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (j k ℓ : Fin 3) (hjk : j ≠ k) :
    (ShoulderPhaseGate20261002.radicand
      ((oriented vertical H) 1 (front j) + (oriented vertical H) 1 (front k) +
        (oriented vertical H) 1 (back ℓ))
      ((oriented vertical H) 2 (front j) + (oriented vertical H) 2 (front k) +
        (oriented vertical H) 2 (back ℓ))
      (ShoulderPhaseGate20261002.overlap
        ((oriented vertical H) 1 (front j)) ((oriented vertical H) 1 (front k))
        ((oriented vertical H) 1 (back ℓ)) ((oriented vertical H) 2 (front j))
        ((oriented vertical H) 2 (front k)) ((oriented vertical H) 2 (back ℓ)))).re ≤ score H :=
  globalMax_seedPairBack_radicand hH vertical j k ℓ hjk

/-- Repeated seed columns cannot satisfy the injection hypothesis. -/
theorem repeated_columns_rejected (j ℓ : Fin 3) :
    ¬ Function.Injective (seedPairBack j j ℓ) := by
  intro h
  have he : (0 : Fin 3) = 1 := h (by simp [seedPairBack])
  exact (by decide : (0 : Fin 3) ≠ 1) he

#print axioms actual_selected_columns
#print axioms repeated_columns_rejected
#print Mub6.Classification.GlobalCornerDomain.globalMax_raw_candidate_sideScore
#print Mub6.Classification.GlobalCornerDomain.globalMax_seedPairBack_radicand
end SelectedColumnsIndependentReview20261003
