import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A13
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A13
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A13_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A13 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A13 (P064A13)))))))))

theorem Slice01A13_length : Slice01A13_residual.length = 8 := by rfl

theorem Slice01A13_checked (i : Fin 8) : zeroII (Slice01A13_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A13_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A13) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A13)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A13_residual (fun n hn =>
    Slice01A13_checked ⟨n, by simpa only [Slice01A13_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A13_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
