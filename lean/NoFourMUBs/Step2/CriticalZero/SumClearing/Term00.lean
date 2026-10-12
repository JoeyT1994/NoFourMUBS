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
def scaledTerm00 (X Y k : ℂ) : ℂ := ((1728 : ℂ) * (((((((((((2 : ℂ)^6) * ((X)^8)) * ((Y)^7)) * ((h k)^12)) * ((plusFactor X k)^5)) * ((minusFactor X k)^5)) * ((plusFactor Y k)^5)) * ((minusFactor Y k)^5)) * ((thirdPlusFactor X Y k)^5)) * ((thirdMinusFactor X Y k)^5)))
theorem term00_scaled (X Y k : ℂ) (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hFXp : plusFactor X k ≠ 0) (hFXm : minusFactor X k ≠ 0)
    (hFYp : plusFactor Y k ≠ 0) (hFYm : minusFactor Y k ≠ 0)
    (hFZp : thirdPlusFactor X Y k ≠ 0) (hFZm : thirdMinusFactor X Y k ≠ 0) :
    rawTerm00 X Y k * expandedDenominator X Y k = scaledTerm00 X Y k := by
  dsimp only [rawTerm00,programTerm00,scaledTerm00,expandedDenominator,
    coefficients,rationalCoefficients,reflectedCoefficients,representativeCoefficients,
    scalar,R2,R1,p,q,J,degrees]
  <;> norm_num only [zpow_neg,zpow_ofNat,zpow_zero]
  <;> field_simp [hX,hY,hh,hFXp,hFXm,hFYp,hFYm,hFZp,hFZm]
  <;> ring
#print axioms term00_scaled

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
