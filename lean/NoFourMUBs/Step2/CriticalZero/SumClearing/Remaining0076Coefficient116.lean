import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row116Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row116Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row116Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0076_rows_116 (i : ℕ) (hi : i < 38) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0075 r0074 116 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0076.getD 116 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 ∨ i = 28 ∨ i = 29 ∨ i = 30 ∨ i = 31 ∨ i = 32 ∨ i = 33 ∨ i = 34 ∨ i = 35 ∨ i = 36 ∨ i = 37 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0076_row_116_000
  · subst i
    exact r0076_row_116_001
  · subst i
    exact r0076_row_116_002
  · subst i
    exact r0076_row_116_003
  · subst i
    exact r0076_row_116_004
  · subst i
    exact r0076_row_116_005
  · subst i
    exact r0076_row_116_006
  · subst i
    exact r0076_row_116_007
  · subst i
    exact r0076_row_116_008
  · subst i
    exact r0076_row_116_009
  · subst i
    exact r0076_row_116_010
  · subst i
    exact r0076_row_116_011
  · subst i
    exact r0076_row_116_012
  · subst i
    exact r0076_row_116_013
  · subst i
    exact r0076_row_116_014
  · subst i
    exact r0076_row_116_015
  · subst i
    exact r0076_row_116_016
  · subst i
    exact r0076_row_116_017
  · subst i
    exact r0076_row_116_018
  · subst i
    exact r0076_row_116_019
  · subst i
    exact r0076_row_116_020
  · subst i
    exact r0076_row_116_021
  · subst i
    exact r0076_row_116_022
  · subst i
    exact r0076_row_116_023
  · subst i
    exact r0076_row_116_024
  · subst i
    exact r0076_row_116_025
  · subst i
    exact r0076_row_116_026
  · subst i
    exact r0076_row_116_027
  · subst i
    exact r0076_row_116_028
  · subst i
    exact r0076_row_116_029
  · subst i
    exact r0076_row_116_030
  · subst i
    exact r0076_row_116_031
  · subst i
    exact r0076_row_116_032
  · subst i
    exact r0076_row_116_033
  · subst i
    exact r0076_row_116_034
  · subst i
    exact r0076_row_116_035
  · subst i
    exact r0076_row_116_036
  · subst i
    exact r0076_row_116_037
theorem r0076_coefficient_116_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0075 r0074 116) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0076.getD 116 []) :=
  r0076_from_rows X Y 116 r0076_rows_116

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
