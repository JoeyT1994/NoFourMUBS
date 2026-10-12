import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P055A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P057A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A01
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product028A01_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P055A00 P057A01) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P054A01)

theorem Product028A01_length : Product028A01_residual.length = 15 := by rfl
theorem Product028A01_checked (i : Fin 15) : zeroII (Product028A01_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product028A01_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P055A00 * sliceValue b c d P057A01 = sliceValue b c d P054A01 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product028A01_residual (fun n hn =>
    Product028A01_checked ⟨n, by simpa only [Product028A01_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product028A01_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
