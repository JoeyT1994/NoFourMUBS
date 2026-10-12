import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P032A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P036A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P039A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P043A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P046A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P050A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P054A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P058A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P062A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P064A04
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice01A04_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P032A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P036A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P039A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P043A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P046A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P050A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P054A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P058A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P062A04 (P064A04)))))))))

theorem Slice01A04_length : Slice01A04_residual.length = 15 := by rfl

theorem Slice01A04_checked (i : Fin 15) : zeroII (Slice01A04_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice01A04_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P032A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P036A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P039A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P043A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P046A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P050A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P054A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P058A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P062A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P064A04)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice01A04_residual (fun n hn =>
    Slice01A04_checked ⟨n, by simpa only [Slice01A04_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice01A04_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
