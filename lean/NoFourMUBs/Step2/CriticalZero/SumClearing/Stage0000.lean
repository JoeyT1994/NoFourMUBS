import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Pilot
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining08
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining09
import NoFourMUBs.Step2.CriticalZero.SumClearing.Stage0000Remaining10
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0020_normalized_product_length :
    (CriticalZeroSumAssembly20261003.DenseCoefficients.mul n0017 n0019).length = n0020.length := by rfl
theorem n0020_all (j : ℕ) (hj : j < n0020.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (CriticalZeroSplitReduction20261003.Coefficients.add2 (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0017 n0019 j)
      (CriticalZeroSplitReduction20261003.Coefficients.neg2 (n0020.getD j []))) = true := by
  rw [n0020_length] at hj
  have hc : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 ∨ j = 5 ∨ j = 6 ∨ j = 7 ∨ j = 8 ∨ j = 9 ∨ j = 10 ∨ j = 11 ∨ j = 12 ∨ j = 13 ∨ j = 14 ∨ j = 15 ∨ j = 16 ∨ j = 17 ∨ j = 18 ∨ j = 19 ∨ j = 20 ∨ j = 21 ∨ j = 22 ∨ j = 23 ∨ j = 24 ∨ j = 25 ∨ j = 26 ∨ j = 27 ∨ j = 28 ∨ j = 29 ∨ j = 30 ∨ j = 31 ∨ j = 32 ∨ j = 33 ∨ j = 34 ∨ j = 35 ∨ j = 36 ∨ j = 37 ∨ j = 38 ∨ j = 39 ∨ j = 40 ∨ j = 41 ∨ j = 42 ∨ j = 43 ∨ j = 44 ∨ j = 45 ∨ j = 46 ∨ j = 47 ∨ j = 48 ∨ j = 49 ∨ j = 50 ∨ j = 51 ∨ j = 52 ∨ j = 53 ∨ j = 54 ∨ j = 55 ∨ j = 56 ∨ j = 57 ∨ j = 58 ∨ j = 59 ∨ j = 60 ∨ j = 61 ∨ j = 62 ∨ j = 63 ∨ j = 64 ∨ j = 65 ∨ j = 66 ∨ j = 67 ∨ j = 68 ∨ j = 69 := by omega
  rcases hc with hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj | hj
  · subst j
    exact n0020_coefficient_000
  · subst j
    exact n0020_coefficient_001
  · subst j
    exact n0020_coefficient_002
  · subst j
    exact n0020_coefficient_003
  · subst j
    exact n0020_coefficient_004
  · subst j
    exact n0020_coefficient_005
  · subst j
    exact n0020_coefficient_006
  · subst j
    exact n0020_coefficient_007
  · subst j
    exact n0020_coefficient_008
  · subst j
    exact n0020_coefficient_009
  · subst j
    exact n0020_coefficient_010
  · subst j
    exact n0020_coefficient_011
  · subst j
    exact n0020_coefficient_012
  · subst j
    exact n0020_coefficient_013
  · subst j
    exact n0020_coefficient_014
  · subst j
    exact n0020_coefficient_015
  · subst j
    exact n0020_coefficient_016
  · subst j
    exact n0020_coefficient_017
  · subst j
    exact n0020_coefficient_018
  · subst j
    exact n0020_coefficient_019
  · subst j
    exact n0020_coefficient_020
  · subst j
    exact n0020_coefficient_021
  · subst j
    exact n0020_coefficient_022
  · subst j
    exact n0020_coefficient_023
  · subst j
    exact n0020_coefficient_024
  · subst j
    exact n0020_coefficient_025
  · subst j
    exact n0020_coefficient_026
  · subst j
    exact n0020_coefficient_027
  · subst j
    exact n0020_coefficient_028
  · subst j
    exact n0020_coefficient_029
  · subst j
    exact n0020_coefficient_030
  · subst j
    exact n0020_coefficient_031
  · subst j
    exact n0020_coefficient_032
  · subst j
    exact n0020_coefficient_033
  · subst j
    exact n0020_coefficient_034
  · subst j
    exact n0020_coefficient_035
  · subst j
    exact n0020_coefficient_036
  · subst j
    exact n0020_coefficient_037
  · subst j
    exact n0020_coefficient_038
  · subst j
    exact n0020_coefficient_039
  · subst j
    exact n0020_coefficient_040
  · subst j
    exact n0020_coefficient_041
  · subst j
    exact n0020_coefficient_042
  · subst j
    exact n0020_coefficient_043
  · subst j
    exact n0020_coefficient_044
  · subst j
    exact n0020_coefficient_045
  · subst j
    exact n0020_coefficient_046
  · subst j
    exact n0020_coefficient_047
  · subst j
    exact n0020_coefficient_048
  · subst j
    exact n0020_coefficient_049
  · subst j
    exact n0020_coefficient_050
  · subst j
    exact n0020_coefficient_051
  · subst j
    exact n0020_coefficient_052
  · subst j
    exact n0020_coefficient_053
  · subst j
    exact n0020_coefficient_054
  · subst j
    exact n0020_coefficient_055
  · subst j
    exact n0020_coefficient_056
  · subst j
    exact n0020_coefficient_057
  · subst j
    exact n0020_coefficient_058
  · subst j
    exact n0020_coefficient_059
  · subst j
    exact n0020_coefficient_060
  · subst j
    exact n0020_coefficient_061
  · subst j
    exact n0020_coefficient_062
  · subst j
    exact n0020_coefficient_063
  · subst j
    exact n0020_coefficient_064
  · subst j
    exact n0020_coefficient_065
  · subst j
    exact n0020_coefficient_066
  · subst j
    exact n0020_coefficient_067
  · subst j
    exact n0020_coefficient_068
  · subst j
    exact n0020_coefficient_069
theorem n0020_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y n0020) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0020 X Y k := by
  have checked := CriticalZeroSumAssembly20261003.CoefficientAt.binary_eval_eq X Y k n0017 n0019 n0020
    n0020_normalized_product_length n0020_all
  simpa only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0020,n0017_eval,n0019_eval] using checked
#print axioms n0020_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
