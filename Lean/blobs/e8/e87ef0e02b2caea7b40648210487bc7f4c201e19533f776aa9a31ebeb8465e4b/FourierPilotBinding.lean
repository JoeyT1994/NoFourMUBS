import FourierPilotChecks
import PhysicalGraph
import FourierPilotRows0000
import FourierPilotRows0008
import FourierPilotRows0016
import FourierPilotRows0024
import FourierPilotRows0032
import FourierPilotRows0040
import IntegratedCertificateConsumer
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
theorem standard_first_row :
    Mub6.Classification.KarlssonLedger.StandardFirstRow carrier := by
  unfold Mub6.Classification.KarlssonLedger.StandardFirstRow
  decide +kernel
theorem exclude_of_cover (hcover : CompleteUniformRayCover carrier boxes) :
    Mub6.Classification.KarlssonLedger.CarrierExcluded carrier :=
  Mub6.Classification.KarlssonLedger.Integrated.semantic_carrier_excludes
    hcover boxes_small sound_stored_graph pairCert pair_refutation_checks standard_first_row

#print axioms all_orth_rows
#print axioms all_unbiased_rows
#print axioms all_small_box_check
#print axioms all_boxes_small
#print axioms boxes_small
#print axioms sound_stored_graph
#print axioms no_raw_five_pair_of_cover
#print axioms no_raw_five_pair_of_uniform_cover
#print axioms standard_first_row
#print axioms exclude_of_cover
end FourierPilot
