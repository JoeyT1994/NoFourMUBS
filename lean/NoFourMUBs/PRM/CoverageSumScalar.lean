import Mathlib

/-!
# Complementary critical scalar equations

From the sum-rule return of 14 Oct 2026 (`covret/partial`); compiled here.

This module formalizes the division-free part of
`reference/MinimalConstruction/Proofs/CRITICAL_CORNER_REDUCTION.md`.
It assumes only scalar physicality and the two critical equations; it does
not assume or assert that the scalar data come from a Hadamard matrix.
-/

noncomputable section

namespace NoFourMUBs.PRM.CoverageSum

def critR (p J W : ℝ) : ℝ :=
  4 * (27 - 3 * p + J) ^ 2 * (9 - p + J) -
    (W - (p - 9) * (p - 18) + (p - 15) * J) ^ 2

def critB (p J W : ℝ) : ℝ := 2 * J ^ 2 - W * p + 15 * W + p ^ 3 - 12 * p ^ 2 + 27 * p

def critC (p J W : ℝ) : ℝ :=
  2 * J ^ 2 + 2 * J * p ^ 2 - 60 * J * p + 450 * J - p ^ 3 + 72 * p ^ 2 +
    p * W - 1107 * p - 15 * W + 4860

/-- Subtracting the two complementary equations. -/
theorem difference_identity (p J W : ℝ) : critR p J W - critR p (-J) W = 4 * J * critB p J W := by
  unfold critR critB
  ring

/-- Elimination without division by p-15, J, a permanent, or a determinant. -/
theorem elimination_identity (p J W : ℝ) :
    (p - 15) ^ 2 * critR p J W +
        (J ^ 2 + 36 * p) * (4 * J ^ 2 + (p - 9) ^ 3 * (p - 5)) = critB p J W * critC p J W := by
  unfold critR critB critC
  ring

/-- A useful linear consequence once the J-squared equation is available. -/
theorem W_identity (p J W : ℝ) :
    (p - 15) * (W + (p - 9) * (p ^ 2 - 10 * p + 27) / 2) =
      -critB p J W + 2 * (J ^ 2 - (9 - p) ^ 3 * (p - 5) / 4) := by
  unfold critB
  ring

/-- The full nonzero-J scalar reduction, with explicit physical hypotheses. -/
theorem nonzero_J_reduction (p J W : ℝ) (hp : 0 ≤ p) (hphysical : p + |J| ≤ 9)
    (hJ : J ≠ 0) (hplus : critR p J W = 0) (hminus : critR p (-J) W = 0) :
    5 < p ∧ p < 9 ∧ J ^ 2 = (9 - p) ^ 3 * (p - 5) / 4 ∧
      W = -(p - 9) * (p ^ 2 - 10 * p + 27) / 2 := by
  have hp9 : p ≤ 9 := by linarith [abs_nonneg J]
  have hJ2 : 0 < J ^ 2 := sq_pos_of_ne_zero hJ
  have hB : critB p J W = 0 := by
    have h := difference_identity p J W
    rw [hplus, hminus, sub_self] at h
    have h4J : 4 * J ≠ 0 := mul_ne_zero (by norm_num) hJ
    exact (mul_eq_zero.mp h.symm).resolve_left h4J
  have hprod : (J ^ 2 + 36 * p) * (4 * J ^ 2 + (p - 9) ^ 3 * (p - 5)) = 0 := by
    have h := elimination_identity p J W
    simpa only [hplus, hB, mul_zero, zero_mul, zero_add] using h
  have hfirst : J ^ 2 + 36 * p ≠ 0 := by nlinarith
  have hfactor := (mul_eq_zero.mp hprod).resolve_left hfirst
  have hrel : J ^ 2 = (9 - p) ^ 3 * (p - 5) / 4 := by
    nlinarith only [hfactor]
  have hlt9 : p < 9 := by
    by_contra h
    have he : p = 9 := le_antisymm hp9 (le_of_not_gt h)
    subst p
    norm_num at hrel
    nlinarith
  have hq : 0 < (9 - p) ^ 3 := by positivity
  have hgt5 : 5 < p := by
    by_contra h
    have hle : p - 5 ≤ 0 := by linarith
    have hn := mul_nonpos_of_nonneg_of_nonpos (le_of_lt hq) hle
    nlinarith [hrel]
  have hW : W + (p - 9) * (p ^ 2 - 10 * p + 27) / 2 = 0 := by
    have h := W_identity p J W
    rw [hB, hrel] at h
    have hne : p - 15 ≠ 0 := by linarith
    have hz : (p - 15) * (W + (p - 9) * (p ^ 2 - 10 * p + 27) / 2) = 0 := by
      simpa using h
    exact (mul_eq_zero.mp hz).resolve_left hne
  exact ⟨hgt5, hlt9, hrel, by linarith⟩

/-- The zero-J stratum is retained, including p=9 and permanent-zero points. -/
theorem zero_J_identity (p W : ℝ) :
    critR p 0 W = 36 * (9 - p) ^ 3 - (W - (9 - p) * (18 - p)) ^ 2 := by
  unfold critR
  ring

theorem zero_J_critical_iff (p W : ℝ) :
    critR p 0 W = 0 ↔ (W - (9 - p) * (18 - p)) ^ 2 = 36 * (9 - p) ^ 3 := by
  rw [zero_J_identity]
  constructor <;> intro h <;> linarith

/-- Conversely, the two scalar equations imply both critical equations.
This is not an existence theorem for physical matrices. -/
theorem scalar_converse (p J W : ℝ)
    (hJ : J ^ 2 = (9 - p) ^ 3 * (p - 5) / 4)
    (hW : W = -(p - 9) * (p ^ 2 - 10 * p + 27) / 2) :
    critR p J W = 0 ∧ critR p (-J) W = 0 := by
  subst W
  constructor
  · unfold critR
    linear_combination
      (4 * J + (-p ^ 2 + 2 * p + 27)) * hJ
  · unfold critR
    linear_combination
      (-4 * J + (-p ^ 2 + 2 * p + 27)) * hJ

end NoFourMUBs.PRM.CoverageSum
