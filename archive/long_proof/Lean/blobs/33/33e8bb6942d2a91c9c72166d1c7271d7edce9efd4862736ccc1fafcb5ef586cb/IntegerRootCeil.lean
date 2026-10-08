import IntegerNormFloor

/-! Exact ceiling square roots and the actual real bounds supplied by the
corrected rootceil loop's two postconditions. Zero and perfect squares remain
included. This module does not certify a machine implementation or overflow. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007

def naturalRootCeil (n : ℕ) : ℕ :=
  if (Nat.sqrt n)^2 = n then Nat.sqrt n else Nat.sqrt n + 1

theorem naturalRootCeil_real_nonneg (n : ℕ) : (0 : ℝ) ≤ (naturalRootCeil n : ℝ) := by
  positivity

theorem naturalRootCeil_real_bounds (n : ℕ) :
    Real.sqrt (n : ℝ) ≤ (naturalRootCeil n : ℝ) ∧
      (naturalRootCeil n : ℝ) < Real.sqrt (n : ℝ)+1 := by
  obtain ⟨hl,hu⟩ := nat_sqrt_real_bounds n
  have hs := Real.sq_sqrt (show (0 : ℝ) ≤ (n : ℝ) by positivity)
  have hsr := Real.sqrt_nonneg (n : ℝ)
  have hroot : (0 : ℝ) ≤ (Nat.sqrt n : ℝ) := by positivity
  by_cases he : (Nat.sqrt n)^2 = n
  · have he' : (Nat.sqrt n : ℝ)^2 = (n : ℝ) := by exact_mod_cast he
    have hsame : (Nat.sqrt n : ℝ) = Real.sqrt (n : ℝ) := by nlinarith
    simp only [naturalRootCeil,if_pos he,hsame]
    constructor <;> linarith
  · have hlt : (Nat.sqrt n)^2 < n := by
      have hle := Nat.sqrt_le' n
      omega
    have hlt' : (Nat.sqrt n : ℝ)^2 < (n : ℝ) := by exact_mod_cast hlt
    have hstrict : (Nat.sqrt n : ℝ) < Real.sqrt (n : ℝ) := by nlinarith
    simp only [naturalRootCeil,if_neg he,Nat.cast_add,Nat.cast_one]
    constructor <;> linarith

theorem naturalRootCeil_error (n : ℕ) :
    0 ≤ (naturalRootCeil n : ℝ)-Real.sqrt (n : ℝ) ∧
      (naturalRootCeil n : ℝ)-Real.sqrt (n : ℝ) < 1 := by
  obtain ⟨hl,hu⟩ := naturalRootCeil_real_bounds n
  constructor <;> linarith

/-- These are exactly the inequalities after the increment/decrement
correction loops; no correctness of an initial floating estimate is needed. -/
theorem corrected_rootceil_real_bounds (n r : ℕ)
    (hl : n ≤ r*r) (hu : r=0 ∨ (r-1)*(r-1) < n) :
    Real.sqrt (n : ℝ) ≤ (r : ℝ) ∧ (r : ℝ) < Real.sqrt (n : ℝ)+1 := by
  cases r with
  | zero =>
      have hn : n=0 := by omega
      simp [hn]
  | succ r =>
      have hprev : r*r < n := by simpa using hu
      have hprev' : (r : ℝ)*(r : ℝ) < (n : ℝ) := by exact_mod_cast hprev
      have htop : (n : ℝ) ≤ ((r : ℝ)+1)*((r : ℝ)+1) := by exact_mod_cast hl
      have hs := Real.sq_sqrt (show (0 : ℝ) ≤ (n : ℝ) by positivity)
      have hsr := Real.sqrt_nonneg (n : ℝ)
      have hr : (0 : ℝ) ≤ (r : ℝ) := by positivity
      simp only [Nat.cast_succ]
      constructor <;> nlinarith

theorem corrected_rootceil_error (n r : ℕ)
    (hl : n ≤ r*r) (hu : r=0 ∨ (r-1)*(r-1) < n) :
    0 ≤ (r : ℝ)-Real.sqrt (n : ℝ) ∧ (r : ℝ)-Real.sqrt (n : ℝ) < 1 := by
  obtain ⟨hlo,hhi⟩ := corrected_rootceil_real_bounds n r hl hu
  constructor <;> linarith

#print axioms naturalRootCeil_real_nonneg
#print axioms naturalRootCeil_real_bounds
#print axioms naturalRootCeil_error
#print axioms corrected_rootceil_real_bounds
#print axioms corrected_rootceil_error
end Seed0024ClusterTube20261007
