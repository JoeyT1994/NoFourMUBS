import NoFourMUBs.Reuse.Archive.CriticalStripPhysical
import NoFourMUBs.Reuse.Archive.CriticalPositiveParam
import NoFourMUBs.Reuse.Archive.CriticalZeroPoles

set_option autoImplicit false
namespace CriticalPhysicalParameters20261003
open NoFourMUBs.Step2.Critical CriticalPhysical20261003
noncomputable section

theorem actual_nonzero_corner_parameter {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20) (hj : sideJ (stripCorner H c)≠0) :
    ∃ k : ℝ, 0<k ∧ sideP (stripCorner H c)=CriticalRationalParam20261003.p k ∧
      |sideJ (stripCorner H c)|=CriticalRationalParam20261003.j k ∧
      sideW (stripCorner H c)=CriticalRationalParam20261003.w k := by
  obtain ⟨h0,hb,hp,hm⟩ := allCritical_strip_scalar_premises hH c
  exact CriticalRationalParam20261003.positive_magnitude_parameterization h0 hb hj hp hm

theorem actual_zero_corner_parameter {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20) (hj : sideJ (stripCorner H c)=0) :
    ∃ z : ℝ, -3≤z ∧ z≤3 ∧ sideP (stripCorner H c)=9-z^2 ∧
      sideW (stripCorner H c)=z^2*(z+3)^2 := by
  obtain ⟨h0,hb,hp,_⟩ := allCritical_strip_scalar_premises hH c
  have h9 : sideP (stripCorner H c)≤9 := by simpa [hj] using hb
  rw [hj] at hp
  exact CriticalScalarReduction20261003.zero_parameterization h0 h9 hp

/-- An exhaustive necessary parameter description of every actual corner.
It is not a sufficient reconstruction criterion or a finite classification. -/
theorem actual_corner_parameter_cases {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20) :
    (sideJ (stripCorner H c)=0 ∧ ∃ z : ℝ, -3≤z ∧ z≤3 ∧
      sideP (stripCorner H c)=9-z^2 ∧ sideW (stripCorner H c)=z^2*(z+3)^2) ∨
    (sideJ (stripCorner H c)≠0 ∧ ∃ k : ℝ, 0<k ∧
      sideP (stripCorner H c)=CriticalRationalParam20261003.p k ∧
      |sideJ (stripCorner H c)|=CriticalRationalParam20261003.j k ∧
      sideW (stripCorner H c)=CriticalRationalParam20261003.w k) := by
  by_cases hj : sideJ (stripCorner H c)=0
  · exact Or.inl ⟨hj,actual_zero_corner_parameter hH c hj⟩
  · exact Or.inr ⟨hj,actual_nonzero_corner_parameter hH c hj⟩

end
#print axioms actual_nonzero_corner_parameter
#print axioms actual_zero_corner_parameter
#print axioms actual_corner_parameter_cases
end CriticalPhysicalParameters20261003
