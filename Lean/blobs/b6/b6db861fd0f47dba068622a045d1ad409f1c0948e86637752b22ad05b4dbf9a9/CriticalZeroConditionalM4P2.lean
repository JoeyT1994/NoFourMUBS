import CriticalZeroConditionalM4P2Certificates
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
/-- Complete finite certificate on the actual list, including its padded rows. -/
theorem m4p2_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (m4p2Certificate X Y) := by
  exact ⟨⟨m4p2Zero_00_00 X Y,⟨m4p2Zero_00_01 X Y,⟨m4p2Zero_00_02 X Y,⟨m4p2Zero_00_03 X Y,⟨m4p2Zero_00_04 X Y,⟨m4p2Zero_00_05 X Y,⟨m4p2Zero_00_06 X Y,⟨m4p2Zero_00_07 X Y,⟨m4p2Zero_00_08 X Y,⟨m4p2Zero_00_09 X Y,⟨m4p2Zero_00_10 X Y,⟨m4p2Zero_00_11 X Y,⟨m4p2Zero_00_12 X Y,⟨m4p2Zero_00_13 X Y,⟨m4p2Zero_00_14 X Y,⟨m4p2Zero_00_15 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨m4p2Zero_01_00 X Y,⟨m4p2Zero_01_01 X Y,⟨m4p2Zero_01_02 X Y,⟨m4p2Zero_01_03 X Y,⟨m4p2Zero_01_04 X Y,⟨m4p2Zero_01_05 X Y,⟨m4p2Zero_01_06 X Y,⟨m4p2Zero_01_07 X Y,⟨m4p2Zero_01_08 X Y,⟨m4p2Zero_01_09 X Y,⟨m4p2Zero_01_10 X Y,⟨m4p2Zero_01_11 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨m4p2Zero_02_00 X Y,⟨m4p2Zero_02_01 X Y,⟨m4p2Zero_02_02 X Y,⟨m4p2Zero_02_03 X Y,⟨m4p2Zero_02_04 X Y,⟨m4p2Zero_02_05 X Y,⟨m4p2Zero_02_06 X Y,⟨m4p2Zero_02_07 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨m4p2Zero_03_00 X Y,⟨m4p2Zero_03_01 X Y,⟨m4p2Zero_03_02 X Y,True.intro⟩⟩⟩,True.intro⟩⟩⟩⟩
#print axioms m4p2_certificate_zero

/-- The original checked moment primitive reduces under exactly the two monic
splitting equations. No division, distinct-root or additional nonzero premise. -/
theorem primitive_m4_p2_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_m4_p2 X Y z=m4p2Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_m4_p2 X Y]
    (m4p2Qy X Y) (m4p2Qx X Y) (m4p2Nf X Y)
    (m4p2_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_m4_p2,m4p2Normal] using h
#print axioms primitive_m4_p2_reduced
end
end CriticalZeroSumAssembly20261003.Conditional
