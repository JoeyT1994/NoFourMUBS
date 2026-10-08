import CriticalNonzeroCoefficientProgram
import CriticalNonzeroSumDenominator
import CriticalPseudoReduction

set_option autoImplicit false
namespace NonzeroNumeratorCoreIndependentReview20261003

/-- Retaining h!=0 is essential even for a one-step trace. -/
theorem zero_multiplier_counterexample :
    ∃ ss : List (CriticalPseudoReduction20261003.Step ℚ),
      CriticalPseudoReduction20261003.ValidTrace 0 0 0 ss ∧
      CriticalPseudoReduction20261003.endpoint 0 ss≠0 := by
  refine ⟨[⟨1,0,1⟩],?_,?_⟩
  · norm_num [CriticalPseudoReduction20261003.ValidTrace]
  · norm_num [CriticalPseudoReduction20261003.endpoint]

/-- The entire literal program retains the constant contribution. -/
theorem constant_term_retained :
    CriticalQuadProgram20261003.value
      (fun _ : CriticalNonzeroMoments20261003.MomentTag => (0 : ℂ))
      CriticalNonzeroNumerator20261003.program66=1728 := by
  rw [CriticalNonzeroNumerator20261003.program66_value]
  norm_num [CriticalNonzeroMoments20261003.momentPolynomial66]

/-- A zero sheet at k=1 does not itself cause a pole: the literal minus
factor is the same nonzero constant for every modulus. -/
theorem minus_factor_at_one (M : ℂ) :
    CriticalNonzeroSumDenominator20261003.minusFactor M 1= -8 := by
  norm_num [CriticalNonzeroSumDenominator20261003.minusFactor,
    CriticalNonzeroLight20261003.h]

#print axioms zero_multiplier_counterexample
#print axioms constant_term_retained
#print axioms minus_factor_at_one
end NonzeroNumeratorCoreIndependentReview20261003
