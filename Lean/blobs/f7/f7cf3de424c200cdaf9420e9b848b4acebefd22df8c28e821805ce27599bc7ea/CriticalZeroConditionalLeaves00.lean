import CriticalZeroConditionalLeavesCertificates00
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
theorem cond_m1_m1_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_m1_m1Certificate X Y) := by
  exact ⟨⟨cond_m1_m1Zero_00_00 X Y,⟨cond_m1_m1Zero_00_01 X Y,True.intro⟩⟩,True.intro⟩
#print axioms cond_m1_m1_certificate_zero
theorem primitive_m1_m1_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_m1_m1 X Y z=cond_m1_m1Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_m1_m1 X Y]
    (cond_m1_m1Qy X Y) (cond_m1_m1Qx X Y) (cond_m1_m1Nf X Y)
    (cond_m1_m1_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_m1_m1,cond_m1_m1Normal] using h
#print axioms primitive_m1_m1_reduced
theorem cond_m1_m2_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_m1_m2Certificate X Y) := by
  exact ⟨⟨cond_m1_m2Zero_00_00 X Y,⟨cond_m1_m2Zero_00_01 X Y,⟨cond_m1_m2Zero_00_02 X Y,⟨cond_m1_m2Zero_00_03 X Y,⟨cond_m1_m2Zero_00_04 X Y,True.intro⟩⟩⟩⟩⟩,⟨⟨cond_m1_m2Zero_01_00 X Y,True.intro⟩,True.intro⟩⟩
#print axioms cond_m1_m2_certificate_zero
theorem primitive_m1_m2_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_m1_m2 X Y z=cond_m1_m2Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_m1_m2 X Y]
    (cond_m1_m2Qy X Y) (cond_m1_m2Qx X Y) (cond_m1_m2Nf X Y)
    (cond_m1_m2_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_m1_m2,cond_m1_m2Normal] using h
#print axioms primitive_m1_m2_reduced
theorem cond_m1_p2_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_m1_p2Certificate X Y) := by
  exact ⟨⟨cond_m1_p2Zero_00_00 X Y,⟨cond_m1_p2Zero_00_01 X Y,True.intro⟩⟩,True.intro⟩
#print axioms cond_m1_p2_certificate_zero
theorem primitive_m1_p2_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_m1_p2 X Y z=cond_m1_p2Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_m1_p2 X Y]
    (cond_m1_p2Qy X Y) (cond_m1_p2Qx X Y) (cond_m1_p2Nf X Y)
    (cond_m1_p2_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_m1_p2,cond_m1_p2Normal] using h
#print axioms primitive_m1_p2_reduced
theorem cond_m1_p3_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_m1_p3Certificate X Y) := by
  exact ⟨⟨cond_m1_p3Zero_00_00 X Y,⟨cond_m1_p3Zero_00_01 X Y,⟨cond_m1_p3Zero_00_02 X Y,⟨cond_m1_p3Zero_00_03 X Y,⟨cond_m1_p3Zero_00_04 X Y,⟨cond_m1_p3Zero_00_05 X Y,⟨cond_m1_p3Zero_00_06 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_m1_p3Zero_01_00 X Y,⟨cond_m1_p3Zero_01_01 X Y,⟨cond_m1_p3Zero_01_02 X Y,True.intro⟩⟩⟩,True.intro⟩⟩
#print axioms cond_m1_p3_certificate_zero
theorem primitive_m1_p3_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_m1_p3 X Y z=cond_m1_p3Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_m1_p3 X Y]
    (cond_m1_p3Qy X Y) (cond_m1_p3Qx X Y) (cond_m1_p3Nf X Y)
    (cond_m1_p3_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_m1_p3,cond_m1_p3Normal] using h
#print axioms primitive_m1_p3_reduced
theorem cond_m2_m1_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_m2_m1Certificate X Y) := by
  exact ⟨⟨cond_m2_m1Zero_00_00 X Y,⟨cond_m2_m1Zero_00_01 X Y,⟨cond_m2_m1Zero_00_02 X Y,⟨cond_m2_m1Zero_00_03 X Y,⟨cond_m2_m1Zero_00_04 X Y,True.intro⟩⟩⟩⟩⟩,⟨⟨cond_m2_m1Zero_01_00 X Y,True.intro⟩,True.intro⟩⟩
#print axioms cond_m2_m1_certificate_zero
theorem primitive_m2_m1_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_m2_m1 X Y z=cond_m2_m1Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_m2_m1 X Y]
    (cond_m2_m1Qy X Y) (cond_m2_m1Qx X Y) (cond_m2_m1Nf X Y)
    (cond_m2_m1_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_m2_m1,cond_m2_m1Normal] using h
#print axioms primitive_m2_m1_reduced
theorem cond_m2_m2_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_m2_m2Certificate X Y) := by
  exact ⟨⟨cond_m2_m2Zero_00_00 X Y,⟨cond_m2_m2Zero_00_01 X Y,⟨cond_m2_m2Zero_00_02 X Y,⟨cond_m2_m2Zero_00_03 X Y,⟨cond_m2_m2Zero_00_04 X Y,⟨cond_m2_m2Zero_00_05 X Y,⟨cond_m2_m2Zero_00_06 X Y,⟨cond_m2_m2Zero_00_07 X Y,⟨cond_m2_m2Zero_00_08 X Y,⟨cond_m2_m2Zero_00_09 X Y,⟨cond_m2_m2Zero_00_10 X Y,⟨cond_m2_m2Zero_00_11 X Y,⟨cond_m2_m2Zero_00_12 X Y,⟨cond_m2_m2Zero_00_13 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_m2_m2Zero_01_00 X Y,⟨cond_m2_m2Zero_01_01 X Y,⟨cond_m2_m2Zero_01_02 X Y,⟨cond_m2_m2Zero_01_03 X Y,⟨cond_m2_m2Zero_01_04 X Y,⟨cond_m2_m2Zero_01_05 X Y,⟨cond_m2_m2Zero_01_06 X Y,⟨cond_m2_m2Zero_01_07 X Y,⟨cond_m2_m2Zero_01_08 X Y,⟨cond_m2_m2Zero_01_09 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_m2_m2Zero_02_00 X Y,⟨cond_m2_m2Zero_02_01 X Y,⟨cond_m2_m2Zero_02_02 X Y,⟨cond_m2_m2Zero_02_03 X Y,⟨cond_m2_m2Zero_02_04 X Y,⟨cond_m2_m2Zero_02_05 X Y,True.intro⟩⟩⟩⟩⟩⟩,⟨⟨cond_m2_m2Zero_03_00 X Y,⟨cond_m2_m2Zero_03_01 X Y,True.intro⟩⟩,True.intro⟩⟩⟩⟩
#print axioms cond_m2_m2_certificate_zero
theorem primitive_m2_m2_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_m2_m2 X Y z=cond_m2_m2Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_m2_m2 X Y]
    (cond_m2_m2Qy X Y) (cond_m2_m2Qx X Y) (cond_m2_m2Nf X Y)
    (cond_m2_m2_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_m2_m2,cond_m2_m2Normal] using h
#print axioms primitive_m2_m2_reduced
end
end CriticalZeroSumAssembly20261003.Conditional
