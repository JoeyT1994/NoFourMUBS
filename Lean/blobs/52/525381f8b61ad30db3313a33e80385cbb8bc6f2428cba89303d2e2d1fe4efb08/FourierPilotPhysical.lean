import FourierPilotChecks
import PhysicalGraph
import FourierGraphProofBatch0000
import FourierGraphProofBatch0000
import FourierGraphProofBatch0000
import FourierGraphProofBatch0000
import FourierGraphProofBatch0000
import FourierGraphProofBatch0001
import ReuseBoundaryTransport
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem all_orth_rows : ∀ i j : Fin 48,
    i = j ∨ O i j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes i) (zBoxes j) = false := by
  intro i j
  fin_cases i
  · exact orth_row_0 j
  · exact orth_row_1 j
  · exact orth_row_2 j
  · exact orth_row_3 j
  · exact orth_row_4 j
  · exact orth_row_5 j
  · exact orth_row_6 j
  · exact orth_row_7 j
  · exact orth_row_8 j
  · exact orth_row_9 j
  · exact orth_row_10 j
  · exact orth_row_11 j
  · exact orth_row_12 j
  · exact orth_row_13 j
  · exact orth_row_14 j
  · exact orth_row_15 j
  · exact orth_row_16 j
  · exact orth_row_17 j
  · exact orth_row_18 j
  · exact orth_row_19 j
  · exact orth_row_20 j
  · exact orth_row_21 j
  · exact orth_row_22 j
  · exact orth_row_23 j
  · exact orth_row_24 j
  · exact orth_row_25 j
  · exact orth_row_26 j
  · exact orth_row_27 j
  · exact orth_row_28 j
  · exact orth_row_29 j
  · exact orth_row_30 j
  · exact orth_row_31 j
  · exact orth_row_32 j
  · exact orth_row_33 j
  · exact orth_row_34 j
  · exact orth_row_35 j
  · exact orth_row_36 j
  · exact orth_row_37 j
  · exact orth_row_38 j
  · exact orth_row_39 j
  · exact orth_row_40 j
  · exact orth_row_41 j
  · exact orth_row_42 j
  · exact orth_row_43 j
  · exact orth_row_44 j
  · exact orth_row_45 j
  · exact orth_row_46 j
  · exact orth_row_47 j
theorem all_unbiased_rows : ∀ i j : Fin 48,
    i = j ∨ U i j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes i) (zBoxes j) = false := by
  intro i j
  fin_cases i
  · exact unbiased_row_0 j
  · exact unbiased_row_1 j
  · exact unbiased_row_2 j
  · exact unbiased_row_3 j
  · exact unbiased_row_4 j
  · exact unbiased_row_5 j
  · exact unbiased_row_6 j
  · exact unbiased_row_7 j
  · exact unbiased_row_8 j
  · exact unbiased_row_9 j
  · exact unbiased_row_10 j
  · exact unbiased_row_11 j
  · exact unbiased_row_12 j
  · exact unbiased_row_13 j
  · exact unbiased_row_14 j
  · exact unbiased_row_15 j
  · exact unbiased_row_16 j
  · exact unbiased_row_17 j
  · exact unbiased_row_18 j
  · exact unbiased_row_19 j
  · exact unbiased_row_20 j
  · exact unbiased_row_21 j
  · exact unbiased_row_22 j
  · exact unbiased_row_23 j
  · exact unbiased_row_24 j
  · exact unbiased_row_25 j
  · exact unbiased_row_26 j
  · exact unbiased_row_27 j
  · exact unbiased_row_28 j
  · exact unbiased_row_29 j
  · exact unbiased_row_30 j
  · exact unbiased_row_31 j
  · exact unbiased_row_32 j
  · exact unbiased_row_33 j
  · exact unbiased_row_34 j
  · exact unbiased_row_35 j
  · exact unbiased_row_36 j
  · exact unbiased_row_37 j
  · exact unbiased_row_38 j
  · exact unbiased_row_39 j
  · exact unbiased_row_40 j
  · exact unbiased_row_41 j
  · exact unbiased_row_42 j
  · exact unbiased_row_43 j
  · exact unbiased_row_44 j
  · exact unbiased_row_45 j
  · exact unbiased_row_46 j
  · exact unbiased_row_47 j
def allSmallBoxCheck : Bool := decide (∀ v : Fin 48,
  IntervalKernel.smallBoxCheck (boxes v) = true)
theorem all_small_box_check : allSmallBoxCheck = true := by decide +kernel
theorem all_boxes_small : ∀ v : Fin 48,
    IntervalKernel.smallBoxCheck (boxes v) = true :=
  of_decide_eq_true all_small_box_check
theorem boxes_small : ∀ v : Fin 48, IsSmallRayBox (boxes v) :=
  fun v => IntervalKernel.smallBoxCheck_sound (all_boxes_small v)
