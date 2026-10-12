import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P065A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P031A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P067A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P065A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P031A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P067A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P065A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P031A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P067A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product033A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P065A00 P067A11) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P065A01 P067A10) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P065A02 P067A09))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P064A11)

theorem Product033A11_length : Product033A11_residual.length = 10 := by rfl
theorem Product033A11_checked (i : Fin 10) : zeroII (Product033A11_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product033A11_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P065A00 * sliceValue b c d P067A11 + (sliceValue b c d P065A01 * sliceValue b c d P067A10 + (sliceValue b c d P065A02 * sliceValue b c d P067A09)) = sliceValue b c d P064A11 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product033A11_residual (fun n hn =>
    Product033A11_checked ⟨n, by simpa only [Product033A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product033A11_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
