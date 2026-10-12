import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A03
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A03
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A03_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A03 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A03 (P064A03)))))))))

theorem Slice01A03_length : Slice01A03_residual.length = 15 := by rfl

theorem Slice01A03_checked (i : Fin 15) : zeroII (Slice01A03_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A03_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A03) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A03)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A03_residual (fun n hn =>
    Slice01A03_checked ⟨n, by simpa only [Slice01A03_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A03_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