theorem sound_stored_graph : SoundRayGraph boxes O U := by
  constructor
  · intro i j z w hzu hwu hz hw ho
    rcases all_orth_rows i j with heq | hedge | hno
    · subst j
      exact False.elim ((same_ray_box_separation hzu hwu (boxes_small i) hz hw).1 ho)
    · exact hedge
    · have hyes := IntegerIntervals.orthPossible_sound (S := scale) (by decide) hz hw ho
      rw [hno] at hyes
      cases hyes
  · intro i j z w hzu hwu hz hw ho
    rcases all_unbiased_rows i j with heq | hedge | hno
    · subst j
      exact False.elim ((same_ray_box_separation hzu hwu (boxes_small i) hz hw).2 ho)
    · exact hedge
    · have hyes := IntegerIntervals.unbiasedPossible_sound (S := scale) (by decide) hz hw ho
      rw [hno] at hyes
      cases hyes
theorem no_raw_five_pair_of_cover {H : BasisMatrix}
    (hcover : CompleteRayCover H boxes) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w :=
  checked_pair_excludes_raw_five_pair hcover boxes_small sound_stored_graph
    pairCert pair_refutation_checks
theorem no_raw_five_pair_of_uniform_cover
    (hcover : CompleteUniformRayCover carrier boxes) {H : BasisMatrix}
    (hH : PhaseHadamard H) (hE : CarrierBox carrier H) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w :=
  no_raw_five_pair_of_cover (hcover H hH hE)

/-- Normalization bridge for the literal carrier first row. -/
theorem raw_of_scaled {H : BasisMatrix} (hrow : ∀ j, H 0 j = 1) :
    rawCarrierOfFlatBasis (phaseScale (Real.sqrt 6)⁻¹ H) = H := by
  have hs : (Real.sqrt 6 : ℂ) ≠ 0 := by
    exact_mod_cast (show Real.sqrt 6 ≠ 0 by positivity)
  funext i j
  simp only [rawCarrierOfFlatBasis,phaseScale,hrow j,mul_one,Complex.ofReal_inv]
  field_simp [hs]

theorem remaining_basis_indices : ∀ a b : Fin 4, a ≠ b →
    ∃ c d : Fin 4, a ≠ c ∧ a ≠ d ∧ b ≠ c ∧ b ≠ d ∧ c ≠ d := by
  decide +kernel

theorem identity_unbiased_flat {B : BasisMatrix}
    (h : IsUnbiased identityBasis B) :
    ∀ j, IsNormalizedFlatRay (fun r => B r j) := by
  intro j r
  have he := h r j
  change Complex.normSq (overlap identityBasis B r j) = (1 : ℝ) / 6 at he
  rw [overlap_identity_left] at he
  exact he

/-- Exact same physical no-quartet endpoint, without importing the unrelated
Karlsson job classification into this fixed-carrier graph certificate. -/
theorem exclude_occurs_of_cover (hcover : CompleteUniformRayCover carrier boxes)
    {H : BasisMatrix} (hrow : ∀ j, H 0 j = 1) (hE : CarrierBox carrier H) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) := by
  intro ho
  obtain ⟨B,hB,a,b,hab,ha,hb⟩ :=
    (occursAsQuartetEdge_iff_extendsStandardPair _).mp ho
  obtain ⟨c,d,hac,had,hbc,hbd,hcd⟩ := remaining_basis_indices a b hab
  have hfB := identity_unbiased_flat (ha ▸ hB.2 a b hab)
  have hfC := identity_unbiased_flat (ha ▸ hB.2 a c hac)
  have hfD := identity_unbiased_flat (ha ▸ hB.2 a d had)
  have hraw : rawCarrierOfFlatBasis (B b) = H := by
    rw [hb]
    exact raw_of_scaled hrow
  exact checked_uniform_pair_excludes_normalized_flat_bases
    hcover boxes_small sound_stored_graph pairCert pair_refutation_checks
    (hB.1 b) (hB.1 c) (hB.1 d) hfB hfC hfD
    (hB.2 b c hbc) (hB.2 b d hbd) (hB.2 c d hcd) (hraw.symm ▸ hE)

#print axioms all_orth_rows
#print axioms all_unbiased_rows
#print axioms all_small_box_check
#print axioms all_boxes_small
#print axioms boxes_small
#print axioms sound_stored_graph
#print axioms no_raw_five_pair_of_cover
#print axioms no_raw_five_pair_of_uniform_cover
#print axioms raw_of_scaled
#print axioms remaining_basis_indices
#print axioms identity_unbiased_flat
#print axioms exclude_occurs_of_cover
end FourierPilot

#print axioms FourierPilot.all_orth_rows
#print axioms FourierPilot.all_unbiased_rows
#print axioms FourierPilot.all_small_box_check
#print axioms FourierPilot.all_boxes_small
#print axioms FourierPilot.boxes_small
#print axioms FourierPilot.sound_stored_graph
#print axioms FourierPilot.no_raw_five_pair_of_cover
#print axioms FourierPilot.no_raw_five_pair_of_uniform_cover
#print axioms FourierPilot.raw_of_scaled
#print axioms FourierPilot.remaining_basis_indices
#print axioms FourierPilot.identity_unbiased_flat
#print axioms FourierPilot.exclude_occurs_of_cover
