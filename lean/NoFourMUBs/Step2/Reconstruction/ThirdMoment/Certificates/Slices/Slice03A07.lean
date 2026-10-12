import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P096A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P100A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P104A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P107A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P111A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P113A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P116A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P119A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P122A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P126A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice03A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P096A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P100A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P104A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P107A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P111A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P113A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P116A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P119A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P122A07 (P126A07)))))))))

theorem Slice03A07_length : Slice03A07_residual.length = 14 := by rfl

theorem Slice03A07_checked (i : Fin 14) : zeroII (Slice03A07_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice03A07_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P096A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P100A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P104A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P107A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P111A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P113A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P116A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P119A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P122A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P126A07)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice03A07_residual (fun n hn =>
    Slice03A07_checked ⟨n, by simpa only [Slice03A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice03A07_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
