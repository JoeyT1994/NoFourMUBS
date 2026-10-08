import CriticalZeroSumExprPrimitiveData
import CriticalZeroSumPrimitiveData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem primitive_p0_p2_coefficient_00_interpret (X Y : K) : value X Y primitive_p0_p2_coefficient_00_expr=primitive_p0_p2_coefficient_00 X Y := by
  simp only [primitive_p0_p2_coefficient_00_expr,primitive_p0_p2_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p0_p2_coefficient_00_interpret

theorem primitive_p0_p2_coefficient_02_interpret (X Y : K) : value X Y primitive_p0_p2_coefficient_02_expr=primitive_p0_p2_coefficient_02 X Y := by
  simp only [primitive_p0_p2_coefficient_02_expr,primitive_p0_p2_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p0_p2_coefficient_02_interpret

theorem primitive_p0_p2_coefficient_03_interpret (X Y : K) : value X Y primitive_p0_p2_coefficient_03_expr=primitive_p0_p2_coefficient_03 X Y := by
  simp only [primitive_p0_p2_coefficient_03_expr,primitive_p0_p2_coefficient_03,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p0_p2_coefficient_03_interpret

theorem primitive_p0_p2_coefficient_04_interpret (X Y : K) : value X Y primitive_p0_p2_coefficient_04_expr=primitive_p0_p2_coefficient_04 X Y := by
  simp only [primitive_p0_p2_coefficient_04_expr,primitive_p0_p2_coefficient_04,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p0_p2_coefficient_04_interpret

theorem primitive_p0_p2_coefficient_05_interpret (X Y : K) : value X Y primitive_p0_p2_coefficient_05_expr=primitive_p0_p2_coefficient_05 X Y := by
  simp only [primitive_p0_p2_coefficient_05_expr,primitive_p0_p2_coefficient_05,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p0_p2_coefficient_05_interpret

theorem primitiveExprCoefficients_p0_p2_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p0_p2=primitiveCoefficients_p0_p2 X Y := by
  simp only [primitiveExprCoefficients_p0_p2,primitiveCoefficients_p0_p2,ExprCoefficients.interpret,primitive_p0_p2_coefficient_00_interpret,primitive_p0_p2_coefficient_02_interpret,primitive_p0_p2_coefficient_03_interpret,primitive_p0_p2_coefficient_04_interpret,primitive_p0_p2_coefficient_05_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p0_p2_interpret

theorem primitive_p0_p3_coefficient_00_interpret (X Y : K) : value X Y primitive_p0_p3_coefficient_00_expr=primitive_p0_p3_coefficient_00 X Y := by
  simp only [primitive_p0_p3_coefficient_00_expr,primitive_p0_p3_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p0_p3_coefficient_00_interpret

theorem primitive_p0_p3_coefficient_02_interpret (X Y : K) : value X Y primitive_p0_p3_coefficient_02_expr=primitive_p0_p3_coefficient_02 X Y := by
  simp only [primitive_p0_p3_coefficient_02_expr,primitive_p0_p3_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p0_p3_coefficient_02_interpret

theorem primitiveExprCoefficients_p0_p3_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p0_p3=primitiveCoefficients_p0_p3 X Y := by
  simp only [primitiveExprCoefficients_p0_p3,primitiveCoefficients_p0_p3,ExprCoefficients.interpret,primitive_p0_p3_coefficient_00_interpret,primitive_p0_p3_coefficient_02_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p0_p3_interpret

theorem primitive_p1_m2_coefficient_00_interpret (X Y : K) : value X Y primitive_p1_m2_coefficient_00_expr=primitive_p1_m2_coefficient_00 X Y := by
  simp only [primitive_p1_m2_coefficient_00_expr,primitive_p1_m2_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_m2_coefficient_00_interpret

theorem primitive_p1_m2_coefficient_01_interpret (X Y : K) : value X Y primitive_p1_m2_coefficient_01_expr=primitive_p1_m2_coefficient_01 X Y := by
  simp only [primitive_p1_m2_coefficient_01_expr,primitive_p1_m2_coefficient_01,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_m2_coefficient_01_interpret

theorem primitiveExprCoefficients_p1_m2_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p1_m2=primitiveCoefficients_p1_m2 X Y := by
  simp only [primitiveExprCoefficients_p1_m2,primitiveCoefficients_p1_m2,ExprCoefficients.interpret,primitive_p1_m2_coefficient_00_interpret,primitive_p1_m2_coefficient_01_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p1_m2_interpret

theorem primitive_p1_m3_coefficient_00_interpret (X Y : K) : value X Y primitive_p1_m3_coefficient_00_expr=primitive_p1_m3_coefficient_00 X Y := by
  simp only [primitive_p1_m3_coefficient_00_expr,primitive_p1_m3_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_m3_coefficient_00_interpret

theorem primitive_p1_m3_coefficient_02_interpret (X Y : K) : value X Y primitive_p1_m3_coefficient_02_expr=primitive_p1_m3_coefficient_02 X Y := by
  simp only [primitive_p1_m3_coefficient_02_expr,primitive_p1_m3_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_m3_coefficient_02_interpret

theorem primitive_p1_m3_coefficient_03_interpret (X Y : K) : value X Y primitive_p1_m3_coefficient_03_expr=primitive_p1_m3_coefficient_03 X Y := by
  simp only [primitive_p1_m3_coefficient_03_expr,primitive_p1_m3_coefficient_03,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_m3_coefficient_03_interpret

theorem primitive_p1_m3_coefficient_04_interpret (X Y : K) : value X Y primitive_p1_m3_coefficient_04_expr=primitive_p1_m3_coefficient_04 X Y := by
  simp only [primitive_p1_m3_coefficient_04_expr,primitive_p1_m3_coefficient_04,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_m3_coefficient_04_interpret

theorem primitive_p1_m3_coefficient_05_interpret (X Y : K) : value X Y primitive_p1_m3_coefficient_05_expr=primitive_p1_m3_coefficient_05 X Y := by
  simp only [primitive_p1_m3_coefficient_05_expr,primitive_p1_m3_coefficient_05,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_m3_coefficient_05_interpret

theorem primitive_p1_m3_coefficient_06_interpret (X Y : K) : value X Y primitive_p1_m3_coefficient_06_expr=primitive_p1_m3_coefficient_06 X Y := by
  simp only [primitive_p1_m3_coefficient_06_expr,primitive_p1_m3_coefficient_06,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_m3_coefficient_06_interpret

theorem primitiveExprCoefficients_p1_m3_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p1_m3=primitiveCoefficients_p1_m3 X Y := by
  simp only [primitiveExprCoefficients_p1_m3,primitiveCoefficients_p1_m3,ExprCoefficients.interpret,primitive_p1_m3_coefficient_00_interpret,primitive_p1_m3_coefficient_02_interpret,primitive_p1_m3_coefficient_03_interpret,primitive_p1_m3_coefficient_04_interpret,primitive_p1_m3_coefficient_05_interpret,primitive_p1_m3_coefficient_06_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p1_m3_interpret

theorem primitive_p1_p1_coefficient_00_interpret (X Y : K) : value X Y primitive_p1_p1_coefficient_00_expr=primitive_p1_p1_coefficient_00 X Y := by
  simp only [primitive_p1_p1_coefficient_00_expr,primitive_p1_p1_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_p1_coefficient_00_interpret

theorem primitive_p1_p1_coefficient_01_interpret (X Y : K) : value X Y primitive_p1_p1_coefficient_01_expr=primitive_p1_p1_coefficient_01 X Y := by
  simp only [primitive_p1_p1_coefficient_01_expr,primitive_p1_p1_coefficient_01,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_p1_coefficient_01_interpret

theorem primitiveExprCoefficients_p1_p1_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p1_p1=primitiveCoefficients_p1_p1 X Y := by
  simp only [primitiveExprCoefficients_p1_p1,primitiveCoefficients_p1_p1,ExprCoefficients.interpret,primitive_p1_p1_coefficient_00_interpret,primitive_p1_p1_coefficient_01_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p1_p1_interpret

theorem primitive_p1_p2_coefficient_00_interpret (X Y : K) : value X Y primitive_p1_p2_coefficient_00_expr=primitive_p1_p2_coefficient_00 X Y := by
  simp only [primitive_p1_p2_coefficient_00_expr,primitive_p1_p2_coefficient_00,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_p2_coefficient_00_interpret

theorem primitive_p1_p2_coefficient_02_interpret (X Y : K) : value X Y primitive_p1_p2_coefficient_02_expr=primitive_p1_p2_coefficient_02 X Y := by
  simp only [primitive_p1_p2_coefficient_02_expr,primitive_p1_p2_coefficient_02,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_p2_coefficient_02_interpret

theorem primitive_p1_p2_coefficient_03_interpret (X Y : K) : value X Y primitive_p1_p2_coefficient_03_expr=primitive_p1_p2_coefficient_03 X Y := by
  simp only [primitive_p1_p2_coefficient_03_expr,primitive_p1_p2_coefficient_03,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_p2_coefficient_03_interpret

theorem primitive_p1_p2_coefficient_04_interpret (X Y : K) : value X Y primitive_p1_p2_coefficient_04_expr=primitive_p1_p2_coefficient_04 X Y := by
  simp only [primitive_p1_p2_coefficient_04_expr,primitive_p1_p2_coefficient_04,value,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one]
#print axioms primitive_p1_p2_coefficient_04_interpret

theorem primitiveExprCoefficients_p1_p2_interpret (X Y : K) :
    ExprCoefficients.interpret X Y primitiveExprCoefficients_p1_p2=primitiveCoefficients_p1_p2 X Y := by
  simp only [primitiveExprCoefficients_p1_p2,primitiveCoefficients_p1_p2,ExprCoefficients.interpret,primitive_p1_p2_coefficient_00_interpret,primitive_p1_p2_coefficient_02_interpret,primitive_p1_p2_coefficient_03_interpret,primitive_p1_p2_coefficient_04_interpret,value,Int.cast_zero]
#print axioms primitiveExprCoefficients_p1_p2_interpret
end
end CriticalZeroSumAssembly20261003
