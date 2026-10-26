import NoFourMUBs.SeedAtlas.Method.WholeBallBounds
import Mathlib.Analysis.Calculus.TaylorIntegral
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Taylor bounds with the constants used by return Z

The integral remainder gives the factorial `(n+1)!`, including `120` in
the fifth-order predictor residual and `6` in the normal-derivative expansion.
All derivative hypotheses refer to the actual function along the segment.
-/

open Set MeasureTheory
open scoped Nat

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

noncomputable def taylorJet (f : E → F) (n : ℕ) (x y : E) : F :=
  ∑ k ∈ Finset.range (n + 1), (k ! : ℝ)⁻¹ • iteratedFDeriv ℝ k f x (fun _ => y)

/-- The norm version of the integral Taylor formula, with the sharp factorial
coefficient needed in Z (7), (8), and (14). -/
theorem norm_sub_taylorJet_le {f : E → F} {n : ℕ} {x y : E} {C : ℝ}
    (hf : ∀ t ∈ Icc (0 : ℝ) 1, ContDiffAt ℝ (n + 1) f (x + t • y))
    (hC : ∀ t ∈ Icc (0 : ℝ) 1, ‖iteratedFDeriv ℝ (n + 1) f (x + t • y)‖ ≤ C) :
    ‖f (x + y) - taylorJet f n x y‖ ≤ C * ‖y‖ ^ (n + 1) / ((n + 1)! : ℝ) := by
  have he := map_add_eq_sum_add_integral_iteratedFDeriv hf
  rw [he, taylorJet, add_sub_cancel_left, norm_smul, Real.norm_eq_abs, abs_inv, Nat.abs_cast]
  have hi : ‖∫ t in (0 : ℝ)..1, (1 - t) ^ n •
      iteratedFDeriv ℝ (n + 1) f (x + t • y) (fun _ => y)‖ ≤
      ∫ t in (0 : ℝ)..1, (1 - t) ^ n * (C * ‖y‖ ^ (n + 1)) := by
    apply intervalIntegral.norm_integral_le_of_norm_le zero_le_one
    · apply Filter.Eventually.of_forall
      intro t ht
      have ht' : t ∈ Icc (0 : ℝ) 1 := ⟨ht.1.le, ht.2⟩
      rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg (pow_nonneg (sub_nonneg.mpr ht.2) _)]
      apply mul_le_mul_of_nonneg_left _ (pow_nonneg (sub_nonneg.mpr ht.2) _)
      calc
        _ ≤ ‖iteratedFDeriv ℝ (n + 1) f (x + t • y)‖ * ∏ _ : Fin (n + 1), ‖y‖ :=
          ContinuousMultilinearMap.le_opNorm _ _
        _ ≤ C * ‖y‖ ^ (n + 1) := by
          simp only [Finset.prod_const, Finset.card_univ, Fintype.card_fin]
          exact mul_le_mul_of_nonneg_right (hC t ht') (pow_nonneg (norm_nonneg _) _)
    · exact (show Continuous (fun t : ℝ => (1 - t) ^ n * (C * ‖y‖ ^ (n + 1))) by
        fun_prop).intervalIntegrable _ _
  have hint : (∫ t in (0 : ℝ)..1, (1 - t) ^ n * (C * ‖y‖ ^ (n + 1))) =
      (C * ‖y‖ ^ (n + 1)) / (n + 1) := by
    rw [intervalIntegral.integral_mul_const, intervalIntegral.integral_comp_sub_left
      (fun t : ℝ => t ^ n) 1]
    simp only [sub_self, sub_zero, integral_pow, one_pow, zero_pow (Nat.succ_ne_zero _), sub_zero]
    ring
  rw [hint] at hi
  calc
    _ ≤ (n ! : ℝ)⁻¹ * ((C * ‖y‖ ^ (n + 1)) / (n + 1)) :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ = C * ‖y‖ ^ (n + 1) / ((n + 1)! : ℝ) := by
      rw [Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
      simp only [div_eq_mul_inv, mul_inv_rev]
      ring

omit [CompleteSpace F] in
theorem norm_jetTerm_le (f : E → F) (k : ℕ) (x y : E) :
    ‖(k ! : ℝ)⁻¹ • iteratedFDeriv ℝ k f x (fun _ => y)‖ ≤
      ‖iteratedFDeriv ℝ k f x‖ * ‖y‖ ^ k / (k ! : ℝ) := by
  rw [norm_smul, Real.norm_eq_abs, abs_inv, Nat.abs_cast]
  have h := ContinuousMultilinearMap.le_opNorm (iteratedFDeriv ℝ k f x) (fun _ => y)
  simp only [Finset.prod_const, Finset.card_univ, Fintype.card_fin] at h
  calc
    _ ≤ (k ! : ℝ)⁻¹ * (‖iteratedFDeriv ℝ k f x‖ * ‖y‖ ^ k) :=
      mul_le_mul_of_nonneg_left h (by positivity)
    _ = _ := by ring

/-- Z (7), first line: the exact vanishing jets remove all terms of order
zero, one, and two. The third and fourth jets are taken after summation. -/
theorem predictor_residual_bound {f : E → F} {y : E} {r t3 t4 L5 : ℝ}
    (hy : ‖y‖ ≤ r) (ht3 : 0 ≤ t3) (ht4 : 0 ≤ t4) (hL5 : 0 ≤ L5)
    (hf : ∀ t ∈ Icc (0 : ℝ) 1, ContDiffAt ℝ 5 f (t • y))
    (h0 : f 0 = 0) (h1 : iteratedFDeriv ℝ 1 f 0 = 0) (h2 : iteratedFDeriv ℝ 2 f 0 = 0)
    (h3 : ‖iteratedFDeriv ℝ 3 f 0‖ ≤ t3) (h4 : ‖iteratedFDeriv ℝ 4 f 0‖ ≤ t4)
    (h5 : ∀ t ∈ Icc (0 : ℝ) 1, ‖iteratedFDeriv ℝ 5 f (t • y)‖ ≤ L5) :
    ‖f y‖ ≤ t3 * r ^ 3 / 6 + t4 * r ^ 4 / 24 + L5 * r ^ 5 / 120 := by
  have hr := (norm_nonneg y).trans hy
  have hrem := norm_sub_taylorJet_le (f := f) (y := y) (C := L5) (n := 4) (x := (0 : E))
    (by intro t ht; convert hf t ht using 1 <;> norm_num) (by simpa using h5)
  simp only [zero_add] at hrem
  have hj : taylorJet f 4 0 y =
      (3 ! : ℝ)⁻¹ • iteratedFDeriv ℝ 3 f 0 (fun _ => y) +
      (4 ! : ℝ)⁻¹ • iteratedFDeriv ℝ 4 f 0 (fun _ => y) := by
    simp [taylorJet, Finset.sum_range_succ, iteratedFDeriv_zero_apply, h0, h1, h2]
  have hjet : ‖taylorJet f 4 0 y‖ ≤ t3 * r ^ 3 / 6 + t4 * r ^ 4 / 24 := by
    rw [hj]
    apply (norm_add_le _ _).trans
    apply add_le_add
    · have h := (norm_jetTerm_le f 3 0 y).trans
        (div_le_div_of_nonneg_right (mul_le_mul h3 (pow_le_pow_left₀ (norm_nonneg y) hy 3)
          (by positivity) ht3) (by positivity))
      norm_num [Nat.factorial] at h ⊢
      exact h
    · have h := (norm_jetTerm_le f 4 0 y).trans
        (div_le_div_of_nonneg_right (mul_le_mul h4 (pow_le_pow_left₀ (norm_nonneg y) hy 4)
          (by positivity) ht4) (by positivity))
      norm_num [Nat.factorial] at h ⊢
      exact h
  calc
    ‖f y‖ ≤ ‖taylorJet f 4 0 y‖ + ‖f y - taylorJet f 4 0 y‖ := norm_le_insert' _ _
    _ ≤ t3 * r ^ 3 / 6 + t4 * r ^ 4 / 24 + L5 * r ^ 5 / 120 := by
      apply add_le_add hjet
      norm_num [Nat.factorial] at hrem
      exact hrem.trans (by gcongr)

/-- First-order Taylor remainder. With `C = 72` this is the coefficient `36`
in the orientation variation; it also bounds the normal-tube variation. -/
theorem norm_sub_linear_le {f : E → F} {x y : E} {C : ℝ}
    (hf : ∀ t ∈ Icc (0 : ℝ) 1, ContDiffAt ℝ 2 f (x + t • y))
    (hC : ∀ t ∈ Icc (0 : ℝ) 1, ‖iteratedFDeriv ℝ 2 f (x + t • y)‖ ≤ C) :
    ‖f (x + y) - f x - fderiv ℝ f x y‖ ≤ C * ‖y‖ ^ 2 / 2 := by
  have h := norm_sub_taylorJet_le (f := f) (x := x) (y := y) (C := C) (n := 1)
    (by intro t ht; convert hf t ht using 1; norm_num) hC
  simpa [taylorJet, Finset.sum_range_succ, iteratedFDeriv_zero_apply,
    iteratedFDeriv_one_apply, Nat.factorial, sub_add_eq_sub_sub] using h

theorem norm_sub_le_linear_quadratic {f : E → F} {x y : E} {r a C : ℝ}
    (hy : ‖y‖ ≤ r) (ha : 0 ≤ a) (hC0 : 0 ≤ C)
    (hf : ∀ t ∈ Icc (0 : ℝ) 1, ContDiffAt ℝ 2 f (x + t • y))
    (h1 : ‖fderiv ℝ f x‖ ≤ a)
    (h2 : ∀ t ∈ Icc (0 : ℝ) 1, ‖iteratedFDeriv ℝ 2 f (x + t • y)‖ ≤ C) :
    ‖f (x + y) - f x‖ ≤ a * r + C * r ^ 2 / 2 := by
  have hl : ‖fderiv ℝ f x y‖ ≤ a * r :=
    ((fderiv ℝ f x).le_opNorm y).trans (mul_le_mul h1 hy (norm_nonneg y) ha)
  have hr := (norm_nonneg y).trans hy
  have hrem := norm_sub_linear_le hf h2
  calc
    _ ≤ ‖fderiv ℝ f x y‖ + ‖(f (x + y) - f x) - fderiv ℝ f x y‖ := norm_le_insert' _ _
    _ ≤ a * r + C * r ^ 2 / 2 := add_le_add hl (hrem.trans (by gcongr))

/-- Z's `qbase`: the first two centre jets and the uniform third derivative
bound control the predictor normal derivative. -/
theorem norm_sub_le_cubic {f : E → F} {y : E} {r a b C : ℝ}
    (hy : ‖y‖ ≤ r) (ha : 0 ≤ a) (hb : 0 ≤ b) (hC0 : 0 ≤ C)
    (hf : ∀ t ∈ Icc (0 : ℝ) 1, ContDiffAt ℝ 3 f (t • y))
    (h1 : ‖iteratedFDeriv ℝ 1 f 0‖ ≤ a) (h2 : ‖iteratedFDeriv ℝ 2 f 0‖ ≤ b)
    (h3 : ∀ t ∈ Icc (0 : ℝ) 1, ‖iteratedFDeriv ℝ 3 f (t • y)‖ ≤ C) :
    ‖f y - f 0‖ ≤ a * r + b * r ^ 2 / 2 + C * r ^ 3 / 6 := by
  have hr := (norm_nonneg y).trans hy
  have hrem := norm_sub_taylorJet_le (f := f) (x := (0 : E)) (y := y) (C := C) (n := 2)
    (by intro t ht; convert hf t ht using 1 <;> norm_num) (by simpa using h3)
  have hj : taylorJet f 2 0 y - f 0 =
      (1 ! : ℝ)⁻¹ • iteratedFDeriv ℝ 1 f 0 (fun _ => y) +
      (2 ! : ℝ)⁻¹ • iteratedFDeriv ℝ 2 f 0 (fun _ => y) := by
    simp [taylorJet, Finset.sum_range_succ, iteratedFDeriv_zero_apply]
    abel
  have hjet : ‖taylorJet f 2 0 y - f 0‖ ≤ a * r + b * r ^ 2 / 2 := by
    rw [hj]
    apply (norm_add_le _ _).trans
    apply add_le_add
    · have h := (norm_jetTerm_le f 1 0 y).trans
        (div_le_div_of_nonneg_right (mul_le_mul h1 (pow_le_pow_left₀ (norm_nonneg y) hy 1)
          (by positivity) ha) (by positivity))
      simpa [Nat.factorial] using h
    · have h := (norm_jetTerm_le f 2 0 y).trans
        (div_le_div_of_nonneg_right (mul_le_mul h2 (pow_le_pow_left₀ (norm_nonneg y) hy 2)
          (by positivity) hb) (by positivity))
      simpa [Nat.factorial] using h
  calc
    _ ≤ ‖taylorJet f 2 0 y - f 0‖ + ‖f y - taylorJet f 2 0 y‖ := by
      simpa only [sub_sub_sub_cancel_right] using norm_le_insert' (f y - f 0) (taylorJet f 2 0 y - f 0)
    _ ≤ a * r + b * r ^ 2 / 2 + C * r ^ 3 / 6 := by
      apply add_le_add hjet
      norm_num [Nat.factorial] at hrem
      exact hrem.trans (by gcongr)

end NoFourMUBs.SeedAtlas.Method.WholeBall
