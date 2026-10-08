import CriticalZeroConditionalLeavesCertificates04
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
theorem cond_p2_m2_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p2_m2Certificate X Y) := by
  exact ⟨⟨cond_p2_m2Zero_00_00 X Y,⟨cond_p2_m2Zero_00_01 X Y,⟨cond_p2_m2Zero_00_02 X Y,⟨cond_p2_m2Zero_00_03 X Y,⟨cond_p2_m2Zero_00_04 X Y,⟨cond_p2_m2Zero_00_05 X Y,⟨cond_p2_m2Zero_00_06 X Y,⟨cond_p2_m2Zero_00_07 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p2_m2Zero_01_00 X Y,⟨cond_p2_m2Zero_01_01 X Y,⟨cond_p2_m2Zero_01_02 X Y,⟨cond_p2_m2Zero_01_03 X Y,True.intro⟩⟩⟩⟩,True.intro⟩⟩
#print axioms cond_p2_m2_certificate_zero
theorem primitive_p2_m2_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p2_m2 X Y z=cond_p2_m2Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p2_m2 X Y]
    (cond_p2_m2Qy X Y) (cond_p2_m2Qx X Y) (cond_p2_m2Nf X Y)
    (cond_p2_m2_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p2_m2,cond_p2_m2Normal] using h
#print axioms primitive_p2_m2_reduced
theorem cond_p2_m3_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p2_m3Certificate X Y) := by
  exact ⟨⟨cond_p2_m3Zero_00_00 X Y,⟨cond_p2_m3Zero_00_01 X Y,⟨cond_p2_m3Zero_00_02 X Y,⟨cond_p2_m3Zero_00_03 X Y,⟨cond_p2_m3Zero_00_04 X Y,⟨cond_p2_m3Zero_00_05 X Y,⟨cond_p2_m3Zero_00_06 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p2_m3Zero_01_00 X Y,⟨cond_p2_m3Zero_01_01 X Y,⟨cond_p2_m3Zero_01_02 X Y,True.intro⟩⟩⟩,True.intro⟩⟩
#print axioms cond_p2_m3_certificate_zero
theorem primitive_p2_m3_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p2_m3 X Y z=cond_p2_m3Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p2_m3 X Y]
    (cond_p2_m3Qy X Y) (cond_p2_m3Qx X Y) (cond_p2_m3Nf X Y)
    (cond_p2_m3_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p2_m3,cond_p2_m3Normal] using h
#print axioms primitive_p2_m3_reduced
theorem cond_p2_m4_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p2_m4Certificate X Y) := by
  exact ⟨⟨cond_p2_m4Zero_00_00 X Y,⟨cond_p2_m4Zero_00_01 X Y,⟨cond_p2_m4Zero_00_02 X Y,⟨cond_p2_m4Zero_00_03 X Y,⟨cond_p2_m4Zero_00_04 X Y,⟨cond_p2_m4Zero_00_05 X Y,⟨cond_p2_m4Zero_00_06 X Y,⟨cond_p2_m4Zero_00_07 X Y,⟨cond_p2_m4Zero_00_08 X Y,⟨cond_p2_m4Zero_00_09 X Y,⟨cond_p2_m4Zero_00_10 X Y,⟨cond_p2_m4Zero_00_11 X Y,⟨cond_p2_m4Zero_00_12 X Y,⟨cond_p2_m4Zero_00_13 X Y,⟨cond_p2_m4Zero_00_14 X Y,⟨cond_p2_m4Zero_00_15 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p2_m4Zero_01_00 X Y,⟨cond_p2_m4Zero_01_01 X Y,⟨cond_p2_m4Zero_01_02 X Y,⟨cond_p2_m4Zero_01_03 X Y,⟨cond_p2_m4Zero_01_04 X Y,⟨cond_p2_m4Zero_01_05 X Y,⟨cond_p2_m4Zero_01_06 X Y,⟨cond_p2_m4Zero_01_07 X Y,⟨cond_p2_m4Zero_01_08 X Y,⟨cond_p2_m4Zero_01_09 X Y,⟨cond_p2_m4Zero_01_10 X Y,⟨cond_p2_m4Zero_01_11 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p2_m4Zero_02_00 X Y,⟨cond_p2_m4Zero_02_01 X Y,⟨cond_p2_m4Zero_02_02 X Y,⟨cond_p2_m4Zero_02_03 X Y,⟨cond_p2_m4Zero_02_04 X Y,⟨cond_p2_m4Zero_02_05 X Y,⟨cond_p2_m4Zero_02_06 X Y,⟨cond_p2_m4Zero_02_07 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p2_m4Zero_03_00 X Y,⟨cond_p2_m4Zero_03_01 X Y,True.intro⟩⟩,True.intro⟩⟩⟩⟩
#print axioms cond_p2_m4_certificate_zero
theorem primitive_p2_m4_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p2_m4 X Y z=cond_p2_m4Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p2_m4 X Y]
    (cond_p2_m4Qy X Y) (cond_p2_m4Qx X Y) (cond_p2_m4Nf X Y)
    (cond_p2_m4_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p2_m4,cond_p2_m4Normal] using h
