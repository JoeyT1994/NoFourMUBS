import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Certificates00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Certificates01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Certificates02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Certificates03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Certificates04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Certificates05
import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Certificates06
import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Certificates07
import NoFourMUBs.Reuse.Archive.CriticalZeroSumTrip00Certificates08
import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Exact
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem trip00_all_certificates (n : ℕ) (hn : n<trip00Cs.length) :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs n)
      (Coefficients.neg2 (trip00Cs.getD n [])))=true := by
  change n<35 at hn
  have hc : n=0 ∨ n=1 ∨ n=2 ∨ n=3 ∨ n=4 ∨ n=5 ∨ n=6 ∨ n=7 ∨ n=8 ∨ n=9 ∨ n=10 ∨ n=11 ∨ n=12 ∨ n=13 ∨ n=14 ∨ n=15 ∨ n=16 ∨ n=17 ∨ n=18 ∨ n=19 ∨ n=20 ∨ n=21 ∨ n=22 ∨ n=23 ∨ n=24 ∨ n=25 ∨ n=26 ∨ n=27 ∨ n=28 ∨ n=29 ∨ n=30 ∨ n=31 ∨ n=32 ∨ n=33 ∨ n=34 := by omega
  rcases hc with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  · subst n
    exact trip00_certificate_00
  · subst n
    exact trip00_certificate_01
  · subst n
    exact trip00_certificate_02
  · subst n
    exact trip00_certificate_03
  · subst n
    exact trip00_certificate_04
  · subst n
    exact trip00_certificate_05
  · subst n
    exact trip00_certificate_06
  · subst n
    exact trip00_certificate_07
  · subst n
    exact trip00_certificate_08
  · subst n
    exact trip00_certificate_09
  · subst n
    exact trip00_certificate_10
  · subst n
    exact trip00_certificate_11
  · subst n
    exact trip00_certificate_12
  · subst n
    exact trip00_certificate_13
  · subst n
    exact trip00_certificate_14
  · subst n
    exact trip00_certificate_15
  · subst n
    exact trip00_certificate_16
  · subst n
    exact trip00_certificate_17
  · subst n
    exact trip00_certificate_18
  · subst n
    exact trip00_certificate_19
  · subst n
    exact trip00_certificate_20
  · subst n
    exact trip00_certificate_21
  · subst n
    exact trip00_certificate_22
  · subst n
    exact trip00_certificate_23
  · subst n
    exact trip00_certificate_24
  · subst n
    exact trip00_certificate_25
  · subst n
    exact trip00_certificate_26
  · subst n
    exact trip00_certificate_27
  · subst n
    exact trip00_certificate_28
  · subst n
    exact trip00_certificate_29
  · subst n
    exact trip00_certificate_30
  · subst n
    exact trip00_certificate_31
  · subst n
    exact trip00_certificate_32
  · subst n
    exact trip00_certificate_33
  · subst n
    exact trip00_certificate_34
#print axioms trip00_all_certificates
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem trip00_eval (X Y z : K) :
    Coefficients.eval z (DenseCoefficients.interpret X Y trip00Cs)=
      primitive_m4_p2 X Y z*(primitive_p2_m4 X Y z*primitive_p2_p2 X Y z) := by
  have h := CoefficientAt.binary_eval_eq X Y z trip00As trip00Bs trip00Cs
    trip00_product_length trip00_all_certificates
  simpa only [trip00As,trip00Bs,DenseCoefficients.interpret_fromExpr,
    primitiveExprCoefficients_m4_p2_interpret,primitive_m4_p2,pair00_eval] using h
#print axioms trip00_eval
end
end CriticalZeroSumAssembly20261003
