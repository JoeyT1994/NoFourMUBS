import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P030A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product014A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P030A05 P004A06) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P029A11)

theorem Product014A11_length : Product014A11_residual.length = 6 := by rfl
theorem Product014A11_checked (i : Fin 6) : zeroII (Product014A11_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product014A11_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P030A05 * sliceValue b c d P004A06 = sliceValue b c d P029A11 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product014A11_residual (fun n hn =>
    Product014A11_checked ⟨n, by simpa only [Product014A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product014A11_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
