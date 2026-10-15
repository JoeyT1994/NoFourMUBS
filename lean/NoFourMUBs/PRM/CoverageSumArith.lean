import Mathlib

/-!
# Arithmetic closure of strict-corner coverage

From the sum-rule return of 14 Oct 2026 (`covret/partial`); repaired and compiled here.
This module is independent of the Hadamard project.

The exceptional real value satisfies `P(t) = t^3 - 17*t^2 + 107*t - 243 = 0`.
`P` has at most one real root, by a sum-of-squares calculation.  The final
count is impossible modulo five, without a field-degree/irrationality proof
and without a bound on the number of summands.
-/

noncomputable section

namespace NoFourMUBs.PRM.CoverageSum

/-- The polynomial of the exceptional scalar value. -/
def exceptionalPolynomial (t : ℝ) : ℝ := t ^ 3 - 17 * t ^ 2 + 107 * t - 243

/-- A division-free bridge from the cubic in kappa to the cubic in p. -/
theorem exceptional_parameter_identity (k : ℝ) :
    (1 + k ^ 2) ^ 3 * exceptionalPolynomial (9 - 4 / (1 + k ^ 2)) =
      8 * (3 * k ^ 3 - k ^ 2 + k + 1) * (3 * k ^ 3 + k ^ 2 + k - 1) := by
  have h : (1 + k ^ 2 : ℝ) ≠ 0 := by positivity
  unfold exceptionalPolynomial
  field_simp
  ring

/-- No sign or nonzero hypothesis on kappa is needed for this implication. -/
theorem exceptional_parameter_root (k : ℝ)
    (hk : 3 * k ^ 3 + k ^ 2 + k - 1 = 0) :
    exceptionalPolynomial (9 - 4 / (1 + k ^ 2)) = 0 := by
  have h := exceptional_parameter_identity k
  rw [hk, mul_zero] at h
  have hne : (1 + k ^ 2 : ℝ) ^ 3 ≠ 0 := by positivity
  exact (mul_eq_zero.mp h).resolve_left hne

/-- The exceptional cubic has at most one real root. -/
theorem exceptional_root_unique (x y : ℝ)
    (hx : exceptionalPolynomial x = 0) (hy : exceptionalPolynomial y = 0) : x = y := by
  let C : ℝ := x ^ 2 + x * y + y ^ 2 - 17 * (x + y) + 107
  have hC : 12 * C = (3 * x + 3 * y - 34) ^ 2 + 3 * (x - y) ^ 2 + 128 := by
    dsimp [C]
    ring
  have hpos : 0 < C := by
    nlinarith [sq_nonneg (3 * x + 3 * y - 34), sq_nonneg (x - y)]
  have hfactor : (x - y) * C = 0 := by
    dsimp [C]
    unfold exceptionalPolynomial at hx hy
    linear_combination hx - hy
  exact sub_eq_zero.mp ((mul_eq_zero.mp hfactor).resolve_right (ne_of_gt hpos))

/-- Five small kernel computations; the values are 2, 2, 1, 1, 4 modulo 5. -/
theorem modulo_five_obstruction :
    ∀ n : ZMod 5,
      (108 : ZMod 5) ^ 3 - 17 * 108 ^ 2 * n + 107 * 108 * n ^ 2 - 243 * n ^ 3 ≠ 0 := by
  decide +kernel

/-- The same obstruction with the count `m` kept: `108 - 5 m ≡ 3 (mod 5)`. -/
theorem modulo_five_obstruction_mn :
    ∀ m n : ZMod 5,
      (108 - 5 * m) ^ 3 - 17 * (108 - 5 * m) ^ 2 * n +
        107 * (108 - 5 * m) * n ^ 2 - 243 * n ^ 3 ≠ 0 := by
  decide

/-- The homogenized count polynomial has no integer zero of the required form. -/
theorem integer_count_polynomial_ne (m n : ℤ) :
    (108 - 5 * m) ^ 3 - 17 * (108 - 5 * m) ^ 2 * n +
        107 * (108 - 5 * m) * n ^ 2 - 243 * n ^ 3 ≠ 0 := by
  intro h
  apply modulo_five_obstruction_mn (m : ZMod 5) (n : ZMod 5)
  have h5 := congrArg (fun a : ℤ => (a : ZMod 5)) h
  push_cast at h5
  exact h5

