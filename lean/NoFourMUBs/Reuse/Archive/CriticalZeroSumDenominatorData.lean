import NoFourMUBs.Reuse.Archive.CriticalZeroSumPrimitiveData
import NoFourMUBs.Reuse.Archive.CriticalZeroRawPolynomials
set_option autoImplicit false
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def commonDenominatorCoefficients (X Y : K) : List K :=
  CriticalZeroSplitReduction20261003.Coefficients.shift 12
    (Coefficients.mul (Coefficients.pow [X-9,-3] 5)
      (Coefficients.mul (Coefficients.pow [Y-9,-3] 5)
        (Coefficients.pow [X+Y,3,1] 5)))

def denominatorResidual (X Y : K) : List K :=
  CriticalZeroSplitReduction20261003.Coefficients.add
    (commonDenominatorCoefficients X Y)
    (CriticalZeroSplitReduction20261003.Coefficients.neg (denominatorCoefficients X Y))

theorem eval_commonDenominatorCoefficients (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonDenominatorCoefficients X Y)=
      commonDenominator X Y z := by
  have hx : CriticalZeroSplitReduction20261003.Coefficients.eval z [X-9,-3]=dx X z := by
    simp only [CriticalZeroSplitReduction20261003.Coefficients.eval,dx]
    ring
  have hy : CriticalZeroSplitReduction20261003.Coefficients.eval z [Y-9,-3]=dy Y z := by
    simp only [CriticalZeroSplitReduction20261003.Coefficients.eval,dy]
    ring
  have hd : CriticalZeroSplitReduction20261003.Coefficients.eval z [X+Y,3,1]=dz X Y z := by
    simp only [CriticalZeroSplitReduction20261003.Coefficients.eval,dz]
    ring
  simp only [commonDenominatorCoefficients,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,hx,hy,hd,commonDenominator,mul_assoc]

theorem commonDenominator_ne_zero (X Y z : K)
    (hz : z≠0) (hDx : X-3*z-9≠0) (hDy : Y-3*z-9≠0)
    (hDz : X+Y+z^2+3*z≠0) : commonDenominator X Y z≠0 := by
  simp [commonDenominator,dx,dy,dz,hz,hDx,hDy,hDz]

end
#print axioms eval_commonDenominatorCoefficients
#print axioms commonDenominator_ne_zero
end CriticalZeroSumAssembly20261003
