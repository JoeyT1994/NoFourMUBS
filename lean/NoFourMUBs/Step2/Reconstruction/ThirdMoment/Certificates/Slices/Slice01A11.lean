import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A11
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A11
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A11_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A11 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A11 (P064A11)))))))))

theorem Slice01A11_length : Slice01A11_residual.length = 10 := by rfl

theorem Slice01A11_checked (i : Fin 10) : zeroII (Slice01A11_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A11_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A11) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A11)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A11_residual (fun n hn =>
    Slice01A11_checked ⟨n, by simpa only [Slice01A11_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A11_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
