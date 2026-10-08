import CriticalZeroSumExprPrimitiveData
import CriticalZeroSumPrimitiveData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem primitive_p2_p2_coefficient_00_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_00_expr=primitive_p2_p2_coefficient_00 X Y := by
  simp only [primitive_p2_p2_coefficient_00_expr,primitive_p2_p2_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_00_interpret

theorem primitive_p2_p2_coefficient_01_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_01_expr=primitive_p2_p2_coefficient_01 X Y := by
  simp only [primitive_p2_p2_coefficient_01_expr,primitive_p2_p2_coefficient_01,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_01_interpret

theorem primitive_p2_p2_coefficient_02_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_02_expr=primitive_p2_p2_coefficient_02 X Y := by
  simp only [primitive_p2_p2_coefficient_02_expr,primitive_p2_p2_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_02_interpret

theorem primitive_p2_p2_coefficient_03_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_03_expr=primitive_p2_p2_coefficient_03 X Y := by
  simp only [primitive_p2_p2_coefficient_03_expr,primitive_p2_p2_coefficient_03,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_03_interpret

theorem primitive_p2_p2_coefficient_04_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_04_expr=primitive_p2_p2_coefficient_04 X Y := by
  simp only [primitive_p2_p2_coefficient_04_expr,primitive_p2_p2_coefficient_04,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_04_interpret

theorem primitive_p2_p2_coefficient_05_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_05_expr=primitive_p2_p2_coefficient_05 X Y := by
  simp only [primitive_p2_p2_coefficient_05_expr,primitive_p2_p2_coefficient_05,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_05_interpret

theorem primitive_p2_p2_coefficient_06_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_06_expr=primitive_p2_p2_coefficient_06 X Y := by
  simp only [primitive_p2_p2_coefficient_06_expr,primitive_p2_p2_coefficient_06,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_06_interpret

theorem primitive_p2_p2_coefficient_07_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_07_expr=primitive_p2_p2_coefficient_07 X Y := by
  simp only [primitive_p2_p2_coefficient_07_expr,primitive_p2_p2_coefficient_07,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_07_interpret

theorem primitive_p2_p2_coefficient_08_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_08_expr=primitive_p2_p2_coefficient_08 X Y := by
  simp only [primitive_p2_p2_coefficient_08_expr,primitive_p2_p2_coefficient_08,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_08_interpret

theorem primitive_p2_p2_coefficient_09_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_09_expr=primitive_p2_p2_coefficient_09 X Y := by
  simp only [primitive_p2_p2_coefficient_09_expr,primitive_p2_p2_coefficient_09,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_09_interpret

theorem primitive_p2_p2_coefficient_10_interpret (X Y : K) : value X Y primitive_p2_p2_coefficient_10_expr=primitive_p2_p2_coefficient_10 X Y := by
  simp only [primitive_p2_p2_coefficient_10_expr,primitive_p2_p2_coefficient_10,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p2_p2_coefficient_10_interpret

theorem primitiveExprCoefficients_p2_p2_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p2_p2=primitiveCoefficients_p2_p2 X Y := by
  simp only [primitiveExprCoefficients_p2_p2,primitiveCoefficients_p2_p2,ExprCoefficients.interpret,primitive_p2_p2_coefficient_00_interpret,primitive_p2_p2_coefficient_01_interpret,primitive_p2_p2_coefficient_02_interpret,primitive_p2_p2_coefficient_03_interpret,primitive_p2_p2_coefficient_04_interpret,primitive_p2_p2_coefficient_05_interpret,primitive_p2_p2_coefficient_06_interpret,primitive_p2_p2_coefficient_07_interpret,primitive_p2_p2_coefficient_08_interpret,primitive_p2_p2_coefficient_09_interpret,primitive_p2_p2_coefficient_10_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p2_p2_interpret

theorem primitive_p3_m1_coefficient_00_interpret (X Y : K) : value X Y primitive_p3_m1_coefficient_00_expr=primitive_p3_m1_coefficient_00 X Y := by
  simp only [primitive_p3_m1_coefficient_00_expr,primitive_p3_m1_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m1_coefficient_00_interpret

theorem primitive_p3_m1_coefficient_02_interpret (X Y : K) : value X Y primitive_p3_m1_coefficient_02_expr=primitive_p3_m1_coefficient_02 X Y := by
  simp only [primitive_p3_m1_coefficient_02_expr,primitive_p3_m1_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m1_coefficient_02_interpret

theorem primitive_p3_m1_coefficient_03_interpret (X Y : K) : value X Y primitive_p3_m1_coefficient_03_expr=primitive_p3_m1_coefficient_03 X Y := by
  simp only [primitive_p3_m1_coefficient_03_expr,primitive_p3_m1_coefficient_03,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m1_coefficient_03_interpret

theorem primitive_p3_m1_coefficient_04_interpret (X Y : K) : value X Y primitive_p3_m1_coefficient_04_expr=primitive_p3_m1_coefficient_04 X Y := by
  simp only [primitive_p3_m1_coefficient_04_expr,primitive_p3_m1_coefficient_04,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m1_coefficient_04_interpret

theorem primitive_p3_m1_coefficient_05_interpret (X Y : K) : value X Y primitive_p3_m1_coefficient_05_expr=primitive_p3_m1_coefficient_05 X Y := by
  simp only [primitive_p3_m1_coefficient_05_expr,primitive_p3_m1_coefficient_05,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m1_coefficient_05_interpret

theorem primitive_p3_m1_coefficient_06_interpret (X Y : K) : value X Y primitive_p3_m1_coefficient_06_expr=primitive_p3_m1_coefficient_06 X Y := by
  simp only [primitive_p3_m1_coefficient_06_expr,primitive_p3_m1_coefficient_06,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m1_coefficient_06_interpret

theorem primitiveExprCoefficients_p3_m1_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p3_m1=primitiveCoefficients_p3_m1 X Y := by
  simp only [primitiveExprCoefficients_p3_m1,primitiveCoefficients_p3_m1,ExprCoefficients.interpret,primitive_p3_m1_coefficient_00_interpret,primitive_p3_m1_coefficient_02_interpret,primitive_p3_m1_coefficient_03_interpret,primitive_p3_m1_coefficient_04_interpret,primitive_p3_m1_coefficient_05_interpret,primitive_p3_m1_coefficient_06_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p3_m1_interpret

theorem primitive_p3_m2_coefficient_00_interpret (X Y : K) : value X Y primitive_p3_m2_coefficient_00_expr=primitive_p3_m2_coefficient_00 X Y := by
  simp only [primitive_p3_m2_coefficient_00_expr,primitive_p3_m2_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m2_coefficient_00_interpret

theorem primitive_p3_m2_coefficient_02_interpret (X Y : K) : value X Y primitive_p3_m2_coefficient_02_expr=primitive_p3_m2_coefficient_02 X Y := by
  simp only [primitive_p3_m2_coefficient_02_expr,primitive_p3_m2_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m2_coefficient_02_interpret

theorem primitive_p3_m2_coefficient_03_interpret (X Y : K) : value X Y primitive_p3_m2_coefficient_03_expr=primitive_p3_m2_coefficient_03 X Y := by
  simp only [primitive_p3_m2_coefficient_03_expr,primitive_p3_m2_coefficient_03,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m2_coefficient_03_interpret

theorem primitive_p3_m2_coefficient_04_interpret (X Y : K) : value X Y primitive_p3_m2_coefficient_04_expr=primitive_p3_m2_coefficient_04 X Y := by
  simp only [primitive_p3_m2_coefficient_04_expr,primitive_p3_m2_coefficient_04,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m2_coefficient_04_interpret

theorem primitive_p3_m2_coefficient_05_interpret (X Y : K) : value X Y primitive_p3_m2_coefficient_05_expr=primitive_p3_m2_coefficient_05 X Y := by
  simp only [primitive_p3_m2_coefficient_05_expr,primitive_p3_m2_coefficient_05,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m2_coefficient_05_interpret

theorem primitiveExprCoefficients_p3_m2_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p3_m2=primitiveCoefficients_p3_m2 X Y := by
  simp only [primitiveExprCoefficients_p3_m2,primitiveCoefficients_p3_m2,ExprCoefficients.interpret,primitive_p3_m2_coefficient_00_interpret,primitive_p3_m2_coefficient_02_interpret,primitive_p3_m2_coefficient_03_interpret,primitive_p3_m2_coefficient_04_interpret,primitive_p3_m2_coefficient_05_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p3_m2_interpret

theorem primitive_p3_m3_coefficient_00_interpret (X Y : K) : value X Y primitive_p3_m3_coefficient_00_expr=primitive_p3_m3_coefficient_00 X Y := by
  simp only [primitive_p3_m3_coefficient_00_expr,primitive_p3_m3_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m3_coefficient_00_interpret

theorem primitive_p3_m3_coefficient_02_interpret (X Y : K) : value X Y primitive_p3_m3_coefficient_02_expr=primitive_p3_m3_coefficient_02 X Y := by
  simp only [primitive_p3_m3_coefficient_02_expr,primitive_p3_m3_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m3_coefficient_02_interpret

theorem primitive_p3_m3_coefficient_04_interpret (X Y : K) : value X Y primitive_p3_m3_coefficient_04_expr=primitive_p3_m3_coefficient_04 X Y := by
  simp only [primitive_p3_m3_coefficient_04_expr,primitive_p3_m3_coefficient_04,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m3_coefficient_04_interpret

theorem primitive_p3_m3_coefficient_06_interpret (X Y : K) : value X Y primitive_p3_m3_coefficient_06_expr=primitive_p3_m3_coefficient_06 X Y := by
  simp only [primitive_p3_m3_coefficient_06_expr,primitive_p3_m3_coefficient_06,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_m3_coefficient_06_interpret

theorem primitiveExprCoefficients_p3_m3_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p3_m3=primitiveCoefficients_p3_m3 X Y := by
  simp only [primitiveExprCoefficients_p3_m3,primitiveCoefficients_p3_m3,ExprCoefficients.interpret,primitive_p3_m3_coefficient_00_interpret,primitive_p3_m3_coefficient_02_interpret,primitive_p3_m3_coefficient_04_interpret,primitive_p3_m3_coefficient_06_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p3_m3_interpret

theorem primitive_p3_p0_coefficient_00_interpret (X Y : K) : value X Y primitive_p3_p0_coefficient_00_expr=primitive_p3_p0_coefficient_00 X Y := by
  simp only [primitive_p3_p0_coefficient_00_expr,primitive_p3_p0_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_p0_coefficient_00_interpret

theorem primitive_p3_p0_coefficient_02_interpret (X Y : K) : value X Y primitive_p3_p0_coefficient_02_expr=primitive_p3_p0_coefficient_02 X Y := by
  simp only [primitive_p3_p0_coefficient_02_expr,primitive_p3_p0_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p3_p0_coefficient_02_interpret

theorem primitiveExprCoefficients_p3_p0_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p3_p0=primitiveCoefficients_p3_p0 X Y := by
  simp only [primitiveExprCoefficients_p3_p0,primitiveCoefficients_p3_p0,ExprCoefficients.interpret,primitive_p3_p0_coefficient_00_interpret,primitive_p3_p0_coefficient_02_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p3_p0_interpret

theorem primitive_p4_m2_coefficient_00_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_00_expr=primitive_p4_m2_coefficient_00 X Y := by
  simp only [primitive_p4_m2_coefficient_00_expr,primitive_p4_m2_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_00_interpret

theorem primitive_p4_m2_coefficient_01_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_01_expr=primitive_p4_m2_coefficient_01 X Y := by
  simp only [primitive_p4_m2_coefficient_01_expr,primitive_p4_m2_coefficient_01,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_01_interpret

theorem primitive_p4_m2_coefficient_02_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_02_expr=primitive_p4_m2_coefficient_02 X Y := by
  simp only [primitive_p4_m2_coefficient_02_expr,primitive_p4_m2_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_02_interpret

theorem primitive_p4_m2_coefficient_03_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_03_expr=primitive_p4_m2_coefficient_03 X Y := by
  simp only [primitive_p4_m2_coefficient_03_expr,primitive_p4_m2_coefficient_03,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_03_interpret

theorem primitive_p4_m2_coefficient_04_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_04_expr=primitive_p4_m2_coefficient_04 X Y := by
  simp only [primitive_p4_m2_coefficient_04_expr,primitive_p4_m2_coefficient_04,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_04_interpret

theorem primitive_p4_m2_coefficient_05_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_05_expr=primitive_p4_m2_coefficient_05 X Y := by
  simp only [primitive_p4_m2_coefficient_05_expr,primitive_p4_m2_coefficient_05,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_05_interpret

theorem primitive_p4_m2_coefficient_06_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_06_expr=primitive_p4_m2_coefficient_06 X Y := by
  simp only [primitive_p4_m2_coefficient_06_expr,primitive_p4_m2_coefficient_06,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_06_interpret

theorem primitive_p4_m2_coefficient_07_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_07_expr=primitive_p4_m2_coefficient_07 X Y := by
  simp only [primitive_p4_m2_coefficient_07_expr,primitive_p4_m2_coefficient_07,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_07_interpret

theorem primitive_p4_m2_coefficient_08_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_08_expr=primitive_p4_m2_coefficient_08 X Y := by
  simp only [primitive_p4_m2_coefficient_08_expr,primitive_p4_m2_coefficient_08,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_08_interpret

theorem primitive_p4_m2_coefficient_09_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_09_expr=primitive_p4_m2_coefficient_09 X Y := by
  simp only [primitive_p4_m2_coefficient_09_expr,primitive_p4_m2_coefficient_09,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_09_interpret

theorem primitive_p4_m2_coefficient_10_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_10_expr=primitive_p4_m2_coefficient_10 X Y := by
  simp only [primitive_p4_m2_coefficient_10_expr,primitive_p4_m2_coefficient_10,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_10_interpret

theorem primitive_p4_m2_coefficient_11_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_11_expr=primitive_p4_m2_coefficient_11 X Y := by
  simp only [primitive_p4_m2_coefficient_11_expr,primitive_p4_m2_coefficient_11,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_11_interpret

theorem primitive_p4_m2_coefficient_12_interpret (X Y : K) : value X Y primitive_p4_m2_coefficient_12_expr=primitive_p4_m2_coefficient_12 X Y := by
  simp only [primitive_p4_m2_coefficient_12_expr,primitive_p4_m2_coefficient_12,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p4_m2_coefficient_12_interpret

theorem primitiveExprCoefficients_p4_m2_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p4_m2=primitiveCoefficients_p4_m2 X Y := by
  simp only [primitiveExprCoefficients_p4_m2,primitiveCoefficients_p4_m2,ExprCoefficients.interpret,primitive_p4_m2_coefficient_00_interpret,primitive_p4_m2_coefficient_01_interpret,primitive_p4_m2_coefficient_02_interpret,primitive_p4_m2_coefficient_03_interpret,primitive_p4_m2_coefficient_04_interpret,primitive_p4_m2_coefficient_05_interpret,primitive_p4_m2_coefficient_06_interpret,primitive_p4_m2_coefficient_07_interpret,primitive_p4_m2_coefficient_08_interpret,primitive_p4_m2_coefficient_09_interpret,primitive_p4_m2_coefficient_10_interpret,primitive_p4_m2_coefficient_11_interpret,primitive_p4_m2_coefficient_12_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p4_m2_interpret
end
end CriticalZeroSumAssembly20261003
