import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A12
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A12
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A12_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A12 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A12 (P064A12)))))))))

theorem Slice01A12_length : Slice01A12_residual.length = 9 := by rfl

theorem Slice01A12_checked (i : Fin 9) : zeroII (Slice01A12_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A12_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A12) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A12)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A12_residual (fun n hn =>
    Slice01A12_checked ⟨n, by simpa only [Slice01A12_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A12_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
