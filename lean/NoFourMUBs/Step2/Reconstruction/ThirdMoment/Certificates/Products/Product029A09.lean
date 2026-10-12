import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P060A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P060A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P060A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P060A09
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P061A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P031A09
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product029A09_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P060A06 P061A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P060A07 P061A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P060A08 P061A01) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P060A09 P061A00)))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P031A09)

theorem Product029A09_length : Product029A09_residual.length = 12 := by rfl
theorem Product029A09_checked (i : Fin 12) : zeroII (Product029A09_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product029A09_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P060A06 * sliceValue b c d P061A03 + (sliceValue b c d P060A07 * sliceValue b c d P061A02 + (sliceValue b c d P060A08 * sliceValue b c d P061A01 + (sliceValue b c d P060A09 * sliceValue b c d P061A00))) = sliceValue b c d P031A09 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product029A09_residual (fun n hn =>
    Product029A09_checked ⟨n, by simpa only [Product029A09_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product029A09_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
