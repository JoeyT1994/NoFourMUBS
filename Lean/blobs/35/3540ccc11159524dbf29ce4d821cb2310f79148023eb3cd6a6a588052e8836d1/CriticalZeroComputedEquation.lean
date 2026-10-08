import CriticalZeroSumPhysicalCleared
set_option autoImplicit false
namespace CriticalZeroPhysicalInputs20261003
open CriticalNewtonGauge20261003 CriticalZeroRational20261003
open CriticalZeroSumAssembly20261003

theorem computed_zero_from_original (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y))
    (he : pureNewtonPolynomial66 (zeroSide X Y z r 1)
      (zeroSide X Y z r (-1))=0) :
    computedNumerator X Y z=0 ∧ commonDenominator X Y z≠0 := by
  have hd := commonDenominator_ne_zero X Y z hz hDx hDy hDz
  have hv := pure_zeroSide_eq_computed_quotient X Y z r hX hY hz hDx hDy hDz hq
  have hn := (eq_div_iff hd).mp (he.symm.trans hv)
  simp only [zero_mul] at hn
  exact ⟨hn.symm,hd⟩

#print axioms computed_zero_from_original
end CriticalZeroPhysicalInputs20261003
