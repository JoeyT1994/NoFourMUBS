import NoFourMUBs.Step2.CriticalZero.NumeratorCheck00
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck01
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck02
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck03
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck04
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck05
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck06
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck07
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck08
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck09
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck10
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck11
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck12
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck13
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck14
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck15
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck16
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck17
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck18
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck19
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck20
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck21
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck22
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck23
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck24
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck25
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck26
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck27
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck28
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck29
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck30
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck31
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck32
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck33
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck34
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck35
import NoFourMUBs.Step2.CriticalZero.NumeratorCheck36
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003

theorem numerator_all_certificates (n : ℕ) (hn : n < groupedNumeratorResidual.length) :
    IntegerReflector.zeroII (groupedNumeratorResidual.getD n []) = true := by
  change n < 37 at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 := by omega
  rcases hc with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  · subst n
    exact numerator_certificate_00
  · subst n
    exact numerator_certificate_01
  · subst n
    exact numerator_certificate_02
  · subst n
    exact numerator_certificate_03
  · subst n
    exact numerator_certificate_04
  · subst n
    exact numerator_certificate_05
  · subst n
    exact numerator_certificate_06
  · subst n
    exact numerator_certificate_07
  · subst n
    exact numerator_certificate_08
  · subst n
    exact numerator_certificate_09
  · subst n
    exact numerator_certificate_10
  · subst n
    exact numerator_certificate_11
  · subst n
    exact numerator_certificate_12
  · subst n
    exact numerator_certificate_13
  · subst n
    exact numerator_certificate_14
  · subst n
    exact numerator_certificate_15
  · subst n
    exact numerator_certificate_16
  · subst n
    exact numerator_certificate_17
  · subst n
    exact numerator_certificate_18
  · subst n
    exact numerator_certificate_19
  · subst n
    exact numerator_certificate_20
  · subst n
    exact numerator_certificate_21
  · subst n
    exact numerator_certificate_22
  · subst n
    exact numerator_certificate_23
  · subst n
    exact numerator_certificate_24
  · subst n
    exact numerator_certificate_25
  · subst n
    exact numerator_certificate_26
  · subst n
    exact numerator_certificate_27
  · subst n
    exact numerator_certificate_28
  · subst n
    exact numerator_certificate_29
  · subst n
    exact numerator_certificate_30
  · subst n
    exact numerator_certificate_31
  · subst n
    exact numerator_certificate_32
  · subst n
    exact numerator_certificate_33
  · subst n
    exact numerator_certificate_34
  · subst n
    exact numerator_certificate_35
  · subst n
    exact numerator_certificate_36

end CriticalZeroSumAssembly20261003
