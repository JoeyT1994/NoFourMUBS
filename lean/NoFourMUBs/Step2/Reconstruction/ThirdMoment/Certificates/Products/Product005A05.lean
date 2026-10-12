import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P010A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P012A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P010A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P012A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P010A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P012A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product005A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P010A02 P012A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P010A03 P012A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P010A04 P012A01))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P009A05)

theorem Product005A05_length : Product005A05_residual.length = 12 := by rfl
theorem Product005A05_checked (i : Fin 12) : zeroII (Product005A05_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product005A05_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P010A02 * sliceValue b c d P012A03 + (sliceValue b c d P010A03 * sliceValue b c d P012A02 + (sliceValue b c d P010A04 * sliceValue b c d P012A01)) = sliceValue b c d P009A05 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product005A05_residual (fun n hn =>
    Product005A05_checked ⟨n, by simpa only [Product005A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product005A05_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
