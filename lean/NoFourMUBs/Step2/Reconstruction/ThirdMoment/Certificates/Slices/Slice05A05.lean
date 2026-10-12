import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A05
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A05
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A05_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A05 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A05 (P191A05)))))))))

theorem Slice05A05_length : Slice05A05_residual.length = 16 := by rfl

theorem Slice05A05_checked (i : Fin 16) : zeroII (Slice05A05_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A05_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A05) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A05)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A05_residual (fun n hn =>
    Slice05A05_checked ⟨n, by simpa only [Slice05A05_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A05_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
