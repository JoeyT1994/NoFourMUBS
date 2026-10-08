import CriticalZeroSumDenominatorCertificates00
import CriticalZeroSumDenominatorCertificates01
import CriticalZeroSumDenominatorCertificates02
import CriticalZeroSumExprLengths
import CriticalZeroSumExprRawBindings
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

theorem denominator_all_certificates (n : ℕ) (hn : n<denominatorExprResidual.length) :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD n (.lit 0)))=true := by
  rw [denominatorExprResidual_length] at hn
  have hc : n=0 ∨ n=1 ∨ n=2 ∨ n=3 ∨ n=4 ∨ n=5 ∨ n=6 ∨ n=7 ∨ n=8 ∨ n=9 ∨ n=10 ∨ n=11 ∨ n=12 ∨ n=13 ∨ n=14 ∨ n=15 ∨ n=16 ∨ n=17 ∨ n=18 ∨ n=19 ∨ n=20 ∨ n=21 ∨ n=22 ∨ n=23 ∨ n=24 ∨ n=25 ∨ n=26 ∨ n=27 ∨ n=28 ∨ n=29 ∨ n=30 ∨ n=31 ∨ n=32 := by omega
  rcases hc with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  · subst n
    exact denominator_certificate_00
  · subst n
    exact denominator_certificate_01
  · subst n
    exact denominator_certificate_02
  · subst n
    exact denominator_certificate_03
  · subst n
    exact denominator_certificate_04
  · subst n
    exact denominator_certificate_05
  · subst n
    exact denominator_certificate_06
  · subst n
    exact denominator_certificate_07
  · subst n
    exact denominator_certificate_08
  · subst n
    exact denominator_certificate_09
  · subst n
    exact denominator_certificate_10
  · subst n
    exact denominator_certificate_11
  · subst n
    exact denominator_certificate_12
  · subst n
    exact denominator_certificate_13
  · subst n
    exact denominator_certificate_14
  · subst n
    exact denominator_certificate_15
  · subst n
    exact denominator_certificate_16
  · subst n
    exact denominator_certificate_17
  · subst n
    exact denominator_certificate_18
  · subst n
    exact denominator_certificate_19
  · subst n
    exact denominator_certificate_20
  · subst n
    exact denominator_certificate_21
  · subst n
    exact denominator_certificate_22
  · subst n
    exact denominator_certificate_23
  · subst n
    exact denominator_certificate_24
  · subst n
    exact denominator_certificate_25
  · subst n
    exact denominator_certificate_26
  · subst n
    exact denominator_certificate_27
  · subst n
    exact denominator_certificate_28
  · subst n
    exact denominator_certificate_29
  · subst n
    exact denominator_certificate_30
  · subst n
    exact denominator_certificate_31
  · subst n
    exact denominator_certificate_32

/-- Unconditional exact equality to the pinned raw CAS denominator.
No splitting relation or nonzero factor is assumed. -/
theorem commonDenominator_eq_rawDenominator (X Y z : K) :
    commonDenominator X Y z=rawDenominator X Y z := by
  have h := ExprCoefficients.allZero_of_certificates X Y denominatorExprResidual
    denominator_all_certificates
  rw [denominatorExprResidual_interpret] at h
  have hv := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero z _ h
  rw [denominatorResidual,CriticalZeroSplitReduction20261003.Coefficients.eval_add,
    CriticalZeroSplitReduction20261003.Coefficients.eval_neg,
    eval_commonDenominatorCoefficients] at hv
  apply sub_eq_zero.mp
  simpa only [rawDenominator,sub_eq_add_neg] using hv
end
#print axioms denominator_all_certificates
#print axioms commonDenominator_eq_rawDenominator
end CriticalZeroSumAssembly20261003
