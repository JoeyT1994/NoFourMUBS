import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check00
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check01
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check02
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check03
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check04
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check05
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check06
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check07
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check08
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check09
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check10
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check11
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check12
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check13
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check14
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check15
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check16
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check17
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check18
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check19
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check20
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check21
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check22
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check23
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check24
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check25
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check26
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check27
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check28
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check29
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check30
import NoFourMUBs.Step2.CriticalZero.SumClearing.Remaining0084Check31
import Lean.Elab.Tactic.Omega
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
theorem r0084_all (n : ℕ) (hn : n < r0084.length) :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (CriticalZeroSplitReduction20261003.Coefficients.add2 (CriticalZeroSumAssembly20261003.CoefficientAt.mulAt r0083 r0081 n)
      (CriticalZeroSplitReduction20261003.Coefficients.neg2 (r0084.getD n []))) = true := by
  rw [r0084_length] at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 ∨ n = 37 ∨ n = 38 ∨ n = 39 ∨ n = 40 ∨ n = 41 ∨ n = 42 ∨ n = 43 ∨ n = 44 ∨ n = 45 ∨ n = 46 ∨ n = 47 ∨ n = 48 ∨ n = 49 ∨ n = 50 ∨ n = 51 ∨ n = 52 ∨ n = 53 ∨ n = 54 ∨ n = 55 ∨ n = 56 ∨ n = 57 ∨ n = 58 ∨ n = 59 ∨ n = 60 ∨ n = 61 ∨ n = 62 ∨ n = 63 ∨ n = 64 ∨ n = 65 ∨ n = 66 ∨ n = 67 ∨ n = 68 ∨ n = 69 ∨ n = 70 ∨ n = 71 ∨ n = 72 ∨ n = 73 ∨ n = 74 ∨ n = 75 ∨ n = 76 ∨ n = 77 ∨ n = 78 ∨ n = 79 ∨ n = 80 ∨ n = 81 ∨ n = 82 ∨ n = 83 ∨ n = 84 ∨ n = 85 ∨ n = 86 ∨ n = 87 ∨ n = 88 ∨ n = 89 ∨ n = 90 ∨ n = 91 ∨ n = 92 ∨ n = 93 ∨ n = 94 ∨ n = 95 ∨ n = 96 ∨ n = 97 ∨ n = 98 ∨ n = 99 ∨ n = 100 ∨ n = 101 ∨ n = 102 ∨ n = 103 ∨ n = 104 ∨ n = 105 ∨ n = 106 ∨ n = 107 ∨ n = 108 ∨ n = 109 ∨ n = 110 ∨ n = 111 ∨ n = 112 ∨ n = 113 ∨ n = 114 ∨ n = 115 ∨ n = 116 ∨ n = 117 ∨ n = 118 ∨ n = 119 ∨ n = 120 ∨ n = 121 ∨ n = 122 ∨ n = 123 ∨ n = 124 ∨ n = 125 ∨ n = 126 := by omega
  rcases hc with hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn | hn
  · subst n
    exact r0084_whole_000
  · subst n
    exact r0084_whole_001
  · subst n
    exact r0084_whole_002
  · subst n
    exact r0084_whole_003
  · subst n
    exact r0084_whole_004
  · subst n
    exact r0084_whole_005
  · subst n
    exact r0084_whole_006
  · subst n
    exact r0084_whole_007
  · subst n
    exact r0084_whole_008
  · subst n
    exact r0084_whole_009
  · subst n
    exact r0084_whole_010
  · subst n
    exact r0084_whole_011
  · subst n
    exact r0084_whole_012
  · subst n
    exact r0084_whole_013
  · subst n
    exact r0084_whole_014
  · subst n
    exact r0084_whole_015
  · subst n
    exact r0084_whole_016
  · subst n
    exact r0084_whole_017
  · subst n
    exact r0084_whole_018
  · subst n
    exact r0084_whole_019
  · subst n
    exact r0084_whole_020
  · subst n
    exact r0084_whole_021
  · subst n
    exact r0084_whole_022
  · subst n
    exact r0084_whole_023
  · subst n
    exact r0084_whole_024
  · subst n
    exact r0084_whole_025
  · subst n
    exact r0084_whole_026
  · subst n
    exact r0084_whole_027
  · subst n
    exact r0084_whole_028
  · subst n
    exact r0084_whole_029
  · subst n
    exact r0084_whole_030
  · subst n
    exact r0084_whole_031
  · subst n
    exact r0084_whole_032
  · subst n
    exact r0084_whole_033
  · subst n
    exact r0084_whole_034
  · subst n
    exact r0084_whole_035
  · subst n
    exact r0084_whole_036
  · subst n
    exact r0084_whole_037
  · subst n
    exact r0084_whole_038
  · subst n
    exact r0084_whole_039
  · subst n
    exact r0084_whole_040
  · subst n
    exact r0084_whole_041
  · subst n
    exact r0084_whole_042
  · subst n
    exact r0084_whole_043
  · subst n
    exact r0084_whole_044
  · subst n
    exact r0084_whole_045
  · subst n
    exact r0084_whole_046
  · subst n
    exact r0084_whole_047
  · subst n
    exact r0084_whole_048
  · subst n
    exact r0084_whole_049
  · subst n
    exact r0084_whole_050
  · subst n
    exact r0084_whole_051
  · subst n
    exact r0084_whole_052
  · subst n
    exact r0084_whole_053
  · subst n
    exact r0084_whole_054
  · subst n
    exact r0084_whole_055
  · subst n
    exact r0084_whole_056
  · subst n
    exact r0084_whole_057
  · subst n
    exact r0084_whole_058
  · subst n
    exact r0084_whole_059
  · subst n
    exact r0084_whole_060
  · subst n
    exact r0084_whole_061
  · subst n
    exact r0084_whole_062
  · subst n
    exact r0084_whole_063
  · subst n
    exact r0084_whole_064
  · subst n
    exact r0084_whole_065
  · subst n
    exact r0084_whole_066
  · subst n
    exact r0084_whole_067
  · subst n
    exact r0084_whole_068
  · subst n
    exact r0084_whole_069
  · subst n
    exact r0084_whole_070
  · subst n
    exact r0084_whole_071
  · subst n
    exact r0084_whole_072
  · subst n
    exact r0084_whole_073
  · subst n
    exact r0084_whole_074
  · subst n
    exact r0084_whole_075
  · subst n
    exact r0084_whole_076
  · subst n
    exact r0084_whole_077
  · subst n
    exact r0084_whole_078
  · subst n
    exact r0084_whole_079
  · subst n
    exact r0084_whole_080
  · subst n
    exact r0084_whole_081
  · subst n
    exact r0084_whole_082
  · subst n
    exact r0084_whole_083
  · subst n
    exact r0084_whole_084
  · subst n
    exact r0084_whole_085
  · subst n
    exact r0084_whole_086
  · subst n
    exact r0084_whole_087
  · subst n
    exact r0084_whole_088
  · subst n
    exact r0084_whole_089
  · subst n
    exact r0084_whole_090
  · subst n
    exact r0084_whole_091
  · subst n
    exact r0084_whole_092
  · subst n
    exact r0084_whole_093
  · subst n
    exact r0084_whole_094
  · subst n
    exact r0084_whole_095
  · subst n
    exact r0084_whole_096
  · subst n
    exact r0084_whole_097
  · subst n
    exact r0084_whole_098
  · subst n
    exact r0084_whole_099
  · subst n
    exact r0084_whole_100
  · subst n
    exact r0084_whole_101
  · subst n
    exact r0084_whole_102
  · subst n
    exact r0084_whole_103
  · subst n
    exact r0084_whole_104
  · subst n
    exact r0084_whole_105
  · subst n
    exact r0084_whole_106
  · subst n
    exact r0084_whole_107
  · subst n
    exact r0084_whole_108
  · subst n
    exact r0084_whole_109
  · subst n
    exact r0084_whole_110
  · subst n
    exact r0084_whole_111
  · subst n
    exact r0084_whole_112
  · subst n
    exact r0084_whole_113
  · subst n
    exact r0084_whole_114
  · subst n
    exact r0084_whole_115
  · subst n
    exact r0084_whole_116
  · subst n
    exact r0084_whole_117
  · subst n
    exact r0084_whole_118
  · subst n
    exact r0084_whole_119
  · subst n
    exact r0084_whole_120
  · subst n
    exact r0084_whole_121
  · subst n
    exact r0084_whole_122
  · subst n
    exact r0084_whole_123
  · subst n
    exact r0084_whole_124
  · subst n
    exact r0084_whole_125
  · subst n
    exact r0084_whole_126
theorem r0084_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y r0084) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0084 X Y k := by
  have checked := CriticalZeroSumAssembly20261003.CoefficientAt.binary_eval_eq X Y k r0083 r0081 r0084
    r0084_product_length r0084_all
  simpa only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0084,r0083_eval,r0081_eval,mul_comm] using checked

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
