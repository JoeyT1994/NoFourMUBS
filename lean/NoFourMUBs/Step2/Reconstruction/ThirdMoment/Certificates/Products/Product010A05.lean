import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P020A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P022A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P020A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P022A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P020A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P022A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P020A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P022A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product010A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P020A00 P022A05) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P020A01 P022A04) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P020A02 P022A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P020A03 P022A02)))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P019A05)

theorem Product010A05_length : Product010A05_residual.length = 12 := by rfl
theorem Product010A05_checked (i : Fin 12) : zeroII (Product010A05_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product010A05_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P020A00 * sliceValue b c d P022A05 + (sliceValue b c d P020A01 * sliceValue b c d P022A04 + (sliceValue b c d P020A02 * sliceValue b c d P022A03 + (sliceValue b c d P020A03 * sliceValue b c d P022A02))) = sliceValue b c d P019A05 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product010A05_residual (fun n hn =>
    Product010A05_checked ⟨n, by simpa only [Product010A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product010A05_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
