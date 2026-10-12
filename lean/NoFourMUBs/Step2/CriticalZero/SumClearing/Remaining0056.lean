import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check08
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0056Check09
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0056_all (n : ℕ) (hn : n < residualRemaining0056.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (residualRemaining0056.getD n []) = true := by
  rw [residualRemaining0056_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact r0056_whole_000
  · subst n
    exact r0056_whole_001
  · subst n
    exact r0056_whole_002
  · subst n
    exact r0056_whole_003
  · subst n
    exact r0056_whole_004
  · subst n
    exact r0056_whole_005
  · subst n
    exact r0056_whole_006
  · subst n
    exact r0056_whole_007
  · subst n
    exact r0056_whole_008
  · subst n
    exact r0056_whole_009
  · subst n
    exact r0056_whole_010
  · subst n
    exact r0056_whole_011
  · subst n
    exact r0056_whole_012
  · subst n
    exact r0056_whole_013
  · subst n
    exact r0056_whole_014
  · subst n
    exact r0056_whole_015
  · subst n
    exact r0056_whole_016
  · subst n
    exact r0056_whole_017
  · subst n
    exact r0056_whole_018
  · subst n
    exact r0056_whole_019
  · subst n
    exact r0056_whole_020
  · subst n
    exact r0056_whole_021
  · subst n
    exact r0056_whole_022
  · subst n
    exact r0056_whole_023
  · subst n
    exact r0056_whole_024
  · subst n
    exact r0056_whole_025
  · subst n
    exact r0056_whole_026
  · subst n
    exact r0056_whole_027
  · subst n
    exact r0056_whole_028
  · subst n
    exact r0056_whole_029
  · subst n
    exact r0056_whole_030
  · subst n
    exact r0056_whole_031
  · subst n
    exact r0056_whole_032
  · subst n
    exact r0056_whole_033
  · subst n
    exact r0056_whole_034
  · subst n
    exact r0056_whole_035
  · subst n
    exact r0056_whole_036
  · subst n
    exact r0056_whole_037
  · subst n
    exact r0056_whole_038
  · subst n
    exact r0056_whole_039
theorem r0056_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0056) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0056 X Y k := by
  have hz := CriticalZeroSplitReduction20261003.Coefficients.eval_allZero k _ (CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates X Y residualRemaining0056 r0056_all)
  simp only [residualRemaining0056,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,
    CriticalZeroSplitReduction20261003.Coefficients.eval_add,CriticalZeroSplitReduction20261003.Coefficients.eval_neg,calculationRemaining0056_eval] at hz
  exact (sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)).symm

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
