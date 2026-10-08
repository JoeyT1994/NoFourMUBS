import CriticalNonzeroQuarticData
import CriticalNonzeroPolynomialData

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 10000
namespace CriticalNonzeroRational20261003
noncomputable section

theorem quartic_generic (k K : ℂ) : quartic k K=CriticalNonzeroPolynomial20261003.quartic k K := by 
  unfold quartic CriticalNonzeroPolynomial20261003.quartic
  ring

theorem denFactorMinus_generic (k K : ℂ) : denFactorMinus k K=CriticalNonzeroPolynomial20261003.denFactorMinus k K := by 
  unfold denFactorMinus CriticalNonzeroPolynomial20261003.denFactorMinus
  ring

theorem denFactorPlus_generic (k K : ℂ) : denFactorPlus k K=CriticalNonzeroPolynomial20261003.denFactorPlus k K := by 
  unfold denFactorPlus CriticalNonzeroPolynomial20261003.denFactorPlus
  ring

theorem reducedCoefficient00_generic (k : ℂ) : reducedCoefficient00 k=CriticalNonzeroPolynomial20261003.reducedCoefficient00 k := by 
  unfold reducedCoefficient00 CriticalNonzeroPolynomial20261003.reducedCoefficient00
  ring

theorem reducedCoefficient01_generic (k : ℂ) : reducedCoefficient01 k=CriticalNonzeroPolynomial20261003.reducedCoefficient01 k := by 
  unfold reducedCoefficient01 CriticalNonzeroPolynomial20261003.reducedCoefficient01
  ring

theorem reducedCoefficient02_generic (k : ℂ) : reducedCoefficient02 k=CriticalNonzeroPolynomial20261003.reducedCoefficient02 k := by 
  unfold reducedCoefficient02 CriticalNonzeroPolynomial20261003.reducedCoefficient02
  ring

theorem reducedCoefficient03_generic (k : ℂ) : reducedCoefficient03 k=CriticalNonzeroPolynomial20261003.reducedCoefficient03 k := by 
  unfold reducedCoefficient03 CriticalNonzeroPolynomial20261003.reducedCoefficient03
  ring

theorem reducedCoefficient04_generic (k : ℂ) : reducedCoefficient04 k=CriticalNonzeroPolynomial20261003.reducedCoefficient04 k := by 
  unfold reducedCoefficient04 CriticalNonzeroPolynomial20261003.reducedCoefficient04
  ring

theorem reducedCoefficient05_generic (k : ℂ) : reducedCoefficient05 k=CriticalNonzeroPolynomial20261003.reducedCoefficient05 k := by 
  unfold reducedCoefficient05 CriticalNonzeroPolynomial20261003.reducedCoefficient05
  ring

theorem reducedCoefficient06_generic (k : ℂ) : reducedCoefficient06 k=CriticalNonzeroPolynomial20261003.reducedCoefficient06 k := by 
  unfold reducedCoefficient06 CriticalNonzeroPolynomial20261003.reducedCoefficient06
  ring

theorem reducedCoefficient07_generic (k : ℂ) : reducedCoefficient07 k=CriticalNonzeroPolynomial20261003.reducedCoefficient07 k := by 
  unfold reducedCoefficient07 CriticalNonzeroPolynomial20261003.reducedCoefficient07
  ring

theorem reducedCoefficient08_generic (k : ℂ) : reducedCoefficient08 k=CriticalNonzeroPolynomial20261003.reducedCoefficient08 k := by 
  unfold reducedCoefficient08 CriticalNonzeroPolynomial20261003.reducedCoefficient08
  ring

theorem reducedCoefficient09_generic (k : ℂ) : reducedCoefficient09 k=CriticalNonzeroPolynomial20261003.reducedCoefficient09 k := by 
  unfold reducedCoefficient09 CriticalNonzeroPolynomial20261003.reducedCoefficient09
  ring

theorem reducedCoefficient10_generic (k : ℂ) : reducedCoefficient10 k=CriticalNonzeroPolynomial20261003.reducedCoefficient10 k := by 
  unfold reducedCoefficient10 CriticalNonzeroPolynomial20261003.reducedCoefficient10
  ring

theorem reducedNumerator_generic (k K : ℂ) :
    reducedNumerator k K=CriticalNonzeroPolynomial20261003.reducedNumerator k K := by
  unfold reducedNumerator CriticalNonzeroPolynomial20261003.reducedNumerator
  simp only [reducedCoefficient00_generic,reducedCoefficient01_generic,reducedCoefficient02_generic,reducedCoefficient03_generic,reducedCoefficient04_generic,reducedCoefficient05_generic,reducedCoefficient06_generic,reducedCoefficient07_generic,reducedCoefficient08_generic,reducedCoefficient09_generic,reducedCoefficient10_generic]

end
#print axioms quartic_generic
#print axioms denFactorMinus_generic
#print axioms denFactorPlus_generic
#print axioms reducedCoefficient00_generic
#print axioms reducedCoefficient01_generic
#print axioms reducedCoefficient02_generic
#print axioms reducedCoefficient03_generic
#print axioms reducedCoefficient04_generic
#print axioms reducedCoefficient05_generic
#print axioms reducedCoefficient06_generic
#print axioms reducedCoefficient07_generic
#print axioms reducedCoefficient08_generic
#print axioms reducedCoefficient09_generic
#print axioms reducedCoefficient10_generic
#print axioms reducedNumerator_generic
end CriticalNonzeroRational20261003
