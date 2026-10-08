import TaoFastRows
import TaoFastMatch
import TaoIntegerMatch
import TaoGraphChecks

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

theorem integer_orth_rows_match : ∀ i j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes i) (zBoxes j) = O i j := by
  intro i j
  have hi : zBoxesFast i = zBoxes i := funext (fast_boxes_match i)
  have hj : zBoxesFast j = zBoxes j := funext (fast_boxes_match j)
  simpa only [hi, hj] using fast_orth_rows_match i j

theorem sound_stored_graph : SoundRayGraph boxes O U := by
  constructor
  · intro i j z w _ _ hz hw ho
    have hz' : MemRawRayBox (IntegerIntervals.toRawRayBox 16 (zBoxes i)) z := by
      rw [integer_raw_boxes_match i]
      exact hz
    have hw' : MemRawRayBox (IntegerIntervals.toRawRayBox 16 (zBoxes j)) w := by
      rw [integer_raw_boxes_match j]
      exact hw
    have h := IntegerIntervals.orthPossible_sound (S := 16) (by decide) hz' hw' ho
    rwa [integer_orth_rows_match i j] at h
  · intro i j z w _ _ _ _ _
    rfl

theorem conditional_no_raw_five_pair {H : BasisMatrix}
    (hcover : CompleteRayCover H boxes) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w := by
  apply checked_pair_excludes_raw_five_pair hcover
    (fun v => IntervalKernel.smallBoxCheck_sound (kept_boxes_small v))
    sound_stored_graph pairCert pair_refutation_checks

#print axioms integer_orth_rows_match
#print axioms sound_stored_graph
#print axioms conditional_no_raw_five_pair

end Mub6.Numerical.GraphKernel.TaoCatalogue
