import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A07 (P064A07)))))))))

theorem Slice01A07_length : Slice01A07_residual.length = 14 := by rfl

theorem Slice01A07_checked (i : Fin 14) : zeroII (Slice01A07_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A07_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A07)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A07_residual (fun n hn =>
    Slice01A07_checked ⟨n, by simpa only [Slice01A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A07_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
