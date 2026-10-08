import Mathlib.Data.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring

/-!
# Singular dephased unimodular `3 x 3` corners

This is a Lean 4.19 port of the local scalar theorem
`Hadamard6.singular_corner_hasRepeatedRowOrColumn` from
`external/all_hadamard_matrices_in_dimension_six/Hadamard6/VanishingMinorReduction.lean`
at repository commit `f9ff02494e23e2fb7ceec148d3a9ead555239ce0` and source SHA-256
`742fde41cdd2e64d6fc246e2de3b4af42b2c50a1f4917756ab6e467cff23c0bc`.

Only Mathlib is imported here.  In particular, the external Lean 4.33 project is
treated as attributed source text and is not imported or claimed to have been
checked by this Lean 4.19 compilation.
-/

namespace SingularCornerPort

abbrev I3 := Fin 3
abbrev Mat3 := Matrix I3 I3 ℂ

/-- The explicitly dephased corner
`[[1, 1, 1], [1, a, b], [1, c, d]]`. -/
def corner (a b c d : ℂ) : Mat3 :=
  !![1, 1, 1;
     1, a, b;
     1, c, d]

/-- Two distinct rows are entrywise equal, or two distinct columns are
entrywise equal. -/
def HasRepeatedRowOrColumn3 (X : Mat3) : Prop :=
  (∃ i k : I3, i ≠ k ∧ ∀ j, X i j = X k j) ∨
  (∃ j l : I3, j ≠ l ∧ ∀ i, X i j = X i l)

/-- A singular dephased `3 x 3` matrix whose four free entries lie on the
complex unit circle has two literally equal rows or two literally equal
columns.

