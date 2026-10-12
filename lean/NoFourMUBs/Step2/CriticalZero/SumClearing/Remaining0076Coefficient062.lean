import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row062Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row062Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row062Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0076_rows_062 (i : ℕ) (hi : i < 38) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0075 r0074 62 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0076.getD 62 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 ∨ i = 28 ∨ i = 29 ∨ i = 30 ∨ i = 31 ∨ i = 32 ∨ i = 33 ∨ i = 34 ∨ i = 35 ∨ i = 36 ∨ i = 37 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0076_row_062_000
  · subst i
    exact r0076_row_062_001
  · subst i
    exact r0076_row_062_002
  · subst i
    exact r0076_row_062_003
  · subst i
    exact r0076_row_062_004
  · subst i
    exact r0076_row_062_005
  · subst i
    exact r0076_row_062_006
  · subst i
    exact r0076_row_062_007
  · subst i
    exact r0076_row_062_008
  · subst i
    exact r0076_row_062_009
  · subst i
    exact r0076_row_062_010
  · subst i
    exact r0076_row_062_011
  · subst i
    exact r0076_row_062_012
  · subst i
    exact r0076_row_062_013
  · subst i
    exact r0076_row_062_014
  · subst i
    exact r0076_row_062_015
  · subst i
    exact r0076_row_062_016
  · subst i
    exact r0076_row_062_017
  · subst i
    exact r0076_row_062_018
  · subst i
    exact r0076_row_062_019
  · subst i
    exact r0076_row_062_020
  · subst i
    exact r0076_row_062_021
  · subst i
    exact r0076_row_062_022
  · subst i
    exact r0076_row_062_023
  · subst i
    exact r0076_row_062_024
  · subst i
    exact r0076_row_062_025
  · subst i
    exact r0076_row_062_026
  · subst i
    exact r0076_row_062_027
  · subst i
    exact r0076_row_062_028
  · subst i
    exact r0076_row_062_029
  · subst i
    exact r0076_row_062_030
  · subst i
    exact r0076_row_062_031
  · subst i
    exact r0076_row_062_032
  · subst i
    exact r0076_row_062_033
  · subst i
    exact r0076_row_062_034
  · subst i
    exact r0076_row_062_035
  · subst i
    exact r0076_row_062_036
  · subst i
    exact r0076_row_062_037
theorem r0076_coefficient_062_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0075 r0074 62) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0076.getD 62 []) :=
  r0076_from_rows X Y 62 r0076_rows_062

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
