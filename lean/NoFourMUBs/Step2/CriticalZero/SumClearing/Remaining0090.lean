import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient029
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient031
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient027
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient033
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient025
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient035
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient023
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient037
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient021
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient039
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient019
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient041
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient017
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient043
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient015
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient045
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient013
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient047
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient011
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient049
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient009
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient051
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient007
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient053
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient005
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient055
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient003
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient057
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient001
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Coefficient059
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Whole00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Whole01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0090Whole02
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0090_coefficients_eval (X Y : ℂ) (n : ℕ) (hn : n < r0090.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0089 r0088 n) = CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (r0090.getD n []) := by
  rw [r0090_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 ∨ n = 45 ∨ n = 46 ∨ n = 47 ∨ n = 48 ∨ n = 49 ∨ n = 50 ∨ n = 51 ∨ n = 52 ∨ n = 53 ∨ n = 54 ∨ n = 55 ∨ n = 56 ∨ n = 57 ∨ n = 58 ∨ n = 59 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact r0090_from_whole X Y 0 r0090_whole_000
  · subst n
    exact r0090_coefficient_001_eval X Y
  · subst n
    exact r0090_from_whole X Y 2 r0090_whole_002
  · subst n
    exact r0090_coefficient_003_eval X Y
  · subst n
    exact r0090_from_whole X Y 4 r0090_whole_004
  · subst n
    exact r0090_coefficient_005_eval X Y
  · subst n
    exact r0090_from_whole X Y 6 r0090_whole_006
  · subst n
    exact r0090_coefficient_007_eval X Y
  · subst n
    exact r0090_from_whole X Y 8 r0090_whole_008
  · subst n
    exact r0090_coefficient_009_eval X Y
  · subst n
    exact r0090_from_whole X Y 10 r0090_whole_010
  · subst n
    exact r0090_coefficient_011_eval X Y
  · subst n
    exact r0090_from_whole X Y 12 r0090_whole_012
  · subst n
    exact r0090_coefficient_013_eval X Y
  · subst n
    exact r0090_from_whole X Y 14 r0090_whole_014
  · subst n
    exact r0090_coefficient_015_eval X Y
  · subst n
    exact r0090_from_whole X Y 16 r0090_whole_016
  · subst n
    exact r0090_coefficient_017_eval X Y
  · subst n
    exact r0090_from_whole X Y 18 r0090_whole_018
  · subst n
    exact r0090_coefficient_019_eval X Y
  · subst n
    exact r0090_from_whole X Y 20 r0090_whole_020
  · subst n
    exact r0090_coefficient_021_eval X Y
  · subst n
    exact r0090_from_whole X Y 22 r0090_whole_022
  · subst n
    exact r0090_coefficient_023_eval X Y
  · subst n
    exact r0090_from_whole X Y 24 r0090_whole_024
  · subst n
    exact r0090_coefficient_025_eval X Y
  · subst n
    exact r0090_from_whole X Y 26 r0090_whole_026
  · subst n
    exact r0090_coefficient_027_eval X Y
  · subst n
    exact r0090_from_whole X Y 28 r0090_whole_028
  · subst n
    exact r0090_coefficient_029_eval X Y
  · subst n
    exact r0090_from_whole X Y 30 r0090_whole_030
  · subst n
    exact r0090_coefficient_031_eval X Y
  · subst n
    exact r0090_from_whole X Y 32 r0090_whole_032
  · subst n
    exact r0090_coefficient_033_eval X Y
  · subst n
    exact r0090_from_whole X Y 34 r0090_whole_034
  · subst n
    exact r0090_coefficient_035_eval X Y
  · subst n
    exact r0090_from_whole X Y 36 r0090_whole_036
  · subst n
    exact r0090_coefficient_037_eval X Y
  · subst n
    exact r0090_from_whole X Y 38 r0090_whole_038
  · subst n
    exact r0090_coefficient_039_eval X Y
  · subst n
    exact r0090_from_whole X Y 40 r0090_whole_040
  · subst n
    exact r0090_coefficient_041_eval X Y
  · subst n
    exact r0090_from_whole X Y 42 r0090_whole_042
  · subst n
    exact r0090_coefficient_043_eval X Y
  · subst n
    exact r0090_from_whole X Y 44 r0090_whole_044
  · subst n
    exact r0090_coefficient_045_eval X Y
  · subst n
    exact r0090_from_whole X Y 46 r0090_whole_046
  · subst n
    exact r0090_coefficient_047_eval X Y
  · subst n
    exact r0090_from_whole X Y 48 r0090_whole_048
  · subst n
    exact r0090_coefficient_049_eval X Y
  · subst n
    exact r0090_from_whole X Y 50 r0090_whole_050
  · subst n
    exact r0090_coefficient_051_eval X Y
  · subst n
    exact r0090_from_whole X Y 52 r0090_whole_052
  · subst n
    exact r0090_coefficient_053_eval X Y
  · subst n
    exact r0090_from_whole X Y 54 r0090_whole_054
  · subst n
    exact r0090_coefficient_055_eval X Y
  · subst n
    exact r0090_from_whole X Y 56 r0090_whole_056
  · subst n
    exact r0090_coefficient_057_eval X Y
  · subst n
    exact r0090_from_whole X Y 58 r0090_whole_058
  · subst n
    exact r0090_coefficient_059_eval X Y
theorem r0090_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0090) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0090 X Y k := by
  have checked := product_eval_eq_of_coefficients X Y k r0089 r0088 r0090
    r0090_product_length (r0090_coefficients_eval X Y)
  simpa only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0090,r0089_eval,r0088_eval,mul_comm] using checked

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
