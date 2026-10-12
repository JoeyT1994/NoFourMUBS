import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A14
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A14_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A14 (P064A14)))))))))

theorem Slice01A14_length : Slice01A14_residual.length = 7 := by rfl

theorem Slice01A14_checked (i : Fin 7) : zeroII (Slice01A14_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A14_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A14)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A14_residual (fun n hn =>
    Slice01A14_checked ⟨n, by simpa only [Slice01A14_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A14_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
