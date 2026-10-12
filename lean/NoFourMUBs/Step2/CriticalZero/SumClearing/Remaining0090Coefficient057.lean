import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Row057Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Row057Batch01
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0090_rows_057 (i : ℕ) (hi : i < 19) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow r0089 r0088 57 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((r0090.getD 57 []).getD i []))) = true := by
  have hc : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 ∨ i = 7 ∨ i = 8 ∨ i = 9 ∨ i = 10 ∨ i = 11 ∨ i = 12 ∨ i = 13 ∨ i = 14 ∨ i = 15 ∨ i = 16 ∨ i = 17 ∨ i = 18 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact r0090_row_057_000
  · subst i
    exact r0090_row_057_001
  · subst i
    exact r0090_row_057_002
  · subst i
    exact r0090_row_057_003
  · subst i
    exact r0090_row_057_004
  · subst i
    exact r0090_row_057_005
  · subst i
    exact r0090_row_057_006
  · subst i
    exact r0090_row_057_007
  · subst i
    exact r0090_row_057_008
  · subst i
    exact r0090_row_057_009
  · subst i
    exact r0090_row_057_010
  · subst i
    exact r0090_row_057_011
  · subst i
    exact r0090_row_057_012
  · subst i
    exact r0090_row_057_013
  · subst i
    exact r0090_row_057_014
  · subst i
    exact r0090_row_057_015
  · subst i
    exact r0090_row_057_016
  · subst i
    exact r0090_row_057_017
  · subst i
    exact r0090_row_057_018
theorem r0090_coefficient_057_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0089 r0088 57) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0090.getD 57 []) :=
  r0090_from_rows X Y 57 r0090_rows_057

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
