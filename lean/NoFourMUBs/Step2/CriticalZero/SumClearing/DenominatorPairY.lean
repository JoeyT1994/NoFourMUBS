import NoFourMUBs.Step2.CriticalZero.SumClearing.DenominatorPairsData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
theorem denPairY5_eval (X Y k : ℂ) :
    CriticalZeroSplitReduction20261003.Coefficients.eval k (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y denPairY5) = NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0019 X Y k * NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0022 X Y k := by
  simp only [denPairY5,denPairY5_part00,denPairY5_part01,denPairY5_part02,denPairY5_part03,List.cons_append,List.nil_append,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,CriticalZeroSplitReduction20261003.Coefficients.eval,CriticalZeroSplitReduction20261003.IntegerReflector.evalII,CriticalZeroSplitReduction20261003.IntegerReflector.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  dsimp only [NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0022,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0021,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0019,NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Expressions.v0018,NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v146,NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4.v064,h,plusFactor,minusFactor,thirdPlusFactor,thirdMinusFactor]
  ring
#print axioms denPairY5_eval

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.Stages
