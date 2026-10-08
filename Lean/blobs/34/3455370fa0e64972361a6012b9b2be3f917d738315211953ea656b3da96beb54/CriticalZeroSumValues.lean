import CriticalZeroSumPolynomial
import CriticalZeroLightMoment_m1_m1
import CriticalZeroLightMoment_m1_m2
import CriticalZeroLightMoment_m1_p2
import CriticalZeroLightMoment_m1_p3
import CriticalZeroLightMoment_m2_m1
import CriticalZeroLightMoment_m2_m2
import CriticalZeroLightMoment_m2_p0
import CriticalZeroLightMoment_m2_p1
import CriticalZeroLightMoment_m2_p2
import CriticalZeroLightMoment_m2_p3
import CriticalZeroLightMoment_m2_p4
import CriticalZeroLightMoment_m3_p0
import CriticalZeroLightMoment_m3_p1
import CriticalZeroLightMoment_m3_p2
import CriticalZeroLightMoment_m3_p3
import CriticalZeroLightMoment_m4_p2
import CriticalZeroLightMoment_p0_m2
import CriticalZeroLightMoment_p0_m3
import CriticalZeroLightMoment_p0_p2
import CriticalZeroLightMoment_p0_p3
import CriticalZeroLightMoment_p1_m2
import CriticalZeroLightMoment_p1_m3
import CriticalZeroLightMoment_p1_p1
import CriticalZeroLightMoment_p1_p2
import CriticalZeroLightMoment_p2_m1
import CriticalZeroLightMoment_p2_m2
import CriticalZeroLightMoment_p2_m3
import CriticalZeroLightMoment_p2_m4
import CriticalZeroLightMoment_p2_p0
import CriticalZeroLightMoment_p2_p1
import CriticalZeroLightMoment_p2_p2
import CriticalZeroLightMoment_p3_m1
import CriticalZeroLightMoment_p3_m2
import CriticalZeroLightMoment_p3_m3
import CriticalZeroLightMoment_p3_p0
import CriticalZeroLightMoment_p4_m2
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
def valueSum66 (X Y z r : K) : K := polynomial66
  (CriticalZeroMoment20261003.value_m1_m1 X Y z r)
  (CriticalZeroMoment20261003.value_m1_m2 X Y z r)
  (CriticalZeroMoment20261003.value_m1_p2 X Y z r)
  (CriticalZeroMoment20261003.value_m1_p3 X Y z r)
  (CriticalZeroMoment20261003.value_m2_m1 X Y z r)
  (CriticalZeroMoment20261003.value_m2_m2 X Y z r)
  (CriticalZeroMoment20261003.value_m2_p0 X Y z r)
  (CriticalZeroMoment20261003.value_m2_p1 X Y z r)
  (CriticalZeroMoment20261003.value_m2_p2 X Y z r)
  (CriticalZeroMoment20261003.value_m2_p3 X Y z r)
  (CriticalZeroMoment20261003.value_m2_p4 X Y z r)
  (CriticalZeroMoment20261003.value_m3_p0 X Y z r)
  (CriticalZeroMoment20261003.value_m3_p1 X Y z r)
  (CriticalZeroMoment20261003.value_m3_p2 X Y z r)
  (CriticalZeroMoment20261003.value_m3_p3 X Y z r)
  (CriticalZeroMoment20261003.value_m4_p2 X Y z r)
  (CriticalZeroMoment20261003.value_p0_m2 X Y z r)
  (CriticalZeroMoment20261003.value_p0_m3 X Y z r)
  (CriticalZeroMoment20261003.value_p0_p2 X Y z r)
  (CriticalZeroMoment20261003.value_p0_p3 X Y z r)
  (CriticalZeroMoment20261003.value_p1_m2 X Y z r)
  (CriticalZeroMoment20261003.value_p1_m3 X Y z r)
  (CriticalZeroMoment20261003.value_p1_p1 X Y z r)
  (CriticalZeroMoment20261003.value_p1_p2 X Y z r)
  (CriticalZeroMoment20261003.value_p2_m1 X Y z r)
  (CriticalZeroMoment20261003.value_p2_m2 X Y z r)
  (CriticalZeroMoment20261003.value_p2_m3 X Y z r)
  (CriticalZeroMoment20261003.value_p2_m4 X Y z r)
  (CriticalZeroMoment20261003.value_p2_p0 X Y z r)
  (CriticalZeroMoment20261003.value_p2_p1 X Y z r)
  (CriticalZeroMoment20261003.value_p2_p2 X Y z r)
  (CriticalZeroMoment20261003.value_p3_m1 X Y z r)
  (CriticalZeroMoment20261003.value_p3_m2 X Y z r)
  (CriticalZeroMoment20261003.value_p3_m3 X Y z r)
  (CriticalZeroMoment20261003.value_p3_p0 X Y z r)
  (CriticalZeroMoment20261003.value_p4_m2 X Y z r)
end
end CriticalZeroSumAssembly20261003
