import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Certificates00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Certificates01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Certificates02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Certificates03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Certificates04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Certificates05
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings05
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem pair00_all_certificates (n : ℕ) (hn : n<pair00Cs.length) :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs n)
      (Coefficients.neg2 (pair00Cs.getD n [])))=true := by
  change n<23 at hn
  have hc : n=0 ∨ n=1 ∨ n=2 ∨ n=3 ∨ n=4 ∨ n=5 ∨ n=6 ∨ n=7 ∨ n=8 ∨ n=9 ∨ n=10 ∨ n=11 ∨ n=12 ∨ n=13 ∨ n=14 ∨ n=15 ∨ n=16 ∨ n=17 ∨ n=18 ∨ n=19 ∨ n=20 ∨ n=21 ∨ n=22 := by omega
  rcases hc with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  · subst n
    exact pair00_certificate_00
  · subst n
    exact pair00_certificate_01
  · subst n
    exact pair00_certificate_02
  · subst n
    exact pair00_certificate_03
  · subst n
    exact pair00_certificate_04
  · subst n
    exact pair00_certificate_05
  · subst n
    exact pair00_certificate_06
  · subst n
    exact pair00_certificate_07
  · subst n
    exact pair00_certificate_08
  · subst n
    exact pair00_certificate_09
  · subst n
    exact pair00_certificate_10
  · subst n
    exact pair00_certificate_11
  · subst n
    exact pair00_certificate_12
  · subst n
    exact pair00_certificate_13
  · subst n
    exact pair00_certificate_14
  · subst n
    exact pair00_certificate_15
  · subst n
    exact pair00_certificate_16
  · subst n
    exact pair00_certificate_17
  · subst n
    exact pair00_certificate_18
  · subst n
    exact pair00_certificate_19
  · subst n
    exact pair00_certificate_20
  · subst n
    exact pair00_certificate_21
  · subst n
    exact pair00_certificate_22
#print axioms pair00_all_certificates
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem pair00_eval (X Y z : K) :
    Coefficients.eval z (DenseCoefficients.interpret X Y pair00Cs)=
      primitive_p2_m4 X Y z*primitive_p2_p2 X Y z := by
  have h := CoefficientAt.binary_eval_eq X Y z pair00As pair00Bs pair00Cs
    pair00_product_length pair00_all_certificates
  simpa only [pair00As,pair00Bs,DenseCoefficients.interpret_fromExpr,
    primitiveExprCoefficients_p2_m4_interpret,primitiveExprCoefficients_p2_p2_interpret,
    primitive_p2_m4,primitive_p2_p2] using h
#print axioms pair00_eval
end
end CriticalZeroSumAssembly20261003
