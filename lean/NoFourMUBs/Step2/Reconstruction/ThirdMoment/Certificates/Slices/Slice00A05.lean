import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P001A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P005A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P009A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P013A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P017A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P019A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P023A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P025A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P029A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice00A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P001A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P005A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P009A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P013A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P017A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P019A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P023A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P025A05 (P029A05))))))))

theorem Slice00A05_length : Slice00A05_residual.length = 12 := by rfl

theorem Slice00A05_checked (i : Fin 12) : zeroII (Slice00A05_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice00A05_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P001A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P005A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P009A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P013A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P017A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P019A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P023A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P025A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P029A05))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice00A05_residual (fun n hn =>
    Slice00A05_checked ⟨n, by simpa only [Slice00A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice00A05_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
