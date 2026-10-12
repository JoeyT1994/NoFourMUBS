import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P040A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P042A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P040A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P042A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P040A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P042A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product020A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P040A03 P042A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P040A04 P042A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P040A05 P042A01))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P039A06)

theorem Product020A06_length : Product020A06_residual.length = 15 := by rfl
theorem Product020A06_checked (i : Fin 15) : zeroII (Product020A06_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product020A06_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P040A03 * sliceValue b c d P042A03 + (sliceValue b c d P040A04 * sliceValue b c d P042A02 + (sliceValue b c d P040A05 * sliceValue b c d P042A01)) = sliceValue b c d P039A06 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product020A06_residual (fun n hn =>
    Product020A06_checked ⟨n, by simpa only [Product020A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product020A06_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
