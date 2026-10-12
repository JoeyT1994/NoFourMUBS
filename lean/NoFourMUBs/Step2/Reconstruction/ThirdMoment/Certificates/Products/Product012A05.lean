import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P027A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P028A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P027A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P028A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P027A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P028A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P027A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P028A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P000A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product012A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P027A02 P028A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P027A03 P028A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P027A04 P028A01) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P027A05 P028A00)))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P000A05)

theorem Product012A05_length : Product012A05_residual.length = 13 := by rfl
theorem Product012A05_checked (i : Fin 13) : zeroII (Product012A05_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product012A05_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P027A02 * sliceValue b c d P028A03 + (sliceValue b c d P027A03 * sliceValue b c d P028A02 + (sliceValue b c d P027A04 * sliceValue b c d P028A01 + (sliceValue b c d P027A05 * sliceValue b c d P028A00))) = sliceValue b c d P000A05 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product012A05_residual (fun n hn =>
    Product012A05_checked ⟨n, by simpa only [Product012A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product012A05_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
