import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P161A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P165A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P168A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P172A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P175A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P179A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P182A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P186A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P189A14
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Data.P191A14
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
open IntegerReflector
def Slice05A14_residual : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY := CriticalZeroSumAssembly20261003.DenseCoefficients.add P161A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P165A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P168A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P172A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P175A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P179A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P182A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P186A14 (CriticalZeroSumAssembly20261003.DenseCoefficients.add P189A14 (P191A14)))))))))

theorem Slice05A14_length : Slice05A14_residual.length = 8 := by rfl

theorem Slice05A14_checked (i : Fin 8) : zeroII (Slice05A14_residual.getD i []) = true := by
  fin_cases i <;> rfl

theorem Slice05A14_value {R : Type*} [CommRing R] (b c d : R) :
    Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P161A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P165A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P168A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P172A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P175A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P179A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P182A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P186A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P189A14) + (Coefficients.eval b (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d P191A14)))))))))) = 0 := by
  have hz := CriticalZeroSumAssembly20261003.DenseCoefficients.allZero_of_certificates c d Slice05A14_residual (fun n hn =>
    Slice05A14_checked ⟨n, by simpa only [Slice05A14_length] using hn⟩)
  have he := Coefficients.eval_allZero b _ hz
  simpa only [Slice05A14_residual, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret_add, Coefficients.eval_add] using he
end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
