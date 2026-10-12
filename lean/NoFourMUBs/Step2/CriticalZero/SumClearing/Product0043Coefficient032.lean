import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row032Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row032Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row032Batch02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Row032Batch03
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0043_rows_032 (i : ℕ) (hi : i < 28) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 32 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0043.getD 32 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact n0043_row_032_000
  · subst i
    exact n0043_row_032_001
  · subst i
    exact n0043_row_032_002
  · subst i
    exact n0043_row_032_003
  · subst i
    exact n0043_row_032_004
  · subst i
    exact n0043_row_032_005
  · subst i
    exact n0043_row_032_006
  · subst i
    exact n0043_row_032_007
  · subst i
    exact n0043_row_032_008
  · subst i
    exact n0043_row_032_009
  · subst i
    exact n0043_row_032_010
  · subst i
    exact n0043_row_032_011
  · subst i
    exact n0043_row_032_012
  · subst i
    exact n0043_row_032_013
  · subst i
    exact n0043_row_032_014
  · subst i
    exact n0043_row_032_015
  · subst i
    exact n0043_row_032_016
  · subst i
    exact n0043_row_032_017
  · subst i
    exact n0043_row_032_018
  · subst i
    exact n0043_row_032_019
  · subst i
    exact n0043_row_032_020
  · subst i
    exact n0043_row_032_021
  · subst i
    exact n0043_row_032_022
  · subst i
    exact n0043_row_032_023
  · subst i
    exact n0043_row_032_024
  · subst i
    exact n0043_row_032_025
  · subst i
    exact n0043_row_032_026
  · subst i
    exact n0043_row_032_027
theorem n0043_coefficient_032_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 32) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0043.getD 32 []) :=
  n0043_eval_from_rows X Y 32 n0043_rows_032
#print axioms n0043_coefficient_032_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
