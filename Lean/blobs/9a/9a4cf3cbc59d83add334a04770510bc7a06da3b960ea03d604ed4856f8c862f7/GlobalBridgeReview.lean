import QuartetRadianCover

/-! Independent semantic checks for the frozen global radian bridge.

This module deliberately proves no numerical leaf exclusion and introduces no
maximum-domain predicate.  It checks the literal physical target, preservation
of every basis and every pairwise unbiasedness statement, the two closed root
faces, and the materiality of the split guards.
-/
set_option autoImplicit false
namespace Mub6.GlobalBoxCover20261006.IndependentReview

open Mub6
open Mub6.GlobalBoxCover20261006

theorem literal_no_four_target :
    NoFourMUB6 ↔ ¬ ∃ B : Fin 4 → BasisMatrix, IsMUBQuartet B := Iff.rfl

theorem literal_quartet_target (B : Fin 4 → BasisMatrix) :
    IsMUBQuartet B ↔
      (∀ a, IsOrthonormalBasis (B a)) ∧
        ∀ a b, a ≠ b → IsUnbiased (B a) (B b) := Iff.rfl

theorem normalization_preserves_each_basis
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∀ a, IsOrthonormalBasis (dephasedQuartet B a) :=
  (dephasedQuartet_isMUB hB).1

theorem normalization_preserves_every_distinct_pair
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∀ a b, a ≠ b → IsUnbiased (dephasedQuartet B a) (dephasedQuartet B b) :=
  (dephasedQuartet_isMUB hB).2

def lowerBoundary (n : ℕ) : Fin n → ℝ := fun _ => -4
def upperBoundary (n : ℕ) : Fin n → ℝ := fun _ => 4

theorem root_contains_lower_boundary (n : ℕ) :
    (radianRoot n).Contains (lowerBoundary n) := by
  intro i
  norm_num [radianRoot, lowerBoundary]

theorem root_contains_upper_boundary (n : ℕ) :
    (radianRoot n).Contains (upperBoundary n) := by
  intro i
  norm_num [radianRoot, upperBoundary]

theorem lower_endpoint_face_is_shared (k : Fin 4) :
    ((radianRoot 4).left k (-4)).Contains (lowerBoundary 4) ∧
      ((radianRoot 4).right k (-4)).Contains (lowerBoundary 4) := by
  exact Box.split_face (root_contains_lower_boundary 4) (by simp [lowerBoundary])

theorem upper_endpoint_face_is_shared (k : Fin 4) :
    ((radianRoot 4).left k 4).Contains (upperBoundary 4) ∧
      ((radianRoot 4).right k 4).Contains (upperBoundary 4) := by
  exact Box.split_face (root_contains_upper_boundary 4) (by simp [upperBoundary])

/- The forward cover lemma works for every cut, but an out-of-range child is
not included in its parent.  Therefore both stored guards in `CertifiedTree.split`
are material to exact closed subdivision. -/
theorem out_of_range_left_not_included :
    ¬ (radianRoot 1).Includes ((radianRoot 1).left 0 5) := by
  intro h
  have hu := (h 0).2
  norm_num [radianRoot, Box.left] at hu

theorem out_of_range_right_not_included :
    ¬ (radianRoot 1).Includes ((radianRoot 1).right 0 (-5)) := by
  intro h
  have hl := (h 0).1
  norm_num [radianRoot, Box.right] at hl

theorem quartet_population_is_literal (x : Fin 4 → ℝ) :
    QuartetPhasePopulation x ↔
      ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
        (∀ j, phaseOverlap (D 0) (D 1) 0 j = 1) ∧
        (∀ i, phaseOverlap (D 0) (D 1) i 0 = 1) ∧
        PhaseCoordinates (seedEntries (phaseOverlap (D 0) (D 1))) x := Iff.rfl

theorem conditional_endpoint_has_literal_target
    (t : CertifiedTree QuartetPhasePopulation (radianRoot 4))
    (he : t.frontier = []) :
    ¬ ∃ B : Fin 4 → BasisMatrix, IsMUBQuartet B :=
  empty_radian_forest_noFour t he

#print axioms literal_no_four_target
#print axioms literal_quartet_target
#print axioms normalization_preserves_each_basis
#print axioms normalization_preserves_every_distinct_pair
#print axioms root_contains_lower_boundary
#print axioms root_contains_upper_boundary
#print axioms lower_endpoint_face_is_shared
#print axioms upper_endpoint_face_is_shared
#print axioms out_of_range_left_not_included
#print axioms out_of_range_right_not_included
#print axioms quartet_population_is_literal
#print axioms conditional_endpoint_has_literal_target

end Mub6.GlobalBoxCover20261006.IndependentReview
