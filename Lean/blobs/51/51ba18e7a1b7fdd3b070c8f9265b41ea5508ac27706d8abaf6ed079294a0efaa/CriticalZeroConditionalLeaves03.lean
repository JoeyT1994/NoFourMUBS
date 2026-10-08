import CriticalZeroConditionalLeavesCertificates03
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
theorem cond_p0_p3_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p0_p3Certificate X Y) := by
  exact ⟨⟨cond_p0_p3Zero_00_00 X Y,⟨cond_p0_p3Zero_00_01 X Y,⟨cond_p0_p3Zero_00_02 X Y,⟨cond_p0_p3Zero_00_03 X Y,⟨cond_p0_p3Zero_00_04 X Y,⟨cond_p0_p3Zero_00_05 X Y,⟨cond_p0_p3Zero_00_06 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p0_p3Zero_01_00 X Y,⟨cond_p0_p3Zero_01_01 X Y,⟨cond_p0_p3Zero_01_02 X Y,True.intro⟩⟩⟩,True.intro⟩⟩
#print axioms cond_p0_p3_certificate_zero
theorem primitive_p0_p3_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p0_p3 X Y z=cond_p0_p3Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p0_p3 X Y]
    (cond_p0_p3Qy X Y) (cond_p0_p3Qx X Y) (cond_p0_p3Nf X Y)
    (cond_p0_p3_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p0_p3,cond_p0_p3Normal] using h
#print axioms primitive_p0_p3_reduced
theorem cond_p1_m2_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p1_m2Certificate X Y) := by
  exact ⟨⟨cond_p1_m2Zero_00_00 X Y,⟨cond_p1_m2Zero_00_01 X Y,True.intro⟩⟩,True.intro⟩
#print axioms cond_p1_m2_certificate_zero
theorem primitive_p1_m2_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p1_m2 X Y z=cond_p1_m2Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p1_m2 X Y]
    (cond_p1_m2Qy X Y) (cond_p1_m2Qx X Y) (cond_p1_m2Nf X Y)
    (cond_p1_m2_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p1_m2,cond_p1_m2Normal] using h
#print axioms primitive_p1_m2_reduced
theorem cond_p1_m3_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p1_m3Certificate X Y) := by
  exact ⟨⟨cond_p1_m3Zero_00_00 X Y,⟨cond_p1_m3Zero_00_01 X Y,⟨cond_p1_m3Zero_00_02 X Y,⟨cond_p1_m3Zero_00_03 X Y,⟨cond_p1_m3Zero_00_04 X Y,⟨cond_p1_m3Zero_00_05 X Y,⟨cond_p1_m3Zero_00_06 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p1_m3Zero_01_00 X Y,⟨cond_p1_m3Zero_01_01 X Y,⟨cond_p1_m3Zero_01_02 X Y,True.intro⟩⟩⟩,True.intro⟩⟩
#print axioms cond_p1_m3_certificate_zero
theorem primitive_p1_m3_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p1_m3 X Y z=cond_p1_m3Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p1_m3 X Y]
    (cond_p1_m3Qy X Y) (cond_p1_m3Qx X Y) (cond_p1_m3Nf X Y)
    (cond_p1_m3_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p1_m3,cond_p1_m3Normal] using h
#print axioms primitive_p1_m3_reduced
theorem cond_p1_p1_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p1_p1Certificate X Y) := by
  exact ⟨⟨cond_p1_p1Zero_00_00 X Y,⟨cond_p1_p1Zero_00_01 X Y,True.intro⟩⟩,True.intro⟩
#print axioms cond_p1_p1_certificate_zero
theorem primitive_p1_p1_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p1_p1 X Y z=cond_p1_p1Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p1_p1 X Y]
    (cond_p1_p1Qy X Y) (cond_p1_p1Qx X Y) (cond_p1_p1Nf X Y)
    (cond_p1_p1_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p1_p1,cond_p1_p1Normal] using h
#print axioms primitive_p1_p1_reduced
theorem cond_p1_p2_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p1_p2Certificate X Y) := by
  exact ⟨⟨cond_p1_p2Zero_00_00 X Y,⟨cond_p1_p2Zero_00_01 X Y,⟨cond_p1_p2Zero_00_02 X Y,⟨cond_p1_p2Zero_00_03 X Y,⟨cond_p1_p2Zero_00_04 X Y,True.intro⟩⟩⟩⟩⟩,⟨⟨cond_p1_p2Zero_01_00 X Y,True.intro⟩,True.intro⟩⟩
#print axioms cond_p1_p2_certificate_zero
theorem primitive_p1_p2_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p1_p2 X Y z=cond_p1_p2Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p1_p2 X Y]
    (cond_p1_p2Qy X Y) (cond_p1_p2Qx X Y) (cond_p1_p2Nf X Y)
    (cond_p1_p2_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p1_p2,cond_p1_p2Normal] using h
#print axioms primitive_p1_p2_reduced
theorem cond_p2_m1_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p2_m1Certificate X Y) := by
  exact ⟨⟨cond_p2_m1Zero_00_00 X Y,⟨cond_p2_m1Zero_00_01 X Y,True.intro⟩⟩,True.intro⟩
#print axioms cond_p2_m1_certificate_zero
theorem primitive_p2_m1_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p2_m1 X Y z=cond_p2_m1Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p2_m1 X Y]
    (cond_p2_m1Qy X Y) (cond_p2_m1Qx X Y) (cond_p2_m1Nf X Y)
    (cond_p2_m1_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p2_m1,cond_p2_m1Normal] using h
#print axioms primitive_p2_m1_reduced
end
end CriticalZeroSumAssembly20261003.Conditional
