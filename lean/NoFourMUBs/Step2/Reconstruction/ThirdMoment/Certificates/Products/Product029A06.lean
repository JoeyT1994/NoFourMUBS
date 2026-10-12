import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P060A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P060A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P060A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P060A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P031A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product029A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P060A03 P061A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P060A04 P061A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P060A05 P061A01) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P060A06 P061A00)))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P031A06)

theorem Product029A06_length : Product029A06_residual.length = 15 := by rfl
theorem Product029A06_checked (i : Fin 15) : zeroII (Product029A06_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product029A06_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P060A03 * sliceValue b c d P061A03 + (sliceValue b c d P060A04 * sliceValue b c d P061A02 + (sliceValue b c d P060A05 * sliceValue b c d P061A01 + (sliceValue b c d P060A06 * sliceValue b c d P061A00))) = sliceValue b c d P031A06 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product029A06_residual (fun n hn =>
    Product029A06_checked ⟨n, by simpa only [Product029A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product029A06_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
