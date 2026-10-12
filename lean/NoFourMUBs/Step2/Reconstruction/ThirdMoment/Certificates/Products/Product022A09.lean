import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P044A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P044A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P044A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P044A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P044A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A09
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product022A09_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P044A03 P004A06) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P044A04 P004A05) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P044A05 P004A04) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P044A06 P004A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P044A07 P004A02))))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P043A09)

theorem Product022A09_length : Product022A09_residual.length = 11 := by rfl
theorem Product022A09_checked (i : Fin 11) : zeroII (Product022A09_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product022A09_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P044A03 * sliceValue b c d P004A06 + (sliceValue b c d P044A04 * sliceValue b c d P004A05 + (sliceValue b c d P044A05 * sliceValue b c d P004A04 + (sliceValue b c d P044A06 * sliceValue b c d P004A03 + (sliceValue b c d P044A07 * sliceValue b c d P004A02)))) = sliceValue b c d P043A09 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product022A09_residual (fun n hn =>
    Product022A09_checked ⟨n, by simpa only [Product022A09_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product022A09_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