This is the exact low-level scalar corner theorem.  It has no Hadamard,
classification, Karlsson, Fourier, or sector hypothesis or conclusion.
-/
theorem singular_corner_hasRepeatedRowOrColumn
    {a b c d : ℂ}
    (ha : Complex.normSq a = 1) (hb : Complex.normSq b = 1)
    (hc : Complex.normSq c = 1) (hd : Complex.normSq d = 1)
    (hdet : Matrix.det (corner a b c d) = 0) :
    HasRepeatedRowOrColumn3 (corner a b c d) := by
  have hua : a * star a = 1 := by
    simpa [Complex.star_def, ha] using Complex.mul_conj a
  have hub : b * star b = 1 := by
    simpa [Complex.star_def, hb] using Complex.mul_conj b
  have huc : c * star c = 1 := by
    simpa [Complex.star_def, hc] using Complex.mul_conj c
  have hud : d * star d = 1 := by
    simpa [Complex.star_def, hd] using Complex.mul_conj d
  have hdet0 : a * d - b * c - d + b + c - a = 0 := by
    simpa [corner, Matrix.det_fin_three] using hdet
  have hdet' : b + c - a - d + a * d - b * c = 0 := by
    linear_combination hdet0
  by_cases ha1 : a = 1
  · subst a
    have hbc : (b - 1) * (c - 1) = 0 := by
      linear_combination -hdet'
    rcases mul_eq_zero.mp hbc with hb1 | hc1
    · left
      have hb1' : b = 1 := sub_eq_zero.mp hb1
      refine ⟨0, 1, by decide, ?_⟩
      intro j
      fin_cases j <;> simp [corner, hb1']
    · right
      have hc1' : c = 1 := sub_eq_zero.mp hc1
      refine ⟨0, 1, by decide, ?_⟩
      intro i
      fin_cases i <;> simp [corner, hc1']
  · by_cases hb1 : b = 1
    · subst b
      have had : (a - 1) * (d - 1) = 0 := by
        linear_combination hdet'
      rcases mul_eq_zero.mp had with ha' | hd1
      · exact False.elim (ha1 (sub_eq_zero.mp ha'))
      · right
        refine ⟨0, 2, by decide, ?_⟩
        intro i
        fin_cases i <;> simp [corner, sub_eq_zero.mp hd1]
    · by_cases hc1 : c = 1
      · subst c
        have had : (a - 1) * (d - 1) = 0 := by
          linear_combination hdet'
        rcases mul_eq_zero.mp had with ha' | hd1
        · exact False.elim (ha1 (sub_eq_zero.mp ha'))
        · left
          refine ⟨0, 2, by decide, ?_⟩
          intro j
          fin_cases j <;> simp [corner, sub_eq_zero.mp hd1]
      · by_cases hd1 : d = 1
        · subst d
          have hbc : (b - 1) * (c - 1) = 0 := by
            linear_combination -hdet'
          rcases mul_eq_zero.mp hbc with hb' | hc'
          · exact False.elim (hb1 (sub_eq_zero.mp hb'))
          · exact False.elim (hc1 (sub_eq_zero.mp hc'))
        · have hdsolve : (a - 1) * d = a + b * c - b - c := by
            linear_combination hdet'
          have hnorm :
              (a + b * c - b - c) * star (a + b * c - b - c) =
                (a - 1) * star (a - 1) := by
            rw [← hdsolve]
            simp only [star_mul, star_sub, star_one]
            calc
              ((a - 1) * d) * (star d * (star a - 1)) =
                  ((a - 1) * (star a - 1)) * (d * star d) := by ring
              _ = (a - 1) * (star a - 1) := by rw [hud, mul_one]
          have hnorm0 :
              (a + b * c - b - c) *
                  (star a + star c * star b - star b - star c) -
                (a - 1) * (star a - 1) = 0 := by
            simpa only [star_add, star_mul, star_sub, star_one,
              sub_eq_zero] using hnorm
          have hfactor :
              (a - b) * (a - c) * (b - 1) * (c - 1) = 0 := by
            linear_combination
              a * b * c * hnorm0 +
              (-b * c * (b - 1) * (c - 1)) * hua +
              (-a * c * (star c - 1) *
                (a + b * c - b - c)) * hub +
              (a * (b - 1) * (a + b * c - b - c)) * huc
          rcases mul_eq_zero.mp hfactor with habc | hc'
          · rcases mul_eq_zero.mp habc with hab | hac
            · rcases mul_eq_zero.mp hab with hab | hac
              · have hab' : a = b := sub_eq_zero.mp hab
                have hcd : c = d := by
                  have hprod : (c - d) * (1 - a) = 0 := by
                    rw [← hab'] at hdet'
                    linear_combination hdet'
                  rcases mul_eq_zero.mp hprod with hcd | ha'
                  · exact sub_eq_zero.mp hcd
                  · exact False.elim (ha1 (Eq.symm (sub_eq_zero.mp ha')))
                right
                refine ⟨1, 2, by decide, ?_⟩
                intro i
                fin_cases i <;> simp [corner, hab', hcd]
              · have hac' : a = c := sub_eq_zero.mp hac
                have hbd : b = d := by
                  have hprod : (b - d) * (1 - a) = 0 := by
                    rw [← hac'] at hdet'
                    linear_combination hdet'
                  rcases mul_eq_zero.mp hprod with hbd | ha'
                  · exact sub_eq_zero.mp hbd
                  · exact False.elim (ha1 (Eq.symm (sub_eq_zero.mp ha')))
                left
                refine ⟨1, 2, by decide, ?_⟩
                intro j
                fin_cases j <;> simp [corner, hac', hbd]
            · exact False.elim (hb1 (sub_eq_zero.mp hac))
          · exact False.elim (hc1 (sub_eq_zero.mp hc'))

/-- Row and column proportionality with a unit complex proportionality
factor.  This is the invariant form of literal repetition after dephasing. -/
def HasUnitProportionalRowOrColumn3 (X : Mat3) : Prop :=
  (∃ i k : I3, i ≠ k ∧ ∃ z : ℂ,
      Complex.normSq z = 1 ∧ ∀ j, X i j = z * X k j) ∨
  (∃ j l : I3, j ≠ l ∧ ∃ z : ℂ,
      Complex.normSq z = 1 ∧ ∀ i, X i j = X i l * z)

/-- The row/column phase normalization used in the physical algebra bridge. -/
def dephase (X : Mat3) : Mat3 := fun i j ↦
  star (X i 0) * X i j * (star (X 0 j) * X 0 0)

private theorem mul_star_self_of_normSq_one {z : ℂ}
    (hz : Complex.normSq z = 1) : z * star z = 1 := by
  simpa [Complex.star_def, hz] using Complex.mul_conj z

private theorem star_mul_self_of_normSq_one {z : ℂ}
    (hz : Complex.normSq z = 1) : star z * z = 1 := by
  rw [mul_comm]
  exact mul_star_self_of_normSq_one hz

private theorem normSq_one_ne_zero {z : ℂ}
    (hz : Complex.normSq z = 1) : z ≠ 0 := by
  intro hzero
  subst z
  norm_num at hz

theorem dephase_entrywise_unit {X : Mat3}
    (hunit : ∀ i j, Complex.normSq (X i j) = 1) :
    ∀ i j, Complex.normSq (dephase X i j) = 1 := by
  intro i j
  simp [dephase, Complex.normSq_mul, Complex.normSq_conj,
    hunit i 0, hunit i j, hunit 0 j, hunit 0 0]

theorem dephase_first_row {X : Mat3}
    (hunit : ∀ i j, Complex.normSq (X i j) = 1) :
    ∀ j, dephase X 0 j = 1 := by
  intro j
  have hj := star_mul_self_of_normSq_one (hunit 0 j)
  have h00 := star_mul_self_of_normSq_one (hunit 0 0)
  simp only [dephase]
  calc
    star (X 0 0) * X 0 j * (star (X 0 j) * X 0 0) =
        (star (X 0 j) * X 0 j) * (star (X 0 0) * X 0 0) := by ring
    _ = 1 := by rw [hj, h00]; norm_num

theorem dephase_first_column {X : Mat3}
    (hunit : ∀ i j, Complex.normSq (X i j) = 1) :
    ∀ i, dephase X i 0 = 1 := by
  intro i
  have hi := star_mul_self_of_normSq_one (hunit i 0)
  have h00 := star_mul_self_of_normSq_one (hunit 0 0)
  simp only [dephase]
  calc
    star (X i 0) * X i 0 * (star (X 0 0) * X 0 0) = 1 := by
      rw [hi, h00]
      norm_num

theorem dephase_eq_corner {X : Mat3}
    (hunit : ∀ i j, Complex.normSq (X i j) = 1) :
    dephase X = corner (dephase X 1 1) (dephase X 1 2)
      (dephase X 2 1) (dephase X 2 2) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [corner, dephase_first_row hunit, dephase_first_column hunit]

theorem dephase_det_zero {X : Mat3}
    (hdet : Matrix.det X = 0) : Matrix.det (dephase X) = 0 := by
  let r : I3 → ℂ := fun i ↦ star (X i 0)
  let c : I3 → ℂ := fun j ↦ star (X 0 j) * X 0 0
  have hrow : Matrix.det (fun i j ↦ r i * X i j) = 0 := by
    calc
      Matrix.det (fun i j ↦ r i * X i j) =
          (∏ i, r i) * Matrix.det X := Matrix.det_mul_column r X
      _ = 0 := by rw [hdet, mul_zero]
  calc
    Matrix.det (dephase X) =
        Matrix.det (fun i j ↦ c j * (r i * X i j)) := by
          congr 1
          ext i j
          simp only [dephase, r, c]
          ring
    _ = (∏ j, c j) * Matrix.det (fun i j ↦ r i * X i j) := by
      exact Matrix.det_mul_row c (fun i j ↦ r i * X i j)
    _ = 0 := by rw [hrow, mul_zero]

/-- Physical algebra bridge: every singular `3 x 3` matrix all of whose
entries are unit phases has two unit-proportional rows or two
unit-proportional columns.

The proof explicitly dephases using nonzero unit entries, applies the corner
theorem, and then cancels the proved-nonzero gauge factors. -/
theorem singular_entrywiseUnit_hasUnitProportionalRowOrColumn
    {X : Mat3}
    (hunit : ∀ i j, Complex.normSq (X i j) = 1)
    (hdet : Matrix.det X = 0) :
    HasUnitProportionalRowOrColumn3 X := by
  let a := dephase X 1 1
  let b := dephase X 1 2
  let c := dephase X 2 1
  let d := dephase X 2 2
  have hcorner : dephase X = corner a b c d := by
    simpa [a, b, c, d] using dephase_eq_corner hunit
  have hrep : HasRepeatedRowOrColumn3 (dephase X) := by
    rw [hcorner]
    apply singular_corner_hasRepeatedRowOrColumn
    · exact dephase_entrywise_unit hunit 1 1
    · exact dephase_entrywise_unit hunit 1 2
    · exact dephase_entrywise_unit hunit 2 1
    · exact dephase_entrywise_unit hunit 2 2
    · rw [← hcorner]
      exact dephase_det_zero hdet
  rcases hrep with ⟨i, k, hik, heq⟩ | ⟨j, l, hjl, heq⟩
  · left
    let z := X i 0 * star (X k 0)
    refine ⟨i, k, hik, z, ?_, ?_⟩
    · simp [z, Complex.normSq_mul, Complex.normSq_conj,
        hunit i 0, hunit k 0]
    · intro j
      let q := star (X 0 j) * X 0 0
      have hq_unit : Complex.normSq q = 1 := by
        simp [q, Complex.normSq_mul, Complex.normSq_conj,
          hunit 0 j, hunit 0 0]
      have hbase : star (X i 0) * X i j = star (X k 0) * X k j := by
        apply mul_right_cancel₀ (normSq_one_ne_zero hq_unit)
        simpa only [dephase, q] using heq j
      calc
        X i j = (X i 0 * star (X i 0)) * X i j := by
          rw [mul_star_self_of_normSq_one (hunit i 0), one_mul]
        _ = X i 0 * (star (X i 0) * X i j) := by ring
        _ = X i 0 * (star (X k 0) * X k j) := by rw [hbase]
        _ = z * X k j := by simp only [z]; ring
  · right
    let z := star (X 0 l) * X 0 j
    refine ⟨j, l, hjl, z, ?_, ?_⟩
    · simp [z, Complex.normSq_mul, Complex.normSq_conj,
        hunit 0 l, hunit 0 j]
    · intro i
      let r := star (X i 0)
      have hr_unit : Complex.normSq r = 1 := by
        simp [r, Complex.normSq_conj, hunit i 0]
      have hscaled :
          X i j * (star (X 0 j) * X 0 0) =
            X i l * (star (X 0 l) * X 0 0) := by
        apply mul_left_cancel₀ (normSq_one_ne_zero hr_unit)
        simpa only [dephase, r, mul_assoc] using heq i
      have hbase : X i j * star (X 0 j) = X i l * star (X 0 l) := by
        apply mul_right_cancel₀ (normSq_one_ne_zero (hunit 0 0))
        simpa only [mul_assoc] using hscaled
      calc
        X i j = (X i j * star (X 0 j)) * X 0 j := by
          rw [mul_assoc, star_mul_self_of_normSq_one (hunit 0 j), mul_one]
        _ = (X i l * star (X 0 l)) * X 0 j := by rw [hbase]
        _ = X i l * z := by simp only [z]; ring

#print axioms I3
#print axioms Mat3
#print axioms corner
#print axioms HasRepeatedRowOrColumn3
#print axioms singular_corner_hasRepeatedRowOrColumn
#print axioms HasUnitProportionalRowOrColumn3
#print axioms dephase
#print axioms mul_star_self_of_normSq_one
#print axioms star_mul_self_of_normSq_one
#print axioms normSq_one_ne_zero
#print axioms dephase_entrywise_unit
#print axioms dephase_first_row
#print axioms dephase_first_column
#print axioms dephase_eq_corner
#print axioms dephase_det_zero
#print axioms singular_entrywiseUnit_hasUnitProportionalRowOrColumn

end SingularCornerPort
