import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A07
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A07
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A07_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A07 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A07 (P191A07)))))))))

theorem Slice05A07_length : Slice05A07_residual.length = 15 := by rfl

theorem Slice05A07_checked (i : Fin 15) : zeroII (Slice05A07_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A07_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A07) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A07)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A07_residual (fun n hn =>
    Slice05A07_checked ⟨n, by simpa only [Slice05A07_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A07_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
