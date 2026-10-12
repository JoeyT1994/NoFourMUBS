import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P020A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P022A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A10
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product010A10_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P020A03 P022A07) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P019A10)

theorem Product010A10_length : Product010A10_residual.length = 7 := by rfl
theorem Product010A10_checked (i : Fin 7) : zeroII (Product010A10_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product010A10_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P020A03 * sliceValue b c d P022A07 = sliceValue b c d P019A10 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product010A10_residual (fun n hn =>
    Product010A10_checked ⟨n, by simpa only [Product010A10_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product010A10_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
