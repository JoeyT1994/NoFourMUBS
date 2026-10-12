import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P047A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P049A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P047A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P049A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P047A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P049A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P047A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P049A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P047A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P049A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A04
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product024A04_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P047A00 P049A04) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P047A01 P049A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P047A02 P049A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P047A03 P049A01) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P047A04 P049A00))))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P046A04)

theorem Product024A04_length : Product024A04_residual.length = 15 := by rfl
theorem Product024A04_checked (i : Fin 15) : zeroII (Product024A04_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product024A04_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P047A00 * sliceValue b c d P049A04 + (sliceValue b c d P047A01 * sliceValue b c d P049A03 + (sliceValue b c d P047A02 * sliceValue b c d P049A02 + (sliceValue b c d P047A03 * sliceValue b c d P049A01 + (sliceValue b c d P047A04 * sliceValue b c d P049A00)))) = sliceValue b c d P046A04 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product024A04_residual (fun n hn =>
    Product024A04_checked ⟨n, by simpa only [Product024A04_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product024A04_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
