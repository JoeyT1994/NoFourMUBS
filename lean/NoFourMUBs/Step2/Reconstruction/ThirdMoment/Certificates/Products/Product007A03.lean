import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P014A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P016A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P014A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P016A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A03
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product007A03_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P014A00 P016A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P014A01 P016A02)) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P013A03)

theorem Product007A03_length : Product007A03_residual.length = 12 := by rfl
theorem Product007A03_checked (i : Fin 12) : zeroII (Product007A03_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product007A03_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P014A00 * sliceValue b c d P016A03 + (sliceValue b c d P014A01 * sliceValue b c d P016A02) = sliceValue b c d P013A03 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product007A03_residual (fun n hn =>
    Product007A03_checked ⟨n, by simpa only [Product007A03_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product007A03_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
