import PhysicalPSDTests

/-! Independent semantic checks for the frozen three-module physical PSD
bridge.  No native coefficient expression, interval enclosure, or leaf
acceptance is introduced here.
-/
set_option autoImplicit false
namespace Centiradian20261006.PhysicalPSD20261006.IndependentReview

open scoped ComplexConjugate BigOperators
open Centiradian20261006
open Centiradian20261006.SignedDeterminant
open Centiradian20261006.PhysicalPSD20261006
noncomputable section

theorem physical_columns_are_literal_entries (H : Mat6) (l i : Fin 3) :
    physicalColumns H l i = H (knownIndex i) (sideIndex l) := rfl

theorem physical_sign_is_negative_cornerSigned
    (H : Mat6) (j k l : Fin 3) :
    physicalSigns H j k l =
      -cornerSigned H 0 1 2 (knownIndex j) (knownIndex k) (sideIndex l) := rfl

theorem index_layout :
    (knownIndex 0).val = 0 ∧ (knownIndex 1).val = 1 ∧
    (knownIndex 2).val = 2 ∧ (sideIndex 0).val = 3 ∧
    (sideIndex 1).val = 4 ∧ (sideIndex 2).val = 5 := by
  decide

theorem native_pencil_orientation (d : ℝ) (s t r : ℂ) :
    nativePencil d s t r 1 0 = s ∧
    nativePencil d s t r 2 0 = t ∧
    nativePencil d s t r 2 1 = r := by
  simp [nativePencil]

theorem native_tests_are_literal (d : ℝ) (s t r : ℂ) :
    NativeTests d s t r ↔
      0 ≤ d ∧ 0 ≤ d^2 - Complex.normSq s ∧
      0 ≤ d^2 - Complex.normSq t ∧ 0 ≤ d^2 - Complex.normSq r ∧
      0 ≤ d^3 + 2 * (s*r*conj t).re -
        d * (Complex.normSq s + Complex.normSq t + Complex.normSq r) := Iff.rfl

theorem physical_columns_are_unit {H : Mat6} (hH : Physical H) :
    ∀ l i, Complex.normSq (physicalColumns H l i) = 1 := by
  intro l i
  exact hH.1 (knownIndex i) (sideIndex l)

theorem plus_and_minus_weights_are_nonnegative {H : Mat6}
    (hH : Physical H) (hm : Maximal H) (hR : 0 < leadingR H)
    (j k : Fin 3) (hjk : j < k) :
    (∀ l, 0 ≤ physicalWeight true H j k l) ∧
      (∀ l, 0 ≤ physicalWeight false H j k l) :=
  ⟨physicalWeight_nonnegative true hH hm hR j k hjk,
   physicalWeight_nonnegative false hH hm hR j k hjk⟩

theorem both_signs_have_all_five_actual_tests {H : Mat6}
    (hH : Physical H) (hm : Maximal H) (hR : 0 < leadingR H)
    (j k : Fin 3) (hjk : j < k) :
    NativeTests (∑ l, physicalWeight true H j k l)
        (physicalWeightedGram true H j k 1 0)
        (physicalWeightedGram true H j k 2 0)
        (physicalWeightedGram true H j k 2 1) ∧
    NativeTests (∑ l, physicalWeight false H j k l)
        (physicalWeightedGram false H j k 1 0)
        (physicalWeightedGram false H j k 2 0)
        (physicalWeightedGram false H j k 2 1) :=
  ⟨physical_all_five_tests true hH hm hR j k hjk,
   physical_all_five_tests false hH hm hR j k hjk⟩

theorem negative_diagonal_is_not_psd :
    ¬ PSD (nativePencil (-1) 0 0 0) := by
  intro h
  have hd := nativePencil_diagonal_nonneg (-1) 0 0 0 h
  norm_num at hd

theorem negative_diagonal_fails_native_tests :
    ¬ NativeTests (-1) 0 0 0 := by
  simp [NativeTests]

#print axioms physical_columns_are_literal_entries
#print axioms physical_sign_is_negative_cornerSigned
#print axioms index_layout
#print axioms native_pencil_orientation
#print axioms native_tests_are_literal
#print axioms physical_columns_are_unit
#print axioms plus_and_minus_weights_are_nonnegative
#print axioms both_signs_have_all_five_actual_tests
#print axioms negative_diagonal_is_not_psd
#print axioms negative_diagonal_fails_native_tests

end
end Centiradian20261006.PhysicalPSD20261006.IndependentReview
