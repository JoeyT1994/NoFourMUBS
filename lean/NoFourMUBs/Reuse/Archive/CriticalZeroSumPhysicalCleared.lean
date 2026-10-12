import NoFourMUBs.Reuse.Archive.CriticalZeroSumCleared
import NoFourMUBs.Reuse.Archive.CriticalZeroSumPhysicalValues
import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenominatorData
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalNewtonGauge20261003 CriticalZeroRational20261003
noncomputable section
/-- Exact cleared numerator of the complete original paired-side polynomial.
Identifying this computed numerator with the pinned raw CAS numerator remains
an explicit separate coefficient-certificate obligation. -/
theorem pure_zeroSide_eq_computed_quotient (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    pureNewtonPolynomial66 (zeroSide X Y z r 1) (zeroSide X Y z r (-1))=
      computedNumerator X Y z/commonDenominator X Y z := by
  rw [pure_zeroSide_eq_valueSum66 X Y z r hX hY hz hDx hDy hDz hq]
  apply (eq_div_iff (commonDenominator_ne_zero X Y z hz hDx hDy hDz)).mpr
  exact valueSum66_times_denominator X Y z r hX hY hz hDx hDy hDz hq
end
#print axioms pure_zeroSide_eq_computed_quotient
end CriticalZeroSumAssembly20261003
