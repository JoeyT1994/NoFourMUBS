import FourierCompleteEndpoint
import FourierCriticalEquivalences

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

namespace FourierCompleteLocus20261003
open Mub6 FourierCriticalLocus20261003 GlobalCornerSixSine
noncomputable section

/-- Exact carrier identification using only the small Fourier algebra branch.
This avoids importing the global atlas merely to expand the named matrix. -/
theorem fixed_matrix_eq : fixedF6 = FourierExactCarrier20261003.matrix := by
  have hω : Hadamard6.standardOmega = FourierExactCarrier20261003.omega := by
    apply Complex.ext <;>
      norm_num [Hadamard6.standardOmega, FourierExactCarrier20261003.omega]
  have hstd := Hadamard6.standardOmega_isPrimitiveCubicPhase
  have hs := Hadamard6.star_eq_square_of_quadratic_unit hstd.1 hstd.2
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [fixedF6, N, FourierExactCarrier20261003.matrix, ← hω, hs]

/-- The lightweight algebraic representative has the unconditional physical
exclusion, with no cover or parameter-classification premise. -/
theorem fixedF6_excluded :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ fixedF6) :=
  Eq.mpr (congrArg
    (fun H : BasisMatrix => ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H))
    fixed_matrix_eq) FourierCompleteEndpoint20261003.fixed_pilot_excluded

/-- Three explicit signed-corner equations impose the checked twelve-point
Fourier locus. These are polynomial identities, not an exclusion premise. -/
theorem three_skews_fixed {ω z w : ℂ}
    (hω : Worker12.PrimitiveCubicPhase ω)
    (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1)
    (h0 : sixSkew 1 z w 1 (ω*z) (ω^2*w) = 0)
    (h1 : sixSkew 1 z (-w) 1 (ω*z) (-(ω^2*w)) = 0)
    (h2 : sixSkew 1 (-z) w 1 (-(ω*z)) (ω^2*w) = 0) :
    MonomialEquivalent (N ω z w) fixedF6 := by
  obtain ⟨hX, hY, _⟩ := three_skews_zero hω.1 hω.2 hz hw h0 h1 h2
  obtain ⟨hA, hB⟩ := zero_phases_squares hz hw hX hY
  obtain ⟨a, ε, δ, hza, hwa⟩ := locus_twelve_grid hω.2 hA hB
  rw [hza, hwa]
  exact Worker12.monomialEquivalent_trans (N_grid_equivalent hω.2 a ε δ)
    (N_primitive_fixed hω)

/-- Actual quartet exclusion on the explicit locus, preserving both primitive
cubic orientations and both transpose/monomial branches. The connection from
the historical AllCritical predicate to these equations stays in its separately
checked producer; this endpoint does not import or assume that connection. -/
theorem three_skews_monomial_excluded {H : BasisMatrix} {ω z w : ℂ}
    (hω : Worker12.PrimitiveCubicPhase ω)
    (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1)
    (h0 : sixSkew 1 z w 1 (ω*z) (ω^2*w) = 0)
    (h1 : sixSkew 1 z (-w) 1 (ω*z) (-(ω^2*w)) = 0)
    (h2 : sixSkew 1 (-z) w 1 (-(ω*z)) (ω^2*w) = 0)
    (he : MonomialEquivalent H (N ω z w) ∨ MonomialEquivalent H (N ω z w)ᵀ) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) := by
  have hn := three_skews_fixed hω hz hw h0 h1 h2
  have hm : MonomialEquivalent H fixedF6 := by
    rcases he with he | he
    · exact Worker12.monomialEquivalent_trans he hn
    · have ht := Worker12.monomialEquivalent_transpose hn
      change MonomialEquivalent (N ω z w)ᵀ fixedF6ᵀ at ht
      rw [fixedF6_transpose] at ht
      exact Worker12.monomialEquivalent_trans he ht
  rw [fixed_matrix_eq] at hm
  exact FourierCompleteEndpoint20261003.fixed_monomial_class_excluded hm

#print axioms fixed_matrix_eq
#print axioms fixedF6_excluded
#print axioms three_skews_fixed
#print axioms three_skews_monomial_excluded
end
end FourierCompleteLocus20261003
