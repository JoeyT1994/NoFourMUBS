import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P024A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P024A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A02
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product011A02_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P024A00 P004A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P024A01 P004A01)) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P023A02)

theorem Product011A02_length : Product011A02_residual.length = 12 := by rfl
theorem Product011A02_checked (i : Fin 12) : zeroII (Product011A02_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product011A02_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P024A00 * sliceValue b c d P004A02 + (sliceValue b c d P024A01 * sliceValue b c d P004A01) = sliceValue b c d P023A02 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product011A02_residual (fun n hn =>
    Product011A02_checked ⟨n, by simpa only [Product011A02_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product011A02_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
