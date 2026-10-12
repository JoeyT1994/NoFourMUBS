import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P006A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P008A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A04
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product003A04_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P006A04 P008A00) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P005A04)

theorem Product003A04_length : Product003A04_residual.length = 12 := by rfl
theorem Product003A04_checked (i : Fin 12) : zeroII (Product003A04_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product003A04_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P006A04 * sliceValue b c d P008A00 = sliceValue b c d P005A04 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product003A04_residual (fun n hn =>
    Product003A04_checked ⟨n, by simpa only [Product003A04_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product003A04_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
