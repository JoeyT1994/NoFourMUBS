import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A10
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A10
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A10_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A10 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A10 (P064A10)))))))))

theorem Slice01A10_length : Slice01A10_residual.length = 11 := by rfl

theorem Slice01A10_checked (i : Fin 11) : zeroII (Slice01A10_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A10_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A10) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A10)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A10_residual (fun n hn =>
    Slice01A10_checked ⟨n, by simpa only [Slice01A10_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A10_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
