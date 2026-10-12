import NoFourMUBs.Reuse.Archive.CriticalZeroSumPrimitiveData
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p2_p2
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p3_m1
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p3_m2
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p3_m3
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p3_p0
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p4_m2
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem normalized_p2_p2 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p2_p2 X Y z r=X^0*Y^0*r^0*primitive_p2_p2 X Y z / (X^1*Y^1*z^4*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^3) := by
  dsimp only [CriticalZeroMoment20261003.value_p2_p2,CriticalZeroQuadratic20261003.reducedNumerator_p2_p2,CriticalZeroQuadratic20261003.reducedDenominator_p2_p2,primitive_p2_p2,primitiveCoefficients_p2_p2,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p2_p2_coefficient_00,primitive_p2_p2_coefficient_01,primitive_p2_p2_coefficient_02,primitive_p2_p2_coefficient_03,primitive_p2_p2_coefficient_04,primitive_p2_p2_coefficient_05,primitive_p2_p2_coefficient_06,primitive_p2_p2_coefficient_07,primitive_p2_p2_coefficient_08,primitive_p2_p2_coefficient_09,primitive_p2_p2_coefficient_10]
  congr 1 <;> ring
#print axioms normalized_p2_p2

theorem normalized_p3_m1 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p3_m1 X Y z r=X^0*Y^1*r^0*primitive_p3_m1 X Y z / (X^1*Y^0*z^2*(CriticalZeroSumAssembly20261003.dx X z)^0*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_p3_m1,CriticalZeroQuadratic20261003.reducedNumerator_p3_m1,CriticalZeroQuadratic20261003.reducedDenominator_p3_m1,primitive_p3_m1,primitiveCoefficients_p3_m1,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p3_m1_coefficient_00,primitive_p3_m1_coefficient_02,primitive_p3_m1_coefficient_03,primitive_p3_m1_coefficient_04,primitive_p3_m1_coefficient_05,primitive_p3_m1_coefficient_06]
  congr 1 <;> ring
#print axioms normalized_p3_m1

theorem normalized_p3_m2 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p3_m2 X Y z r=X^0*Y^2*r^1*primitive_p3_m2 X Y z / (X^2*Y^0*z^2*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^0) := by
  dsimp only [CriticalZeroMoment20261003.value_p3_m2,CriticalZeroQuadratic20261003.reducedNumerator_p3_m2,CriticalZeroQuadratic20261003.reducedDenominator_p3_m2,primitive_p3_m2,primitiveCoefficients_p3_m2,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p3_m2_coefficient_00,primitive_p3_m2_coefficient_02,primitive_p3_m2_coefficient_03,primitive_p3_m2_coefficient_04,primitive_p3_m2_coefficient_05]
  congr 1 <;> ring
#print axioms normalized_p3_m2

theorem normalized_p3_m3 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p3_m3 X Y z r=X^0*Y^2*r^0*primitive_p3_m3 X Y z / (X^1*Y^0*z^2*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^0) := by
  dsimp only [CriticalZeroMoment20261003.value_p3_m3,CriticalZeroQuadratic20261003.reducedNumerator_p3_m3,CriticalZeroQuadratic20261003.reducedDenominator_p3_m3,primitive_p3_m3,primitiveCoefficients_p3_m3,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p3_m3_coefficient_00,primitive_p3_m3_coefficient_02,primitive_p3_m3_coefficient_04,primitive_p3_m3_coefficient_06]
  congr 1 <;> ring
#print axioms normalized_p3_m3

theorem normalized_p3_p0 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p3_p0 X Y z r=X^0*Y^1*r^1*primitive_p3_p0 X Y z / (X^2*Y^0*z^2*(CriticalZeroSumAssembly20261003.dx X z)^0*(CriticalZeroSumAssembly20261003.dy Y z)^1*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_p3_p0,CriticalZeroQuadratic20261003.reducedNumerator_p3_p0,CriticalZeroQuadratic20261003.reducedDenominator_p3_p0,primitive_p3_p0,primitiveCoefficients_p3_p0,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p3_p0_coefficient_00,primitive_p3_p0_coefficient_02]
  congr 1 <;> ring
#print axioms normalized_p3_p0

theorem normalized_p4_m2 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p4_m2 X Y z r=X^0*Y^1*r^0*primitive_p4_m2 X Y z / (X^2*Y^0*z^4*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^3*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_p4_m2,CriticalZeroQuadratic20261003.reducedNumerator_p4_m2,CriticalZeroQuadratic20261003.reducedDenominator_p4_m2,primitive_p4_m2,primitiveCoefficients_p4_m2,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p4_m2_coefficient_00,primitive_p4_m2_coefficient_01,primitive_p4_m2_coefficient_02,primitive_p4_m2_coefficient_03,primitive_p4_m2_coefficient_04,primitive_p4_m2_coefficient_05,primitive_p4_m2_coefficient_06,primitive_p4_m2_coefficient_07,primitive_p4_m2_coefficient_08,primitive_p4_m2_coefficient_09,primitive_p4_m2_coefficient_10,primitive_p4_m2_coefficient_11,primitive_p4_m2_coefficient_12]
  congr 1 <;> ring
#print axioms normalized_p4_m2
end
end CriticalZeroSumAssembly20261003
