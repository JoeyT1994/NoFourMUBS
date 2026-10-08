import CriticalZeroSumPhysicalCleared
set_option autoImplicit false
namespace CriticalZeroSumIndependentReview20261003
open CriticalNewtonGauge20261003 CriticalZeroRational20261003
open CriticalZeroSumAssembly20261003

theorem original_equation_iff_numerator_zero (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    (pureNewtonPolynomial66 (zeroSide X Y z r 1) (zeroSide X Y z r (-1))=0 ↔
      computedNumerator X Y z=0) := by
  rw [pure_zeroSide_eq_computed_quotient X Y z r hX hY hz hDx hDy hDz hq]
  have hd := commonDenominator_ne_zero X Y z hz hDx hDy hDz
  simp [div_eq_zero_iff,hd]

theorem constant_term_is_retained (X Y z : ℂ) :
    commonTerm_00 X Y z = 1728 * commonDenominator X Y z := by
  simp only [commonTerm_00,commonDenominator,pow_zero,mul_one]
  ring

#print axioms original_equation_iff_numerator_zero
#print axioms constant_term_is_retained
end CriticalZeroSumIndependentReview20261003
