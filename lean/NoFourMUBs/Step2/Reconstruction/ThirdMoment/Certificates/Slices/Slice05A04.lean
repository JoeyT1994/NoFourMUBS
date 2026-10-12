import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A04
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A04
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A04_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A04 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A04 (P191A04)))))))))

theorem Slice05A04_length : Slice05A04_residual.length = 16 := by rfl

theorem Slice05A04_checked (i : Fin 16) : zeroII (Slice05A04_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A04_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A04) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A04)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A04_residual (fun n hn =>
    Slice05A04_checked ⟨n, by simpa only [Slice05A04_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A04_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