#print axioms primitive_p2_m4_reduced
theorem cond_p2_p0_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p2_p0Certificate X Y) := by
  exact ⟨⟨cond_p2_p0Zero_00_00 X Y,⟨cond_p2_p0Zero_00_01 X Y,⟨cond_p2_p0Zero_00_02 X Y,⟨cond_p2_p0Zero_00_03 X Y,⟨cond_p2_p0Zero_00_04 X Y,⟨cond_p2_p0Zero_00_05 X Y,⟨cond_p2_p0Zero_00_06 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p2_p0Zero_01_00 X Y,⟨cond_p2_p0Zero_01_01 X Y,⟨cond_p2_p0Zero_01_02 X Y,True.intro⟩⟩⟩,True.intro⟩⟩
#print axioms cond_p2_p0_certificate_zero
theorem primitive_p2_p0_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p2_p0 X Y z=cond_p2_p0Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p2_p0 X Y]
    (cond_p2_p0Qy X Y) (cond_p2_p0Qx X Y) (cond_p2_p0Nf X Y)
    (cond_p2_p0_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p2_p0,cond_p2_p0Normal] using h
#print axioms primitive_p2_p0_reduced
theorem cond_p2_p1_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p2_p1Certificate X Y) := by
  exact ⟨⟨cond_p2_p1Zero_00_00 X Y,⟨cond_p2_p1Zero_00_01 X Y,⟨cond_p2_p1Zero_00_02 X Y,⟨cond_p2_p1Zero_00_03 X Y,⟨cond_p2_p1Zero_00_04 X Y,True.intro⟩⟩⟩⟩⟩,⟨⟨cond_p2_p1Zero_01_00 X Y,True.intro⟩,True.intro⟩⟩
#print axioms cond_p2_p1_certificate_zero
theorem primitive_p2_p1_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p2_p1 X Y z=cond_p2_p1Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p2_p1 X Y]
    (cond_p2_p1Qy X Y) (cond_p2_p1Qx X Y) (cond_p2_p1Nf X Y)
    (cond_p2_p1_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p2_p1,cond_p2_p1Normal] using h
#print axioms primitive_p2_p1_reduced
theorem cond_p2_p2_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (cond_p2_p2Certificate X Y) := by
  exact ⟨⟨cond_p2_p2Zero_00_00 X Y,⟨cond_p2_p2Zero_00_01 X Y,⟨cond_p2_p2Zero_00_02 X Y,⟨cond_p2_p2Zero_00_03 X Y,⟨cond_p2_p2Zero_00_04 X Y,⟨cond_p2_p2Zero_00_05 X Y,⟨cond_p2_p2Zero_00_06 X Y,⟨cond_p2_p2Zero_00_07 X Y,⟨cond_p2_p2Zero_00_08 X Y,⟨cond_p2_p2Zero_00_09 X Y,⟨cond_p2_p2Zero_00_10 X Y,⟨cond_p2_p2Zero_00_11 X Y,⟨cond_p2_p2Zero_00_12 X Y,⟨cond_p2_p2Zero_00_13 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p2_p2Zero_01_00 X Y,⟨cond_p2_p2Zero_01_01 X Y,⟨cond_p2_p2Zero_01_02 X Y,⟨cond_p2_p2Zero_01_03 X Y,⟨cond_p2_p2Zero_01_04 X Y,⟨cond_p2_p2Zero_01_05 X Y,⟨cond_p2_p2Zero_01_06 X Y,⟨cond_p2_p2Zero_01_07 X Y,⟨cond_p2_p2Zero_01_08 X Y,⟨cond_p2_p2Zero_01_09 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨cond_p2_p2Zero_02_00 X Y,⟨cond_p2_p2Zero_02_01 X Y,⟨cond_p2_p2Zero_02_02 X Y,⟨cond_p2_p2Zero_02_03 X Y,⟨cond_p2_p2Zero_02_04 X Y,⟨cond_p2_p2Zero_02_05 X Y,True.intro⟩⟩⟩⟩⟩⟩,⟨⟨cond_p2_p2Zero_03_00 X Y,⟨cond_p2_p2Zero_03_01 X Y,True.intro⟩⟩,True.intro⟩⟩⟩⟩
#print axioms cond_p2_p2_certificate_zero
theorem primitive_p2_p2_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p2_p2 X Y z=cond_p2_p2Normal X Y z K := by
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K [primitiveCoefficients_p2_p2 X Y]
    (cond_p2_p2Qy X Y) (cond_p2_p2Qx X Y) (cond_p2_p2Nf X Y)
    (cond_p2_p2_certificate_zero X Y) hy hx
  simpa only [CriticalZeroSplitReduction20261003.Coefficients.eval2,
    mul_zero,add_zero,primitive_p2_p2,cond_p2_p2Normal] using h
#print axioms primitive_p2_p2_reduced
end
end CriticalZeroSumAssembly20261003.Conditional
