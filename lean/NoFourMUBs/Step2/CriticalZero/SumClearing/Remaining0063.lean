import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check08
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check09
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check10
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check11
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check12
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check13
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check14
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check15
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check16
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check17
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check18
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check19
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check20
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0063Check21
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0063_all (n : ℕ) (hn : n < r0063.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (CriticalZeroSplitReduction20261003.Coefficients.add2 (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0059 r0062 n)
      (CriticalZeroSplitReduction20261003.Coefficients.neg2 (r0063.getD n []))) = true := by
  rw [r0063_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 ∨ n = 45 ∨ n = 46 ∨ n = 47 ∨ n = 48 ∨ n = 49 ∨ n = 50 ∨ n = 51 ∨ n = 52 ∨ n = 53 ∨ n = 54 ∨ n = 55 ∨ n = 56 ∨ n = 57 ∨ n = 58 ∨ n = 59 ∨ n = 60 ∨ n = 61 ∨ n = 62 ∨ n = 63 ∨ n = 64 ∨ n = 65 ∨ n = 66 ∨ n = 67 ∨ n = 68 ∨ n = 69 ∨ n = 70 ∨ n = 71 ∨ n = 72 ∨ n = 73 ∨ n = 74 ∨ n = 75 ∨ n = 76 ∨ n = 77 ∨ n = 78 ∨ n = 79 ∨ n = 80 ∨ n = 81 ∨ n = 82 ∨ n = 83 ∨ n = 84 ∨ n = 85 ∨ n = 86 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact r0063_whole_000
  · subst n
    exact r0063_whole_001
  · subst n
    exact r0063_whole_002
  · subst n
    exact r0063_whole_003
  · subst n
    exact r0063_whole_004
  · subst n
    exact r0063_whole_005
  · subst n
    exact r0063_whole_006
  · subst n
    exact r0063_whole_007
  · subst n
    exact r0063_whole_008
  · subst n
    exact r0063_whole_009
  · subst n
    exact r0063_whole_010
  · subst n
    exact r0063_whole_011
  · subst n
    exact r0063_whole_012
  · subst n
    exact r0063_whole_013
  · subst n
    exact r0063_whole_014
  · subst n
    exact r0063_whole_015
  · subst n
    exact r0063_whole_016
  · subst n
    exact r0063_whole_017
  · subst n
    exact r0063_whole_018
  · subst n
    exact r0063_whole_019
  · subst n
    exact r0063_whole_020
  · subst n
    exact r0063_whole_021
  · subst n
    exact r0063_whole_022
  · subst n
    exact r0063_whole_023
  · subst n
    exact r0063_whole_024
  · subst n
    exact r0063_whole_025
  · subst n
    exact r0063_whole_026
  · subst n
    exact r0063_whole_027
  · subst n
    exact r0063_whole_028
  · subst n
    exact r0063_whole_029
  · subst n
    exact r0063_whole_030
  · subst n
    exact r0063_whole_031
  · subst n
    exact r0063_whole_032
  · subst n
    exact r0063_whole_033
  · subst n
    exact r0063_whole_034
  · subst n
    exact r0063_whole_035
  · subst n
    exact r0063_whole_036
  · subst n
    exact r0063_whole_037
  · subst n
    exact r0063_whole_038
  · subst n
    exact r0063_whole_039
  · subst n
    exact r0063_whole_040
  · subst n
    exact r0063_whole_041
  · subst n
    exact r0063_whole_042
  · subst n
    exact r0063_whole_043
  · subst n
    exact r0063_whole_044
  · subst n
    exact r0063_whole_045
  · subst n
    exact r0063_whole_046
  · subst n
    exact r0063_whole_047
  · subst n
    exact r0063_whole_048
  · subst n
    exact r0063_whole_049
  · subst n
    exact r0063_whole_050
  · subst n
    exact r0063_whole_051
  · subst n
    exact r0063_whole_052
  · subst n
    exact r0063_whole_053
  · subst n
    exact r0063_whole_054
  · subst n
    exact r0063_whole_055
  · subst n
    exact r0063_whole_056
  · subst n
    exact r0063_whole_057
  · subst n
    exact r0063_whole_058
  · subst n
    exact r0063_whole_059
  · subst n
    exact r0063_whole_060
  · subst n
    exact r0063_whole_061
  · subst n
    exact r0063_whole_062
  · subst n
    exact r0063_whole_063
  · subst n
    exact r0063_whole_064
  · subst n
    exact r0063_whole_065
  · subst n
    exact r0063_whole_066
  · subst n
    exact r0063_whole_067
  · subst n
    exact r0063_whole_068
  · subst n
    exact r0063_whole_069
  · subst n
    exact r0063_whole_070
  · subst n
    exact r0063_whole_071
  · subst n
    exact r0063_whole_072
  · subst n
    exact r0063_whole_073
  · subst n
    exact r0063_whole_074
  · subst n
    exact r0063_whole_075
  · subst n
    exact r0063_whole_076
  · subst n
    exact r0063_whole_077
  · subst n
    exact r0063_whole_078
  · subst n
    exact r0063_whole_079
  · subst n
    exact r0063_whole_080
  · subst n
    exact r0063_whole_081
  · subst n
    exact r0063_whole_082
  · subst n
    exact r0063_whole_083
  · subst n
    exact r0063_whole_084
  · subst n
    exact r0063_whole_085
  · subst n
    exact r0063_whole_086
theorem r0063_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0063) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0063 X Y k := by
  have checked := CriticalZeroSumAssembly20261003.CoefficientAt.binary_eval_eq X Y k r0059 r0062 r0063
    r0063_product_length r0063_all
  simpa only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0063,r0059_eval,r0062_eval] using checked

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
