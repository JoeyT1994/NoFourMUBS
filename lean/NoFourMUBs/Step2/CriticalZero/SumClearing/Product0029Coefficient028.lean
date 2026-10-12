import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row028Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row028Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row028Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0029_rows_028 (i : ℕ) (hi : i<30) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow denPairZ5 n0023 28 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0029.getD 28 []).getD i [])))=true := by
  have hc : i=0 ∨ i=1 ∨ i=2 ∨ i=3 ∨ i=4 ∨ i=5 ∨ i=6 ∨ i=7 ∨ i=8 ∨ i=9 ∨ i=10 ∨ i=11 ∨ i=12 ∨ i=13 ∨ i=14 ∨ i=15 ∨ i=16 ∨ i=17 ∨ i=18 ∨ i=19 ∨ i=20 ∨ i=21 ∨ i=22 ∨ i=23 ∨ i=24 ∨ i=25 ∨ i=26 ∨ i=27 ∨ i=28 ∨ i=29 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact n0029_row_028_000
  · subst i
    exact n0029_row_028_001
  · subst i
    exact n0029_row_028_002
  · subst i
    exact n0029_row_028_003
  · subst i
    exact n0029_row_028_004
  · subst i
    exact n0029_row_028_005
  · subst i
    exact n0029_row_028_006
  · subst i
    exact n0029_row_028_007
  · subst i
    exact n0029_row_028_008
  · subst i
    exact n0029_row_028_009
  · subst i
    exact n0029_row_028_010
  · subst i
    exact n0029_row_028_011
  · subst i
    exact n0029_row_028_012
  · subst i
    exact n0029_row_028_013
  · subst i
    exact n0029_row_028_014
  · subst i
    exact n0029_row_028_015
  · subst i
    exact n0029_row_028_016
  · subst i
    exact n0029_row_028_017
  · subst i
    exact n0029_row_028_018
  · subst i
    exact n0029_row_028_019
  · subst i
    exact n0029_row_028_020
  · subst i
    exact n0029_row_028_021
  · subst i
    exact n0029_row_028_022
  · subst i
    exact n0029_row_028_023
  · subst i
    exact n0029_row_028_024
  · subst i
    exact n0029_row_028_025
  · subst i
    exact n0029_row_028_026
  · subst i
    exact n0029_row_028_027
  · subst i
    exact n0029_row_028_028
  · subst i
    exact n0029_row_028_029
theorem n0029_coefficient_028_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt denPairZ5 n0023 28) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0029.getD 28 []) :=
  n0029_eval_from_rows X Y 28 n0029_rows_028
#print axioms n0029_coefficient_028_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
