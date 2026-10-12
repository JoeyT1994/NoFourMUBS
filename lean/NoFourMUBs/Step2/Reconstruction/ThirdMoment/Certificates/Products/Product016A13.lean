import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P033A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P033A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A13
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product016A13_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P033A07 P035A06) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P033A08 P035A05)) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P032A13)

theorem Product016A13_length : Product016A13_residual.length = 8 := by rfl
theorem Product016A13_checked (i : Fin 8) : zeroII (Product016A13_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product016A13_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P033A07 * sliceValue b c d P035A06 + (sliceValue b c d P033A08 * sliceValue b c d P035A05) = sliceValue b c d P032A13 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product016A13_residual (fun n hn =>
    Product016A13_checked ⟨n, by simpa only [Product016A13_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product016A13_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
