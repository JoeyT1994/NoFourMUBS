import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A01
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A01
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A01_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A01 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A01 (P064A01)))))))))

theorem Slice01A01_length : Slice01A01_residual.length = 15 := by rfl

theorem Slice01A01_checked (i : Fin 15) : zeroII (Slice01A01_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A01_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A01) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A01)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A01_residual (fun n hn =>
    Slice01A01_checked ⟨n, by simpa only [Slice01A01_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A01_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
