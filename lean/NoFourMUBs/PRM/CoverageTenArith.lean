import Mathlib

/-!
# The ten-corner rational-gap obstruction

From the ten-corner return of 14 Oct 2026 (`covret/result`); repaired and compiled here.

The exceptional values need not agree. It suffices that each lies strictly
between 17/3 and 29/5. No algebraic-number or irrationality theorem is used.
-/

noncomputable section

namespace NoFourMUBs.PRM.CoverageTen

/-- The much weaker scalar conclusion sufficient for coverage. -/
def ScalarBin (x : ℝ) : Prop :=
  x = 0 ∨ x = 5 ∨ ((17 : ℝ) / 3 < x ∧ x < (29 : ℝ) / 5)

/-- Finite exact arithmetic only: 121 candidate pairs, 66 admissible pairs. -/
theorem count_certificate :
    ∀ a b : Fin 11, a.val + b.val ≤ 10 →
      25 * a.val + 29 * b.val ≤ 270 ∨
        162 ≤ 15 * a.val + 17 * b.val := by
  decide

/-- Aggregate possibly unequal exceptional values without introducing their mean. -/
theorem scalarBin_counts {α : Type*} (s : Finset α) (p : α → ℝ)
    (h : ∀ i ∈ s, ScalarBin (p i)) :
    ∃ a b : ℕ, a + b ≤ s.card ∧
      ((b = 0 ∧ (∑ i ∈ s, p i) = 5 * (a : ℝ)) ∨
       (0 < b ∧
        15 * (a : ℝ) + 17 * (b : ℝ) < 3 * (∑ i ∈ s, p i) ∧
        5 * (∑ i ∈ s, p i) < 25 * (a : ℝ) + 29 * (b : ℝ))) := by
  classical
  revert h
  induction s using Finset.induction_on with
  | empty =>
      intro h
      exact ⟨0, 0, by simp, Or.inl ⟨rfl, by simp⟩⟩
  | @insert i s hi ih =>
      intro h
      obtain ⟨a, b, hc, hs⟩ := ih (fun j hj => h j (Finset.mem_insert_of_mem hj))
      have hx := h i (Finset.mem_insert_self i s)
      rcases hx with hz | hf | he
      · refine ⟨a, b, ?_, ?_⟩
        · simp only [Finset.card_insert_of_notMem hi]
          omega
        · simpa only [Finset.sum_insert hi, hz, zero_add] using hs
      · refine ⟨a + 1, b, ?_, ?_⟩
        · simp only [Finset.card_insert_of_notMem hi]
          omega
        · rcases hs with ⟨hb, hs⟩ | ⟨hb, hl, hu⟩
          · refine Or.inl ⟨hb, ?_⟩
            simp only [Finset.sum_insert hi, hf, Nat.cast_add, Nat.cast_one]
            linarith
          · refine Or.inr ⟨hb, ?_, ?_⟩ <;>
              simp only [Finset.sum_insert hi, hf, Nat.cast_add, Nat.cast_one] <;>
              linarith
      · refine ⟨a, b + 1, ?_, Or.inr ⟨by omega, ?_, ?_⟩⟩
        · simp only [Finset.card_insert_of_notMem hi]
          omega
        · simp only [Finset.sum_insert hi, Nat.cast_add, Nat.cast_one]
          rcases hs with ⟨rfl, hs⟩ | ⟨hb, hl, hu⟩
          · norm_num at *
            linarith [he.1]
          · linarith [he.1]
        · simp only [Finset.sum_insert hi, Nat.cast_add, Nat.cast_one]
          rcases hs with ⟨rfl, hs⟩ | ⟨hb, hl, hu⟩
          · norm_num at *
            linarith [he.2]
          · linarith [he.2]

/-- No at-most-ten real numbers in `ScalarBin` can sum to 54. -/
theorem scalarBin_sum_ne_54 {α : Type*} (s : Finset α) (p : α → ℝ)
    (hc : s.card ≤ 10) (h : ∀ i ∈ s, ScalarBin (p i)) :
    (∑ i ∈ s, p i) ≠ 54 := by
  intro h54
  obtain ⟨a, b, hab, hs⟩ := scalarBin_counts s p h
  have ha : a ≤ 10 := by omega
  have hb : b ≤ 10 := by omega
  have hab10 : a + b ≤ 10 := by omega
  rcases hs with ⟨hb0, hs⟩ | ⟨hbpos, hl, hu⟩
  · have haR : (a : ℝ) ≤ 10 := by exact_mod_cast ha
    rw [h54] at hs
    linarith
  · rw [h54] at hl hu
    rcases count_certificate ⟨a, by omega⟩ ⟨b, by omega⟩ hab10 with hc | hc
    · have hcR : 25 * (a : ℝ) + 29 * (b : ℝ) ≤ 270 := by
        exact_mod_cast hc
      linarith
    · have hcR : (162 : ℝ) ≤ 15 * (a : ℝ) + 17 * (b : ℝ) := by
        exact_mod_cast hc
      linarith

/-- Function-indexed form used by the ten anchored corners. -/
theorem ten_scalarBin_sum_ne_54 (p : Fin 10 → ℝ)
    (h : ∀ k, ScalarBin (p k)) : (∑ k, p k) ≠ 54 :=
  scalarBin_sum_ne_54 Finset.univ p (by simp) (fun k _ => h k)

end NoFourMUBs.PRM.CoverageTen
