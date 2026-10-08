import CriticalZeroSumPrimitiveData
import CriticalZeroLightMoment_m2_p0
import CriticalZeroLightMoment_m2_p1
import CriticalZeroLightMoment_m2_p2
import CriticalZeroLightMoment_m2_p3
import CriticalZeroLightMoment_m2_p4
import CriticalZeroLightMoment_m3_p0
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem normalized_m2_p0 (X Y z r : K) :
    CriticalZeroMoment20261003.value_m2_p0 X Y z r=X^2*Y^0*r^0*primitive_m2_p0 X Y z / (X^0*Y^0*z^2*(CriticalZeroSumAssembly20261003.dx X z)^0*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_m2_p0,CriticalZeroQuadratic20261003.reducedNumerator_m2_p0,CriticalZeroQuadratic20261003.reducedDenominator_m2_p0,primitive_m2_p0,primitiveCoefficients_m2_p0,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_m2_p0_coefficient_00,primitive_m2_p0_coefficient_02,primitive_m2_p0_coefficient_03,primitive_m2_p0_coefficient_04,primitive_m2_p0_coefficient_05]
  congr 1 <;> ring
#print axioms normalized_m2_p0

theorem normalized_m2_p1 (X Y z r : K) :
    CriticalZeroMoment20261003.value_m2_p1 X Y z r=X^1*Y^0*r^1*primitive_m2_p1 X Y z / (X^0*Y^0*z^0*(CriticalZeroSumAssembly20261003.dx X z)^0*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^0) := by
  dsimp only [CriticalZeroMoment20261003.value_m2_p1,CriticalZeroQuadratic20261003.reducedNumerator_m2_p1,CriticalZeroQuadratic20261003.reducedDenominator_m2_p1,primitive_m2_p1,primitiveCoefficients_m2_p1,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_m2_p1_coefficient_00,primitive_m2_p1_coefficient_01]
  congr 1 <;> ring
#print axioms normalized_m2_p1

theorem normalized_m2_p2 (X Y z r : K) :
    CriticalZeroMoment20261003.value_m2_p2 X Y z r=X^1*Y^0*r^0*primitive_m2_p2 X Y z / (X^0*Y^1*z^2*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^0) := by
  dsimp only [CriticalZeroMoment20261003.value_m2_p2,CriticalZeroQuadratic20261003.reducedNumerator_m2_p2,CriticalZeroQuadratic20261003.reducedDenominator_m2_p2,primitive_m2_p2,primitiveCoefficients_m2_p2,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_m2_p2_coefficient_00,primitive_m2_p2_coefficient_02,primitive_m2_p2_coefficient_03,primitive_m2_p2_coefficient_04,primitive_m2_p2_coefficient_05,primitive_m2_p2_coefficient_06]
  congr 1 <;> ring
#print axioms normalized_m2_p2

theorem normalized_m2_p3 (X Y z r : K) :
    CriticalZeroMoment20261003.value_m2_p3 X Y z r=X^1*Y^0*r^1*primitive_m2_p3 X Y z / (X^0*Y^1*z^2*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^0) := by
  dsimp only [CriticalZeroMoment20261003.value_m2_p3,CriticalZeroQuadratic20261003.reducedNumerator_m2_p3,CriticalZeroQuadratic20261003.reducedDenominator_m2_p3,primitive_m2_p3,primitiveCoefficients_m2_p3,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_m2_p3_coefficient_00,primitive_m2_p3_coefficient_02,primitive_m2_p3_coefficient_03,primitive_m2_p3_coefficient_04,primitive_m2_p3_coefficient_05]
  congr 1 <;> ring
#print axioms normalized_m2_p3

theorem normalized_m2_p4 (X Y z r : K) :
    CriticalZeroMoment20261003.value_m2_p4 X Y z r=X^1*Y^0*r^0*primitive_m2_p4 X Y z / (X^0*Y^2*z^4*(CriticalZeroSumAssembly20261003.dx X z)^3*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_m2_p4,CriticalZeroQuadratic20261003.reducedNumerator_m2_p4,CriticalZeroQuadratic20261003.reducedDenominator_m2_p4,primitive_m2_p4,primitiveCoefficients_m2_p4,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_m2_p4_coefficient_00,primitive_m2_p4_coefficient_01,primitive_m2_p4_coefficient_02,primitive_m2_p4_coefficient_03,primitive_m2_p4_coefficient_04,primitive_m2_p4_coefficient_05,primitive_m2_p4_coefficient_06,primitive_m2_p4_coefficient_07,primitive_m2_p4_coefficient_08,primitive_m2_p4_coefficient_09,primitive_m2_p4_coefficient_10,primitive_m2_p4_coefficient_11,primitive_m2_p4_coefficient_12]
  congr 1 <;> ring
#print axioms normalized_m2_p4

theorem normalized_m3_p0 (X Y z r : K) :
    CriticalZeroMoment20261003.value_m3_p0 X Y z r=X^1*Y^1*r^1*primitive_m3_p0 X Y z / (X^0*Y^0*z^2*(CriticalZeroSumAssembly20261003.dx X z)^0*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_m3_p0,CriticalZeroQuadratic20261003.reducedNumerator_m3_p0,CriticalZeroQuadratic20261003.reducedDenominator_m3_p0,primitive_m3_p0,primitiveCoefficients_m3_p0,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_m3_p0_coefficient_00,primitive_m3_p0_coefficient_02]
  congr 1 <;> ring
#print axioms normalized_m3_p0
end
end CriticalZeroSumAssembly20261003
