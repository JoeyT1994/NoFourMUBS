import Hadamard6.PhaseEquivalence
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
An explicit finite dyadic outer cover of all dephased carrier entries.
It keeps 25 complex coordinates, including every guard failure and collision.
This is a complete but expensive fallback, NOT a four-seed root enumerator.
No cell is excluded here, and no statement asserts a computational budget.
-/
namespace ClassificationCover
open Hadamard6

abbrev Interval := ℚ × ℚ

def Contains (q : Interval) (x : ℝ) : Prop :=
  (q.1 : ℝ) ≤ x ∧ x ≤ (q.2 : ℝ)

def dyadicGrid : ℕ → ℚ → ℚ → List Interval
  | 0, lo, hi => [(lo, hi)]
  | n + 1, lo, hi =>
      dyadicGrid n lo ((lo + hi) / 2) ++ dyadicGrid n ((lo + hi) / 2) hi

theorem dyadicGrid_complete (n : ℕ) (lo hi : ℚ) (x : ℝ)
    (hx : (lo : ℝ) ≤ x ∧ x ≤ (hi : ℝ)) :
    ∃ q ∈ dyadicGrid n lo hi, Contains q x := by
  induction n generalizing lo hi with
  | zero => exact ⟨(lo, hi), by simp [dyadicGrid], hx⟩
  | succ n ih =>
    by_cases hm : x ≤ (((lo + hi) / 2 : ℚ) : ℝ)
    · rcases ih lo ((lo + hi) / 2) ⟨hx.1, hm⟩ with ⟨q, hq, hcontains⟩
      exact ⟨q, by simp [dyadicGrid, hq], hcontains⟩
    · rcases ih ((lo + hi) / 2) hi ⟨le_of_lt (lt_of_not_ge hm), hx.2⟩ with
        ⟨q, hq, hcontains⟩
      exact ⟨q, by simp [dyadicGrid, hq], hcontains⟩

theorem dyadicGrid_length (n : ℕ) (lo hi : ℚ) :
    (dyadicGrid n lo hi).length = 2 ^ n := by
  induction n generalizing lo hi with
  | zero => simp [dyadicGrid]
  | succ n ih => simp [dyadicGrid, ih, pow_succ, Nat.mul_two]

def nonpivotIndex : Fin 5 → I6 :=
  ![Sum.inl 1, Sum.inl 2, Sum.inr 0, Sum.inr 1, Sum.inr 2]

theorem nonpivotIndex_covers :
    ∀ i : I6, i ≠ Sum.inl 0 → ∃ j : Fin 5, nonpivotIndex j = i := by
  decide

theorem free_entries_determine_dephased
    {H K : Mat6} (hH : IsDephased H) (hK : IsDephased K)
    (hfree : ∀ i j : Fin 5, H (nonpivotIndex i) (nonpivotIndex j) =
      K (nonpivotIndex i) (nonpivotIndex j)) : H = K := by
  funext i j
  by_cases hi : i = Sum.inl 0
  · subst i; rw [hH.1, hK.1]
  by_cases hj : j = Sum.inl 0
  · subst j; rw [hH.2, hK.2]
  rcases nonpivotIndex_covers i hi with ⟨r, rfl⟩
  rcases nonpivotIndex_covers j hj with ⟨c, rfl⟩
  exact hfree r c

theorem unit_coordinate_bounds {z : ℂ} (hz : Complex.normSq z = 1) :
    (-1 ≤ z.re ∧ z.re ≤ 1) ∧ (-1 ≤ z.im ∧ z.im ≤ 1) := by
  have heq : z.re * z.re + z.im * z.im = 1 := by
    simpa only [Complex.normSq_apply] using hz
  have hr := sq_nonneg z.re
  have hi := sq_nonneg z.im
  constructor <;> constructor <;> nlinarith

abbrev Coord := Fin 5 × Fin 5 × Bool

def coordinate (H : Mat6) (j : Coord) : ℝ :=
  if j.2.2 then (H (nonpivotIndex j.1) (nonpivotIndex j.2.1)).im
  else (H (nonpivotIndex j.1) (nonpivotIndex j.2.1)).re

def scalarCells (depth : ℕ) : Finset Interval :=
  (dyadicGrid depth (-1) 1).toFinset

abbrev Cell (depth : ℕ) := Coord → {q : Interval // q ∈ scalarCells depth}

def CellContains (depth : ℕ) (cell : Cell depth) (H : Mat6) : Prop :=
  ∀ j : Coord, Contains (cell j).val (coordinate H j)

theorem coordinate_count : Fintype.card Coord = 50 := by decide

/-- The outer cover is a genuine finite set, generated from explicit rational
intervals. There is no residual complement predicate. -/
instance finite_cells (depth : ℕ) : Fintype (Cell depth) := inferInstance

theorem entrywiseUnit_in_finite_cover (depth : ℕ) {H : Mat6}
    (hH : EntrywiseUnit H) : ∃ cell : Cell depth, CellContains depth cell H := by
  have each (j : Coord) : ∃ q, q ∈ scalarCells depth ∧ Contains q (coordinate H j) := by
    have hb := unit_coordinate_bounds (hH (nonpivotIndex j.1) (nonpivotIndex j.2.1))
    have hc : (-1 : ℝ) ≤ coordinate H j ∧ coordinate H j ≤ 1 := by
      simp only [coordinate]
      split
      · exact hb.2
      · exact hb.1
    rcases dyadicGrid_complete depth (-1) 1 (coordinate H j) (by simpa using hc) with
      ⟨q, hmem, hcontains⟩
    exact ⟨q, by simpa [scalarCells] using hmem, hcontains⟩
  classical
  choose q hq hcontains using each
  exact ⟨fun j => ⟨q j, hq j⟩, hcontains⟩

/-- Full carrier coverage through the actual dephasing operation. This theorem
does not invoke finite fibres and excludes no exceptional carrier. -/
theorem every_hadamard_has_dephased_covered_representative
    (depth : ℕ) {H : Mat6} (hH : IsHadamard H) :
    ∃ (K : Mat6) (cell : Cell depth), Equivalent H K ∧ IsHadamard K ∧
      IsDephased K ∧ CellContains depth cell K := by
  rcases entrywiseUnit_in_finite_cover depth (dephase_isHadamard hH).1 with ⟨cell, hcell⟩
  exact ⟨dephase H, cell, equivalent_dephase hH.1, dephase_isHadamard hH,
    dephase_isDephased hH.1, hcell⟩

#print axioms dyadicGrid_complete
#print axioms free_entries_determine_dephased
#print axioms entrywiseUnit_in_finite_cover
#print axioms every_hadamard_has_dephased_covered_representative
end ClassificationCover
