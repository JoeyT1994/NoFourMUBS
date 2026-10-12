import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A06
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A06
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A06_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A06 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A06 (P064A06)))))))))

theorem Slice01A06_length : Slice01A06_residual.length = 15 := by rfl

theorem Slice01A06_checked (i : Fin 15) : zeroII (Slice01A06_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A06_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A06) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A06)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A06_residual (fun n hn =>
    Slice01A06_checked ⟨n, by simpa only [Slice01A06_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A06_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
