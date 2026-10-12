import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P041A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P042A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P041A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P042A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P031A13
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product019A13_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P041A10 P042A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P041A11 P042A02)) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P031A13)

theorem Product019A13_length : Product019A13_residual.length = 8 := by rfl
theorem Product019A13_checked (i : Fin 8) : zeroII (Product019A13_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product019A13_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P041A10 * sliceValue b c d P042A03 + (sliceValue b c d P041A11 * sliceValue b c d P042A02) = sliceValue b c d P031A13 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product019A13_residual (fun n hn =>
    Product019A13_checked ⟨n, by simpa only [Product019A13_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product019A13_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
