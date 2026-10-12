import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row100Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row100Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0076Row100Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0076_rows_100 (i : ℕ) (hi : i < 38) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0075 r0074 100 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0076.getD 100 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 ∨ i = 19 ∨ i = 20 ∨ i = 21 ∨ i = 22 ∨ i = 23 ∨ i = 24 ∨ i = 25 ∨ i = 26 ∨ i = 27 ∨ i = 28 ∨ i = 29 ∨ i = 30 ∨ i = 31 ∨ i = 32 ∨ i = 33 ∨ i = 34 ∨ i = 35 ∨ i = 36 ∨ i = 37 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0076_row_100_000
  · subst i
    exact r0076_row_100_001
  · subst i
    exact r0076_row_100_002
  · subst i
    exact r0076_row_100_003
  · subst i
    exact r0076_row_100_004
  · subst i
    exact r0076_row_100_005
  · subst i
    exact r0076_row_100_006
  · subst i
    exact r0076_row_100_007
  · subst i
    exact r0076_row_100_008
  · subst i
    exact r0076_row_100_009
  · subst i
    exact r0076_row_100_010
  · subst i
    exact r0076_row_100_011
  · subst i
    exact r0076_row_100_012
  · subst i
    exact r0076_row_100_013
  · subst i
    exact r0076_row_100_014
  · subst i
    exact r0076_row_100_015
  · subst i
    exact r0076_row_100_016
  · subst i
    exact r0076_row_100_017
  · subst i
    exact r0076_row_100_018
  · subst i
    exact r0076_row_100_019
  · subst i
    exact r0076_row_100_020
  · subst i
    exact r0076_row_100_021
  · subst i
    exact r0076_row_100_022
  · subst i
    exact r0076_row_100_023
  · subst i
    exact r0076_row_100_024
  · subst i
    exact r0076_row_100_025
  · subst i
    exact r0076_row_100_026
  · subst i
    exact r0076_row_100_027
  · subst i
    exact r0076_row_100_028
  · subst i
    exact r0076_row_100_029
  · subst i
    exact r0076_row_100_030
  · subst i
    exact r0076_row_100_031
  · subst i
    exact r0076_row_100_032
  · subst i
    exact r0076_row_100_033
  · subst i
    exact r0076_row_100_034
  · subst i
    exact r0076_row_100_035
  · subst i
    exact r0076_row_100_036
  · subst i
    exact r0076_row_100_037
theorem r0076_coefficient_100_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0075 r0074 100) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0076.getD 100 []) :=
  r0076_from_rows X Y 100 r0076_rows_100

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
