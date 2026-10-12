import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P027A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P028A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P027A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P028A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P027A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P028A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P027A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P028A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P000A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product012A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P027A04 P028A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P027A05 P028A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P027A06 P028A01) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P027A07 P028A00)))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P000A07)

theorem Product012A07_length : Product012A07_residual.length = 11 := by rfl
theorem Product012A07_checked (i : Fin 11) : zeroII (Product012A07_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product012A07_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P027A04 * sliceValue b c d P028A03 + (sliceValue b c d P027A05 * sliceValue b c d P028A02 + (sliceValue b c d P027A06 * sliceValue b c d P028A01 + (sliceValue b c d P027A07 * sliceValue b c d P028A00))) = sliceValue b c d P000A07 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product012A07_residual (fun n hn =>
    Product012A07_checked ⟨n, by simpa only [Product012A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product012A07_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
