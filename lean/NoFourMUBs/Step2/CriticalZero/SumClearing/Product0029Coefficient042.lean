import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row042Batch00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row042Batch01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0029Row042Batch02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0029_rows_042 (i : ℕ) (hi : i<30) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroI (CriticalZeroSplitReduction20261003.Coefficients.add (CriticalZeroSumAssembly20261003.CoefficientRow.mulAtRow denPairZ5 n0023 42 i)
      (CriticalZeroSplitReduction20261003.Coefficients.neg ((n0029.getD 42 []).getD i [])))=true := by
  have hc : i=0 ∨ i=1 ∨ i=2 ∨ i=3 ∨ i=4 ∨ i=5 ∨ i=6 ∨ i=7 ∨ i=8 ∨ i=9 ∨ i=10 ∨ i=11 ∨ i=12 ∨ i=13 ∨ i=14 ∨ i=15 ∨ i=16 ∨ i=17 ∨ i=18 ∨ i=19 ∨ i=20 ∨ i=21 ∨ i=22 ∨ i=23 ∨ i=24 ∨ i=25 ∨ i=26 ∨ i=27 ∨ i=28 ∨ i=29 := by omega
  rcases hc with hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi | hi
  · subst i
    exact n0029_row_042_000
  · subst i
    exact n0029_row_042_001
  · subst i
    exact n0029_row_042_002
  · subst i
    exact n0029_row_042_003
  · subst i
    exact n0029_row_042_004
  · subst i
    exact n0029_row_042_005
  · subst i
    exact n0029_row_042_006
  · subst i
    exact n0029_row_042_007
  · subst i
    exact n0029_row_042_008
  · subst i
    exact n0029_row_042_009
  · subst i
    exact n0029_row_042_010
  · subst i
    exact n0029_row_042_011
  · subst i
    exact n0029_row_042_012
  · subst i
    exact n0029_row_042_013
  · subst i
    exact n0029_row_042_014
  · subst i
    exact n0029_row_042_015
  · subst i
    exact n0029_row_042_016
  · subst i
    exact n0029_row_042_017
  · subst i
    exact n0029_row_042_018
  · subst i
    exact n0029_row_042_019
  · subst i
    exact n0029_row_042_020
  · subst i
    exact n0029_row_042_021
  · subst i
    exact n0029_row_042_022
  · subst i
    exact n0029_row_042_023
  · subst i
    exact n0029_row_042_024
  · subst i
    exact n0029_row_042_025
  · subst i
    exact n0029_row_042_026
  · subst i
    exact n0029_row_042_027
  · subst i
    exact n0029_row_042_028
  · subst i
    exact n0029_row_042_029
theorem n0029_coefficient_042_eval (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt denPairZ5 n0023 42) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0029.getD 42 []) :=
  n0029_eval_from_rows X Y 42 n0029_rows_042
#print axioms n0029_coefficient_042_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
