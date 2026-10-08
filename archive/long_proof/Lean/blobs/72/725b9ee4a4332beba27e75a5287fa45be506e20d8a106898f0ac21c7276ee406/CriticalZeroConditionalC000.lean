import CriticalZeroConditionalC000Certificates
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
theorem c000_certificate_zero (X Y : F) :
    CriticalZeroSplitReduction20261003.Coefficients.allZero2 (c000Certificate X Y) := by
  exact ⟨⟨c000Zero_00_00 X Y,⟨c000Zero_00_01 X Y,⟨c000Zero_00_02 X Y,⟨c000Zero_00_03 X Y,⟨c000Zero_00_04 X Y,⟨c000Zero_00_05 X Y,⟨c000Zero_00_06 X Y,⟨c000Zero_00_07 X Y,⟨c000Zero_00_08 X Y,⟨c000Zero_00_09 X Y,⟨c000Zero_00_10 X Y,⟨c000Zero_00_11 X Y,⟨c000Zero_00_12 X Y,⟨c000Zero_00_13 X Y,⟨c000Zero_00_14 X Y,⟨c000Zero_00_15 X Y,⟨c000Zero_00_16 X Y,⟨c000Zero_00_17 X Y,⟨c000Zero_00_18 X Y,⟨c000Zero_00_19 X Y,⟨c000Zero_00_20 X Y,⟨c000Zero_00_21 X Y,⟨c000Zero_00_22 X Y,⟨c000Zero_00_23 X Y,⟨c000Zero_00_24 X Y,⟨c000Zero_00_25 X Y,⟨c000Zero_00_26 X Y,⟨c000Zero_00_27 X Y,⟨c000Zero_00_28 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨c000Zero_01_00 X Y,⟨c000Zero_01_01 X Y,⟨c000Zero_01_02 X Y,⟨c000Zero_01_03 X Y,⟨c000Zero_01_04 X Y,⟨c000Zero_01_05 X Y,⟨c000Zero_01_06 X Y,⟨c000Zero_01_07 X Y,⟨c000Zero_01_08 X Y,⟨c000Zero_01_09 X Y,⟨c000Zero_01_10 X Y,⟨c000Zero_01_11 X Y,⟨c000Zero_01_12 X Y,⟨c000Zero_01_13 X Y,⟨c000Zero_01_14 X Y,⟨c000Zero_01_15 X Y,⟨c000Zero_01_16 X Y,⟨c000Zero_01_17 X Y,⟨c000Zero_01_18 X Y,⟨c000Zero_01_19 X Y,⟨c000Zero_01_20 X Y,⟨c000Zero_01_21 X Y,⟨c000Zero_01_22 X Y,⟨c000Zero_01_23 X Y,⟨c000Zero_01_24 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨c000Zero_02_00 X Y,⟨c000Zero_02_01 X Y,⟨c000Zero_02_02 X Y,⟨c000Zero_02_03 X Y,⟨c000Zero_02_04 X Y,⟨c000Zero_02_05 X Y,⟨c000Zero_02_06 X Y,⟨c000Zero_02_07 X Y,⟨c000Zero_02_08 X Y,⟨c000Zero_02_09 X Y,⟨c000Zero_02_10 X Y,⟨c000Zero_02_11 X Y,⟨c000Zero_02_12 X Y,⟨c000Zero_02_13 X Y,⟨c000Zero_02_14 X Y,⟨c000Zero_02_15 X Y,⟨c000Zero_02_16 X Y,⟨c000Zero_02_17 X Y,⟨c000Zero_02_18 X Y,⟨c000Zero_02_19 X Y,⟨c000Zero_02_20 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨c000Zero_03_00 X Y,⟨c000Zero_03_01 X Y,⟨c000Zero_03_02 X Y,⟨c000Zero_03_03 X Y,⟨c000Zero_03_04 X Y,⟨c000Zero_03_05 X Y,⟨c000Zero_03_06 X Y,⟨c000Zero_03_07 X Y,⟨c000Zero_03_08 X Y,⟨c000Zero_03_09 X Y,⟨c000Zero_03_10 X Y,⟨c000Zero_03_11 X Y,⟨c000Zero_03_12 X Y,⟨c000Zero_03_13 X Y,⟨c000Zero_03_14 X Y,⟨c000Zero_03_15 X Y,⟨c000Zero_03_16 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨c000Zero_04_00 X Y,⟨c000Zero_04_01 X Y,⟨c000Zero_04_02 X Y,⟨c000Zero_04_03 X Y,⟨c000Zero_04_04 X Y,⟨c000Zero_04_05 X Y,⟨c000Zero_04_06 X Y,⟨c000Zero_04_07 X Y,⟨c000Zero_04_08 X Y,⟨c000Zero_04_09 X Y,⟨c000Zero_04_10 X Y,⟨c000Zero_04_11 X Y,⟨c000Zero_04_12 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,True.intro⟩⟩⟩⟩⟩
#print axioms c000_certificate_zero

/-- Literal original input product. This is a polynomial identity with no
division or cancellation; all guards on the surrounding rational sum persist. -/
theorem primitive_product_c000_reduced (X Y z K : F)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    primitive_p2_m4 X Y z*primitive_p2_p2 X Y z=c000Normal X Y z K := by
  rw [primitive_p2_m4_reduced X Y z K hy hx,
      primitive_p2_p2_reduced X Y z K hy hx]
  have h := CriticalZeroSplitReduction20261003.Coefficients.ideal_reduction
    X Y z K (CoefficientProducts.mul2 (cond_p2_m4Nf X Y) (cond_p2_p2Nf X Y))
    (c000Qy X Y) (c000Qx X Y) (c000Nf X Y)
    (c000_certificate_zero X Y) hy hx
  simpa only [CoefficientProducts.eval2_mul2,
    cond_p2_m4Normal,cond_p2_p2Normal,c000Normal] using h
#print axioms primitive_product_c000_reduced
end
end CriticalZeroSumAssembly20261003.Conditional
