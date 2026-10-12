import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P063A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P057A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P063A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P057A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P063A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P057A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P063A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P057A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P063A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P057A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P063A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P035A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P057A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A09
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003 IntegerReflector
def Product031A09_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P063A03 P057A06) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P063A04 P057A05) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P063A05 P057A04) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P063A06 P057A03) (CriticalZeroSumAssembly20261003.DenseCoefficients.add (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P063A07 P057A02) (CriticalZeroSumAssembly20261003.DenseCoefficients.mul P063A08 P057A01)))))) (CriticalZeroSumAssembly20261003.DenseCoefficients.neg P062A09)

theorem Product031A09_length : Product031A09_residual.length = 11 := by rfl
theorem Product031A09_checked (i : Fin 11) : zeroII (Product031A09_residual.getD i []) = true := by
  fin_cases i <;> rfl
theorem Product031A09_value {R : Type*} [CommRing R] (b c d : R) :
    sliceValue b c d P063A03 * sliceValue b c d P057A06 + (sliceValue b c d P063A04 * sliceValue b c d P057A05 + (sliceValue b c d P063A05 * sliceValue b c d P057A04 + (sliceValue b c d P063A06 * sliceValue b c d P057A03 + (sliceValue b c d P063A07 * sliceValue b c d P057A02 + (sliceValue b c d P063A08 * sliceValue b c d P057A01))))) = sliceValue b c d P062A09 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Product031A09_residual (fun n hn =>
    Product031A09_checked ⟨n, by simpa only [Product031A09_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simp only [Product031A09_residual,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_neg,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_mul,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,
    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he
  apply sub_eq_zero.mp
  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
