import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P051A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P053A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P051A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P053A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P051A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P053A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P051A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P053A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P051A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P053A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P051A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P004A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P053A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product026A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P051A00 P053A06) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P051A01 P053A05) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P051A02 P053A04) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P051A03 P053A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P051A04 P053A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P051A05 P053A01)))))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P050A06)

theorem Product026A06_length : Product026A06_residual.length = 14 := by rfl
theorem Product026A06_checked (i : Fin 14) : zeroII (Product026A06_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product026A06_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P051A00 * sliceValue b c d P053A06 + (sliceValue b c d P051A01 * sliceValue b c d P053A05 + (sliceValue b c d P051A02 * sliceValue b c d P053A04 + (sliceValue b c d P051A03 * sliceValue b c d P053A03 + (sliceValue b c d P051A04 * sliceValue b c d P053A02 + (sliceValue b c d P051A05 * sliceValue b c d P053A01))))) = sliceValue b c d P050A06 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product026A06_residual (fun n hn =>
    Product026A06_checked ⟨n, by simpa only [Product026A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product026A06_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
