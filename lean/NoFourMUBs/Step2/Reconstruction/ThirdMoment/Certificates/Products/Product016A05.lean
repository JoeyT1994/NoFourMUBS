import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P033A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P033A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P033A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P033A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P033A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product016A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P033A00 P035A05) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P033A01 P035A04) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P033A02 P035A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P033A03 P035A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P033A04 P035A01))))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P032A05)

theorem Product016A05_length : Product016A05_residual.length = 15 := by rfl
theorem Product016A05_checked (i : Fin 15) : zeroII (Product016A05_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product016A05_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P033A00 * sliceValue b c d P035A05 + (sliceValue b c d P033A01 * sliceValue b c d P035A04 + (sliceValue b c d P033A02 * sliceValue b c d P035A03 + (sliceValue b c d P033A03 * sliceValue b c d P035A02 + (sliceValue b c d P033A04 * sliceValue b c d P035A01)))) = sliceValue b c d P032A05 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product016A05_residual (fun n hn =>
    Product016A05_checked ⟨n, by simpa only [Product016A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product016A05_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
