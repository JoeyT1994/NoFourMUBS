import NoFourMUBs.Reuse.Archive.CriticalZeroSumPrimitiveData
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p0_p2
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p0_p3
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p1_m2
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p1_m3
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p1_p1
import NoFourMUBs.Reuse.Archive.CriticalZeroLightMoment_p1_p2
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem normalized_p0_p2 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p0_p2 X Y z r=X^0*Y^0*r^0*primitive_p0_p2 X Y z / (X^0*Y^0*z^2*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^0*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_p0_p2,CriticalZeroQuadratic20261003.reducedNumerator_p0_p2,CriticalZeroQuadratic20261003.reducedDenominator_p0_p2,primitive_p0_p2,primitiveCoefficients_p0_p2,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p0_p2_coefficient_00,primitive_p0_p2_coefficient_02,primitive_p0_p2_coefficient_03,primitive_p0_p2_coefficient_04,primitive_p0_p2_coefficient_05]
  congr 1 <;> ring
#print axioms normalized_p0_p2

theorem normalized_p0_p3 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p0_p3 X Y z r=X^0*Y^0*r^1*primitive_p0_p3 X Y z / (X^0*Y^1*z^2*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^0*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_p0_p3,CriticalZeroQuadratic20261003.reducedNumerator_p0_p3,CriticalZeroQuadratic20261003.reducedDenominator_p0_p3,primitive_p0_p3,primitiveCoefficients_p0_p3,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p0_p3_coefficient_00,primitive_p0_p3_coefficient_02]
  congr 1 <;> ring
#print axioms normalized_p0_p3

theorem normalized_p1_m2 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p1_m2 X Y z r=X^0*Y^2*r^1*primitive_p1_m2 X Y z / (X^1*Y^0*z^0*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^0*(CriticalZeroSumAssembly20261003.dz X Y z)^0) := by
  dsimp only [CriticalZeroMoment20261003.value_p1_m2,CriticalZeroQuadratic20261003.reducedNumerator_p1_m2,CriticalZeroQuadratic20261003.reducedDenominator_p1_m2,primitive_p1_m2,primitiveCoefficients_p1_m2,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p1_m2_coefficient_00,primitive_p1_m2_coefficient_01]
  congr 1 <;> ring
#print axioms normalized_p1_m2

theorem normalized_p1_m3 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p1_m3 X Y z r=X^0*Y^2*r^0*primitive_p1_m3 X Y z / (X^0*Y^0*z^2*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^0*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_p1_m3,CriticalZeroQuadratic20261003.reducedNumerator_p1_m3,CriticalZeroQuadratic20261003.reducedDenominator_p1_m3,primitive_p1_m3,primitiveCoefficients_p1_m3,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p1_m3_coefficient_00,primitive_p1_m3_coefficient_02,primitive_p1_m3_coefficient_03,primitive_p1_m3_coefficient_04,primitive_p1_m3_coefficient_05,primitive_p1_m3_coefficient_06]
  congr 1 <;> ring
#print axioms normalized_p1_m3

theorem normalized_p1_p1 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p1_p1 X Y z r=X^0*Y^0*r^0*primitive_p1_p1 X Y z / (X^0*Y^0*z^0*(CriticalZeroSumAssembly20261003.dx X z)^0*(CriticalZeroSumAssembly20261003.dy Y z)^0*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_p1_p1,CriticalZeroQuadratic20261003.reducedNumerator_p1_p1,CriticalZeroQuadratic20261003.reducedDenominator_p1_p1,primitive_p1_p1,primitiveCoefficients_p1_p1,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p1_p1_coefficient_00,primitive_p1_p1_coefficient_01]
  congr 1 <;> ring
#print axioms normalized_p1_p1

theorem normalized_p1_p2 (X Y z r : K) :
    CriticalZeroMoment20261003.value_p1_p2 X Y z r=X^0*Y^0*r^1*primitive_p1_p2 X Y z / (X^1*Y^0*z^2*(CriticalZeroSumAssembly20261003.dx X z)^1*(CriticalZeroSumAssembly20261003.dy Y z)^0*(CriticalZeroSumAssembly20261003.dz X Y z)^1) := by
  dsimp only [CriticalZeroMoment20261003.value_p1_p2,CriticalZeroQuadratic20261003.reducedNumerator_p1_p2,CriticalZeroQuadratic20261003.reducedDenominator_p1_p2,primitive_p1_p2,primitiveCoefficients_p1_p2,CriticalZeroSplitReduction20261003.Coefficients.eval,dx,dy,dz,primitive_p1_p2_coefficient_00,primitive_p1_p2_coefficient_02,primitive_p1_p2_coefficient_03,primitive_p1_p2_coefficient_04]
  congr 1 <;> ring
#print axioms normalized_p1_p2
end
end CriticalZeroSumAssembly20261003
