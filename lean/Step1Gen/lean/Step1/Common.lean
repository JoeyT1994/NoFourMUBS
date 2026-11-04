import Mathlib

/-!
# Elementary soundness lemmas for the Step 1 certificates

This file contains ordinary Lean proofs.  No data-dependent oracle is used.
`Generated*.lean` files are produced from rational certificate data by
`generation/generate_lean.py` and rely on `ring`, `norm_num`, and these lemmas.
-/

set_option autoImplicit false

open scoped Topology

namespace Step1

/-- A local maximum of a function descends, and lifts, through a continuous
open surjection.  This is the filter form of the finite orbit quotient step. -/
theorem localMax_iff_openQuotient
    {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    (q : X → Y) (hq : IsOpenQuotientMap q) (f : Y → ℝ) (x : X) :
    IsLocalMax (f ∘ q) x ↔ IsLocalMax f (q x) := by
  unfold IsLocalMax IsMaxFilter
  rw [← hq.map_nhds_eq x]
  rfl

/-- Positive derivatives at both endpoints make a quadratic strictly
increasing throughout the closed interval.  The proof uses the exact divided
difference, so it does not require a separate calculus formalization. -/
theorem quadratic_strictMonoOn
    (a b d lower upper : ℝ)
    (hLower : 0 < 2 * a * lower + b)
    (hUpper : 0 < 2 * a * upper + b) :
    StrictMonoOn (fun x : ℝ => a * x ^ 2 + b * x + d)
      (Set.Icc lower upper) := by
  intro x hx y hy hxy
  change lower ≤ x ∧ x ≤ upper at hx
  change lower ≤ y ∧ y ≤ upper at hy
  have hSlope : 0 < a * (x + y) + b := by
    rcases le_total 0 a with ha | ha
    · have hProduct : 0 ≤ a * ((x - lower) + (y - lower)) :=
        mul_nonneg ha (by linarith [hx.1, hy.1])
      nlinarith
    · have hProduct : 0 ≤ (-a) * ((upper - x) + (upper - y)) :=
        mul_nonneg (neg_nonneg.mpr ha) (by linarith [hx.2, hy.2])
      nlinarith
  have hDifference : 0 < (y - x) * (a * (x + y) + b) :=
    mul_pos (sub_pos.mpr hxy) hSlope
  nlinarith

/-- A quadratic with positive endpoint derivatives and opposite endpoint
signs has exactly one zero in the displayed rational interval.  The case
`a = 0` includes linear polynomials. -/
theorem quadratic_unique_root
    (a b d lower upper : ℝ)
    (hOrder : lower ≤ upper)
    (hLeft : a * lower ^ 2 + b * lower + d ≤ 0)
    (hRight : 0 ≤ a * upper ^ 2 + b * upper + d)
    (hDerivLeft : 0 < 2 * a * lower + b)
    (hDerivRight : 0 < 2 * a * upper + b) :
    ∃! x : ℝ, x ∈ Set.Icc lower upper ∧
      a * x ^ 2 + b * x + d = 0 := by
  let f : ℝ → ℝ := fun x => a * x ^ 2 + b * x + d
  have hContinuous : ContinuousOn f (Set.Icc lower upper) := by
    dsimp [f]
    fun_prop
  obtain ⟨x, hx, hfx⟩ :=
    intermediate_value_Icc hOrder hContinuous ⟨hLeft, hRight⟩
  have hMono : StrictMonoOn f (Set.Icc lower upper) :=
    quadratic_strictMonoOn a b d lower upper hDerivLeft hDerivRight
  refine ⟨x, ⟨hx, hfx⟩, ?_⟩
  intro y hy
  rcases lt_trichotomy y x with hlt | heq | hgt
  · have h : f y < f x := hMono hy.1 hx hlt
    change a * y ^ 2 + b * y + d < a * x ^ 2 + b * x + d at h
    change a * x ^ 2 + b * x + d = 0 at hfx
    rw [hy.2, hfx] at h
    exact (lt_irrefl (0 : ℝ) h).elim
  · exact heq
  · have h : f x < f y := hMono hx hy.1 hgt
    change a * x ^ 2 + b * x + d < a * y ^ 2 + b * y + d at h
    change a * x ^ 2 + b * x + d = 0 at hfx
    rw [hfx, hy.2] at h
    exact (lt_irrefl (0 : ℝ) h).elim

/-- The physical constraint `y ≥ -1` selects the required root of the
transverse quadratic and puts it in the certified dyadic interval.  Merely
proving that an interval contains a unique root would not prove this capture
statement.  The final inequality is the positive transverse curvature margin. -/
theorem physical_transverse_capture
    (y : ℝ) (hPhysical : -1 ≤ y)
    (hRoot : 4 * y ^ 2 + 6 * y + 1 = 0) :
    ((-49 : ℝ) / 256 < y) ∧ (y < (-3 : ℝ) / 16) ∧
      (4125 : ℝ) / 32 < 660 * (46 * y + 9) := by
  have hSlopeLower : 0 < 4 * (y + (-49 : ℝ) / 256) + 6 := by
    linarith
  have hSlopeUpper : 0 < 4 * (y + (-3 : ℝ) / 16) + 6 := by
    linarith
  have hLower : (-49 : ℝ) / 256 < y := by
    by_contra h
    have hDistance : y - (-49 : ℝ) / 256 ≤ 0 := by linarith
    have hProduct := mul_nonpos_of_nonpos_of_nonneg hDistance (le_of_lt hSlopeLower)
    nlinarith
  have hUpper : y < (-3 : ℝ) / 16 := by
    by_contra h
    have hDistance : 0 ≤ y - (-3 : ℝ) / 16 := by linarith
    have hProduct := mul_nonneg hDistance (le_of_lt hSlopeUpper)
    nlinarith
  exact ⟨hLower, hUpper, by linarith⟩

end Step1
