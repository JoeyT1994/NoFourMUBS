import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P034A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P034A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P034A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P034A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P034A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P031A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product015A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P034A01 P035A05) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P034A02 P035A04) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P034A03 P035A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P034A04 P035A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P034A05 P035A01))))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P031A06)

theorem Product015A06_length : Product015A06_residual.length = 15 := by rfl
theorem Product015A06_checked (i : Fin 15) : zeroII (Product015A06_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product015A06_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P034A01 * sliceValue b c d P035A05 + (sliceValue b c d P034A02 * sliceValue b c d P035A04 + (sliceValue b c d P034A03 * sliceValue b c d P035A03 + (sliceValue b c d P034A04 * sliceValue b c d P035A02 + (sliceValue b c d P034A05 * sliceValue b c d P035A01)))) = sliceValue b c d P031A06 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product015A06_residual (fun n hn =>
    Product015A06_checked ⟨n, by simpa only [Product015A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product015A06_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
