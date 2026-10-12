import NoFourMUBs.Step2.CriticalZero.SumClearing.Base
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
open CriticalNonzeroMoments20261003 CriticalNonzeroNumerator20261003 CriticalQuadProgram20261003
def scaledTerm05 (X Y k : ℂ) : ℂ := ((((((((-2 : ℂ) * (((X)^3) * (((integerNumerator_p3_p0_a X Y k) * (((2 : ℂ) * (Y)) * (h k))) + (((8 : ℂ) * (k)) * (integerNumerator_p3_p0_b X Y k))))) * (integerNumerator_p0_p2_a X Y k)) + (((-((X) * (((((9 : ℂ) + (-(X))) + (-(Y))) * (h k)) + (-4 : ℂ)))) * (((-2 : ℂ) * (-(((X)^3) * (integerNumerator_p3_p0_b X Y k)))) * (integerNumerator_p0_p2_b X Y k))) * (h k))) * (integerNumerator_p3_m2_a X Y k)) * ((2 : ℂ) * (Y))) + (((-((X) * (((((9 : ℂ) + (-(X))) + (-(Y))) * (h k)) + (-4 : ℂ)))) * ((((((-2 : ℂ) * (((X)^3) * (((integerNumerator_p3_p0_a X Y k) * (((2 : ℂ) * (Y)) * (h k))) + (((8 : ℂ) * (k)) * (integerNumerator_p3_p0_b X Y k))))) * (integerNumerator_p0_p2_b X Y k)) + ((((-2 : ℂ) * (-(((X)^3) * (integerNumerator_p3_p0_b X Y k)))) * (integerNumerator_p0_p2_a X Y k)) * ((Y) * ((h k)^2)))) + (((8 : ℂ) * (k)) * (((-2 : ℂ) * (-(((X)^3) * (integerNumerator_p3_p0_b X Y k)))) * (integerNumerator_p0_p2_b X Y k)))) * (integerNumerator_p3_m2_b X Y k))) * (h k))) * (((((((((((2 : ℂ)^4) * ((X)^2)) * ((Y)^4)) * ((h k)^5)) * ((plusFactor X k)^3)) * ((minusFactor X k)^3)) * ((plusFactor Y k)^3)) * ((minusFactor Y k)^3)) * ((thirdPlusFactor X Y k)^3)) * ((thirdMinusFactor X Y k)^3)))
theorem term05_scaled (X Y k : ℂ) (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hFXp : plusFactor X k ≠ 0) (hFXm : minusFactor X k ≠ 0)
    (hFYp : plusFactor Y k ≠ 0) (hFYm : minusFactor Y k ≠ 0)
    (hFZp : thirdPlusFactor X Y k ≠ 0) (hFZm : thirdMinusFactor X Y k ≠ 0) :
    rawTerm05 X Y k * expandedDenominator X Y k = scaledTerm05 X Y k := by
  change (toQuadratic (coefficients (fun m => rationalCoefficients m X Y k) programTerm05)).re *
    expandedDenominator X Y k = scaledTerm05 X Y k
  simp only [programTerm05,coefficients,toQuadratic_mul,toQuadratic_scalar,
    QuadraticAlgebra.re_mul,QuadraticAlgebra.im_mul,
    QuadraticAlgebra.algebraMap_re,QuadraticAlgebra.algebraMap_im,
    toQuadratic_re,toQuadratic_im,mul_zero,zero_mul,add_zero,zero_add]
  dsimp only [rawTerm05,programTerm05,scaledTerm05,expandedDenominator,
    coefficients,rationalCoefficients,reflectedCoefficients,representativeCoefficients,
    scalar,R2,R1,p,q,J,degrees,
    denominator_p0_p2_a,
    denominator_p0_p2_b,
    denominator_p3_m2_a,
    denominator_p3_m2_b,
    denominator_p3_p0_a,
    denominator_p3_p0_b,
    integerNumerator_p0_p2_a,
    integerNumerator_p0_p2_b,
    integerNumerator_p3_m2_a,
    integerNumerator_p3_m2_b,
    integerNumerator_p3_p0_a,
    integerNumerator_p3_p0_b]
  generalize numerator_p0_p2_a X Y k = n_p0_p2_a
  generalize numerator_p0_p2_b X Y k = n_p0_p2_b
  generalize numerator_p3_m2_a X Y k = n_p3_m2_a
  generalize numerator_p3_m2_b X Y k = n_p3_m2_b
  generalize numerator_p3_p0_a X Y k = n_p3_p0_a
  generalize numerator_p3_p0_b X Y k = n_p3_p0_b
  norm_num only [zpow_neg,zpow_ofNat,zpow_zero]
  <;> field_simp [hX,hY,hh,hFXp,hFXm,hFYp,hFYm,hFZp,hFZm]
  <;> ring
#print axioms term05_scaled

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
