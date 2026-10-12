import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A00
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A00
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A00_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A00 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A00 (P064A00)))))))))

theorem Slice01A00_length : Slice01A00_residual.length = 15 := by rfl

theorem Slice01A00_checked (i : Fin 15) : zeroII (Slice01A00_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A00_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A00) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A00)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A00_residual (fun n hn =>
    Slice01A00_checked ⟨n, by simpa only [Slice01A00_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A00_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
