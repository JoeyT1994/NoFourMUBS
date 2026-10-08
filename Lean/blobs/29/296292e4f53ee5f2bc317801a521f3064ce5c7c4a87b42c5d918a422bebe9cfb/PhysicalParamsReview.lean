import CriticalPhysicalParams

set_option autoImplicit false
namespace PhysicalParamsIndependentReview20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain
open CriticalPhysical20261003 CriticalPhysicalParameters20261003
noncomputable section

theorem literal_actual_exhaustion {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) :
    (sideJ (stripCorner H c)=0 ∧ ∃ z : ℝ, -3≤z ∧ z≤3 ∧
      sideP (stripCorner H c)=9-z^2 ∧ sideW (stripCorner H c)=z^2*(z+3)^2) ∨
    (sideJ (stripCorner H c)≠0 ∧ ∃ k : ℝ, 0<k ∧
      sideP (stripCorner H c)=CriticalRationalParam20261003.p k ∧
      |sideJ (stripCorner H c)|=CriticalRationalParam20261003.j k ∧
      sideW (stripCorner H c)=CriticalRationalParam20261003.w k) :=
  actual_corner_parameter_cases hH c

theorem signed_J_retained {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) (hj : sideJ (stripCorner H c)≠0) :
    ∃ k : ℝ, 0<k ∧ sideP (stripCorner H c)=CriticalRationalParam20261003.p k ∧
      (sideJ (stripCorner H c)=CriticalRationalParam20261003.j k ∨
       sideJ (stripCorner H c)= -CriticalRationalParam20261003.j k) ∧
      sideW (stripCorner H c)=CriticalRationalParam20261003.w k := by
  obtain ⟨k,hk,hp,hjabs,hw⟩ := actual_nonzero_corner_parameter hH c hj
  refine ⟨k,hk,hp,?_,hw⟩
  by_cases hs : 0≤sideJ (stripCorner H c)
  · left
    simpa [abs_of_nonneg hs] using hjabs
  · right
    rw [abs_of_neg (lt_of_not_ge hs)] at hjabs
    linarith

theorem literal_g (s t r : ℂ) :
    FourierGramNumerators.g s t r =
      27-3*(Complex.normSq s+Complex.normSq t+Complex.normSq r)+2*(r*s*star t).re :=
  moment_g s t r

theorem actual_regular_denominators (s t r : ℂ) (z : ℝ)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : Complex.normSq s+Complex.normSq t+Complex.normSq r=9-z^2)
    (hj : 2*(r*s*star t).re=0)
    (hw : Complex.normSq s*Complex.normSq t+Complex.normSq s*Complex.normSq r+
      Complex.normSq t*Complex.normSq r-
      Complex.normSq s*Complex.normSq t*Complex.normSq r=z^2*(z+3)^2) :
    FourierGramNumerators.g s t r+(9-Complex.normSq s)*z≠0 ∧
    FourierGramNumerators.g s t r+(9-Complex.normSq t)*z≠0 ∧
    FourierGramNumerators.g s t r+(9-Complex.normSq r)*z≠0 :=
  actual_moment_denominators s t r z hzlo hz0 hz3 hz2 hp hj hw

theorem zero_z_stratum_keeps_g_zero (s t r : ℂ)
    (hp : momentP s t r=9) (hj : momentJ s t r=0) :
    FourierGramNumerators.g s t r=0 ∧
      FourierGramNumerators.g s t r+(9-Complex.normSq s)*0=0 := by
  have hg : FourierGramNumerators.g s t r=0 := by rw [moment_g,hp,hj]; norm_num
  exact ⟨hg,by simp [hg]⟩

end
end PhysicalParamsIndependentReview20261003
#print axioms PhysicalParamsIndependentReview20261003.literal_actual_exhaustion
#print axioms PhysicalParamsIndependentReview20261003.signed_J_retained
#print axioms PhysicalParamsIndependentReview20261003.literal_g
#print axioms PhysicalParamsIndependentReview20261003.actual_regular_denominators
#print axioms PhysicalParamsIndependentReview20261003.zero_z_stratum_keeps_g_zero
