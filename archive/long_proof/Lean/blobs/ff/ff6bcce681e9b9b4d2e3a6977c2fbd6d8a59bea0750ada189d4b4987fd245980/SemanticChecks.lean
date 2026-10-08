import RationalRootCertificates
import HybridLambdaMasks

/-! Reviewer-only checks of two important scope boundaries. These are not
additional classification payload and make no carrier exclusion claim. -/
namespace RadicalEnclosureReview
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.RadicalIntervals
open Hadamard6Extensions.FourPhaseRoots Hadamard6Extensions.FourierSide

/-- Zero residual at a nonprincipal root does not put the principal root in
the zero-radius center box. The existential root wording is essential. -/
theorem zero_residual_does_not_control_principal_root :
    Complex.normSq ((1 : ℂ)-omega^3)=0 ∧
      ¬ Complex.normSq (cubeRoot (1 : ℂ)-omega) ≤ (0 : ℝ)^2 := by
  have hn : omega ≠ 1 := by
    intro h
    have hw := omega_quadratic
    rw [h] at hw
    norm_num at hw
  have hc : cubeRoot (1 : ℂ)=1 := by simp [cubeRoot]
  constructor
  · rw [omega_cube omega_quadratic]
    simp
  · rw [hc]
    intro h
    have hz : Complex.normSq ((1 : ℂ)-omega)=0 :=
      le_antisymm (by simpa using h) (Complex.normSq_nonneg _)
    have he := Complex.normSq_eq_zero.mp hz
    exact hn (sub_eq_zero.mp he).symm

/-- When numerator and denominator are exactly zero, any actual unit lambda
is retained. There is no hidden division-by-zero phase selection. -/
theorem pole_enclosure_retains_every_unit_phase (L : ℂ) (hL : Complex.normSq L=1) :
    MemRectangle (phaseQuotientBox (boxPoint 0 0) (boxPoint 0 0)) L := by
  have hz : MemRectangle (boxPoint 0 0) (0 : ℂ) := by
    simpa using mem_boxPoint_complex 0 0
  exact phaseQuotientBox_sound hz hz hL (by simp)

#check zero_residual_does_not_control_principal_root
#print axioms zero_residual_does_not_control_principal_root
#check pole_enclosure_retains_every_unit_phase
#print axioms pole_enclosure_retains_every_unit_phase
end RadicalEnclosureReview
