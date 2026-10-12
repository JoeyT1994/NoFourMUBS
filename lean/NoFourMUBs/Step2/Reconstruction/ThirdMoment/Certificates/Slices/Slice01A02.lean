import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A02
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A02
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A02_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A02 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A02 (P064A02)))))))))

theorem Slice01A02_length : Slice01A02_residual.length = 15 := by rfl

theorem Slice01A02_checked (i : Fin 15) : zeroII (Slice01A02_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A02_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A02) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A02)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A02_residual (fun n hn =>
    Slice01A02_checked ⟨n, by simpa only [Slice01A02_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A02_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
