import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A08
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A08
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A08_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A08 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A08 (P064A08)))))))))

theorem Slice01A08_length : Slice01A08_residual.length = 13 := by rfl

theorem Slice01A08_checked (i : Fin 13) : zeroII (Slice01A08_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A08_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A08) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A08)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A08_residual (fun n hn =>
    Slice01A08_checked ⟨n, by simpa only [Slice01A08_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A08_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
