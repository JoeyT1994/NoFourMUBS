import GlobalCornerPhysical

/-! Independent expected-type checks for the other author's global corner
bridge. These checks do not instantiate the remaining global exclusions. -/
set_option autoImplicit false
namespace GlobalAssemblyDomainReview20261003
open Mub6 Mub6.Numerical Mub6.Classification Matrix
open GlobalCornerDomain CanonicalCorners CompactCover FourierSeedBinding
open GoodMinor FourPhaseWorker
noncomputable section

example (B : Fin 4 → BasisMatrix) (hB : IsMUBQuartet B) :
    ∃ H : CompactCover.Mat6,
      PhaseHadamard H ∧ (∀ j, H 0 j = 1) ∧ (∀ i, H i 0 = 1) ∧
      (∀ p q : Perm, score (candidate H p q) ≤ score H) ∧
      OccursAsQuartetEdge (normalizedNumerical H) := by
  obtain ⟨H,hH,ho⟩ := quartet_has_globalMax B hB
  exact ⟨H,hH.1.1,hH.1.2.1,hH.1.2.2,hH.2,ho⟩

example {H : CompactCover.Mat6} (hH : PhaseHadamard H)
    (hr : ∀ j, H 0 j = 1) (hc : ∀ i, H i 0 = 1) :
    0 ≤ score H := normalized_score_nonneg ⟨hH,hr,hc⟩

example {H : CompactCover.Mat6} (hH : PhaseHadamard H)
    (hr : ∀ j, H 0 j = 1) (hc : ∀ i, H i 0 = 1)
    (hm : ∀ p q : Perm, score (candidate H p q) ≤ score H)
    (hz : score H = 0) : ∀ p q : Perm, score (candidate H p q) = 0 :=
  globalZero_all_corners_zero ⟨⟨⟨hH,hr,hc⟩,hm⟩,hz⟩

example {H : CompactCover.Mat6} :
    GlobalZero H ↔
      NormalizedCarrier H ∧ ∀ p q : Perm, score (candidate H p q) = 0 :=
  globalZero_iff_allCritical

example {H : CompactCover.Mat6} (hH : PhaseHadamard H)
    (hr : ∀ j, H 0 j = 1) (hc : ∀ i, H i 0 = 1)
    (hm : ∀ p q : Perm, score (candidate H p q) ≤ score H)
    (hp : 0 < score H) :
    southeast H = -(southwest H *
      (ShoulderSeedCompletion20261002.seedGram (northwest H))⁻¹ *
      (northwest H)ᴴ * northeast H) :=
  globalStrict_actual_seed_completion ⟨⟨⟨hH,hr,hc⟩,hm⟩,hp⟩

example {H : CompactCover.Mat6} (hH : PhaseHadamard H)
    (hr : ∀ j, H 0 j = 1) (hc : ∀ i, H i 0 = 1) :
    ShoulderActualSide20261002.SideGate (northwest H) (northeast H) ∧
    ShoulderActualSide20261002.SideGate (northwest H)ᵀ (southwest H)ᵀ :=
  ⟨normalized_actual_horizontal_gate ⟨hH,hr,hc⟩,
    normalized_actual_vertical_gate ⟨hH,hr,hc⟩⟩

#print axioms quartet_has_globalMax
#print axioms globalMax_positional400
#print axioms globalMax_trailing
#print axioms normalized_score_matrixRadicand
#print axioms normalized_score_nonneg
#print axioms globalZero_iff_allCritical
#print axioms globalStrict_seedGram_unit
#print axioms globalStrict_actual_seed_completion
#print axioms normalized_strict_side_det_nonzero
#print axioms normalized_actual_horizontal_gate
#print axioms normalized_actual_vertical_gate
#print axioms all_global_roots_closed_noFour
#print noFour_of_globalStrict_and_allCritical
#print all_global_roots_closed_noFour
end
end GlobalAssemblyDomainReview20261003
