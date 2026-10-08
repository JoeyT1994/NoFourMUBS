import FormalCore
import Mathlib.Data.Real.Sqrt
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
namespace Mub6.Numerical.D0Local
noncomputable def r2 : ℝ := Real.sqrt 2
noncomputable def r3 : ℝ := Real.sqrt 3
noncomputable def r5 : ℝ := Real.sqrt 5
theorem r2_sq : r2 ^ 2 = 2 := by norm_num [r2]
theorem r3_sq : r3 ^ 2 = 3 := by norm_num [r3]
theorem r5_sq : r5 ^ 2 = 5 := by norm_num [r5]

noncomputable def d0 : BasisMatrix :=
  ![![(⟨1, 0⟩ : ℂ), (⟨1, 0⟩ : ℂ), (⟨1, 0⟩ : ℂ), (⟨1, 0⟩ : ℂ), (⟨1, 0⟩ : ℂ), (⟨1, 0⟩ : ℂ)],
    ![(⟨1, 0⟩ : ℂ), (⟨-1, 0⟩ : ℂ), (⟨0, 1⟩ : ℂ), (⟨0, -1⟩ : ℂ), (⟨0, -1⟩ : ℂ), (⟨0, 1⟩ : ℂ)],
    ![(⟨1, 0⟩ : ℂ), (⟨0, 1⟩ : ℂ), (⟨-1, 0⟩ : ℂ), (⟨0, 1⟩ : ℂ), (⟨0, -1⟩ : ℂ), (⟨0, -1⟩ : ℂ)],
    ![(⟨1, 0⟩ : ℂ), (⟨0, -1⟩ : ℂ), (⟨0, 1⟩ : ℂ), (⟨-1, 0⟩ : ℂ), (⟨0, 1⟩ : ℂ), (⟨0, -1⟩ : ℂ)],
    ![(⟨1, 0⟩ : ℂ), (⟨0, -1⟩ : ℂ), (⟨0, -1⟩ : ℂ), (⟨0, 1⟩ : ℂ), (⟨-1, 0⟩ : ℂ), (⟨0, 1⟩ : ℂ)],
    ![(⟨1, 0⟩ : ℂ), (⟨0, 1⟩ : ℂ), (⟨0, -1⟩ : ℂ), (⟨0, -1⟩ : ℂ), (⟨0, 1⟩ : ℂ), (⟨-1, 0⟩ : ℂ)]]

noncomputable def thirdRaw : BasisMatrix :=
  ![![(⟨(1 : ℝ), 0⟩ : ℂ), (⟨(1 : ℝ), 0⟩ : ℂ), (⟨(1 : ℝ), 0⟩ : ℂ), (⟨(1 : ℝ), 0⟩ : ℂ), (⟨(1 : ℝ), 0⟩ : ℂ), (⟨(1 : ℝ), 0⟩ : ℂ)],
    ![(⟨(1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3, (-1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3⟩ : ℂ), (⟨(-1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3, (1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3⟩ : ℂ), (⟨(-1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3, (1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3⟩ : ℂ), (⟨(1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3, (-1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3⟩ : ℂ), (⟨(2 / 5 : ℝ) * r5, (1 / 5 : ℝ) * r5⟩ : ℂ), (⟨(-2 / 5 : ℝ) * r5, (-1 / 5 : ℝ) * r5⟩ : ℂ)],
    ![(⟨(-1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ), (⟨(1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ), (⟨(-1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ), (⟨(1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ), (⟨0, (-1 : ℝ)⟩ : ℂ), (⟨0, (-1 : ℝ)⟩ : ℂ)],
    ![(⟨(1 / 2 : ℝ) * r2, (-1 / 2 : ℝ) * r2⟩ : ℂ), (⟨(-1 / 2 : ℝ) * r2, (1 / 2 : ℝ) * r2⟩ : ℂ), (⟨(-1 / 2 : ℝ) * r2, (1 / 2 : ℝ) * r2⟩ : ℂ), (⟨(1 / 2 : ℝ) * r2, (-1 / 2 : ℝ) * r2⟩ : ℂ), (⟨(-2 / 5 : ℝ) * r5, (-1 / 5 : ℝ) * r5⟩ : ℂ), (⟨(2 / 5 : ℝ) * r5, (1 / 5 : ℝ) * r5⟩ : ℂ)],
    ![(⟨(1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ), (⟨(-1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ), (⟨(1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ), (⟨(-1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ), (⟨0, (-1 : ℝ)⟩ : ℂ), (⟨0, (-1 : ℝ)⟩ : ℂ)],
    ![(⟨(1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3, (-1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3⟩ : ℂ), (⟨(-1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3, (1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3⟩ : ℂ), (⟨(-1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3, (1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3⟩ : ℂ), (⟨(1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3, (-1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3⟩ : ℂ), (⟨(2 / 5 : ℝ) * r5, (1 / 5 : ℝ) * r5⟩ : ℂ), (⟨(-2 / 5 : ℝ) * r5, (-1 / 5 : ℝ) * r5⟩ : ℂ)]]

theorem sum6 (f : Fin 6 → ℂ) : (∑ r, f r) =
    f 0 + (f 1 + (f 2 + (f 3 + (f 4 + f 5)))) := by
  simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, add_zero]
  rfl

macro "radical_ring" : tactic => `(tactic|
  (norm_num [Complex.normSq_apply] <;> ring_nf <;>
    simp only [r2_sq, r3_sq, r5_sq] <;> norm_num))

theorem d0_unit : ∀ r k, Complex.normSq (d0 r k) = 1 := by
  intro r k
  fin_cases r <;> fin_cases k
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨-1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨-1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨-1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨-1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨1, 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, -1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, 1⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨-1, 0⟩ : ℂ) = 1
    radical_ring

theorem thirdRaw_unit : ∀ r k, Complex.normSq (thirdRaw r k) = 1 := by
  intro r k
  fin_cases r <;> fin_cases k
  · change Complex.normSq (⟨(1 : ℝ), 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 : ℝ), 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 : ℝ), 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 : ℝ), 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 : ℝ), 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 : ℝ), 0⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3, (-1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3, (1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3, (1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3, (-1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(2 / 5 : ℝ) * r5, (1 / 5 : ℝ) * r5⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-2 / 5 : ℝ) * r5, (-1 / 5 : ℝ) * r5⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, (-1 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, (-1 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 2 : ℝ) * r2, (-1 / 2 : ℝ) * r2⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 2 : ℝ) * r2, (1 / 2 : ℝ) * r2⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 2 : ℝ) * r2, (1 / 2 : ℝ) * r2⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 2 : ℝ) * r2, (-1 / 2 : ℝ) * r2⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-2 / 5 : ℝ) * r5, (-1 / 5 : ℝ) * r5⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(2 / 5 : ℝ) * r5, (1 / 5 : ℝ) * r5⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 2 : ℝ) * r3, (1 / 2 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, (-1 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨0, (-1 : ℝ)⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3, (-1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3, (1 / 4 : ℝ) * r2 + (-1 / 4 : ℝ) * r2 * r3⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3, (1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3, (-1 / 4 : ℝ) * r2 + (1 / 4 : ℝ) * r2 * r3⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(2 / 5 : ℝ) * r5, (1 / 5 : ℝ) * r5⟩ : ℂ) = 1
    radical_ring
  · change Complex.normSq (⟨(-2 / 5 : ℝ) * r5, (-1 / 5 : ℝ) * r5⟩ : ℂ) = 1
    radical_ring

#print axioms d0_unit
#print axioms thirdRaw_unit
end Mub6.Numerical.D0Local
