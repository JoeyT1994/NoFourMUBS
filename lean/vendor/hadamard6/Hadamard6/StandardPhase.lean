import Hadamard6.TaoOrbit
import Mathlib.Analysis.SpecialFunctions.Sqrt

/-! Shared declarations moved unchanged from TaoAtlas.lean. -/

noncomputable section
namespace Hadamard6

/-- A fixed primitive cubic phase, used when a concrete witness rather than
an arbitrary primitive phase is required. -/
noncomputable def standardOmega : ℂ :=
  ⟨-(1 / 2 : ℝ), Real.sqrt 3 / 2⟩

theorem standardOmega_isPrimitiveCubicPhase :
    IsPrimitiveCubicPhase standardOmega := by
  have hsqrt : (Real.sqrt 3) ^ 2 = 3 :=
    Real.sq_sqrt (by norm_num)
  constructor
  · rw [Complex.normSq_apply]
    simp [standardOmega]
    nlinarith
  · apply Complex.ext <;>
      simp [standardOmega, pow_two, Complex.mul_re, Complex.mul_im] <;>
      nlinarith


end Hadamard6
