import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row010Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row010Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row010Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0076_rows_010 (i : ℕ) (hi : i < 38) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0075 r0074 10 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0076.getD 10 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 ∨ i = 28 ∨ i = 29 ∨ i = 30 ∨ i = 31 ∨ i = 32 ∨ i = 33 ∨ i = 34 ∨ i = 35 ∨ i = 36 ∨ i = 37 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0076_row_010_000
  · subst i
    exact r0076_row_010_001
  · subst i
    exact r0076_row_010_002
  · subst i
    exact r0076_row_010_003
  · subst i
    exact r0076_row_010_004
  · subst i
    exact r0076_row_010_005
  · subst i
    exact r0076_row_010_006
  · subst i
    exact r0076_row_010_007
  · subst i
    exact r0076_row_010_008
  · subst i
    exact r0076_row_010_009
  · subst i
    exact r0076_row_010_010
  · subst i
    exact r0076_row_010_011
  · subst i
    exact r0076_row_010_012
  · subst i
    exact r0076_row_010_013
  · subst i
    exact r0076_row_010_014
  · subst i
    exact r0076_row_010_015
  · subst i
    exact r0076_row_010_016
  · subst i
    exact r0076_row_010_017
  · subst i
    exact r0076_row_010_018
  · subst i
    exact r0076_row_010_019
  · subst i
    exact r0076_row_010_020
  · subst i
    exact r0076_row_010_021
  · subst i
    exact r0076_row_010_022
  · subst i
    exact r0076_row_010_023
  · subst i
    exact r0076_row_010_024
  · subst i
    exact r0076_row_010_025
  · subst i
    exact r0076_row_010_026
  · subst i
    exact r0076_row_010_027
  · subst i
    exact r0076_row_010_028
  · subst i
    exact r0076_row_010_029
  · subst i
    exact r0076_row_010_030
  · subst i
    exact r0076_row_010_031
  · subst i
    exact r0076_row_010_032
  · subst i
    exact r0076_row_010_033
  · subst i
    exact r0076_row_010_034
  · subst i
    exact r0076_row_010_035
  · subst i
    exact r0076_row_010_036
  · subst i
    exact r0076_row_010_037
theorem r0076_coefficient_010_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0075 r0074 10) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0076.getD 10 []) :=
  r0076_from_rows X Y 10 r0076_rows_010

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