/-- Arithmetic closure: integer counts cannot give total 108.
No positivity or upper bounds on the counts are required. -/
theorem no_integer_count (t : ℝ) (ht : exceptionalPolynomial t = 0)
    (m n : ℤ) (hcount : 5 * (m : ℝ) + (n : ℝ) * t = 108) : False := by
  have heq : (108 : ℝ) - 5 * (m : ℝ) = (n : ℝ) * t := by linarith
  have hpoly :
      ((108 : ℝ) - 5 * (m : ℝ)) ^ 3 -
          17 * (108 - 5 * (m : ℝ)) ^ 2 * (n : ℝ) +
          107 * (108 - 5 * (m : ℝ)) * (n : ℝ) ^ 2 - 243 * (n : ℝ) ^ 3 = 0 := by
    simp only [heq]
    calc
      ((n : ℝ) * t) ^ 3 - 17 * ((n : ℝ) * t) ^ 2 * (n : ℝ) +
          107 * ((n : ℝ) * t) * (n : ℝ) ^ 2 - 243 * (n : ℝ) ^ 3 =
          (n : ℝ) ^ 3 * exceptionalPolynomial t := by unfold exceptionalPolynomial; ring
      _ = 0 := by rw [ht, mul_zero]
  have hInt :
      (108 - 5 * m) ^ 3 - 17 * (108 - 5 * m) ^ 2 * n +
          107 * (108 - 5 * m) * n ^ 2 - 243 * n ^ 3 = 0 := by
    exact_mod_cast hpoly
  exact integer_count_polynomial_ne m n hInt

/-- Any finite family with values in {0,5,t} has integer counts.
The alternatives need not be disjoint. -/
theorem exists_counts {α : Type*} (s : Finset α) (f : α → ℝ) (t : ℝ) :
    (∀ i ∈ s, f i = 0 ∨ f i = 5 ∨ f i = t) →
      ∃ m n : ℕ, s.sum f = 5 * (m : ℝ) + (n : ℝ) * t := by
  classical
  induction s using Finset.induction_on with
  | empty =>
      intro _
      exact ⟨0, 0, by simp⟩
  | @insert a s ha ih =>
      intro hf
      obtain ⟨m, n, hs⟩ := ih (fun i hi => hf i (Finset.mem_insert_of_mem hi))
      rcases hf a (Finset.mem_insert_self a s) with h0 | h5 | ht
      · refine ⟨m, n, ?_⟩
        rw [Finset.sum_insert ha, h0, hs]
        ring
      · refine ⟨m + 1, n, ?_⟩
        rw [Finset.sum_insert ha, h5, hs]
        push_cast
        ring
      · refine ⟨m, n + 1, ?_⟩
        rw [Finset.sum_insert ha, ht, hs]
        push_cast
        ring

/-- A finite sum of the three common scalar values cannot be 108. -/
theorem no_three_value_sum {α : Type*} (s : Finset α) (f : α → ℝ) (t : ℝ)
    (ht : exceptionalPolynomial t = 0)
    (hf : ∀ i ∈ s, f i = 0 ∨ f i = 5 ∨ f i = t)
    (hsum : s.sum f = 108) : False := by
  obtain ⟨m, n, hm⟩ := exists_counts s f t hf
  have hc : 5 * (m : ℝ) + (n : ℝ) * t = 108 := by linarith
  exact no_integer_count t ht (m : ℤ) (n : ℤ) (by simpa using hc)

/-- Polynomial scalar form: the cubic alternative may initially vary with i.
Real-root uniqueness identifies all its occurrences. -/
theorem no_scalar_polynomial_sum {α : Type*} (s : Finset α) (f : α → ℝ)
    (hf : ∀ i ∈ s, f i = 0 ∨ f i = 5 ∨ exceptionalPolynomial (f i) = 0)
    (hsum : s.sum f = 108) : False := by
  classical
  by_cases he : ∃ i ∈ s, exceptionalPolynomial (f i) = 0
  · obtain ⟨j, hj, he⟩ := he
    apply no_three_value_sum s f (f j) he _ hsum
    intro i hi
    rcases hf i hi with h0 | h5 | hp
    · exact Or.inl h0
    · exact Or.inr (Or.inl h5)
    · exact Or.inr (Or.inr (exceptional_root_unique (f i) (f j) hp he))
  · have htwo : ∀ i ∈ s, f i = 0 ∨ f i = 5 ∨ f i = (0 : ℝ) := by
      intro i hi
      rcases hf i hi with h0 | h5 | hp
      · exact Or.inl h0
      · exact Or.inr (Or.inl h5)
      · exact False.elim (he ⟨i, hi, hp⟩)
    obtain ⟨m, n, hm⟩ := exists_counts s f 0 htwo
    have hr : 5 * (m : ℝ) = 108 := by nlinarith [hm, hsum]
    have hn : 5 * m = 108 := by exact_mod_cast hr
    omega

/-- An especially compact interface for the remaining geometric work. -/
def scalarConstraint (t : ℝ) : Prop := t * (t - 5) * exceptionalPolynomial t = 0

theorem scalarConstraint_iff (t : ℝ) :
    scalarConstraint t ↔ t = 0 ∨ t = 5 ∨ exceptionalPolynomial t = 0 := by
  simp only [scalarConstraint, mul_eq_zero, sub_eq_zero]
  tauto

/-- Final arithmetic theorem in the single-polynomial interface. -/
theorem no_constrained_sum {α : Type*} (s : Finset α) (f : α → ℝ)
    (hf : ∀ i ∈ s, scalarConstraint (f i)) (hsum : s.sum f = 108) : False := by
  apply no_scalar_polynomial_sum s f _ hsum
  exact fun i hi => (scalarConstraint_iff (f i)).mp (hf i hi)

end NoFourMUBs.PRM.CoverageSum
