import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P017A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P025A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice00A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P001A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P005A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P009A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P013A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P017A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P019A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P023A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P025A06 (P029A06))))))))

theorem Slice00A06_length : Slice00A06_residual.length = 11 := by rfl

theorem Slice00A06_checked (i : Fin 11) : zeroII (Slice00A06_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice00A06_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P001A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P005A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P009A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P013A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P017A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P019A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P023A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P025A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P029A06))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice00A06_residual (fun n hn =>
    Slice00A06_checked ⟨n, by simpa only [Slice00A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice00A06_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
