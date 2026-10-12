import NoFourMUBs.Reuse.Archive.CriticalReconstructionData
import NoFourMUBs.Reuse.Archive.CriticalZeroSumPolynomial
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalNewton20261003 CriticalNewtonGauge20261003

/-- Literal equality to the physical 66-term polynomial; every paired side
and the constant 1728 are retained. -/
theorem physical_polynomial66 (L R : Data) :
    pureNewtonPolynomial66 L R=polynomial66
    (newton_m1_m1 L+newton_m1_m1 R)
    (newton_m1_m2 L+newton_m1_m2 R)
    (newton_m1_p2 L+newton_m1_p2 R)
    (newton_m1_p3 L+newton_m1_p3 R)
    (newton_m2_m1 L+newton_m2_m1 R)
    (newton_m2_m2 L+newton_m2_m2 R)
    (newton_m2_p0 L+newton_m2_p0 R)
    (newton_m2_p1 L+newton_m2_p1 R)
    (newton_m2_p2 L+newton_m2_p2 R)
    (newton_m2_p3 L+newton_m2_p3 R)
    (newton_m2_p4 L+newton_m2_p4 R)
    (newton_m3_p0 L+newton_m3_p0 R)
    (newton_m3_p1 L+newton_m3_p1 R)
    (newton_m3_p2 L+newton_m3_p2 R)
    (newton_m3_p3 L+newton_m3_p3 R)
    (newton_m4_p2 L+newton_m4_p2 R)
    (newton_p0_m2 L+newton_p0_m2 R)
    (newton_p0_m3 L+newton_p0_m3 R)
    (newton_p0_p2 L+newton_p0_p2 R)
    (newton_p0_p3 L+newton_p0_p3 R)
    (newton_p1_m2 L+newton_p1_m2 R)
    (newton_p1_m3 L+newton_p1_m3 R)
    (newton_p1_p1 L+newton_p1_p1 R)
    (newton_p1_p2 L+newton_p1_p2 R)
    (newton_p2_m1 L+newton_p2_m1 R)
    (newton_p2_m2 L+newton_p2_m2 R)
    (newton_p2_m3 L+newton_p2_m3 R)
    (newton_p2_m4 L+newton_p2_m4 R)
    (newton_p2_p0 L+newton_p2_p0 R)
    (newton_p2_p1 L+newton_p2_p1 R)
    (newton_p2_p2 L+newton_p2_p2 R)
    (newton_p3_m1 L+newton_p3_m1 R)
    (newton_p3_m2 L+newton_p3_m2 R)
    (newton_p3_m3 L+newton_p3_m3 R)
    (newton_p3_p0 L+newton_p3_p0 R)
    (newton_p4_m2 L+newton_p4_m2 R) := by
  rfl
#print axioms physical_polynomial66
end CriticalZeroSumAssembly20261003
