import NoFourMUBs.Reuse.Archive.CriticalZeroSumValues
import NoFourMUBs.Reuse.Archive.CriticalZeroSumPolynomialBinding
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m1_m1
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m1_m2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m1_p2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m1_p3
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m2_m1
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m2_m2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m2_p0
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m2_p1
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m2_p2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m2_p3
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m2_p4
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m3_p0
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m3_p1
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m3_p2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m3_p3
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_m4_p2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p0_m2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p0_m3
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p0_p2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p0_p3
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p1_m2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p1_m3
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p1_p1
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p1_p2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p2_m1
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p2_m2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p2_m3
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p2_m4
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p2_p0
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p2_p1
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p2_p2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p3_m1
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p3_m2
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p3_m3
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p3_p0
import NoFourMUBs.Reuse.Archive.CriticalZeroPhysicalMoment_p4_m2
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalNewtonGauge20261003 CriticalZeroRational20261003
noncomputable section
/-- Complete literal substitution of all36 paired moments into all66 terms.
The complex constructors are the original checked zeroSide on signs±1. -/
theorem pure_zeroSide_eq_valueSum66 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    pureNewtonPolynomial66 (zeroSide X Y z r 1) (zeroSide X Y z r (-1))=
      valueSum66 X Y z r := by
  rw [physical_polynomial66]
  unfold valueSum66
  rw [CriticalZeroPhysicalMoment20261003.moment_m1_m1 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m1_m2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m1_p2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m1_p3 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m2_m1 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m2_m2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m2_p0 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m2_p1 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m2_p2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m2_p3 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m2_p4 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m3_p0 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m3_p1 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m3_p2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m3_p3 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_m4_p2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p0_m2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p0_m3 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p0_p2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p0_p3 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p1_m2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p1_m3 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p1_p1 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p1_p2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p2_m1 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p2_m2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p2_m3 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p2_m4 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p2_p0 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p2_p1 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p2_p2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p3_m1 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p3_m2 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p3_m3 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p3_p0 X Y z r hX hY hz hDx hDy hDz hq]
  rw [CriticalZeroPhysicalMoment20261003.moment_p4_m2 X Y z r hX hY hz hDx hDy hDz hq]
end
#print axioms pure_zeroSide_eq_valueSum66
end CriticalZeroSumAssembly20261003
