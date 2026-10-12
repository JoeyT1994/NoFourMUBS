import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P002A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P002A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A10
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product001A10_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P002A04 P004A06) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P002A05 P004A05)) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P001A10)

theorem Product001A10_length : Product001A10_residual.length = 7 := by rfl
theorem Product001A10_checked (i : Fin 7) : zeroII (Product001A10_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product001A10_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P002A04 * sliceValue b c d P004A06 + (sliceValue b c d P002A05 * sliceValue b c d P004A05) = sliceValue b c d P001A10 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product001A10_residual (fun n hn =>
    Product001A10_checked ⟨n, by simpa only [Product001A10_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product001A10_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
