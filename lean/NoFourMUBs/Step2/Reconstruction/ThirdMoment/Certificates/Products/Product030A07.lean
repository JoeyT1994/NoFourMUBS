import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P059A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P059A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P059A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P059A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product030A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P059A04 P061A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P059A05 P061A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P059A06 P061A01) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P059A07 P061A00)))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P058A07)

theorem Product030A07_length : Product030A07_residual.length = 13 := by rfl
theorem Product030A07_checked (i : Fin 13) : zeroII (Product030A07_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product030A07_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P059A04 * sliceValue b c d P061A03 + (sliceValue b c d P059A05 * sliceValue b c d P061A02 + (sliceValue b c d P059A06 * sliceValue b c d P061A01 + (sliceValue b c d P059A07 * sliceValue b c d P061A00))) = sliceValue b c d P058A07 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product030A07_residual (fun n hn =>
    Product030A07_checked ⟨n, by simpa only [Product030A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product030A07_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
