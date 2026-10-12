import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairsData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
theorem denPairZ5_shift_coefficient_024 (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (denPairZ5.getD 24 []) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII 0 (X+Y) (denPairZ5.getD 24 []) := by
  simp only [denPairZ5,denPairZ5_part00,denPairZ5_part01,denPairZ5_part02,denPairZ5_part03,List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms denPairZ5_shift_coefficient_024
theorem denPairZ5_shift_coefficient_025 (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (denPairZ5.getD 25 []) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII 0 (X+Y) (denPairZ5.getD 25 []) := by
  simp only [denPairZ5,denPairZ5_part00,denPairZ5_part01,denPairZ5_part02,denPairZ5_part03,List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms denPairZ5_shift_coefficient_025
theorem denPairZ5_shift_coefficient_026 (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (denPairZ5.getD 26 []) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII 0 (X+Y) (denPairZ5.getD 26 []) := by
  simp only [denPairZ5,denPairZ5_part00,denPairZ5_part01,denPairZ5_part02,denPairZ5_part03,List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms denPairZ5_shift_coefficient_026
theorem denPairZ5_shift_coefficient_027 (X Y : ℂ) :
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII X Y (denPairZ5.getD 27 []) =
      CriticalZeroSplitReduction20261003.IntegerReflector.evalII 0 (X+Y) (denPairZ5.getD 27 []) := by
  simp only [denPairZ5,denPairZ5_part00,denPairZ5_part01,denPairZ5_part02,denPairZ5_part03,List.cons_append,List.nil_append,
    List.getD_cons_zero,List.getD_cons_succ,List.getD_nil,
    CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  <;> ring
#print axioms denPairZ5_shift_coefficient_027

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
