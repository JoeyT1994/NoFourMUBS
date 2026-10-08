import CriticalStripPhysical
import CriticalPositiveParam
import CriticalZeroPoles

set_option autoImplicit false
namespace CriticalPhysicalParameters20261003
open Mub6 Mub6.Classification
open CompactCover GlobalCornerDomain CriticalPhysical20261003
noncomputable section

theorem actual_nonzero_corner_parameter {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) (hj : sideJ (stripCorner H c)≠0) :
    ∃ k : ℝ, 0<k ∧ sideP (stripCorner H c)=CriticalRationalParam20261003.p k ∧
      |sideJ (stripCorner H c)|=CriticalRationalParam20261003.j k ∧
      sideW (stripCorner H c)=CriticalRationalParam20261003.w k := by
  obtain ⟨h0,hb,hp,hm⟩ := allCritical_strip_scalar_premises hH c
  exact CriticalRationalParam20261003.positive_magnitude_parameterization h0 hb hj hp hm

theorem actual_zero_corner_parameter {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) (hj : sideJ (stripCorner H c)=0) :
    ∃ z : ℝ, -3≤z ∧ z≤3 ∧ sideP (stripCorner H c)=9-z^2 ∧
      sideW (stripCorner H c)=z^2*(z+3)^2 := by
  obtain ⟨h0,hb,hp,_⟩ := allCritical_strip_scalar_premises hH c
  have h9 : sideP (stripCorner H c)≤9 := by simpa [hj] using hb
  rw [hj] at hp
  exact CriticalScalarReduction20261003.zero_parameterization h0 h9 hp

/-- An exhaustive necessary parameter description of every actual corner.
It is not a sufficient reconstruction criterion or a finite classification. -/
theorem actual_corner_parameter_cases {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) :
    (sideJ (stripCorner H c)=0 ∧ ∃ z : ℝ, -3≤z ∧ z≤3 ∧
      sideP (stripCorner H c)=9-z^2 ∧ sideW (stripCorner H c)=z^2*(z+3)^2) ∨
    (sideJ (stripCorner H c)≠0 ∧ ∃ k : ℝ, 0<k ∧
      sideP (stripCorner H c)=CriticalRationalParam20261003.p k ∧
      |sideJ (stripCorner H c)|=CriticalRationalParam20261003.j k ∧
      sideW (stripCorner H c)=CriticalRationalParam20261003.w k) := by
  by_cases hj : sideJ (stripCorner H c)=0
  · exact Or.inl ⟨hj,actual_zero_corner_parameter hH c hj⟩
  · exact Or.inr ⟨hj,actual_nonzero_corner_parameter hH c hj⟩

/-- Exact binding of the Gram g coefficient, with no physical hypothesis. -/
theorem moment_g (s t r : ℂ) :
    FourierGramNumerators.g s t r=27-3*momentP s t r+momentJ s t r := by
  simp [FourierGramNumerators.g,FourierGramNumerators.sigma,FourierGramNumerators.q,
    momentP,momentJ]
  ring

/-- The moment denominators for actual complex data have no hidden zero
correlation exception in the regular zero-J stratum. -/
theorem actual_moment_denominators (s t r : ℂ) (z : ℝ)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : momentP s t r=9-z^2) (hj : momentJ s t r=0)
    (hw : momentW s t r=z^2*(z+3)^2) :
    FourierGramNumerators.g s t r+(9-Complex.normSq s)*z≠0 ∧
    FourierGramNumerators.g s t r+(9-Complex.normSq t)*z≠0 ∧
    FourierGramNumerators.g s t r+(9-Complex.normSq r)*z≠0 := by
  have hD := CriticalScalarReduction20261003.zero_all_moment_denominators z
    (Complex.normSq s) (Complex.normSq t) (Complex.normSq r)
    (Complex.normSq_nonneg s) (Complex.normSq_nonneg t) (Complex.normSq_nonneg r)
    hzlo hz0 hz3 hz2 hp hw
  have hg : FourierGramNumerators.g s t r=3*z^2 := by rw [moment_g,hp,hj]; ring
  have hs : FourierGramNumerators.g s t r+(9-Complex.normSq s)*z=
      z*(3*z+9-Complex.normSq s) := by rw [hg]; ring
  have ht : FourierGramNumerators.g s t r+(9-Complex.normSq t)*z=
      z*(3*z+9-Complex.normSq t) := by rw [hg]; ring
  have hr : FourierGramNumerators.g s t r+(9-Complex.normSq r)*z=
      z*(3*z+9-Complex.normSq r) := by rw [hg]; ring
  rw [hs,ht,hr]
  exact hD

end
#print axioms actual_nonzero_corner_parameter
#print axioms actual_zero_corner_parameter
#print axioms actual_corner_parameter_cases
#print axioms moment_g
#print axioms actual_moment_denominators
end CriticalPhysicalParameters20261003
