import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044_014
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044Remaining00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044Remaining01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044Remaining02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044Remaining03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044Remaining04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044Remaining05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044Remaining06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044Remaining07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row044Remaining08
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0043_rows_044 (i : ℕ) (hi : i < 28) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 44 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0043.getD 44 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact n0043_row_044_000
  · subst i
    exact n0043_row_044_001
  · subst i
    exact n0043_row_044_002
  · subst i
    exact n0043_row_044_003
  · subst i
    exact n0043_row_044_004
  · subst i
    exact n0043_row_044_005
  · subst i
    exact n0043_row_044_006
  · subst i
    exact n0043_row_044_007
  · subst i
    exact n0043_row_044_008
  · subst i
    exact n0043_row_044_009
  · subst i
    exact n0043_row_044_010
  · subst i
    exact n0043_row_044_011
  · subst i
    exact n0043_row_044_012
  · subst i
    exact n0043_row_044_013
  · subst i
    exact n0043_row_044_014
  · subst i
    exact n0043_row_044_015
  · subst i
    exact n0043_row_044_016
  · subst i
    exact n0043_row_044_017
  · subst i
    exact n0043_row_044_018
  · subst i
    exact n0043_row_044_019
  · subst i
    exact n0043_row_044_020
  · subst i
    exact n0043_row_044_021
  · subst i
    exact n0043_row_044_022
  · subst i
    exact n0043_row_044_023
  · subst i
    exact n0043_row_044_024
  · subst i
    exact n0043_row_044_025
  · subst i
    exact n0043_row_044_026
  · subst i
    exact n0043_row_044_027
theorem n0043_coefficient_044_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 44) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0043.getD 44 []) := by
  apply CriticalZeroSumAssembly20261003.CoefficientRow.coefficient_eq_of_rows X Y n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 44 (n0043.getD 44 []) 28
  · decide
  · decide
  · exact n0043_rows_044
#print axioms n0043_coefficient_044_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
