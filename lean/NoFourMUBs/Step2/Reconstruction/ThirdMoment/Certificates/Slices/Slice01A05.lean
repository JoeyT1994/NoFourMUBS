import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A05 (P064A05)))))))))

theorem Slice01A05_length : Slice01A05_residual.length = 15 := by rfl

theorem Slice01A05_checked (i : Fin 15) : zeroII (Slice01A05_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A05_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A05)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A05_residual (fun n hn =>
    Slice01A05_checked ⟨n, by simpa only [Slice01A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A05_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
