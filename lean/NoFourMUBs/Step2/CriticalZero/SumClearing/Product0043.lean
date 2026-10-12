import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient042
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient046
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient040
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient048
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient038
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient050
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient036
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient052
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient034
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient054
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient032
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient056
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient030
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient058
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient028
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient060
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient026
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient062
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient024
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient064
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient022
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient066
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient020
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient068
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient018
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient070
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient016
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient072
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient014
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient074
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient012
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient076
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient010
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient078
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient008
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient080
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient006
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient082
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient004
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient084
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient002
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient086
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient000
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient088
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Odd00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Odd01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Odd02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Odd03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Coefficient044
import NoFourMUBs.Step2.CriticalZero.SumClearing.Product0043Whole045
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem n0043_coefficients_eval (X Y : ℂ) (n : ℕ) (hn : n < n0043.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042 n) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (n0043.getD n []) := by
  rw [n0043_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 ∨ n = 45 ∨ n = 46 ∨ n = 47 ∨ n = 48 ∨ n = 49 ∨ n = 50 ∨ n = 51 ∨ n = 52 ∨ n = 53 ∨ n = 54 ∨ n = 55 ∨ n = 56 ∨ n = 57 ∨ n = 58 ∨ n = 59 ∨ n = 60 ∨ n = 61 ∨ n = 62 ∨ n = 63 ∨ n = 64 ∨ n = 65 ∨ n = 66 ∨ n = 67 ∨ n = 68 ∨ n = 69 ∨ n = 70 ∨ n = 71 ∨ n = 72 ∨ n = 73 ∨ n = 74 ∨ n = 75 ∨ n = 76 ∨ n = 77 ∨ n = 78 ∨ n = 79 ∨ n = 80 ∨ n = 81 ∨ n = 82 ∨ n = 83 ∨ n = 84 ∨ n = 85 ∨ n = 86 ∨ n = 87 ∨ n = 88 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact n0043_coefficient_000_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 1 n0043_whole_001
  · subst n
    exact n0043_coefficient_002_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 3 n0043_whole_003
  · subst n
    exact n0043_coefficient_004_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 5 n0043_whole_005
  · subst n
    exact n0043_coefficient_006_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 7 n0043_whole_007
  · subst n
    exact n0043_coefficient_008_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 9 n0043_whole_009
  · subst n
    exact n0043_coefficient_010_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 11 n0043_whole_011
  · subst n
    exact n0043_coefficient_012_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 13 n0043_whole_013
  · subst n
    exact n0043_coefficient_014_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 15 n0043_whole_015
  · subst n
    exact n0043_coefficient_016_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 17 n0043_whole_017
  · subst n
    exact n0043_coefficient_018_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 19 n0043_whole_019
  · subst n
    exact n0043_coefficient_020_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 21 n0043_whole_021
  · subst n
    exact n0043_coefficient_022_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 23 n0043_whole_023
  · subst n
    exact n0043_coefficient_024_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 25 n0043_whole_025
  · subst n
    exact n0043_coefficient_026_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 27 n0043_whole_027
  · subst n
    exact n0043_coefficient_028_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 29 n0043_whole_029
  · subst n
    exact n0043_coefficient_030_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 31 n0043_whole_031
  · subst n
    exact n0043_coefficient_032_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 33 n0043_whole_033
  · subst n
    exact n0043_coefficient_034_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 35 n0043_whole_035
  · subst n
    exact n0043_coefficient_036_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 37 n0043_whole_037
  · subst n
    exact n0043_coefficient_038_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 39 n0043_whole_039
  · subst n
    exact n0043_coefficient_040_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 41 n0043_whole_041
  · subst n
    exact n0043_coefficient_042_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 43 n0043_whole_043
  · subst n
    exact n0043_coefficient_044_eval X Y
  · subst n
    exact n0043_coefficient_045_eval X Y
  · subst n
    exact n0043_coefficient_046_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 47 n0043_whole_047
  · subst n
    exact n0043_coefficient_048_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 49 n0043_whole_049
  · subst n
    exact n0043_coefficient_050_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 51 n0043_whole_051
  · subst n
    exact n0043_coefficient_052_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 53 n0043_whole_053
  · subst n
    exact n0043_coefficient_054_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 55 n0043_whole_055
  · subst n
    exact n0043_coefficient_056_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 57 n0043_whole_057
  · subst n
    exact n0043_coefficient_058_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 59 n0043_whole_059
  · subst n
    exact n0043_coefficient_060_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 61 n0043_whole_061
  · subst n
    exact n0043_coefficient_062_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 63 n0043_whole_063
  · subst n
    exact n0043_coefficient_064_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 65 n0043_whole_065
  · subst n
    exact n0043_coefficient_066_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 67 n0043_whole_067
  · subst n
    exact n0043_coefficient_068_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 69 n0043_whole_069
  · subst n
    exact n0043_coefficient_070_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 71 n0043_whole_071
  · subst n
    exact n0043_coefficient_072_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 73 n0043_whole_073
  · subst n
    exact n0043_coefficient_074_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 75 n0043_whole_075
  · subst n
    exact n0043_coefficient_076_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 77 n0043_whole_077
  · subst n
    exact n0043_coefficient_078_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 79 n0043_whole_079
  · subst n
    exact n0043_coefficient_080_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 81 n0043_whole_081
  · subst n
    exact n0043_coefficient_082_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 83 n0043_whole_083
  · subst n
    exact n0043_coefficient_084_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 85 n0043_whole_085
  · subst n
    exact n0043_coefficient_086_eval X Y
  · subst n
    exact n0043_eval_from_whole X Y 87 n0043_whole_087
  · subst n
    exact n0043_coefficient_088_eval X Y
theorem n0043_normalized_product_length :
    (CriticalZeroSumAssembly20261003.DenseCoefficients.mul n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042).length = n0043.length := by
  exact n0043_product_length
theorem n0043_interpret (X Y : ℂ) :
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y (CriticalZeroSumAssembly20261003.DenseCoefficients.mul n0041 NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042) =
      CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y n0043 := by
  apply CriticalZeroSumAssembly20261003.CoefficientAt.list_eq_of_getD
  · simpa only [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_length] using n0043_normalized_product_length
  · intro n hn
    have hn' : n < n0043.length := by
      simpa only [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_length,n0043_normalized_product_length] using hn
    rw [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,← CriticalZeroSumAssembly20261003.CoefficientAt.eval_mulAt,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_getD]
    exact n0043_coefficients_eval X Y n hn'
theorem n0043_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y n0043) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0043 X Y k := by
  have he := congrArg (CriticalZeroSplitReduction20261003.Coefficients.eval k) (n0043_interpret X Y)
  rw [CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,CriticalZeroSumAssembly20261003.Coefficients.eval_mul,n0041_eval,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.e0042_eval] at he
  exact he.symm
#print axioms n0043_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
