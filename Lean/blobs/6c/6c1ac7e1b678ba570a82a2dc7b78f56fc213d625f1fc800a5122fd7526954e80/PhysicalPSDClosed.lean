import PhysicalPSDTests

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.PhysicalPSD20261006
open scoped ComplexConjugate BigOperators
open SignedDeterminant
noncomputable section

/-- Squared maximality supplies nonnegative R even on the critical boundary. -/
theorem maximal_leadingR_nonnegative {H : Mat6} (hH : Physical H) (hm : Maximal H) :
    0 ≤ leadingR H := by
  have hb := physical_maximal_signed_square_bound hH hm 0 1 2 0 1 3
    (by decide) (by decide) (by decide) (by decide)
  exact le_trans (sq_nonneg _) hb

theorem physicalSigns_bound_closed {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (j k : Fin 3) (hjk : j<k) (l : Fin 3) :
    |physicalSigns H j k l| ≤ Real.sqrt (leadingR H) := by
  have h1 : knownIndex j < knownIndex k := hjk
  have h2 : knownIndex k < sideIndex l := by change k.val<l.val+3; omega
  have hb := physical_maximal_signed_square_bound hH hm
    0 1 2 (knownIndex j) (knownIndex k) (sideIndex l) (by decide) (by decide) h1 h2
  have hq := Real.sq_sqrt (maximal_leadingR_nonnegative hH hm)
  have ha := sq_abs (cornerSigned H 0 1 2 (knownIndex j) (knownIndex k) (sideIndex l))
  have habs : |cornerSigned H 0 1 2 (knownIndex j) (knownIndex k) (sideIndex l)| ≤
      Real.sqrt (leadingR H) := by
    nlinarith [Real.sqrt_nonneg (leadingR H),abs_nonneg
      (cornerSigned H 0 1 2 (knownIndex j) (knownIndex k) (sideIndex l))]
  simpa [physicalSigns] using habs

theorem physicalWeight_nonnegative_closed (plus : Bool) {H : Mat6}
    (hH : Physical H) (hm : Maximal H) (j k : Fin 3) (hjk : j<k) (l : Fin 3) :
    0≤physicalWeight plus H j k l := by
  have hb := abs_le.mp (physicalSigns_bound_closed hH hm j k hjk l)
  cases plus <;> simp [physicalWeight] <;> linarith

/-- Physical PSD necessary tests include R=0; no strictness, determinant
nonzero, side reconstruction, or matching assumption is used. -/
theorem physical_all_five_tests_closed (plus : Bool) {H : Mat6}
    (hH : Physical H) (hm : Maximal H) (j k : Fin 3) (hjk : j<k) :
    NativeTests (∑ l,physicalWeight plus H j k l)
      (physicalWeightedGram plus H j k 1 0)
      (physicalWeightedGram plus H j k 2 0)
      (physicalWeightedGram plus H j k 2 1) := by
  apply weightedGram_tests
  · exact physicalWeight_nonnegative_closed plus hH hm j k hjk
  · intro l i
    exact hH.1 (knownIndex i) (sideIndex l)

theorem physical_both_pencils_psd_closed {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (j k : Fin 3) (hjk : j<k) :
    PSD (Real.sqrt (leadingR H) • gram (physicalColumns H) +
      signedMoment (physicalSigns H j k) (physicalColumns H)) ∧
    PSD (Real.sqrt (leadingR H) • gram (physicalColumns H) -
      signedMoment (physicalSigns H j k) (physicalColumns H)) := by
  constructor
  · rw [← plusPencil_eq]
    exact plusPencil_psd _ _ _ (physicalSigns_bound_closed hH hm j k hjk)
  · rw [← minusPencil_eq]
    exact minusPencil_psd _ _ _ (physicalSigns_bound_closed hH hm j k hjk)

theorem physicalSigns_zero_at_zero {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (hR : leadingR H=0) (j k : Fin 3) (hjk : j<k) (l : Fin 3) :
    physicalSigns H j k l=0 := by
  have hb := physicalSigns_bound_closed hH hm j k hjk l
  rw [hR,Real.sqrt_zero] at hb
  exact abs_nonpos_iff.mp hb

end
end Centiradian20261006.PhysicalPSD20261006
#print axioms Centiradian20261006.PhysicalPSD20261006.maximal_leadingR_nonnegative
#print axioms Centiradian20261006.PhysicalPSD20261006.physicalSigns_bound_closed
#print axioms Centiradian20261006.PhysicalPSD20261006.physicalWeight_nonnegative_closed
#print axioms Centiradian20261006.PhysicalPSD20261006.physical_all_five_tests_closed
#print axioms Centiradian20261006.PhysicalPSD20261006.physical_both_pencils_psd_closed
#print axioms Centiradian20261006.PhysicalPSD20261006.physicalSigns_zero_at_zero
